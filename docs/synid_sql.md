# Proposal

************

# SynID-SQL: Syntactic-Invariant Dual-Contrastive Distillation for Text-to-SQL

**Author:** Quoc Phong Dao

**Date:** July 2026

## Methodology

3 contribute: Module tăng cường dữ liệu, Cơ chế chưng cất đặc quyền xuyên cú pháp, Hàm mục tiêu Tương phản Kép.

### Execution-Guided Syntactic Augmentation

Cho một tập dữ liệu gốc $\mathcal{D} = \{(X_i, Y_{\text{gold}, i})\}$, với $X_i = (Q_i, \mathcal{S}_i)$ đại diện cho cặp câu hỏi ngôn ngữ tự nhiên ($Q_i$) và sơ đồ cơ sở dữ liệu tương ứng ($\mathcal{S}_i$). Nhằm mở rộng không gian phân phối cú pháp cho mô hình Student mà không làm thay đổi bản chất ngữ nghĩa thực thi, chúng tôi sử dụng mô hình Teacher ($\pi_T$) để sinh ra tập các câu lệnh SQL thay thế $Y_{\text{aug}, i}$.

Để kích hoạt khả năng tư duy đa cú pháp của Teacher, chúng tôi phỏng sinh cấu trúc gợi ý đặc quyền (privileged prompting template) từ các nghiên cứu lý luận tiên tiến. Định dạng của chuỗi bối cảnh đầu vào $\mathcal{P}_{\text{aug}}(X_i, Y_{\text{gold}, i})$ được chuẩn hóa như sau:

> **Problem:** Given the following database schema, generate a SQL query to answer the question.  
> **Database Schema:** $\mathcal{S}_i$  
> **Question:** $Q_i$  
>
> **Here is a reference solution:**  
> $Y_{\text{gold}, i}$  
>
> **After understanding the reference solution, please try to solve this problem using your own approach below:**  
> OUTPT FORMAT:  
> \{json schema\}  
> **Answer:**

Chuỗi văn bản trên được nạp vào Teacher để lấy mẫu tự hồi quy: $Y_{\text{aug}, i} \sim \pi_T(\cdot \mid \mathcal{P}_{\text{aug}})$. Sau giai đoạn sinh chuỗi, một bộ lọc nghiêm ngặt dựa trên môi trường cơ sở dữ liệu thật $\mathcal{M}_{\text{DB}}$ được thiết lập để loại bỏ hoàn toàn hiện tượng ảo tưởng cú pháp, đảm bảo hai điều kiện đồng thời:

$$
\text{Exec}(Y_{\text{gold}, i}, \mathcal{M}_{\text{DB}}) = \text{Exec}(Y_{\text{aug}, i}, \mathcal{M}_{\text{DB}})
$$

$$
\text{Jaccard}(\text{Tokens}(Y_{\text{gold}, i}), \text{Tokens}(Y_{\text{aug}, i})) < \gamma, \quad \text{??? Cần cân nhắc thêm}
$$

Trong đó, $\text{Exec}(\cdot, \mathcal{M}_{\text{DB}})$ trả về tập kết quả thực thi của câu lệnh trên cơ sở dữ liệu, $\text{Jaccard}(\cdot)$ đo lường độ trùng lặp chuỗi token, và $\gamma \in (0, 1)$ là ngưỡng siêu tham số đặt trước (chúng tôi thiết lập $\gamma = 0.6$) để ép buộc sự dị biệt về mặt cấu trúc bề mặt. Các mẫu không vượt qua được cả hai điều kiện trên sẽ bị loại bỏ khỏi tiến trình chưng cất biểu diễn.

### Syntactic-Invariant Privileged Distillation

Trong giai đoạn huấn luyện Off-policy sử dụng cơ chế Teacher-Forcing, cả hai mô hình cùng thực hiện forward pass qua chuỗi mục tiêu tĩnh là phiên bản cú pháp tăng cường $Y_{aug, i}$. Sự bất đối xứng thông tin (information asymmetry) giữa hai chính sách được thiết kế như sau:

- **Student Input:** $x_S = X_i = (\text{Question}, \text{Schema})$
- **Teacher Input (Privileged):** $x_T = X_i \parallel Y_{gold, i}$

Hàm loss chưng cất logit được đo lường thông qua độ lệch Forward KL trên vùng các vị trí token của $Y_{aug, i}$:

$$
\mathcal{L}_{KD} = \mathbb{D}_{KL} \left( P_T(\cdot | x_T, Y_{aug,<t}) \parallel P_S(\cdot | x_S, Y_{aug,<t}) \right)
$$

