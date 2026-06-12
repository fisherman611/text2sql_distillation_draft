SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT country FROM player ORDER BY earnings DESC LIMIT 1
SELECT country FROM player WHERE wins_count > 2
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING count(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player WHERE earning > 1400000 INTERSECT SELECT country FROM player WHERE earning < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T4.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T4.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(DISTINCT T2.product_id) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , order_status_code , order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT T1.date_order_placed , T2.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT product_id , product_name , product_price , product_color FROM products EXCEPT SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T2.date_order_placed FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.order_id GROUP BY T1.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T2.order_id = T3.order_id
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T2.order_id = T3.order_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.shipment_id = T2.shipment_id ORDER BY T3.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T4.order_id WHERE T1.gender_code = "female"
SELECT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T1.gender_code = "female"
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT DISTINCT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT order_id , date_order_placed , sum(total_cost) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY order_id
SELECT order_id , date_order_placed , sum(total_amount_payment_method) FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS
SELECT order_item_status_code FROM ORDER_ITEMS GROUP BY order_item_status_code ORDER BY count(*) ASC
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM Customers WHERE phone_number LIKE '12%'
SELECT customer_first_name , login_password FROM Customers WHERE phone_number LIKE "12%"
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods );
SELECT order_status_code , date_order_placed FROM Orders
SELECT order_status_code , date_order_placed FROM Orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name , T2.product_name FROM Customers AS T1 JOIN Products AS T2 ON T1.customer_id = T2.product_id
SELECT T1.customer_first_name , T2.product_name FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(DISTINCT product_id) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T3.order_id
SELECT avg(product_price) FROM products
SELECT email_address , town_city , county FROM Customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address , T1.town_city , T1.county FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id IN T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id IN T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE "%bbc%"
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name , t1.channel FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id HAVING count(*) > 1
SELECT count(*) , channel_name FROM program GROUP BY channel_name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT t1.channel_id , t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.name = "Hank Baskett"
SELECT count(*) FROM radio
SELECT TRANMITER FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , original_airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != 'ABC'
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT TRANSMITTER FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(Erp_kW) FROM radio
SELECT affiliation , count(*) FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T1.transmitter , T2.city FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id
SELECT T1.transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id ORDER BY T1 ERP_kW DESC
SELECT T2.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T2.transmitter
SELECT DISTINCT TRANmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*) , T1.Driver_ID FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996 ORDER BY Speed DESC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Model , Build_Year , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Building_Year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Building_Year = 2012
SELECT count(*) FROM driver WHERE racing_series = 'NASCAR'
SELECT count(*) FROM driver WHERE racing_series = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT Vehicle_ID , Model FROM vehicle WHERE Builder = "Ziyang"
SELECT T2.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = "Ziyang" OR COUNT(*) = 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon' OR COUNT(*) > 2
SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon" GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name ASC
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT count(*) , racing_series FROM driver GROUP BY racing_series
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM EXAMS
SELECT count(*) FROM EXAMS
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT exam_date , exam_name FROM EXAMS WHERE subject_code != "Database"
SELECT Exam_Date FROM EXAMS WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_code , count(*) FROM Questions GROUP BY TYPE_of_Question_code
SELECT TYPE_of_Question_code , count(*) FROM Questions GROUP BY TYPE_of_Question_code
SELECT DISTINCT student_answer_text FROM student_answers WHERE comments = "Normal"
SELECT DISTINCT student_answer_text FROM student_answers WHERE comments = "Normal"
SELECT count(DISTINCT comments) FROM student_answers
SELECT count(DISTINCT comments) FROM student_answers
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.FirstName , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.email_address , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_answer DESC
SELECT T2.email_address , T1.date_of_answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT gender_mfu , count(*) FROM students GROUP BY gender_mfu
SELECT gender_mfu , count(*) FROM students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM STUDENTS WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_code FROM Questions GROUP BY TYPE_of_Question_code HAVING count(*) >= 3
SELECT TYPE_of_Question_code FROM Questions GROUP BY TYPE_of_Question_code HAVING count(*) >= 3
SELECT * FROM STUDENTS
SELECT * FROM Student_Assessments
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1)
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT T2.order_id , T2.order_date , T2.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT T2.order_id , T2.order_date , T2.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(DISTINCT t2.product_name) FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id WHERE t2.product_name = "Monitor"
SELECT count(DISTINCT t2.product_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id WHERE t1.order_status_code = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T3.customer_id = T2.customer_id WHERE T1.product_name = "Monitor"
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 OR sum(T2.order_quantity) > 3
SELECT T1.order_id , T1.order_date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 UNION SELECT T1.order_id , T1.order_date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT t1.Capital FROM region AS t1 JOIN building AS t2 ON t1.region_id = t2.region_id GROUP BY t1.region_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.Capital FROM building AS t1 JOIN region AS t2 ON t1.region_id = t2.region_id GROUP BY t1.region_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name FROM building ORDER BY Number_of_Stories DESC , Completed_Year
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t2.service_id HAVING count(*) > 3
SELECT T2.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details) FROM customers UNION SELECT count(DISTINCT service_details) FROM services
SELECT sum(t1.customer_details) , sum(t2.service_details) FROM Customers AS t1 JOIN Customers_and_Services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T2.status_code = "good"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" UNION SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = "good"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" INTERSECT SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Bad"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" INTERSECT SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = "bad"
SELECT t3.service_details FROM customer_interactions AS t1 JOIN channels AS t2 ON t1.channel_id = t2.channel_id JOIN services AS t3 ON t1.service_id = t3.service_id WHERE t2.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM integration_platforms WHERE integration_platform_details = 'Success'
SELECT count(*) FROM integration_platforms WHERE integration_platform_details = "Success"
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.status_code = 'Fail'
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.integration_platform_details = "Fail"
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.customer_id WHERE T2.Status_Code = "unsatisfied"
SELECT T4.service_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id JOIN Services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_OF_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_OF_POWERTRAIN , Annual_Fuel_Cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers WHERE membership_credit = (SELECT max(membership_credit) FROM Customers)
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY sum(T1.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T2.discount_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T2.name , T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Events
SELECT avg(amount_of_loan) FROM Student_Events
SELECT T2.bio_data , T1.student_id FROM Classs AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T2.bio_data , T1.student_id FROM Classs AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Ref_Event_Types AS T3 ON T2.event_type_code = T3.event_type_code
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Events AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Events AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Ref_Address_Types AS T2 ON T1.student_address_id = T2.address_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Ref_Address_Types AS T2 ON T1.student_id = T2.student_address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_address_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_id , T2.behaviour_monitoring_details FROM Behavior_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1Behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY T1Behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.event_type_code , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.event_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id NOT IN ( SELECT T4.student_id FROM Achievements AS T4 JOIN Students AS T3 ON T4.student_id = T3.student_id)
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT student_id FROM Achievements )
SELECT date_of_transcript , transcript_details FROM TRANSACTIONS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT T1.achievement_type_code , T2.achievement_details , T1.date_of_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.achievement_details , T2.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id INTERSECT SELECT T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T2.class_details = "COMPUTER LITERACY"
SELECT T2.teacher_details , T1.student_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details = "COMPUTER LITERACY"
SELECT count(*) , teacher_id FROM Teachers GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T1.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT date_of_loan FROM Student_Events ORDER BY date_of_loan ASC LIMIT 1
SELECT min(date_of_loan) FROM Student_Events
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T2.student_id = T3.student_id ORDER BY T3.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY sum(T2.amount_of_loan) DESC LIMIT 1
SELECT T2.teacher_details FROM TRANSACTIONS AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Student_Loans AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Leans GROUP BY student_id
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Courses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Student_Events AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN TRANSACTIONS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN TRANSACTIONS AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM Author
SELECT Name , Address FROM Client
SELECT Name , Address FROM Client
SELECT title , isbn , saleprice FROM BOOK
SELECT title , isbn , saleprice FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT Name , Address FROM Client ORDER BY Name
SELECT name , address FROM client ORDER BY name
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor
SELECT idorder , name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_Book IS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.title , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.ISBN , count(*) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.isbn , sum(T2.amount) FROM Book AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT sum(amount) , isbn FROM Books_order GROUP BY isbn
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.idorder
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.DateOrder
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idorder JOIN books_order AS t3 ON t2.idorder = t3.idorder GROUP BY t1.idclient ORDER BY sum(t3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE id NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE id NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(saleprice - purchaseprice) FROM BOOK
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT Title FROM BOOK ORDER BY SalePrice ASC LIMIT 1
SELECT Title FROM BOOK WHERE SalePrice = (SELECT min(SalePrice) FROM BOOK)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(T1.saleshipprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.id WHERE T3.name = "George Orwell"
SELECT avg(saleprice) FROM book WHERE author = 'George Orwell'
SELECT T1.SalePrice FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "Plato"
SELECT saleprice FROM book WHERE author = 'Plato'
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE author = 'Plato' AND purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T2.author = 'Plato' AND T1.salesprice < (SELECT avg(salesprice) FROM book)
SELECT Author FROM Book WHERE Title = "Pride and Prejudice"
SELECT T1.name FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T2.author IN (SELECT T3.name FROM author AS T3 JOIN author_book AS T4 ON T3.idauthor = T4.idauthor WHERE T3.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride' INTERSECT SELECT T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Prejudice'
SELECT idorder FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idorder = "Pride and Prejudice" INTERSECT SELECT idclient FROM orders WHERE idorder = "The Little Prince")
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM Pride INTERSECT SELECT idorder FROM Prejudice AND The Little Prince)
SELECT T3.ISBN FROM books AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T3.ISBN FROM books AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith'
SELECT T3.ISBN FROM authors AS T1 JOIN book_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = 'Peter Doe' INTERSECT SELECT T3.ISBN FROM authors AS T1 JOIN book_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = 'James Smith'
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.name = 'Peter Doe' EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.name = 'James Smith'
SELECT T3.Title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idorder = T2.idorder JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T1.Name = "Peter Doe" EXCEPT SELECT T3.Title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idorder = T2.idorder JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T1.Name = "James Smith"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review WHERE Rank = (SELECT max(Chapters) FROM book)
SELECT Rank FROM book ORDER BY Pages ASC LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating
SELECT T1.Title , T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T2.Book_ID ORDER BY COUNT(*) DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1
SELECT name FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM customer WHERE card_credit < 50 INTERSECT SELECT nationality FROM customer WHERE card_credit > 75
SELECT nationality FROM customer WHERE card_credit > 50 INTERSECT SELECT nationality FROM customer WHERE card_credit < 75
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T1.name , T2.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id ORDER BY T1.quantity DESC
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.quantity)
SELECT T1.name , sum(T2.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT t1.name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t1.overall_ranking > 100
SELECT t1.name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t2.year_join < 2018
SELECT T2.Name FROM club AS T1 JOIN member AS T2 ON T1.Club_ID = T2.Member_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(t1.age) FROM member AS t1 JOIN club AS t2 ON t1.member_id = t2.member_id WHERE t2.club_name = "Leadership"
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT T1.collection_subset_details FROM Collection_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = 'Top collection'
SELECT document_subset_name FROM Document_Subsets
SELECT document_subset_name FROM Document_Subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM Document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_id FROM Documents
SELECT document_object_id FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Marlin"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE OWNER = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_id FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT document_id FROM documents EXCEPT SELECT parent_document_object_id FROM Document_Objects
SELECT parent_document_id , count(*) FROM Document_Objects GROUP BY parent_document_id
SELECT count(*) , parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.Parent_Collection_ID FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT T1.Parent_Collection_ID FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT collection_name FROM collections WHERE parent_collection_id = "null"
SELECT collection_name FROM collections WHERE parent_collection_id = other.collection_id
SELECT document_id FROM Document_Objects GROUP BY document_id HAVING count(*) > 1
SELECT T1.document_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_id HAVING count(*) > 1
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT T1.document_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T1.owner = "Ransom"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Ransom"
SELECT T1.collection_subset_id , T1.collection_subset_name , count(*) FROM Collection_subsets AS T1 JOIN Collection_documents AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T1.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT document_id , count(*) FROM Documents_in_collections GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT document_id , count(*) FROM Document_Objects GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Documents_in_collections GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id , count(*) FROM Document_Objects GROUP BY document_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.Related_Collection_ID = T3.Collection_ID WHERE T3.collection_name = "Braeden"
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.owner = 'Braeden'
SELECT T2.document_subset_name FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = 'Braeden'
SELECT DISTINCT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden'
SELECT document_subset_id , document_subset_name , count(Documents_in_Collections) FROM Document_subsets GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(Documents_in_collections) FROM Document_subsets GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T2.document_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T2.document_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*) , T1.document_id FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_id
SELECT T1.document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id
SELECT count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_subset_name , T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_substitute_id = T2.Collection_ID WHERE T1.Collection_name = "Best" GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" AND T0.document_subset_name = "Best"
SELECT DISTINCT T1.documentobject_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1collection_id = T2collection_id WHERE T2collection_name = 'Best' AND T1.documentsubset_name = 'Best for 2000'
SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" EXCEPT SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.document_subset_name = "Best" AND T1.year = 2000
SELECT DISTINCT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT T1.document_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" OR T1.year = 2000
SELECT DISTINCT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' OR T1.document_subset_name = 'Best for 2000'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.collection_name = "Best"
SELECT collection_name FROM collections WHERE collection_name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT T1.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN Document_Objects AS T3 ON T2.Document_object_id = T3.Document_object_id WHERE T3.collection_name = "Best in"
SELECT T1.Subset FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID JOIN Documents_in_Collections AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Collection_Name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T2.voice_sound_quality , T2.rhythm_tempo , T2.stagepresence FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T1.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stagepresence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stagepresence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T2.rhythm_tempo) , T1.name , T1.language FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.enGLISH = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE '%Is%'
SELECT T1.name , T1.participant_id FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM City WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD"
SELECT fname , lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code WHERE t1.country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student EXCEPT SELECT StuID FROM city WHERE country = 'USA'
SELECT StuID FROM student EXCEPT SELECT StuID FROM city WHERE country = 'USA'
SELECT StuID FROM Student WHERE sex = 'F' INTERSECT SELECT T1.StuID FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "PA"
SELECT StuID FROM Student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = "PA")
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT distance FROM Direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM Direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM Direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city2_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city2_code FROM direct_distance WHERE distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL" AND T2.city2_code != "BAL"
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM Boston , city2_code WHERE city2_code IN (SELECT city2_code FROM city WHERE city_name = "Boston")
SELECT avg(distance) FROM Boston , other cities
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code WHERE t2.distance = (SELECT min(distance) FROM direct_distance WHERE city2_code = "Chicago")
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code WHERE t2.city1_code = "Chicago" ORDER BY t2.distance LIMIT 1
SELECT city_name FROM city WHERE city_name = (SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM direct_distance WHERE distance = (SELECT max(distance) FROM direct_distance WHERE city2_code = "Boston")
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city2_code = "Boston")
SELECT city_code , sum(distance) FROM Direct_distance GROUP BY city_code
SELECT city_code , sum(distance) FROM Direct_distance GROUP BY city_code
SELECT T1.city_name , avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code
SELECT t1.city_name , avg(distance) FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code GROUP BY t1.city_code
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" AND T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT T2.fname , T2.lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM Student WHERE Fname = "Linda" AND Lname = "Smith")
SELECT T2.fname , T2.lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM Direct_distance WHERE city1_code = "Linda Smith")
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "LINDA"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "LINDA"
SELECT * FROM Sailors WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.name = 'Sailor with id 1'
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.id WHERE T3.name = "1"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name = 102
SELECT T2.name FROM Reservations AS T1 JOIN Sailors AS T2 ON T1.sid = T2.id JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = 102
SELECT count(DISTINCT bid) FROM Reserves
SELECT T2.bid FROM Reservations AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors EXCEPT SELECT min(age) FROM sailors
SELECT count(DISTINCT name) FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.resid GROUP BY T2.resid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.resid GROUP BY T2.resid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reservations AS T2 ON T1.sid = T2.resid GROUP BY T1.sid HAVING count(*) > 1
SELECT T1.name FROM sailors AS T1 JOIN resvs AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "Red" OR T2.color = "Blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.id FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T1.id FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T1.sid FROM Reservations AS T1 JOIN Boats AS T2 ON T2.bid = T1.bid WHERE T2.color = "Red" INTERSECT SELECT T1.sid FROM Reservations AS T1 JOIN Boats AS T2 ON T2.bid = T1.bid WHERE T2.color = "Blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.resid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.resid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors EXCEPT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reservations AS T2 ON T1.sid = T2.sid
SELECT id FROM sailors EXCEPT SELECT T1.id FROM sailors AS T1 JOIN reservations AS T2 ON T1.sid = T2.resid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN Reservations AS T2 ON T1.sid = T2.sid
SELECT T2.name FROM Reservations AS T1 JOIN Sailors AS T2 ON T1.sid = T2.id JOIN Boats AS T3 ON T3.bid = T1.bid WHERE T3.id = 103
SELECT T1.name FROM sailors AS T1 JOIN resvs AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name , rating FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.resid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM Sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(rating) , max(age) FROM Sailors
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN Reservations AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T2.name , T2.bid FROM Reservations AS T1 JOIN Sailors AS T2 ON T1.sid = T2.id WHERE T2.age > 1 GROUP BY T2.bid
SELECT count(*) , T2.name FROM Reservations AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T2.name
SELECT avg(T1.age) , T2.rating FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" GROUP BY T2.rating
SELECT avg(T1.age) , T2.rating FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" GROUP BY T2.rating
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'Red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T3.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.id WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T1.rating > ( SELECT max(rating) FROM sailors WHERE T3.color = 'red' )
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T1.rating > (SELECT max(rating) FROM sailors WHERE T2.bid IN (SELECT T2.bid FROM Reserves WHERE T3.color = 'red')
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.name = "Melon"
SELECT T1.name FROM sailors AS T1 JOIN resaves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = "Melon"
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT earpad) FROM headphone
SELECT count(DISTINCT earpad) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads , count(*) FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT DISTINCT earpad FROM headphone WHERE construction != 'plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_opened
SELECT Name FROM store ORDER BY Date_opened
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT T1.name , count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id HAVING T2.Headphone_ID = 'Yes'
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
SELECT neighborhood FROM store EXCEPT SELECT T1.headroom FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id
SELECT neighborhood FROM store EXCEPT SELECT T1.headroom FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Paper
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM Paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM Paper WHERE venue = "NAACL" AND YEAR = 2000
SELECT count(*) FROM publication WHERE YEAR = 2009 AND university = 'Columbia University'
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id JOIN affiliation AS t4 ON t2.affiliation_id = t4.affiliation_id WHERE t4.name = 'Columbia University' AND t3.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM Paper ORDER BY YEAR
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id JOIN affiliation AS t4 ON t2.affiliation_id = t4.affiliation_id WHERE t4.name = 'Harvard University'
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id JOIN affiliation AS T4 ON T2.affiliation_id = T4.affiliation_id WHERE T4.name = 'Harvard University'
SELECT T3.title , T3.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown'
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown'
SELECT T1.title , T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford' INTERSECT SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia'
SELECT T3.title , T3.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" AND T1.name = "Kathleen" AND T1.name = "Rambow" AND T1.name = "Owen"
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown' AND T1.name = 'Kathleen' INTERSECT SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Rambow' AND T1.name = 'Owen'
SELECT T2.title , T2.paper_id FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = 'Mckeown' EXCEPT SELECT T2.title , T2.paper_id FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = 'Rambow'
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown' EXCEPT SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Rambow'
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" OR T1.name = "Rambow" AND T2.author_id = "Owen"
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" OR T1.name = "Rambow" AND T2.author_id = "Owen"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T2.affiliation_id ORDER BY count(*)
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Citation WHERE paper_id = "A00-1002"
SELECT count(*) FROM Citation WHERE cited_paper_id = "A00-1002"
SELECT count(*) FROM Citation WHERE paper_id = "D12-1027"
SELECT count(*) FROM citation WHERE paper_id = 12-1027
SELECT T1.cited_paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.paper_id FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT T2.title , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Mckeown , Kathleen AS T1 JOIN Citation AS T2 ON T1.author_id = T2.cited_author_id
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown" AND t1.name = "Kathleen"
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown" AND t1.name = "Kathleen"
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_author_id GROUP BY t2.cited_author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_author_id GROUP BY t2.cited_author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.venue , T3.year FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" INTERSECT SELECT T3.venue , T3.year FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Kathleen"
SELECT T3.venue , T3.year FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" INTERSECT SELECT T3.venue , T3.year FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Kathleen"
SELECT venue , YEAR FROM Paper WHERE title = 'Columbia University'
SELECT venue , YEAR FROM Paper WHERE title = 'Columbia University'
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Columbia University' AND t3.year < 2009
SELECT count(*) FROM affiliation AS t1 JOIN author AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN author_list AS t3 ON t2.author_id = t3.author_id WHERE t1.name = "Columbia University" OR t3.year <= 2009
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND affiliation_id IN (SELECT affiliation_id FROM university WHERE name = 'Stanford University')
SELECT count(*) FROM count(*) WHERE venue = 'Stanford University' AND YEAR >= 2000 AND YEAR <= 2009
SELECT t2.title FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM (SELECT * FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" INTERSECT SELECT * FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Kathleen")
SELECT count(*) FROM (SELECT * FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" INTERSECT SELECT * FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Kathleen")
SELECT t3.title FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown" AND t1.name = "Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.title = (SELECT t3.title FROM author AS t4 JOIN author_list AS t2 ON t4.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t4.name = 'Mckeown' INTERSECT SELECT t3.title FROM author AS t4 JOIN author_list AS t2 ON t4.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t4.name = 'Kathleen')
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM Paper EXCEPT SELECT T1.paper_id , T1.title FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id
SELECT paper_id , title FROM Paper WHERE paper_id NOT IN (SELECT paper_id FROM Citation)
SELECT name FROM affiliation WHERE address LIKE '%China%' INTERSECT SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t2.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN author_list AS t3 ON t2.author_id = t3.author_id WHERE t3.address LIKE "%China%" GROUP BY t3.address ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , venue FROM Paper GROUP BY venue
SELECT count(*) , venue , YEAR FROM Paper GROUP BY venue , YEAR
SELECT sum(T1.title) , T2.name FROM Paper AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name
SELECT count(*) , affiliation_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY affiliation_id
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE cited_paper_id > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE citation_count > 50 )
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = 'ACLR'
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t2.venue = 'NAACL' INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t2.venue = 'ACLR'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE affiliation_id = 'ACLR')
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = 'ACLS')
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT Institution_Name , LOCATION , Founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff
SELECT T3.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE Nationality = 'ACL' INTERSECT SELECT name FROM staff WHERE Nationality = 'Naccl'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.CONference_ID = T3.CONference_ID WHERE T3.Conference_Name = 'ACLR' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.CONference_ID = T3.CONference_ID WHERE T3.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.CONference_ID = T3.CONference_ID WHERE T3.Year = 2003 OR T3.Year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.CONference_ID = T3.CONference_ID WHERE T3.Year = 2003 OR T3.Year = 2004
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T2.Conference_Name , T1.Year , count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID ORDER BY COUNT(*) DESC LIMIT 2
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID ORDER BY COUNT(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR != 2004)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR != 2004)
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "F-14 Fighter"
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Jones' AND age = 32
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.bomber = 'B-52'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2(plane_name) = "B-52 Bomber"
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub")
SELECT pilot_name FROM pilotskills WHERE age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1(plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1(plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT DISTINCT plane_name FROM pilotskills WHERE age = 41 AND pilot_name = 'Smith'
SELECT T2(plane_name) FROM PilotSkills AS T1 JOIN Aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 41 AND T1.pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilotskills AS T1 JOIN planes AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM Smith WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT T1.type FROM planes AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.type
SELECT DISTINCT plane_name FROM PilotSkills ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "Piper Cub" AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "F-14 Fighter" AND age < 30
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14 Fighter' AND T1.age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT T3.pilot_name FROM Aircraft AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN Skills AS T3 ON T2.skill_name = T3.skill_name WHERE T1.cuber = "Piper" EXCEPT SELECT T3.pilot_name FROM Aircraft AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN Skills AS T3 ON T2.skill_name = T3.skill_name WHERE T1.cuber = "Bomber"
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T2(plane_name = 'Piper Cub' INTERSECT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T2(plane_name = 'B-52 Bomber'
SELECT t3.pilot_name FROM Aircraft AS t1 JOIN PilotSkills AS t2 ON t1.plane_name = t2.plane_name JOIN Hangar AS t3 ON t2.location = t3.location WHERE t1.cuber = "Piper" INTERSECT SELECT t3.pilot_name FROM Aircraft AS t1 JOIN PilotSkills AS t2 ON t1.plane_name = t2.plane_name JOIN Hangar AS t3 ON t2.location = t3.location WHERE t1.bomber = "B-52"
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T3.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN Aircraft AS T3 ON T2.aircraft_name = T3.aircraft_name WHERE T1.location = 'Austin' INTERSECT SELECT T3.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN Aircraft AS T3 ON T2.aircraft_name = T3.aircraft_name WHERE T1.location = 'Boston'
SELECT T3.pilot_name FROMHangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN AirportSkills AS T3 ON T2.airport_name = T3.airport_name WHERE T1.location = 'Austin' INTERSECT SELECT T3.pilot_name FROMHangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name JOIN AirportSkills AS T3 ON T2.airport_name = T3.airport_name WHERE T1.location = 'Boston'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name
SELECT TYPE , count(*) FROM PilotSkills GROUP BY TYPE
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , plane_name FROM pilot_skills ORDER BY plane_name
SELECT DISTINCT plane_name , pilot_name FROM PilotSkills ORDER BY plane_name
SELECT pilot_name , plane_name , age FROM pilot_skills ORDER BY age DESC LIMIT 1
SELECT DISTINCT T2plane_name , T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT avg(age) , count(*) FROM pilotskills WHERE plane_name != "null" GROUP BY count(*)
SELECT avg(T1.age) , count(*) , T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) , avg(age) FROM pilotskills WHERE plane_name IN (SELECT DISTINCT plane_name FROM pilotskills WHERE avg(age) < 35)
SELECT avg(age) , count(*) FROM pilotskills WHERE avg(age) < 35 GROUP BY plane_name
SELECT t2.location FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name ORDER BY t1.age LIMIT 1
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT DISTINCT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT max(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub")
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE pilot_name = "Piper Cub")
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT Name FROM district WHERE Government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speak_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004
SELECT count(*) , T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id WHERE T2.rank_position = 1 INTERSECT SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id WHERE T2.rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE speaksman_id NOT IN (SELECT speaksman_id FROM spokesman_district)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE YEAR = (SELECT max(YEAR) FROM sculptures)
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80
SELECT fname , lname FROM artists WHERE birthYear > 1850
SELECT fname , lname FROM artists WHERE birthYear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.year > 1920
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY death_year DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT lname FROM artists ORDER BY death_year - birth_year LIMIT 1
SELECT fname , lname FROM artists ORDER BY death_year ASC LIMIT 1
SELECT fname , age FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT fname , age FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT T2.title FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid ORDER BY T1.birthyear DESC LIMIT 1
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid ORDER BY T1.birthyear DESC LIMIT 1
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T1.fname = "Mary"
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T1.birth_year < 1850
SELECT width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.birthyear < 1850
SELECT T2.location , T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T1.fname = "Pablo"
SELECT T2.location , T2.mediumon FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T1.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title = T3.title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.mediumon = 'yes'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.location = 241 AND T2.title = "medium"
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.title = "Oil painting" AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE medium = 'oil' AND YEAR > 1910
SELECT title FROM paintings WHERE YEAR > 1910
SELECT DISTINCT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.title = "Medium" AND T2.location = 240
SELECT DISTINCT artistid FROM paintings WHERE title = "Medium" AND location = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT paintingid FROM paintings WHERE age > (SELECT min(age) FROM paintings WHERE location = 240)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.artistid = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.artistid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT LOCATION FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE mediumOn = "on canvas"
SELECT LOCATION FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE mediumOn = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'Oil' AND paintingid = 241
SELECT max(height_mm) , max(painterid) FROM paintings WHERE YEAR < 1900
SELECT height_mm , paintingid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY name
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY name
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.lname , T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT height_mm , painterid FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE paintingid = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE location = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2medium = "oil" GROUP BY T2.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.title = "Oil" GROUP BY T2.artistid ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings ORDER BY YEAR
SELECT title , LOCATION , painterid FROM paintings ORDER BY YEAR , LOCATION , title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.artistid
SELECT fname , lname FROM artists EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE mediumOn = 'Medium'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND mediumon = 'no'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team , Winning_driver FROM race ORDER BY Winning_team
SELECT Winning_team , Winning_driver FROM race ORDER BY Winning_team
SELECT DISTINCT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT DISTINCT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT ENTRANT FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Driver_Name , T2.age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Race_name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26
SELECT T2.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT COUNT(*) , constructor FROM driver GROUP BY constructor
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY COUNT(*) DESC LIMIT 1
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY COUNT(*) DESC LIMIT 1
SELECT ENGINE FROM driver GROUP BY ENGINE HAVING COUNT(*) >= 2
SELECT ENGINE FROM driver GROUP BY ENGINE HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT T3.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T1.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T3.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T1.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT DISTINCT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT DISTINCT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT max(overall_score) , min(overall_score) FROM countries WHERE name != "Norway"
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.language_id FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T2.language_id = T1.id GROUP BY T1.id
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T2.language_id = T1.id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT avg(overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T2.language_id = T1.id JOIN countries AS T3 ON T2.country_id = T3.id GROUP BY T1.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id GROUP BY T2.language_id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "Ropeway"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.middle_name LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Ref_User_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_description LIKE "%Mother%"
SELECT T1.first_name FROM users AS T1 JOIN user_property_history AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T2.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE garden_yn = 'Y'
SELECT avg(room_count) FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id JOIN features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.feature_name = 'Garden'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_name = 'Swimming Pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_name = "Swimming Pool"
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM ROLES
SELECT count(DISTINCT room_size) FROM ROLES
SELECT T1.user_id , T1.first_name , T1.last_name FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT T1.user_id , T2.search_seq FROM users AS T1 JOIN user_searchs AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_Searches
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT T1.search_datetime , T1.search_string FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id ORDER BY T2.login_name DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM Addresses EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN User_Property_History AS T2 ON T1.address_id = T2.property_id GROUP BY T2.property_id HAVING count(*) <= 2
SELECT zip_postcode FROM Addresses EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN User_Property_History AS T2 ON T1.address_id = T2.property_id GROUP BY T2.property_id HAVING count(*) <= 2
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.date_registered ASC LIMIT 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.user_id ORDER BY T2.date_registered LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE is_buyer = 'yes' ORDER BY first_name
SELECT count(*) FROM user_searches WHERE is_buyer = 'T'
SELECT count(*) FROM user_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 'Yes'
SELECT date_registered FROM users WHERE login_name = "ratioe"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_buyer = 'T' OR is_buyer = 'L'
SELECT line_1_number_building , line_2_number_street , line_3_area_locality FROM Addresses WHERE town_city = "Senior Citizens"
SELECT building , street , town_city FROM Addresses WHERE other_address_details = 'senior'
SELECT count(*) FROM ( SELECT T1.property_id FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2 )
SELECT count(*) FROM ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.property_id HAVING count(*) >= 2 )
SELECT count(*) , T1.property_name FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id GROUP BY T1.property_name
SELECT count(*) , property_id FROM Property_photos GROUP BY property_id
SELECT T1.owner_user_id , count(*) FROM Users AS T1 JOIN Property_Features AS T2 ON T1.user_id = T2.owner_user_id JOIN Property_Photos AS T3 ON T2.property_id = T3.property_id GROUP BY T1.owner_user_id
SELECT count(*) , T1.user_id FROM users AS T1 JOIN user_property_history AS T2 ON T1.user_id = T2.user_id JOIN properties AS T3 ON T2.property_id = T3.property_id WHERE T3.property_name = 'photo' GROUP BY T1.user_id
SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID = 'single' OR OWNER_USER_ID = 'student'
SELECT sum(price_max) FROM properties WHERE owner_user_id = 'single' OR owner_user_id = 'student'
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.property_type_description , T2.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_description , T2.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.county FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.county FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id AND T3.property_name = 'Ref.Property'
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id
SELECT * FROM user_searchs WHERE user_id NOT IN ( SELECT user_id FROM user_property_history )
SELECT search_string FROM user_searches WHERE user_id NOT IN ( SELECT user_id FROM user_property_history )
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Property_Features AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T2.bike_id = T1.id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T1.nation = 'Russia' OR T1.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECTcyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 )
SELECT DISTINCT T3.product_name FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T1.result > '4:21.558'
SELECT T3.product_name , T3.price FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T1.name = 'Bradley Wiggins' INTERSECT SELECT T3.product_name , T3.price FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T1.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT max(Price) , max(Flavor) FROM goods WHERE Food = "Cake"
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(price) , min(flavor) FROM goods WHERE food = "cookie"
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber JOIN goods AS T4 ON T3.goodings = T4.id WHERE T4.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.orderid = T3.orderid JOIN goods AS T4 ON T3.goodid = T4.id WHERE T4.flavor = "Lemon"
SELECT count(*) , T1.flavor FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receipt WHERE T1.flavor = T2.flavor GROUP BY T1.flavor
SELECT T1.Food , COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.Receipt WHERE T2.CustomerId NOT IN (SELECT T1.CustomerId FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.CustomerId GROUP BY T1.Food ORDER BY count(*) DESC LIMIT 1)
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT count(*) FROM goods WHERE food = "Cake"
SELECT count(DISTINCT T1.flavor) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T2.ordering = "cake"
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food = "croissant"
SELECT DISTINCT T2.Item FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid WHERE T1.firstname = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.ReceiptNumber WHERE T2.CustomerId = 15
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = 'Cake' INTERSECT SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = 'Cookie'
SELECT receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.good_id = T2.id WHERE T2.flavor = "Cake" INTERSECT SELECT receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.good_id = T2.id WHERE T2.flavor = "Cookie"
SELECT T1.receiptnumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.item WHERE T1.lastname = "LOGAN" AND T3.flavor = "Croissant"
SELECT T1.receiptnumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = "Logan" AND T2.flavor = "Croissant"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.CustomerId ORDER BY T2.Price DESC LIMIT 1
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.CustomerId ORDER BY T2.Price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT food , count(*) FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T1.receiptnumber FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.goodid = T3.id WHERE T3.price > 13
SELECT DISTINCT T1.receiptnumber FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.goodid = T3.id WHERE T3.price > 13
SELECT T1.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.ReceiptNumber = T3.ReceiptNumber JOIN goods AS T4 ON T3.Goods = T4.id WHERE T4.price > 15
SELECT T1.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.ReceiptNumber = T3.ReceiptNumber JOIN goods AS T4 ON T3.Goods = T4.id WHERE T4.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Price , id FROM goods WHERE Price = "70"
SELECT id , price FROM goods WHERE price = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT T1.Ordinal FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Flavor = "good" ORDER BY T1.Ordinal
SELECT DISTINCT id FROM items ORDER BY id
SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.good_id = T2.id WHERE T2.flavor = "Apple" OR T1.customerid = 12
SELECT T1.receiptnumber FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "Apple" OR T1.id = 12
SELECT Date , receiptnumber FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN goods AS T3 ON T1.ReceiptNumber = T3.Id WHERE T3.Price > 10 OR T1.Date = (SELECT min(Date) FROM receipts)
SELECT receiptnumber FROM receipts WHERE date IN (SELECT min(date) FROM receipts WHERE price > 10)
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND flavor = "Cookie" INTERSECT SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND flavor = "Cake"
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND flavor = "Cookies" OR flavor = "Cakes"
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = 'Blackberry' OR flavor = 'Blueberry'
SELECT avg(price) FROM goods WHERE flavor = 'Blackberry' OR flavor = 'Blueberry'
SELECT min(price) FROM goods WHERE flavor = "Cheese"
SELECT min(price) FROM good WITH cheese
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Name , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date , COUNT(DISTINCT T2.CustomerId) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.Date
SELECT T1.Date , COUNT(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.Date
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber JOIN goods AS T4 ON T3.goodings = T4.id WHERE T4.flavor = "Apple" AND T2.ordering = 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber JOIN goods AS T4 ON T3.goodings = T4.id WHERE T4.flavor = "Apple" AND T3.ordering = 100
SELECT id FROM cookies WHERE price < (SELECT min(price) FROM cookies WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Cake') AND flavor != 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T2.Ford = "Cakes" ORDER BY T1.flavor
SELECT id , flavor FROM cakes ORDER BY flavor
SELECT DISTINCT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Chocolate" EXCEPT SELECT T1.id FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.receiptnumber GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = "Chocolate" GROUP BY T1.id HAVING count(*) <= 10
SELECT DISTINCT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT DISTINCT flavor FROM goods WHERE food = "Tart"
SELECT DISTINCT flavor FROM goods WHERE food = "Cakes" EXCEPT SELECT DISTINCT flavor FROM goods WHERE food = "Tart"
SELECT * FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.id FROM items AS T1 JOIN receipts AS T2 ON T1.order = T2.order GROUP BY T2.order ORDER BY count(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.receipt = T3.id WHERE T3.price > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.receipt WHERE T3.price > 150 GROUP BY T1.id HAVING sum(T3.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.id , avg(T2.price) FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 100
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 100 GROUP BY T1.Date HAVING sum(T3.Price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor , Car_Owner FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Team FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Team FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Official_native_language = "English"
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = "English")
SELECT Country FROM country WHERE Country IN (SELECT Country FROM driver WHERE Points > 150)
SELECT Country FROM country WHERE Country IN (SELECT Country FROM driver WHERE Points > 150)
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT Country FROM country WHERE Country IN (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Make = "Chevrolet")
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country != (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID HAVING COUNT(*) >= 2
SELECT T2.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT DISTINCT affiliation FROM institution WHERE city != 'Vancouver'
SELECT affiliation FROM institution WHERE city != "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.name , T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
SELECT T1.Name , T3.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID JOIN nickname AS T3 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id HAVING count(*) >= 1
SELECT sum(t1.number_of_championships) FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id WHERE t1.affiliation = 'Public'
SELECT sum(T1.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT avg(T1.value) , T2.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT avg(warehouse) , avg(value) FROM boxes
SELECT avg(Value) , sum(Value) FROM Boxes
SELECT avg(Value) , sum(Value) FROM Boxes
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(Value) , max(Value) , Contents FROM Boxes GROUP BY Contents
SELECT avg(Value) , max(Value) , Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Contents) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1_contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1_contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse = 'Chicago' INTERSECT SELECT contents FROM boxes WHERE warehouse = 'New York'
SELECT TYPE(Contents) FROM boxes WHERE Warehouse NOT IN (SELECT Code FROM Warehouses WHERE LOCATION = "New York")
SELECT DISTINCT contents FROM boxes EXCEPT SELECT DISTINCT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = "New York"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.warehouse FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2_contents = 'Rocks' OR T2_contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2_contents = 'Rocks' OR T2_contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = 'Scissors'
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT Contents FROM Boxes ORDER BY Contents ASC
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = "Rocks")
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT avg(T1.value) , T2.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150
SELECT avg(T1.value) , T2.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150
SELECT sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(value) , count(*) FROM boxes
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT LOCATION , avg(capacity) , max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT T2.location , max(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT warehouse , count(*) FROM Boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE contents = "Rocks"
SELECT count(DISTINCT T1.warehouse) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "Rocks"
SELECT T1.code , T2.name FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT T2.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago'
SELECT code FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity > 100
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.capacity > T2.capacity
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT home_conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university ORDER BY sum(enrollment) LIMIT 1
SELECT home_conference FROM university ORDER BY enrollment LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T3.Major_Name , T2.Rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T1.University_Name = "8/%"
SELECT T1.Rank , T2.Major_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T3.University_Name = "8/%"
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T2.Rank LIMIT 1
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T2.Rank DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 GROUP BY T2.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Major_ID = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name , T2.Reputation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name , university_ranking FROM university WHERE state = 'Wisconsin'
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID ORDER BY sum(T2.Reputation_point) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name >= "Accounting" ORDER BY T2.Rank DESC LIMIT 3
SELECT T3.University_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T2.Major_Name = "Accounting" OR T1.Rank >= 3
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.overall_ranking <= 5
SELECT sum(Enrollment) FROM university WHERE University_ID IN (SELECT University_ID FROM overall_ranking WHERE Rank <= 5)
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating = "null"
SELECT Title FROM Movies WHERE Rating = "null"
SELECT Title FROM Movies WHERE Rating = ‘G’
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = ‘G’
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(DISTINCT T2.title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT count(DISTINCT T2.title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT count(DISTINCT T2.Title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(DISTINCT title) FROM movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM movietheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" OR T1.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" OR T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Imperial'
SELECT Title FROM Movies EXCEPT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT DISTINCT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY COUNT(*) DESC LIMIT 1
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT name FROM movietheaters WHERE movie = (SELECT title FROM movies)
SELECT name FROM movietheaters GROUP BY name HAVING count(*) >= 1
SELECT Name FROM MovieTheaters WHERE Movie = "null"
SELECT Name FROM MovieTheaters WHERE Movie = "No Movie"
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM MovieTheaters WHERE Rating = "Unrated"
SELECT * FROM MovieTheaters WHERE Rating = "Unrated"
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recpient ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM package WHERE sender = 'Leo Wong'
SELECT sum(weight) FROM package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary , position FROM Employee WHERE name = "Turanga Leela"
SELECT salary , position FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM Employee WHERE POSITION = 'Intern'
SELECT avg(salary) FROM Employee
SELECT LEVEL FROM Has_clearance WHERE POSITION = "Physician"
SELECT DISTINCT LEVEL FROM has_clearance
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong"
SELECT count(*) FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T1.employee = T3.accountnumber WHERE T3.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong"
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong"
SELECT T2.Sender FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender WHERE T1.Name = "Leo Wong"
SELECT DISTINCT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong" OR T1.name = T2.reipient WHERE T1.employeeid = T2.employeeid
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "Ogden Wernstrom" AND T2.Name != "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber JOIN Package AS T3 JOIN Client AS T4 ON T3.Recipient = T4.AccountNumber WHERE T4.Name = "Ogden Wernstrom" AND T4.Name = "Leo Wong"
SELECT T1_contents FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "John Zoidfarb"
SELECT T1.contents FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "John Zoidfarb"
SELECT T2.package_number , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = 'John'
SELECT PackageNumber , Weight FROM Package WHERE Sender = "John" OR Sender = "John"
SELECT PackageNumber , Weight FROM Package ORDER BY Weight DESC LIMIT 3
SELECT PackageNumber , Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1
SELECT min(weight) , min(Recipient) , min(Sender) FROM Package
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT Name , Coordinates FROM PLANET ORDER BY Name
SELECT Name , Coordinates FROM PLANET ORDER BY Name
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip" AND T2.gender = "male"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J Fry'
SELECT Date FROM SHipment
SELECT Date FROM SHipment
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = 'Mars' AND T2.name = 'Turanga Leela'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T3.planetid = T1.planet WHERE T3.name = 'Mars' AND T2.name = 'Turanga Leela'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = 'Mars' OR T2.name = 'Turanga Leela'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T3.planetid = T1.planet WHERE T3.name = 'Mars' AND T2.name = 'Turanga Leela'
SELECT T2.name , sum(T1.total shipments) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T2.manager
SELECT count(*) , T1.name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT sum(weight) FROM package WHERE shipment = 'Mars'
SELECT sum(weight) FROM package WHERE shipment = 'Mars'
SELECT T2.name , sum(T1.weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.shipment = T2.shipmentid GROUP BY T2.name
SELECT sum(weight) , T1.name FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipment GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE sum(T1.weight) > 30
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE sum(T1.weight) > 30
SELECT T2 packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender JOIN shipment AS T3 ON T3.shipmentid = T2.shipmentid JOIN planet AS T4 ON T4.planetid = T3.planet WHERE T4.name = 'Omicron Persei' AND T1.name = 'Zapp Brannigan'
SELECT count(*) FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T1.employee = T3.accountnumber WHERE T3.name = "Zapp Brannigan" AND T2.name = "OMICRON PERSEO" AND T1.year = 8
SELECT T2.package_number FROM client AS T1 JOIN package AS T2 ON T1.account_number = T2.sender JOIN shipment AS T3 ON T3.shipmentid = T2.shipmentid JOIN planet AS T4 ON T4.planetid = T3.planet WHERE T4.name = 'Omicron Persei' AND T1.name = 'Zapp Brannigan'
SELECT count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Omicron Persei 8" UNION SELECT count(*) FROM client AS T3 JOIN package AS T4 ON T3.accountnumber = T4.shipper WHERE T3.name = "Zapp Brannigan"
SELECT PackageNumber , Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT PackageNumber , Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Level = 'Omega III'
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Level = "Omega III"
SELECT T2.name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T1.employee = 1
SELECT T2.Name FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING count(*) = 1
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR more than 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR more > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN ( SELECT Employee FROM Has_Clearance WHERE LEVEL = "Mars" )
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN ( SELECT Employee FROM Has_Clearance WHERE Date = "Mars" )
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE franchise != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT player_name FROM player ORDER BY player_name ASC
SELECT player_name FROM player ORDER BY player_name
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT T1.player_name , T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.Title = "Super Mario World"
SELECT T1.player_name , T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.title = "Super Mario World"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T2.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(T1.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = "Guard"
SELECT avg(T1.Unit_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT T1.title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT franchise , count(*) FROM game GROUP BY franchise
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT T2.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.College = 'Oklahoma' INTERSECT SELECT T2.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.College = 'Auburn'
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Oklahoma' OR T3.College = 'Auburn'
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game EXCEPT SELECT t1.title FROM game AS t1 JOIN game_player AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t2.player_id = t3.player_id WHERE t3.position = 'Guard'
SELECT title FROM game WHERE game_id NOT IN (SELECT T1.game_id FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.position = 'Guard')
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT name , year_profits_billion FROM press ORDER BY year_profits_billion DESC
SELECT T1.Name FROM author AS T1 JOIN press AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Year_Profits_billion > 15 GROUP BY T2.Year_Profits_billion ORDER BY T2.Year_Profits_billion
SELECT name FROM press WHERE Yearly Profit_billion > 15 OR Monthly Profit_billion > 1
SELECT avg(YEAR_PROfits_billion) , max(YEAR_PROfts_billion) FROM press
SELECT avg(YEAR_PROFITS_billion) , max(YEAR_PROFITS_billion) FROM press
SELECT name FROM publisher ORDER BY monthly_profit DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM publisher ORDER BY monthly_profit_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profts_billion DESC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING COUNT(*) > 1
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 1
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.name , sum(T2.saleship_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T1.name , sum(T2.saleship_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T1.name , count(*) FROM press AS T1 JOIN book AS T2 ON T1.prise_id = T2.prise_id WHERE T2.book_amount > 1000 GROUP BY T1.name
SELECT T1.name , count(*) FROM press AS T1 JOIN book AS T2 ON T1.prpress_id = T2.prpress_id WHERE T2.sale_amount > 1000 GROUP BY T1.prpress_id
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.book_amount DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Press_ID = "Accor"
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = " Addison Denesik"
SELECT count(*) FROM Documents
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_details = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT process_name FROM Business_Processes WHERE next_process_id = 9
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_Processes
SELECT DISTINCT T1.process_id FROM Documents_Processes AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_Processes
SELECT process_id FROM Business_Processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_outcomes AS T1 JOIN Process_status AS T2 ON T1.process_outcome_code = T2.process_outcome_code JOIN Documents_Processes AS T3 ON T3.document_id = T0.document_id WHERE T0.document_id = 0
SELECT T3.process_name FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id JOIN Business_Processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT count(*) , T1.process_id FROM Business_Processes AS T1 JOIN Documents_Processes AS T2 ON T1.process_id = T2.process_id GROUP BY T1.process_id
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id WHERE T2.process_id = 9 AND T1.document_name = "0"
SELECT staff_id , count(*) FROM Documents_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_details , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agry_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agility_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agery_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agility_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agery_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agility_id HAVING count(*) >= 2
SELECT T1.agency_id , T2.agy_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agility_id HAVING count(*) >= 2
SELECT T2.agility_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id WHERE T1.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agery_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id
SELECT T1.agency_id , T1.agy_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id WHERE T2.client_details != "null"
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT T2.invoice_id , T2.invoice_status , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status , invoice_details , client_id , agency_id , client_details FROM INVOICES
SELECT invoice_status , invoice_details , client_id , client_details , agency_id , invoice_details FROM INVOICES
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES EXCEPT SELECT T1.invoice_id , T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , invoice_status FROM Invoices EXCEPT SELECT T1.invoice_id , T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id , T1.invoice_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT T2.invoice_id , count(*) FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT T1 meeting_type , count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
SELECT meeting_id , count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*) , T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id INTERSECT SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.other_details LIKE '%s%' GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 0
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 1
SELECT start_date_time , end_date_time , T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T1.meeting_id = T3.meeting_id