Do cấu trúc chuỗi của $Y_{gold, i}$ và $Y_{aug, i}$ có sự dị biệt lớn về mặt ký tự (structural divergence), ma trận Causal Attention của Teacher không thể kích hoạt các đường tắt sao chép (causal shortcuts). Thay vào đó, Teacher buộc phải thực hiện một phép chuyển dịch ngữ nghĩa ẩn (implicit semantic mapping) để đánh giá câu lệnh biến thể, từ đó sản sinh ra phân phối logit có độ mịn kịch trần (highly-smoothed dark knowledge) phục vụ cho quá trình tối ưu hóa của Student.

### Dual-Contrastive Representation Alignment

Để bảo tồn cấu trúc topo và phân tách hình học của không gian biểu diễn, thay vì sử dụng toán tử *Average Mean Pooling* thô sơ, chúng tôi đề xuất cơ chế **Syntax-Guided Cosine Pooling (SC Pooling)**. Cơ chế này tính toán trọng số gom cụm dựa trên độ tương đồng Cosine trực tiếp giữa các token với điểm neo toàn cục, kết hợp chặt chẽ với các bộ điều hòa quy tắc cú pháp (rule-based priors).

Giả sử $\mathbf{H} = [h_1, h_2, \dots, h_T] \in \mathbb{R}^{d \times T}$ là Last Hidden States của một chuỗi gồm $T$ token. Do kiến trúc Decoder-only áp dụng cơ chế Causal Masking, token cuối cùng $h_T$ mang tính chất của một điểm neo toàn cục tích lũy toàn bộ thông tin ngữ nghĩa chuỗi. Vector embedding đại diện $E \in \mathbb{R}^d$ được tổng hợp thông qua tổ hợp tuyến tính phi tham số:

$$
E = \sum Gold_{t=1}^{T} \alpha_t h_t
$$

Trong đó, trọng số điều hòa $\alpha_t$ của token tại vị trí $t$ được định nghĩa bằng hàm Softmax trên tích của độ tương đồng Cosine trực tiếp và trọng số quy tắc cú pháp $\omega_t$:

$$
\alpha_t = \frac{\exp\left( \omega_t \cdot \frac{h_t^\top h_T}{\|h_t\|_2 \cdot \|h_T\|_2 \vphantom{\int}} / \tau_p \right)}{\sum_{j=1}^T \exp\left( \omega_j \cdot \frac{h_j^\top h_T}{\|h_j\|_2 \cdot \|h_T\|_2 \vphantom{\int}} / \tau_p \right)}
$$

Ở đây, $\tau_p \in \mathbb{R}^+$ là một siêu tham số nhiệt độ tỷ lệ (scaling temperature) nhằm điều hòa biên độ của hàm Cosine (chúng tôi thiết lập $\tau_p = 0.1$). Đại lượng $\omega_t \in \mathbb{R}^+$ là trọng số quy tắc cố định phản ánh bản chất cú pháp đặc thù của miền Text-to-SQL:

$$
\omega_t = \begin{cases}
\lambda & \text{nếu token } t \in \mathcal{K}_{\text{SQL}} \cup \mathcal{S}_{\text{DB}} \\
1 & \text{trong các trường hợp còn lại}
\end{cases}
$$

Trong đó, $\mathcal{K}_{\text{SQL}}$ là tập hợp các từ khóa SQL cốt lõi (ví dụ: `SELECT`, `JOIN`, `WHERE`), $\mathcal{S}_{\text{DB}}$ là tập hợp các thực thể thuộc Schema cơ sở dữ liệu (tên bảng, tên cột), và $\lambda > 1$ là hệ số cưỡng bức năng lượng biểu diễn tập trung vào các từ khóa cấu trúc (chúng tôi thiết lập $\lambda = 2.0$).

Áp dụng cơ chế SC Pooling, được ba vector embedding cốt lõi: $E_{sp}$ (từ Student Prompt), $E_{sr}$ (từ Student Response $Y_{aug, i}$), và $E_{tr}$ (từ Teacher Response).

Nhằm ép buộc mô hình Student hội tụ về một không gian bất biến cú pháp, chúng tôi thiết lập hai hàm mục tiêu tương phản bổ trợ nhau dựa trên cấu trúc InfoNCE với tập mẫu âm $\mathcal{N}$ lấy từ các mẫu khác trong cùng mini-batch:

1. **Semantic Alignment Loss ($\mathcal{L}_{con1}$):** Định tuyến vector ẩn của câu hỏi ngôn ngữ tự nhiên (Student) tiệm cận vào vùng không gian giải pháp của Teacher:

$$
\mathcal{L}_{con1} = -\log \frac{\exp(\text{sim}(E_{sp}, E_{tr}) / \tau)}{\exp(\text{sim}(E_{sp}, E_{tr}) / \tau) + \sum_{j \in \mathcal{N}} \exp(\text{sim}(E_{sp}, E_{tr, j}^-) / \tau)}
$$

2. **Geometry-Preserving Loss ($\mathcal{L}_{con2}$):** Khớp nối cấu trúc hình học không gian ẩn giữa hai mô hình khi cùng đọc một câu lệnh mã nguồn dưới hai điều kiện bối cảnh bất đối xứng:

$$
\mathcal{L}_{con2} = -\log \frac{\exp(\text{sim}(E_{sr}, E_{tr}) / \tau)}{\exp(\text{sim}(E_{sr}, E_{tr}) / \tau) + \sum_{j \in \mathcal{N}} \exp(\text{sim}(E_{sr}, E_{tr, j}^-) / \tau)}
$$

**Hàm mục tiêu tổng thể:** $\mathcal{L}_{total} = (1 - \lambda_{KD})\mathcal{L}_{CE} + \lambda_{KD}\mathcal{L}_{KD} + \alpha \mathcal{L}_{con1} + \beta \mathcal{L}_{con2}$, trong đó $\lambda_{KD} \in [0, 1]$ điều hòa giữa giám sát nhãn cứng và chưng cất phân phối, còn $\alpha$ và $\beta$ điều hòa hai hàm loss tương phản. Mặc định $\lambda_{KD}=1.0$, do đó cấu hình mặc định khôi phục mục tiêu chỉ gồm KD và hai thành phần tương phản.

## Experimental

- **Main Benchmark:**

  1. *Evaluation on Original Data (Đánh giá trên Dữ liệu Gốc):* SFT, FKL, RKL, SFKL, DistiLLM, CSD, và phiên bản rút gọn (*SynID-SQL w/o Augment*).
  2. *Evaluation on Augmented Data (Đánh giá trên Dữ liệu Tăng cường):* *DistiLLM + Aug*, *CSD + Aug*, *SynID-SQL*.

- **Kịch bản 2 (Algorithmic Ablation Study):**

  1. *Loss Functions Dissection:* Semantic Alignment Loss ($\mathcal{L}_{con1}$) và Geometry-Preserving Loss ($\mathcal{L}_{con2}$).
  2. *Pooling Mechanism Verification:* Mean Pooling, SC Pooling, SC Pooling ko trọng số cho quy tắc cú pháp.

## Implementation Checklist

Trạng thái dưới đây phản ánh code hiện tại. Phần KD loss chủ động dùng cùng implementation với `distillm` và không nằm trong phạm vi checklist này.

- [x] Privileged prompt chứa Question, Schema và $Y_{\text{gold}}$.
- [x] Tạo riêng student/teacher binary và kiểm tra số dòng cùng `response` trước khi merge.
- [x] Student và Teacher dùng giới hạn sequence/prompt riêng; response không bị lẫn phần prompt khi prompt bị truncate.
- [x] Teacher forward trên privileged input, Student forward trên input không đặc quyền.
- [x] Thu Last Hidden States và ánh xạ projector khi hidden size Student/Teacher khác nhau.
- [x] SC Pooling với last-token anchor, $\tau_p=0.1$, syntax weight $\lambda=2.0$, cùng ablation mean/no-syntax-weight.
- [x] Hai nhánh InfoNCE $E_{sp}\rightarrow E_{tr}$ và $E_{sr}\rightarrow E_{tr}$, có cờ ablation độc lập.
- [x] Script train mặc định dùng privileged dataset; có cấu hình contrastive temperature `0.05`, `0.07`, `0.1`.
- [ ] Sinh $Y_{\text{aug}}$ từ Teacher. Formatter hiện vẫn dùng $Y_{\text{gold}}$ làm response, nên pipeline hiện tại tương ứng *SynID-SQL w/o Augment*.
- [ ] Execution-equivalence filtering giữa $Y_{\text{gold}}$ và $Y_{\text{aug}}$.
- [ ] Jaccard filtering với $\gamma=0.6$. Tham số đã có nhưng chưa được nối vào preprocessing.
- [ ] Chạy lại preprocessing cho binary hiện tại sau bản sửa truncation.
- [ ] GPU end-to-end smoke test và toàn bộ benchmark/ablation trong mục Experimental.
