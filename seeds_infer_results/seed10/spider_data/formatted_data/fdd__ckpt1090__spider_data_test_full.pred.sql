SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player GROUP BY Country HAVING Wins_count > 2 ORDER BY Sum(Wins_count) DESC LIMIT 1
SELECT T1.Country FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Country HAVING COUNT(*) > 2 ORDER BY T1.Country LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Club_ID FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Wins_count > 2
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING T1.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID ORDER BY T1.Earnings DESC
SELECT T1.Name , avg(T2.Earnings) FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_count > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_count >= 3
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id WHERE T3.order_item_status_code = '1' AND T2.order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) >= 2) INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id WHERE T3.order_item_status_code = '1' AND T3.order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) >= 2)
SELECT T1.order_id , T2.order_status_code , count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id
SELECT count(*) , T2.order_status_code , T1.order_id FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed = (SELECT max(date_order_placed) FROM orders)
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT order_id , date_order_placed FROM order_items GROUP BY order_id HAVING count(*) >= 2
SELECT T1.order_id , T2.date_order_placed FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T1.product_name , T2.product_price FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id , sum(product_price) FROM Order_items GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) LIMIT 1;
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customer_products AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.customer_payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name , customer_middle_initial , customer_last_name , payment_method_code FROM customers
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT invoice_status_code , invoice_date FROM invoices
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Shipment"
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T2.order_id = T3.order_id
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = 'Shipped'
SELECT T1.product_name , T2.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_id IN (SELECT T1.product_id FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.order_id IN (SELECT order_id FROM shipments ORDER BY shipment_date DESC LIMIT 1))
SELECT T2.product_name , T1.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_id IN (SELECT product_id FROM order_items WHERE shipment_date = '2012-01-10')
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.customer_id WHERE T2.payment_method_code = "female"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.customer_id WHERE T2.payment_method_code = "female"
SELECT invoice_status_code FROM orders WHERE order_status_code != 'shipped'
SELECT invoice_status_code FROM orders WHERE order_status_code != "Shipped"
SELECT sum(t1.order_id) , t1.date_order_placed , sum(t1.total_amount) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id GROUP BY t1.order_id
SELECT order_id , date_order_placed , sum(T2.amount_paid) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT state) FROM orders
SELECT count(DISTINCT product_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_first_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.order_id
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.order_id
SELECT count(*) FROM shipments
SELECT count(*) FROM products WHERE product_id IN (SELECT product_id FROM order_items)
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_id IN (SELECT product_id FROM order_items)
SELECT avg(product_price) FROM products
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) LIMIT 1
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT customer_id FROM orders GROUP BY customer_id ORDER BY count(*) ASC LIMIT 1)
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_id IN (SELECT customer_id FROM customer_payment_methods GROUP BY customer_id HAVING count(*) >= 2)
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_first_name != "customer" AND T1.customer_last_name != "customer" GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) LIMIT 1
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT product_id , product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM INVOICES AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE name LIKE '%bbc%'
SELECT count(DISTINCT Digital_tel_earth) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t2.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T2.name , T2.website_link FROM program AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t2.name FROM program AS t1 JOIN director AS t2 ON t1.director_id = t2.director_id WHERE t1.title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id GROUP BY T3.director_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age > 60
SELECT channel_id , name FROM channel WHERE name != 'Hank Baskett'
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel WHERE Affiliation > 3
SELECT City , Station_name FROM city_channel ORDER BY Station_name ASC
SELECT T1.transmitter , T2.city FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.transmitter = T2.transmitter JOIN city_channel AS T3 ON T2.city_channel_id = T3.id
SELECT Transmitter , T1.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.radio_id ORDER BY T1.ERP_kW DESC
SELECT T1.transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.transmitter
SELECT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Power > 6000 ORDER BY T1.Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT count(*) , T1.Driver_ID FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = "Zhouzhou"
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID ORDER BY T2.Racing_Series LIMIT 1
SELECT T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.citizenship = 'United States' AND T1.racing_series = '2012'
SELECT count(DISTINCT driver_id) FROM driver JOIN vehicle_driver ON driver_id = driver_id WHERE build_year = 2012
SELECT count(*) FROM driver WHERE racing_series = 'NASCAR'
SELECT count(*) FROM driver AS t1 JOIN vehicle_driver AS t2 ON t1.driver_id = t2.driver_id WHERE t1.racing_series = "NASTAR"
SELECT avg(T2.top_speed) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT avg(T1.Top_Speed) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Power > 5000
SELECT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Vehicle_ID IN (SELECT T3.Vehicle_ID FROM vehicle AS T3 JOIN vehicle_driver AS T4 ON T3.Vehicle_ID = T4.Vehicle_ID WHERE T3.Power > 5000)
SELECT T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Total_Production > 100 UNION SELECT T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT model , build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT DISTINCT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT T2.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) >= 2 OR T2.Builder = 'Ziyang'
SELECT T2.Build_Year , T1.Vehicle_ID FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) = 2 OR T2.Build_Year = 'Ziyang'
SELECT T2.Vehicle_ID , T2.Model FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) > 2 OR T1.Name = 'Jeff Gordon'
SELECT T1.Vehicle_ID , T1.Model FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Name = "Jeff Gordon"
SELECT count(*) FROM vehicle
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(T1.Top_Speed) FROM vehicle AS T1)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , racing_series FROM driver GROUP BY racing_series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Vehicle_ID = (SELECT T2.Vehicle_ID FROM vehicle AS T2 JOIN driver AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T2.Model = 'DJ1')
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT T1.exam_date , T1.exam_name FROM exams AS T1 JOIN questions_in_exams AS T2 ON T1.exam_id = T2.exam_id WHERE subject_code != "Database"
SELECT DISTINCT t1.exam_date , t1.exam_name FROM exams AS t1 JOIN questions AS t2 ON t1.exam_id = t2.exam_id WHERE t2.type_of_qquestion_code != "Database"
SELECT Exam_Date FROM exams WHERE subject_code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT DISTINCT T1.exam_date FROM exams AS T1 JOIN student_answers AS T2 ON T1.exam_id = T2.exam_id WHERE T1.subject_code LIKE "%data%" ORDER BY T1.exam_date DESC
SELECT Type_of_Question_Code , count(*) FROM Questions GROUP BY Type_of_Question_Code
SELECT type_of_qquestion_code , count(*) FROM questions GROUP BY type_of_qquestion_code
SELECT DISTINCT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T2.Question_Text = "Normal"
SELECT DISTINCT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T2.Completeness = "Normal"
SELECT count(DISTINCT T1.Completeness) FROM student_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id
SELECT count(DISTINCT T1.Completeness) FROM student_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id
SELECT Student_Answer_Text FROM Student_Answers ORDER BY COUNT(*) DESC
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T2.First_Name , T3.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID JOIN Questions AS T3 ON T2.Question_ID = T3.Question_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T2.Assessments FROM Student_Assessments AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T2.Assessments ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Assessments FROM Student_Assessments AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Assessments ORDER BY count(*) LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Valid_Answer_Text FROM Questions AS T1 JOIN Valid_Answers AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T2.Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT gender_count , gender FROM students GROUP BY gender_count
SELECT gender_code , count(*) FROM students GROUP BY gender_code
SELECT T1.Last_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender = "F" OR T1.Gender = "M"
SELECT T2.Last_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender = "F" OR T1.Gender = "M"
SELECT first_name FROM Students EXCEPT SELECT T1.first_name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id WHERE T2.satisfactory_yn = 'No'
SELECT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Completeness = 'Normal' INTERSECT SELECT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Completeness = 'Absent'
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID WHERE T2.Student_Address = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID WHERE T2.Student_Address = "Absent"
SELECT DISTINCT T1.Type_of_Question_Code FROM Questions AS T1 JOIN Questions_in_Exams AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN questions_in_exams AS T2 ON T1.question_id = T2.question_id JOIN students AS T3 ON T2.exam_id = T3.exam_id
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM Products
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = "Monitor"
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = "computer")
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_price = (SELECT max(product_price) FROM products)
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id , customer_name FROM Customers
SELECT customer_id , customer_name FROM Customers
SELECT customer_address , customer_phone , customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM Customers GROUP BY payment_method_code
SELECT count(*) , payment_method_code FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM Customers GROUP BY customer_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) LIMIT 1
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM Customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
{"sql": "SELECT order_id , order_date , order_status_code FROM Customer_Orders WHERE customer_id = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
{"sql": "SELECT order_id , order_date , order_status_code FROM Customer_Orders WHERE customer_id = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T1.customer_id , count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM Customer_Orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM Order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT sum(order_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_type_code = "Monitor"
SELECT count(*) FROM Customer_Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_type_code = 'Monitor'
SELECT count(*) FROM Customer_Orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM Customer_Orders
SELECT customer_id FROM customer_orders WHERE order_status_code != "Order"
SELECT order_date , order_id FROM Customer_Orders WHERE order_quantity > 6 OR order_quantity > 3
SELECT order_id , order_date FROM customer_orders WHERE order_quantity > 6 OR product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) > 3)
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT name , number_of_stories FROM building ORDER BY number_of_stories
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year = 1980
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT name FROM region ORDER BY name
SELECT capital FROM region WHERE area > 10000
SELECT capital FROM region WHERE area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT capital , region_id FROM region ORDER BY population DESC LIMIT 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID ORDER BY T2.Area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING count(*) > 1
SELECT DISTINCT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT capital FROM region GROUP BY capital ORDER BY count(*) DESC LIMIT 1
SELECT capital , region_id FROM region ORDER BY population DESC LIMIT 1
SELECT T2.Address , T3.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID JOIN building AS T3 ON T1.Building_ID = T3.Building_ID
SELECT T2.Address , T1.Name , T1.Region_ID FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building WHERE name = "Abruzzo"
SELECT Number_of_Stories , Region_ID FROM building WHERE Region_ID = (SELECT Region_ID FROM building WHERE Name = "Abruzzo")
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT building_building_id , completion_year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_layer GROUP BY Analytical_layer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_layer GROUP BY Analytical_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Service_Details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T1.Customer_ID = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id = "Hardy Kutch"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T2.Service_ID HAVING COUNT(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T2.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_id FROM customers_excluded WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_id ORDER BY count(*) LIMIT 1
SELECT T1.customer_id , T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_id) , count(DISTINCT service_details) FROM customers_and_services
SELECT count(*) , sum(T1.Service_Details) FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details LIKE "%Kutch%"
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customers_and_services_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" OR T2.service_id IN (SELECT T1.service_id FROM services AS T1 JOIN customer_interactions AS T4 ON T1.service_id = T4.service_id WHERE T4.status_code = "good")
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" OR T3.customer_details = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T1.service_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.service_id = (SELECT service_id FROM customers_and_services WHERE customer_id = "Hardy Kutch" AND rating = "bad")
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Channel_ID = 15 AND T2.channel_details = "15ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_id , T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_platform WHERE status_code = 'S'
SELECT count(*) FROM Integration_platform WHERE integration_platform_details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN integrations_platform AS T3 ON T2.customer_id = T3.customer_id WHERE T3.integration_platform_details = 'failed'
SELECT T2.customer_details FROM Integration_platform AS T1 JOIN Customer_interactions AS T2 ON T1.customer_Interaction_ID = T2.customer_Interaction_ID WHERE T1_integration_platform_details = "Fail"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID EXCEPT SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_layer GROUP BY Analytical_layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_layer GROUP BY Analytical_layer_Type_code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "unacceptance"
SELECT T2.Service_Details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T1.Customers_and_Services_Details = "Unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT Type_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT T1.name , T2.Type_of_powertrain , Annual_fuel_cost FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T1.Model_year = 2013 OR T1.Model_year = 2014
SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT Type_of_powertrain , COUNT(*) FROM Vehicles GROUP BY Type_of_powertrain
SELECT Type_of_powertrain , COUNT(*) FROM Vehicles GROUP BY Type_of_powertrain
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT Annual_fuel_cost , min(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min Annual_fuel_cost , max Annual_fuel_cost , avg Annual_fuel_cost FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE Combined_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT Type_of_powertrain , AVG Annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING count(*) >= 2
SELECT Type_of_powertrain , avg Annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT T2.name , T2.age FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id ORDER BY T1.membership_credit DESC LIMIT 1
SELECT T2.name , T2.age FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id ORDER BY T1.membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM DISCOUNT
SELECT * FROM discounts
SELECT T2.name , T2.total_hours FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T2.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.id HAVING count(*) >= 2
SELECT T2.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id JOIN discounts AS T3 ON T3.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM DISCOUNT AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.Type_of_powertrain FROM Riding_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT T1.name , T2.Type_of_powertrain FROM Riding_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT avg(T1.City_fuel_economy_rate) , avg(T1.Highway_fuel_economy_rate) FROM Vehicles AS T1 JOIN Riding_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.Type_of_powertrain
SELECT Type_of_powertrain , avg(Combine_fuel_economy_rate) , avg(Highway_fuel_economy_rate) FROM Vehicles GROUP BY Type_of_powertrain
SELECT avg(amount_of_loan) FROM Student_loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN CLASS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN DETENT AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 OR count(*) <= 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Class AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Class AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM students WHERE student_id NOT IN (SELECT student_id FROM Detention) UNION SELECT bio_data FROM students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT student_id , bio_data FROM Students EXCEPT SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id UNION SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Ref_Achiement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Ref_Achiement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.detention_type_description FROM Detention AS t1 JOIN Ref_Detention_Type AS t2 ON t1.detention_type_code = t2.detention_type_code
SELECT DISTINCT detention_type_description FROM Detention
SELECT T2.student_details , T2.address_type_description FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.address_id
SELECT T2.address_details , T1.brobographical_info FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.address_id
SELECT T1.address_details , T1.birthday FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.bio_data , T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.bio_data , T2.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details , count(*) FROM Behaviour_monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.behaviour_monitoring_details , count(*) FROM Behaviour_monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.student_details , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T1.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , count(*) , T1.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details , ref_achievement_type.achievement_type_description FROM Ref_Achiement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT achievement_type_description , achievement_details FROM Ref_Achievements
SELECT count(*) FROM Classes AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T1.teacher_id = T3.teacher_id WHERE T2.event_type_code = 'Achievement' EXCEPT SELECT count(*) FROM Classes AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T1.teacher_id = T3.teacher_id
SELECT count(*) FROM classes AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN teachers AS T3 ON T1.teacher_id = T3.teacher_id WHERE T2.student_id NOT IN ( SELECT student_id FROM student_events AS T4 JOIN ref_achievements AS T5 ON T4.achievement_type_code = T5.achievement_type_code WHERE T4.event_type_code = 'achievement' )
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Ref_Achievements AS T1 JOIN Students_Events AS T2 ON T1.achievement_type_code = T2.event_type_code
SELECT T1.achievement_type_code , T1.date_achievement , T1.achievement_details FROM Ref_Achiement_Type AS T1 JOIN Students_Events AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = 1 AND T2.event_type_description LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.class_details = "teacher" AND T1.teacher_id = T2.teacher_id
SELECT T1.teacher_id , T1.teacher_details , T2.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)) , student_id FROM Transcripts GROUP BY student_id
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.transcript_details FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T2.bio_data , T2.student_details FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T2.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Student_Loans AS T3 ON T2.student_id = T3.student_id WHERE T2.class_details = "Student with earliest transcript issuance"
SELECT T1.teacher_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id = (SELECT student_id FROM transcripts ORDER BY date_of_transcript ASC LIMIT 1)
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T2.student_id , sum(T1.amount_of_loan) FROM Student_Loan AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T2.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT count(*) FROM Detention AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = 2
SELECT count(*) FROM Detention
SELECT address_type_code , address_type_description FROM Students_Addresses GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code , address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT T2.bio_data FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM student_loans) GROUP BY T1.student_id ORDER BY T1.student_id ASC}
SELECT DISTINCT T1.bio_data FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = 'event_record' EXCEPT SELECT DISTINCT T1.bio_data FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T3.transcript_details = "2"
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM client
SELECT name , address FROM CLIENT
SELECT title , ISBN , saleprice FROM Book
SELECT title , ISBN , saleprice FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM CLIENT
SELECT name , address FROM client ORDER BY name
SELECT name , address FROM client ORDER BY name
SELECT title , author FROM BOOK
SELECT T1.title , T1.author FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idAuthor
SELECT idorder , idclient FROM orders
SELECT idorder , idclient FROM orders
SELECT count(*) , T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.idauthor GROUP BY T2.name
SELECT count(*) , t1.name FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.idauthor GROUP BY t1.name
SELECT sum(count(*)) , book.ISBN FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder GROUP BY T1.ISBN
SELECT T2.ISBN , count(*) FROM Books_order AS T1 JOIN BOOK AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT sum(amount) , ISBN FROM Books_order GROUP BY ISBN
SELECT sum(T1.amount) , T1.ISBN FROM Books_order AS T1 JOIN BOOK AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T1.idorder = T3.idorder GROUP BY T1.idorder ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , T1.purchaseprice FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , T1.purchaseprice FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder
SELECT DISTINCT title FROM BOOK ORDER BY dateorder DESC
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT DISTINCT T1.name FROM CLIENT AS T1 JOIN ORDERED AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT count(*) , T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T2.name
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM CLIENT AS T1 JOIN ORDERED_BOOK AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT sum(T2.amount) , T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T2.name , sum(T1.amount) FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder GROUP BY T2.name ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM BOOK WHERE idauthor NOT IN (SELECT idauthor FROM author_book)
SELECT title FROM BOOK WHERE ISBN NOT IN (SELECT ISBN FROM Books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client EXCEPT SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) , min(SalePrice - PurchasePrice) FROM BOOK
SELECT title FROM BOOK WHERE saleprice > (SELECT avg(saleprice) FROM BOOK)
SELECT title FROM BOOK WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM BOOK ORDER BY saleprice ASC LIMIT 1
SELECT title FROM BOOK ORDER BY saleprice LIMIT 1
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.idAuthor JOIN Author AS T3 ON T2.author = T3.idAuthor WHERE T3.name = "George Orwell"
SELECT avg(SalePrice) FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.idAuthor WHERE T1.Name = "George Orwell"
SELECT saleprice FROM BOOK AS T1 JOIN author AS T2 ON T1.author = T2.idauthor JOIN author AS T3 ON T2.idauthor = T3.idauthor WHERE T2.name = "Plato"
SELECT T2.saleprice FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.ISBN = T3.ISBN WHERE T1.name = "Plato"
SELECT T1.title FROM author AS T1 JOIN book AS T2 ON T1.idAuthor = T2.idAuthor WHERE T2.author = "George Orwell" ORDER BY T2.saleprice LIMIT 1
SELECT title FROM BOOK WHERE author = 'George Orwell' AND saleprice = (SELECT min(saleprice) FROM BOOK WHERE author = 'George Orwell')
SELECT title FROM author AS T1 JOIN book AS T2 ON T1.idAuthor = T2.idAuthor WHERE T1.name = "Plato" AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.idAuthor WHERE T1.name = "Plato" AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.idauthor WHERE T2.title = "Pride and Prejudice"
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.idauthor = t2.idauthor WHERE t2.title = "Pride and Prejudice"
SELECT T1.title FROM author AS T1 JOIN book AS T2 ON T1.idAuthor = T2.idAuthor WHERE T1.name LIKE "%Plato%"
SELECT T1.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.idauthor WHERE T1.name LIKE "%Plato%"
SELECT count(*) FROM orders AS t1 JOIN books AS t2 ON t1.idorder = t2.idorder JOIN author AS t3 ON t2.author = t3.idauthor JOIN book AS t4 ON t2.ISBN = t4.ISBN WHERE t4.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.idauthor = T3.idauthor JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = "Pride and Prejudice"
SELECT idorder FROM orders WHERE dateorder LIKE "Pride and Prejudice" OR dateorder LIKE "The Little Prince"
SELECT idorder FROM orders WHERE idclient = 1 AND title = "Prejudice" INTERSECT SELECT idorder FROM orders WHERE idclient = 1 AND title = "Pride"
SELECT DISTINCT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder JOIN CLIENT AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'Peter Doe' INTERSECT SELECT DISTINCT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder JOIN CLIENT AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'James Smith'
SELECT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDER_LIST AS T3 ON T2.idorder = T3.idorder JOIN CLIENT AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDER_LIST AS T3 ON T2.idorder = T3.idorder JOIN CLIENT AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT title FROM BOOK WHERE author = "Peter Doe" EXCEPT SELECT title FROM BOOK WHERE author = "James Smith"
SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'Peter Doe' EXCEPT SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERED AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'James Smith'
SELECT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient WHERE T1.dateorder = "Pride and Prejudice"
SELECT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient WHERE T1.dateorder = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , RELEASE FROM book
SELECT max(chapters) , min(chapters) , title FROM book GROUP BY title
SELECT Title FROM book WHERE Type != "Poet"
SELECT avg(Rating) FROM review
SELECT Title , Rating FROM book
SELECT T1.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating DESC LIMIT 1
SELECT rank FROM review ORDER BY pages ASC LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rate DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM book WHERE Type = "Novel"
SELECT TYPE , count(*) FROM book GROUP BY TYPE
SELECT Type FROM book GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type FROM book GROUP BY Type HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating ASC
SELECT T2.Title , T2.Audio , T1.Readers_in_Million FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Readers_in_Million DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT name FROM customer ORDER BY level_of_membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT customer_id FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T2.Name , T1.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.Quantity DESC
SELECT T2.Name , T1.Dish_Name , T1.Quantity FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY T1.Quantity DESC
SELECT T2.name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name
SELECT T1.name , sum(T2.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.customer_id , T1.Quantity FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING SUM(T1.Quantity) > 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING SUM(T1.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING count(*) >= 2
SELECT T2.Name , T1.Team_Leader FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 2018
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Name = "Club Leader"
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT T2.collection_subset_name FROM document_subsets AS T1 JOIN collection_subsets AS T2 ON T1.document_subset_id = T2.collection_subset_id
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN document_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = 'Top collection'
SELECT T2.collection_details FROM COLLECTION_SUBSET_METERS AS T1 JOIN COLLECTION_SUBSET AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Top collection'
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_name
SELECT DISTINCT document_subset_name FROM Document_Subsets
SELECT T1.document_subset_details FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE T2.collection_id = 2000 AND T1.document_subset_id = 'Best for 2000'
SELECT T1.document_subset_details FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.parent_document_object_id = T3.parent_document_object_id JOIN Document_Objects AS T4 ON T3.document_object_id = T4.document_object_id JOIN Document_Objects AS T5 ON T4.document_object_id = T5.document_object_id JOIN Document_Objects AS T6 ON T5.parent_document_object_id = T6.parent_document_object_id JOIN Document_Objects AS T7 ON T6.document_object_id = T7.document_object_id JOIN Document_Objects AS T8 ON T7.document_object_id = T8.document_object_id WHERE T1.document_subset_name = 'Best for 2000'
SELECT document_id FROM Document_Objects
SELECT document_object_id FROM Document_Objects
SELECT T2.document_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id WHERE T1.owner = 'Marlin'
SELECT DISTINCT t1.document_object_id FROM Document_Objects AS t1 JOIN Document_Objects AS t2 ON t1.parent_document_object_id = t2.document_object_id WHERE t1.owner = 'Marlin'
SELECT T2.Owner FROM COLLECTION_SUBSET_MEXBERESION AS T1 JOIN COLLECTION_SUBSET AS T2 ON T1.Collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = 'Braeden Collection'
SELECT T1.owner FROM document_objects AS T1 JOIN collection_subsets AS T2 ON T1.parent_document_object_id = T2.collection_id WHERE T2.collection_name = "Braeden Collection"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T2.owner = 'Marlin'
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T2.owner = 'Marlin'
SELECT DISTINCT T1.collection_description FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT DISTINCT T2.collection_description FROM COLLECTION_SUBSET_METRIES AS T1 JOIN COLLECTIONS AS T2 ON T1.collection_id = T2.collection_id
SELECT count(*) FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Marlin"
SELECT count(*) FROM document_objects WHERE owner = "Marlin"
SELECT document_id FROM Document_Objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM Document_Objects)
SELECT document_id FROM document_objects WHERE document_object_id NOT IN (SELECT document_object_id FROM document_objects WHERE parent_document_object_id = "document_object_id")
SELECT count(*) , T1.Document_Objects_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Objects_ID
SELECT count(*) , T1.parent_document_document_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id GROUP BY T1.parent_document_object_id
SELECT collection_name FROM COLLECTION_SUBSET_METRIES WHERE collection_id = "all"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT T2.collection_description FROM COLLECTIONS AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.parent_collection_id = T2.collection_id WHERE T1.collection_name = "Nice"
SELECT T2.collection_name FROM COLLECTIONS AS T1 JOIN collections AS T2 ON T1.parent_collection_id = T2.collection_id WHERE T1.collection_name = "Nice"
SELECT collection_name FROM collections EXCEPT SELECT t1.collection_name FROM collections AS t1 JOIN collections AS t2 ON t1.parent_collection_id = t2.collection_id
SELECT collection_name FROM collections WHERE parent_collection_id != (SELECT parent_collection_id FROM collections)
SELECT document_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects GROUP BY parent_document_object_id HAVING count(*) > 1)
SELECT T1.document_subset_id FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.parent_document_object_id GROUP BY T1.document_subset_id HAVING count(*) > 1
SELECT count(*) FROM collection_subsets AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections WHERE collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom'
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom'
SELECT T1.collection_subset_id , T1.collection_name , count(*) FROM Collection_subsets AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T1.collection_subset_name , count(*) FROM collection_subsets AS T1 JOIN document_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT T1.document_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id GROUP BY T1.parent_document_object_id ORDER BY count(*) LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id GROUP BY T1.parent_document_object_id HAVING count(*) >= 2 AND count(*) <= 4
SELECT T1.document_count , T2.document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T1.count_of_related_items BETWEEN 2 AND 4
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Related_document_object_id = T2.Related_document_object_id JOIN Document_Objects AS T3 ON T1.Document_object_id = T3.Document_object_id WHERE T1.Owner = 'Braeden'
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Related_document_object_id = T2.Related_document_object_id JOIN Document_Objects AS T3 ON T2.Document_object_id = T3.Document_object_id JOIN Document_Objects AS T4 ON T3.Document_object_id = T4.Document_object_id WHERE T1.owner = 'Braeden'
SELECT DISTINCT t1.document_subset_name FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id JOIN document_objects AS t4 ON t3.document_object_id = t4.document_object_id WHERE t4.owner = 'Braeden'
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN document_objects AS T4 ON T3.document_object_id = T4.document_object_id WHERE T4.owner = 'Braeden'
SELECT T1.document_subset_id , T1.document_subset_name , count(DISTINCT T2.document_subset_id) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Objects AS T2 JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN Document_Objects AS T4 ON T2.parent_document_object_id = T4.document_object_id GROUP BY T2.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_Subset_ID , T1.Document_Subset_Name , count(*) FROM Document_Objects AS T2 JOIN Document_Objects AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID GROUP BY T2.Document_Object_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE document_subset_name = 'Best for 2000')
SELECT document_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE document_subset_id = 'Best for 2000')
SELECT T1.document_subset_name , T1.document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN Document_Objects AS T4 ON T3.document_object_id = T4.document_object_id JOIN Document_Objects AS T5 ON T4.document_object_id = T5.document_object_id JOIN Document_Objects AS T6 ON T5.document_object_id = T6.document_object_id JOIN Document_Objects AS T7 ON T6.document_object_id = T7.document_object_id JOIN Document_Objects AS T8 ON T7.document_object_id = T8.document_object_id JOIN Document_Objects AS T9 ON T8.document_object_id = T9.document_object_id JOIN Document_Objects AS T10 ON T9.document_object_id = T10.document_object_id JOIN Document_Objects AS T11 ON T10.document_object_id = T11.document_object_id JOIN Document_Objects AS T12 ON T11.document_object_id = T12.document_object_id JOIN Document_Objects AS T13 ON T12.document_object_id = T13.document_object_id JOIN Document_Objects AS T14 ON T13.document_object_id = T14.document_object_id JOIN Document_Objects AS T15 ON T14.document_object_id = T15.document_object_id JOIN Document_Objects AS T16 ON T15.document_object_id = T16.document_object_id JOIN Document_Objects AS T17 ON T16.document_object_id = T17.document_object_id JOIN Document_Objects AS T18 ON T17.document_object_id = T18.document_object_id JOIN Document_Objects AS T19 ON T18.document_object_id = T18.document_object_id JOIN Document_Objects AS T20 ON T18.document_object_id = T20.document_object_id
SELECT T1.document_subset_name , T1.document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN Document_Objects AS T4 ON T3.parent_document_object_id = T4.document_object_id JOIN Document_Objects AS T5 ON T4.parent_document_object_id = T5.document_object_id GROUP BY T1.document_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN document_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*) , T1.collection_id FROM collections AS T1 JOIN document_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*) , T1.collection_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM collections WHERE collection_name = "Best"
SELECT T1.document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id JOIN collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = "Best"
SELECT count(*) FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name , T2.collection_id , count(*) FROM collections AS T1 JOIN document_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T2.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN document_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T1.collection_name = 'Best' GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN Document_Objects AS T4 ON T3.parent_document_object_id = T4.document_object_id WHERE T4.collection_id = 2000 AND T4.collection_name = 'Best'
SELECT DISTINCT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t1.document_object_id IN (SELECT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t1.document_object_id IN (SELECT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t2.collection_id = 2000 AND t1.document_object_id IN (SELECT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t2.collection_id = 2000)) WHERE t1.document_object_id IN (SELECT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t2.collection_id = 2000 AND t1.document_object_id IN (SELECT t1.document_object_id FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.parent_document_object_id WHERE t2.collection_id = 2000))
SELECT document_subset_id FROM document_subsets WHERE collection_subset_name = "Best" AND document_subset_id NOT IN (SELECT document_subset_id FROM document_subsets WHERE collection_subset_name = "Best" AND year = 2000)
SELECT DISTINCT document_object_id FROM document_objects WHERE collection_name = "Best" EXCEPT SELECT DISTINCT document_object_id FROM document_objects WHERE collection_name = "Best for 2000"
SELECT T1.Document_Subset_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID JOIN Document_Objects AS T4 ON T3.Document_Object_ID = T4.Document_Object_ID JOIN Document_Objects AS T5 ON T4.Document_Object_ID = T5.Document_Object_ID JOIN Document_Objects AS T6 ON T5.Document_Object_ID = T6.Document_Object_ID JOIN Document_Objects AS T7 ON T6.Document_Object_ID = T7.Document_Object_ID JOIN Document_Objects AS T8 ON T7.Document_Object_ID = T8.Document_Object_ID JOIN Document_Objects AS T9 ON T8.Document_Object_ID = T9.Document_Object_ID WHERE T2.collection_id = 2000 OR T1.collection_id = 2000
SELECT DISTINCT document_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T1.document_subset_id = (SELECT document_subset_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T2.document_subset_id = 'Best' UNION SELECT document_subset_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id WHERE T2.document_subset_id = 'Best for 2000')
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T2.collection_subset_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best in"
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality , rhythm_tempo , stage_presence FROM performance_score WHERE name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = "All the streets of love"
SELECT DISTINCT T2.stage_presence FROM performances_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id HAVING count(*) >= 2
SELECT id , name , popularity FROM participants ORDER BY popularity
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE voice_sound_quality = 5 OR rhythm_tempo = 5
SELECT voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "English"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence > 9 OR stage_presence < 7
SELECT count(*) FROM songs WHERE name NOT IN (SELECT name FROM performance_score)
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T2.name FROM performances_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT name , popularity FROM participants WHERE language = 'Croatian' INTERSECT SELECT name , popularity FROM participants WHERE language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM City
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM City WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM City WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = "Canada"
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM City GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT city_name FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD"
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.city_name = "MD"
SELECT count(*) FROM city WHERE country = 'China'
SELECT count(*) FROM city WHERE country = 'China'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT Fname , major FROM Student WHERE city_code = 'Baltimore'
SELECT count(*) , city_country FROM student GROUP BY city_country
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , city_name FROM city GROUP BY city_name
SELECT city_name , count(*) FROM city GROUP BY city_name
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T2.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT city_name FROM city GROUP BY city_name HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code != "USA"
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE Sex = "M" EXCEPT SELECT StuID FROM Student WHERE city_code = "USA"
SELECT distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL" AND T1.city_name = "CHI"
SELECT distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'BAL' AND T2.city2_code = 'CHI'
SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston' AND T2.city2_code = 'Newark'
SELECT distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Boston" AND T2.city2_code = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code
SELECT avg(distance) , min(distance) , max(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code
SELECT city_code , city_name FROM city ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code FROM city WHERE city_code IN (SELECT city2_code FROM direct_distance GROUP BY city2_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance))
SELECT city_code FROM city WHERE city_code NOT IN (SELECT city2_code FROM direct_distance ORDER BY distance DESC LIMIT 1)
SELECT city_code FROM city WHERE city_code IN (SELECT city2_code FROM direct_distance WHERE distance < 1000)
SELECT city_code FROM city WHERE city_name NOT IN (SELECT city_name FROM city WHERE distance < 1000)
SELECT sum(DISTINCT distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT sum(DISTINCT distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'BAL'
SELECT avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance WHERE city1_code = 'Chicago' )
SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Chicago' AND state = 'Northwest')
SELECT city_name FROM city WHERE city_name LIKE '%Boston%' ORDER BY distance DESC LIMIT 1
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance ORDER BY distance DESC LIMIT 1)
SELECT T1.city_code , sum(DISTINCT (SELECT distance FROM direct_distance WHERE city1_code = T1.city_code)) FROM city AS T1 JOIN direct_distance ON T1.city_code = T2.city_code GROUP BY T1.city_code
SELECT city_code , sum(distance) FROM city JOIN direct_distance ON city.city_code = direct_distance.city1_code GROUP BY city_code
SELECT city_name , avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT city_name , avg(distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.fname = "Smith" AND T1.lname = "Smith" INTERSECT SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.fname = "Kim" AND T1.lname = "Kim"
SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Linda Smith" INTERSECT SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Tracy Kim"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Linda Smith' AND T1.city_code = (SELECT city_code FROM city WHERE city_name = 'Lindasmith' AND country = 'United States')
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Linda Smith' INTERSECT SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Farthest'
SELECT city_name FROM city WHERE state = "Southwest" AND city_code = (SELECT city_code FROM student WHERE fname = "Linda")
SELECT city_state FROM city WHERE city_name LIKE '%Linda%'
SELECT * FROM Sailers WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name , age FROM Sailers WHERE age < 30
SELECT name , age FROM Sailers WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.rating = 1
SELECT DISTINCT tid FROM reserves WHERE sid = 1
SELECT DISTINCT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name = '102'
SELECT T1.name FROM sailers AS T1 JOIN reserves AS T2 ON T1.sid = T2.bid WHERE T2.bid = 102
SELECT DISTINCT tid FROM Reserves
SELECT tid FROM Reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM Sailers WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailers WHERE age > (SELECT max(age) FROM sailers)
SELECT DISTINCT sid FROM Sailers WHERE age != (SELECT min(age) FROM Sailers)
SELECT DISTINCT name FROM Sailers WHERE age > (SELECT min(age) FROM Sailers WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.rating >= 1
SELECT T1.name , T1.sid FROM Sailers AS T1 JOIN Reservations AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailers AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.bid GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.sid FROM RESERVE AS T1 JOIN BOATS AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT tid FROM Reserves WHERE color = 'red' OR color = 'blue'
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name , T1.sid FROM sailers AS T1 JOIN reservations AS T2 ON T1.sid = T2.sid WHERE T2.bid = (SELECT bid FROM reserves WHERE color = 'red) OR T2.bid = (SELECT bid FROM reserves WHERE color = 'blue)
SELECT T1.sid FROM RESERVES AS T1 JOIN BOATS AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' INTERSECT SELECT T1.sid FROM RESERVES AS T1 JOIN BOATS AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T2.color = 'blue'
SELECT T1.sid FROM sailers AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = (SELECT bid FROM reserves WHERE color = 'red) INTERSECT SELECT T1.sid FROM sailers AS T1 JOIN reserves AS T2 ON T1.sid = T2.bid WHERE T2.bid = (SELECT bid FROM reserves WHERE color = 'blue')
SELECT T1.name , T1.sid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T2.sid = T3.sid WHERE T1.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T2.sid = T3.sid WHERE T1.color = 'blue'
SELECT T1.name , T1.sid FROM sailers AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM sailers AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT sid FROM sailers EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailers EXCEPT SELECT sid FROM reserves
SELECT name , sid FROM Sailers EXCEPT SELECT T1.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid
SELECT name , sid FROM Sailers EXCEPT SELECT T1.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid
SELECT sid FROM sailers EXCEPT SELECT sid FROM Reservations
SELECT sid FROM sailers EXCEPT SELECT sid FROM reservations
SELECT T1.name FROM sailers AS T1 JOIN reservations AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT T2.name FROM Reserves AS T1 JOIN Boars AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T1.bid = 103
SELECT name FROM sailers WHERE rating > (SELECT max(rating) FROM sailers WHERE name = 'Luis')
SELECT name FROM sailers WHERE rating > (SELECT max(rating) FROM sailers WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailers WHERE rating > (SELECT max(rating) FROM sailers WHERE name = "Luis")
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.rating > 2 AND T1.bid = T2.bid
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailers AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3
SELECT name , age FROM Sailers ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailers ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailers
SELECT count(*) FROM Sailers
SELECT avg(age) FROM Sailers WHERE rating = 7
SELECT avg(age) FROM Sailers WHERE rating = 7
SELECT count(*) FROM Sailers WHERE name LIKE "%D%"
SELECT count(*) FROM Sailers WHERE name LIKE "%D%"
SELECT avg(rating) , max(age) FROM Sailers
SELECT avg(rating) , max(age) FROM Sailers
SELECT count(*) , name FROM Reservations GROUP BY name
SELECT count(*) , name FROM Reserves GROUP BY name
SELECT count(*) , T1.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.age > 50 GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.rating > 50 GROUP BY T2.name
SELECT count(*) , T1.name FROM Reservations AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.name > 1 GROUP BY T2.name
SELECT count(*) , T1.name FROM RESERVES AS T1 JOIN Sailers AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.name
SELECT sum(T1.rating) , avg(T1.age) , T2.name FROM Reserves AS T1 JOIN Sailers AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' GROUP BY T2.name
SELECT sum(T1.rating) , avg(T1.age) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' GROUP BY T2.name
SELECT name , rating , age FROM Sailers ORDER BY rating , age
SELECT name , rating , age FROM Sailers ORDER BY rating , age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color = 'Red'
SELECT count(*) FROM Boats WHERE color = 'Red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM reservations AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red')
SELECT name FROM sailers WHERE rating > (SELECT max(rating) FROM reserves) AND color = 'red'
SELECT max(rating) FROM Sailers
SELECT max(rating) FROM Sailers
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailers AS T3 ON T1.sid = T3.sid WHERE T3.name = "Melon"
SELECT T2.name FROM reserves AS T1 JOIN sailers AS T2 ON T1.bid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "Melon"
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM Sailers ORDER BY rating DESC
SELECT Product FROM product WHERE Price = (SELECT max(Price) FROM product)
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Earpads FROM headphone ORDER BY Earpads
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT Class FROM headphone GROUP BY Class ORDER BY count(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) <= 2
SELECT count(*) , class FROM headphone WHERE price > 200 GROUP BY class
SELECT CLASS , price FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT earpads FROM headphone GROUP BY earpads HAVING count(*) > 1
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads FROM headphone ORDER BY Price DESC LIMIT 2
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price LIMIT 1
SELECT Model , Class , Construction FROM headphone ORDER BY Price LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphones WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphones WHERE earpads = "Comfort Pads"
SELECT Earpads FROM headphones WHERE Construction != 'Plastic'
SELECT Earpads FROM headphone WHERE Construction != "Plastic"
SELECT Model FROM headphones WHERE Price < (SELECT avg(Price) FROM headphones)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT T2.Name , T2.Parking FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Nighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT t2.name , t1.Quantity FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id JOIN headphone AS t3 ON t1.headphone_id = t3.headphone_id GROUP BY t1.store_id ORDER BY sum(t1.Quantity) DESC LIMIT 1
SELECT T2.Name , T1.Quantity FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = 2
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock EXCEPT SELECT store_id FROM stock WHERE earpads = 'headphone')
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock EXCEPT SELECT store_id FROM stock)
SELECT DISTINCT T1.Model FROM headphones AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID WHERE T2.Stock_ID NOT IN (SELECT T3.Stock_ID FROM stock AS T3 JOIN store AS T4 ON T3.Store_ID = T4.Store_ID GROUP BY T3.Store_ID HAVING COUNT(*) = 0)
SELECT DISTINCT Model FROM headphones WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID JOIN store AS T3 ON T1.Store_ID = T3.Store_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT sum(T1.Quantity) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Name = "Woodman"
SELECT Neighborhood FROM store EXCEPT SELECT T1.N Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T2.Headphone_ID = T3.Headphone_ID
SELECT Neighborhood FROM store EXCEPT SELECT T1.N Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T2.Headphone_ID = T3.Headphone_ID
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM PAPER
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE title = "NAACL 2000"
SELECT count(*) FROM paper WHERE title = "NAACL 2000"
SELECT count(*) FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009 AND T2.title = "Columbia University"
SELECT count(*) FROM paper WHERE YEAR = 2009 AND venue = "Columbia University"
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM PAPER ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY year
SELECT T1.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = (SELECT author_id FROM Author GROUP BY author_id HAVING count(*) = 1 AND T1.title = "Harford University")
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = 1 AND T2.title LIKE "Harvard"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT T3.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia'
SELECT T3.title , T3.paper_id FROM Author_list AS T1 JOIN PAPER AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathara" AND T3.name = "Rambow"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Mckeown" AND T2.title = "Mckeown\-Kathleen\-Paper\-Title" INTERSECT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Rambow\-Owen\-Paper\-Title"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 2 AND T2.title NOT IN (SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 3)
SELECT title , paper_id FROM author_list WHERE author_id = "Mckeown" EXCEPT SELECT title , paper_id FROM author_list WHERE author_id = "Rambow"
SELECT T1.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Mckeown" OR T1.author_id = "Kathleen" OR T1.author_id = "Owen"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = 2 OR T1.author_id = 3
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT count(*) , author_id FROM Author_list GROUP BY author_id ORDER BY count(*)
SELECT affiliation_id FROM author_list GROUP BY affiliation_id ORDER BY count(*) ASC
SELECT name FROM affiliation ORDER BY count(*) DESC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id = (SELECT paper_id FROM author_list WHERE count(*) = 1)
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.paper_id = (SELECT T3.paper_id FROM author_list AS T3 JOIN paper AS T4 ON T3.paper_id = T4.paper_id GROUP BY T3.paper_id HAVING count(*) = 1)
SELECT venue , year FROM paper GROUP BY venue , year ORDER BY count(*) DESC LIMIT 1
SELECT venue , year FROM paper GROUP BY venue , year ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = "A00-1002"
SELECT count(*) FROM CITER WHERE cited_paper_id = (SELECT paper_id FROM paper WHERE title = "A00-1002")
SELECT count(*) FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = "D12-1027"
SELECT count(*) FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = "D12-1027"
SELECT count(*) , T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.paper_id FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM author_list AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title , count(*) FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) , T1.title FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = "Mckeown, Kathleen"
SELECT count(*) FROM CITER AS T1 JOIN PAPER AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T1.author_id = "Mckeown" AND T2.title = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Mckeown" AND T2.title = "Kathleen"
SELECT count(*) FROM CITER WHERE cited_paper_id = (SELECT paper_id FROM CITER WHERE name = "Mckeown" OR name = "Kathleen")
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper WHERE title = "Mckeown" OR title = "Kathleen"
SELECT venue , year FROM Paper WHERE title = "Mckeown , Kathleen" OR title = "Kathleen"
SELECT venue , YEAR FROM PAPER WHERE title = "Columbia University"
SELECT venue , YEAR FROM Paper WHERE title = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT affiliation_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE YEAR = 2009 GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND venue = 'Columbia'
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title LIKE "%Columbia%" AND T2.year <= 2009
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND venue = "Stanford University"
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND venue = 'Stanford University'
SELECT title FROM author_list GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM author_list GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM affiliation AS T1 JOIN author AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Mckeown' INTERSECT SELECT count(*) FROM affiliation AS T1 JOIN author AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = "Mckeown\" AND T3.title = "Kathelot"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = "Mckeown\-Kathleen\-coauthor\-total"
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title LIKE 'China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , conference , YEAR FROM paper GROUP BY conference, YEAR
SELECT venue , YEAR , count(*) FROM PAPER GROUP BY YEAR , venue
SELECT sum(t2.title) , t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.name
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING sum(citations) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING sum(citations) > 50)
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year > 50
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009 AND T1.author_id IN (SELECT T2.author_id FROM author AS T2 JOIN paper AS T3 ON T2.author_id = T3.author_id WHERE T3.title = "NAACL" AND T3.year = 2009)
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009 INTERSECT SELECT T2.name FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE journal = "ACL"))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM paper WHERE journal = "ACL"))
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , year , location FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference GROUP BY year
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT T2.Institution_Name , T2.Location , T2.Found founded FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT T2.Institution_Name , T2.Location FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY Founded DESC LIMIT 1
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T2.Founded = (SELECT min(Founded) FROM institution) ORDER BY Founded DESC LIMIT 1
SELECT T2.institution_name , count(*) FROM conference AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T2.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT T1.Institution_Name FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID EXCEPT SELECT T3.Institution_Name FROM institution AS T3 JOIN staff AS T4 ON T3.Institution_ID = T4.Institution_ID
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = "United States"
SELECT max(Age) , min(Age) FROM staff
SELECT T2.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T2.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE institution_id IN (SELECT institution_id FROM conference_participation INTERSECT SELECT institution_id FROM conference_participation WHERE role = 'ACL')
SELECT T2.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'ACL' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'NACCL'
SELECT T2.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T1.year = 2003 OR T1.year = 2004
SELECT T2.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T1.year >= 2003 OR T1.year <= 2004
SELECT T2.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T2.conference_name , T2.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation)
SELECT T2.institution_name , T2.location FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T1.year = 2004 EXCEPT SELECT T3.institution_name , T3.location FROM conference AS T3 JOIN staff AS T4 ON T3.conference_id = T4.conference_id JOIN conference_participation AS T5 ON T4.conference_id = T5.conference_id
SELECT T2.institution_name , T2.location FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T1.year = 2004 EXCEPT SELECT T2.institution_name , T2.location FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T1.year = 2004
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT T2.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T2.age < 35
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM Hangar
SELECT count(DISTINCT location) FROM Hangar
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 32 AND T1.pilot_name = 'Jones'
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 32 AND T1.pilot_name = 'Jones'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Hangar 1' AND T1.age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT min(age) FROM PilotSkills) AND plane_name = 'Piper Cub'
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.plane_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM Hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM Hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Hangar WHERE location = "Chicago"
SELECT count(*) FROM Hangar WHERE location = "Chicago"
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 41 AND T1.pilot_name = 'Smith'
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 41 AND T1.pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT pilot_name) FROM PilotSkills
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT location FROM Hangar GROUP BY location ORDER BY plane_name
SELECT DISTINCT LOCATION , plane_name FROM Hangar ORDER BY plane_name
SELECT DISTINCT type FROM pilotskills ORDER BY pilot_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T1.age > 35 OR T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 OR T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM Hangar WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT DISTINCT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T2.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Austin' INTERSECT SELECT T2.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Boston'
SELECT DISTINCT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , type FROM PilotSkills GROUP BY type
SELECT count(*) , T1.plane_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT T2.plane_name , T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT DISTINCT plane_name , MIN(age) FROM PilotSkills ORDER BY MIN(age)
SELECT T1.plane_name , max(T2.age) , T2.plane_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name ORDER BY max(T2.age) DESC LIMIT 1;
SELECT T1.plane_name , T2.pilot_name , max(T2.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.pilot_name
SELECT max(age) , group_by FROM pilotskills GROUP BY group_by
SELECT DISTINCT pilot_name , max(age) FROM PilotSkills
SELECT count(*) , avg(age) , city FROM PilotSkills GROUP BY city
SELECT location , count(*) , avg(age) FROM Hangar GROUP BY location
SELECT count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name ORDER BY avg(age) ASC LIMIT 1
SELECT avg(age) , count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.pilot_name , T2.age FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Austin'
SELECT T2.plane_name , T1.age FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = "Austin"
SELECT DISTINCT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills) ORDER BY pilot_name
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14' )
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE "%Bomber%"
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE "%Bombers%"
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district WHERE Area_km = (SELECT min(Area_km) FROM district ORDER BY Area_km DESC LIMIT 3)
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT name FROM district WHERE government_website LIKE 'gov'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004
SELECT count(*) , T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.rank_position = 1 INTERSECT SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Speach_title = "Other"
SELECT sum(Population) , avg(Population) FROM district JOIN spokesman_district ON district.District_ID = spokesman_district.District_ID
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT T2.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID ORDER BY T1.year DESC LIMIT 1
SELECT title , location FROM paintings ORDER BY year DESC LIMIT 1
SELECT T1.title , T1.location FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid ORDER BY T2.birthyear LIMIT 1
SELECT DISTINCT T2.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID JOIN paintings AS T3 ON T3.artistID = T2.artistID WHERE T2.artistID = 226
SELECT DISTINCT t1.title FROM sculptures AS t1 JOIN artists AS t2 ON t1.sculptorid = t2.artistid WHERE t2.deathyear = 226
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , location FROM sculptures
SELECT title , location FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM Artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE location != "226"
SELECT title , year FROM sculptures WHERE location != "226"
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid WHERE t2.year < 1900 GROUP BY t2.sculptorid HAVING count(*) >= 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT t1.birthyear FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid WHERE t2.year > 1920
SELECT birthyear FROM Artists WHERE artistid NOT IN (SELECT artistid FROM sculptures WHERE YEAR > 1920) GROUP BY birthyear
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT artistID FROM Artists ORDER BY birthYear LIMIT 1
SELECT artistid FROM artworks ORDER BY birthyear LIMIT 1
SELECT fname , birthyear FROM Artists ORDER BY birthyear DESC LIMIT 1
SELECT t1.fname , t1.birthyear FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid JOIN sculptures AS t3 ON t2.artistid = t3.artistid ORDER BY t3.year DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN paintings AS T2 ON T1.artistID = T2.artistID WHERE T1.location = "240"
SELECT count(*) FROM paintings AS T1 JOIN artworks AS T2 ON T1.artistID = T2.artistID WHERE T2.location = "240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid ORDER BY T2.birthyear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN paintings AS T2 ON T1.artistID = T2.artistID WHERE T1.title = "Artistic and Artistic Art" AND T2.title = "Artistic and Artistic Art"
SELECT T2.title , T2.year FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T2.birthyear < 1850
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T2.birthyear < 1850
SELECT T1.location , T1.medium , T2.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T2.location , T2.medium , T1.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.artistid JOIN Sculptures AS T3 ON T2.artistid = T3.artistid
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid JOIN sculptures AS t3 ON t2.artistid = t3.artistid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.artistID WHERE T2.medium = "medium" AND T2.mediumOn != "lithographic"
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid WHERE medium = "oil" INTERSECT SELECT t1.fname , t1.lname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid WHERE medium = "lithographic"
SELECT t1.birthyear FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid WHERE t2.year = 1884 AND medium = "canvas"
SELECT T1.birthyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.artistid WHERE T2.year = 1884
SELECT DISTINCT T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.medium = "medium" AND T1.location = "241"
SELECT t1.fname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid WHERE t2.medium = "oil" AND t2.location = "241"
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , T2.location FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.year < 1900 GROUP BY T2.location
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT T2.title FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T1.year > 1910
SELECT DISTINCT T2.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.medium = "medium" AND T1.location = "240"
SELECT DISTINCT T2.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.medium = "oil" AND T1.location = 240
SELECT DISTINCT t1.title FROM paintings AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.artistid WHERE t2.height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = "canvas")
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingid FROM paintings WHERE year > (SELECT min(year) FROM paintings WHERE location = "240")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE location = 240)
SELECT paintingid FROM paintings ORDER BY year DESC LIMIT 1
SELECT paintingid FROM paintings ORDER BY year DESC LIMIT 1
SELECT T2.fname , T2.lname FROM sculptures AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID JOIN paintings AS T3 ON T1.artistID = T3.artistID WHERE T3.title LIKE "%female%"
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid WHERE t2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid ORDER BY T1.height_mm ASC
SELECT title , artistID FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 INTERSECT SELECT title , artistID FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT t1.title , t1.titleOn FROM paintings AS t1 JOIN sculptures AS t2 ON t1.artistID = t2.artistID WHERE YEAR BETWEEN 1900 AND 1950
SELECT T2.title FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T2.artistID = 222
SELECT t1.title , t1.titleOn FROM paintings AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.artistid WHERE t2.artistid = 222
SELECT artistid FROM paintings WHERE YEAR < 1900 GROUP BY artistid ORDER BY count(*) DESC LIMIT 1
SELECT artistID FROM paintings WHERE YEAR < 1900 GROUP BY artistID ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE height_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE height_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = "panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT LOCATION FROM paintings WHERE medium = "panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil medium" AND location = "241"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil medium" AND location = "241"
SELECT max(height_mm) , max(paintingid) FROM paintings WHERE YEAR < 1900
SELECT T2.height_mm , T2.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.artistID = T2.artistID WHERE T1.year < 1900 ORDER BY T1.height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , artistID FROM paintings GROUP BY artistID ORDER BY artistID
SELECT avg(height_mm) , avg(width_mm) , artistID FROM paintings GROUP BY artistID ORDER BY artistID
SELECT T2.fname , count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.artistID = T2.artistID GROUP BY T2.fname HAVING count(*) >= 2
SELECT T1.fname , COUNT(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T2.artistid HAVING COUNT(*) >= 2
SELECT T2.deathyear FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T2.deathyear FROM paintings AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) LIMIT 1
SELECT ddeathyear FROM Artists WHERE artistid NOT IN (SELECT artistid FROM sculptures) GROUP BY ddeathyear ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE location = 240)
SELECT T2.height_mm , T2.artistID FROM paintings AS T1 JOIN paintings AS T2 ON T1.artistID = T2.artistID WHERE T1.height_mm = (SELECT max(height_mm) FROM paintings WHERE location = "240")
SELECT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE location = 240)
SELECT paintingid FROM paintings WHERE year < (SELECT max(year) FROM paintings WHERE location = "240")
SELECT paintingid FROM paintings WHERE year > 1900 AND height_mm > (SELECT max(height_mm) FROM paintings WHERE year > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE year > 1900)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.artistID GROUP BY T2.artistID ORDER BY count(*) DESC LIMIT 3
SELECT T2.fname , T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.artistID = T2.artistID GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , location , title FROM paintings ORDER BY year
SELECT paintingid , location , title FROM paintings ORDER BY year
SELECT T2.year , T2.location , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.artistID WHERE T1.height_mm > 1000 ORDER BY T1.title
SELECT T2.year , T2.location , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.artistID WHERE T1.height_mm > 1000 ORDER BY T1.title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.artistID EXCEPT SELECT T3.fname , T3.lname FROM Artists AS T3 JOIN Paintings AS T4 ON T3.artistID = T4.artistID EXCEPT SELECT T5.fname , T5.lname FROM Artworks AS T5 JOIN Sculptures AS T6 ON T5.artistID = T6.artistID
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.artistid EXCEPT SELECT t3.fname , t3.lname FROM artists AS t3 JOIN sculptures AS t4 ON t3.artistid = t4.sculptorid
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "medium_on_canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT winning_driver , winning_team FROM race ORDER BY winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT winning_driver FROM race WHERE pole_position != "Junior Strous"
SELECT winning_driver FROM race WHERE race_name != 'Pole_Registration'
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(age) , min(age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , T1.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT count(*) , T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Driver_Name , T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchley" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchley' AND T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchley' )
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justitude_score) FROM countries
SELECT max(health_score) , min(health_score) FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages WHERE name = "Norway")
SELECT max(health_score) , min(health_score) FROM countries WHERE country_id != 2 AND country_id != 2;
SELECT count(DISTINCT name) FROM languages
SELECT count(DISTINCT name) FROM languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY overall_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T2.name , T1.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id
SELECT T2.name , T1.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.name
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE country_id = (SELECT country_id FROM official_languages WHERE name = "English")
SELECT avg(overall_score) FROM country AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY T3.overall_score DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id ORDER BY avg(T2.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T3.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT T3.country_id FROM countries AS T3 JOIN official_languages AS T4 ON T3.id = T4.country_id WHERE T3.overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT T3.country_id FROM countries AS T3 JOIN official_languages AS T4 ON T3.id = T4.country_id WHERE T3.overall_score < 90)
SELECT T1.country , T1.town_city FROM addresses AS T1 JOIN addresses AS T2 ON T1.zip_postcode = T2.zip_postcode
SELECT T1.country , T1.town_city FROM Addresses AS T1 JOIN Addresses AS T2 ON T1.zip_postcode = T2.zip_postcode
SELECT T1.state_count FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.address_id GROUP BY T1.state_count
SELECT T1.state , T1.state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.owner_user_id
SELECT feature_description FROM Features WHERE feature_name = 'roofighters'
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T3.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Rooms
SELECT min(room_count) FROM Properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code , T2.age_category_description FROM Ref_Agues_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_code = 'Mother'
SELECT T1.age_category_description FROM Ref_Agge_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_code = "Mother"
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE garden = 'yes'
SELECT avg(room_count) FROM Properties AS T1 JOIN Ref_Room_Types AS T2 ON T1.room_type_code = T2.room_type_code JOIN Ref_Room_Types AS T3 ON T1.room_type_code = T3.room_type_code WHERE T2.garden = 'Y'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.owner_user_id JOIN property_features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_name = "swimming pool"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.owner_user_id JOIN ref_property_types AS T3 ON T2.property_type_code = T3.property_type_code JOIN ref_user_category_code AS T4 ON T2.owner_user_id = T4.user_id WHERE T3.property_type_code = 'swimming_pool'
SELECT T1.property_id , T1.vendor_requested_price FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id ORDER BY T3.feature_value LIMIT 1
SELECT T1.property_id , T1.vendor_requested_price FROM Properties AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id WHERE T2.vendor_requested_price = (SELECT vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1)
SELECT avg(room_count) FROM rooms
SELECT avg(room_count) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_datetime FROM user_searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Schops GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id
SELECT max(search_datetime) FROM user_searches
SELECT search_datetime , search_string FROM User_Schur WHERE user_id = (SELECT user_id FROM Users ORDER BY count(*) DESC LIMIT 1)
SELECT search_string , datestamp FROM user_searches ORDER BY search_string DESC
SELECT DISTINCT T1.zip_postcode FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.owner_user_id JOIN users AS T3 ON T1.address_id = T3.user_address_id WHERE T2.owner_user_id NOT IN (SELECT user_address_id FROM users WHERE user_category_code = 2)
SELECT DISTINCT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.owner_user_id JOIN Users AS T3 ON T1.address_id = T3.user_address_id WHERE T2.owner_user_id NOT IN (SELECT owner_user_id FROM Properties GROUP BY owner_user_id HAVING count(*) >= 2)
SELECT T1.user_category_code , T2.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id WHERE T2.search_count = 1
SELECT T1.user_id , T1.user_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_id = (SELECT user_id FROM Users AS T3 JOIN User_Schops AS T4 ON T3.user_id = T4.user_id WHERE T4.search_seq = 1)
SELECT T1.age_category_description FROM Ref_Agues_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.date_registered LIMIT 1
SELECT login_name FROM users WHERE user_category_code = "SSenior\" ORDER BY first_name
SELECT login_name FROM users WHERE user_category_code = "SINGING" GROUP BY login_name ORDER BY first_name
SELECT count(*) FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id
SELECT count(*) FROM users WHERE is_buyer = '1'
SELECT date_registered FROM users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.login_name FROM Users AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.seller_value = 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.login_name FROM users AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_seller = 'S'
SELECT T1.building , T1.street , T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_id WHERE T2.age_category_code = "S Senior"
SELECT T1.building_name , T1.street , T1.city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "Seller" AND T2.age_category_code = "Senior"
SELECT count(*) FROM Properties WHERE feature_id IN (SELECT feature_id FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2)
SELECT count(*) FROM Properties WHERE property_type_code = "1"
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id GROUP BY T1.property_id
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Phords AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT T1.user_id , count(*) FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id
SELECT T1.user_id , count(*) FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE user_category_code = 'M' UNION SELECT user_id FROM Users WHERE user_category_code = 'S')
SELECT sum(T1.price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = 'M' OR T2.user_category_code = 'S'
SELECT datestamp , property_name FROM user_property_history ORDER BY datestamp
SELECT datestamp , property_name FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id JOIN Ref_Room_Types AS T3 ON T1.room_type_code = T3.room_type_code JOIN Ref_Room_Types AS T4 ON T3.room_type_code = T4.room_type_code GROUP BY T1.property_id ORDER BY datestamp
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT property_type_description , property_type_code FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.age_category_description FROM ref_age_categories AS t1 JOIN ref_age_categories AS t2 ON t1.age_category_code = t2.age_category_code WHERE t1.age_category_description = 'Over 60'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = 'Over 60'
SELECT room_type_code , count(*) FROM Rooms GROUP BY room_type_code
SELECT count(*) , room_size FROM Rooms GROUP BY room_size
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Address AS T3 ON T2.owner_user_id = T3.address_id WHERE T3.zip_postcode = (SELECT T2.address_id FROM Properties AS T2 WHERE T2.price_min = T2.price_min AND T2.price_max = T2.price_max)
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_type_code = "1"
SELECT T1.search_string FROM User_Schur WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.search_string FROM User_Schruke AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.user_category_code = 'buyer' EXCEPT SELECT T1.search_string FROM User_Schruke AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.user_category_code = 'owner'
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Ref_user_categories AS T3 ON T1.user_category_code = T3.user_category_code JOIN Ref_user_categories AS T4 ON T3.user_category_code = T4.user_category_code GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Ref_user_categories AS T3 ON T1.user_category_code = T3.user_category_code JOIN Ref_user_categories AS T4 ON T3.user_category_code = T4.user_category_code GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T2.id , T2.product_name FROM cyclist_own_bikes AS T1 JOIN bike AS T2 ON T1.bid = T2.id WHERE T1.purchase_year > 2015
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bid GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cider_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT product_name FROM cyclist AS t1 JOIN cyclists_own_bikes AS t2 ON t1.id = t2.cider_id WHERE nation = 'Russia' OR nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE result = 'not purchased' AND heat > 2015
SELECT DISTINCT t2.product_name FROM cyclist AS t1 JOIN cyclists_own_bikes AS t2 ON t1.id = t2.cider_id JOIN bike AS t3 ON t2.bike_id = t3.id WHERE t1.result > 421.58
SELECT t1.product_name , t1.price FROM bike AS t1 JOIN cyclist_own_bikes AS t2 ON t1.id = t2.cyclist_id JOIN cyclist AS t3 ON t2.cider_id = t3.id WHERE t3.name = 'Antonio Tauler' INTERSECT SELECT t1.product_name , t1.price FROM bike AS t1 JOIN cyclist_own_bikes AS t2 ON t1.id = t2.cider_id JOIN cyclist AS t3 ON t2.cider_id = t3.id WHERE t3.name = 'Bradley Wiggins'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclist AS T1 JOIN cyclist_own_bikes AS T2 ON T1.id = T2.cider_id GROUP BY T1.id ORDER BY T1.id
SELECT flavor , price FROM goods ORDER BY price DESC LIMIT 1
SELECT T2.id , T2.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price = (SELECT max(price) FROM goods)
SELECT min(Price) , Flavor FROM goods GROUP BY Flavor
SELECT T2.id , T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T1.price LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T2.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price < 3
SELECT DISTINCT T1.id FROM goods AS T1 JOIN customers AS T2 ON T1.id = T2.id WHERE T1.Flavor = 'lemon'
SELECT DISTINCT T1.id FROM goods AS T1 JOIN customers AS T2 ON T1.id = T2.id WHERE T1.flavor = "lemon"
SELECT T2.Four , T1.Four FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Four
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT T2.Id FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Date >= DATE(1, '2010-01-01) AND T1.Date <= DATE(1, '2010-01-01) GROUP BY T1.CustomerId HAVING COUNT(*) >= 15
SELECT T2.id FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) >= 15
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Ordinary = 10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId HAVING COUNT(*) > 10
SELECT count(DISTINCT flavor) FROM goods WHERE food = 'Cake'
SELECT count(DISTINCT flavor) FROM goods WHERE food = 'cake'
SELECT Flavor FROM goods WHERE Flavor = "Croissant"
SELECT Flavor FROM goods WHERE Food = 'croutage' AND Flavor = 'croutage'
SELECT DISTINCT T2.Item FROM receipts AS T1 JOIN items AS T2 ON T1.Ordinal = T2.Ordinal JOIN customers AS T3 ON T1.CustomerId = T3.Id WHERE T3.FirstName = "15"
SELECT DISTINCT T2.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Ordinal = T2.Ordinal JOIN customers AS T3 ON T2.CustomerId = T3.Id WHERE T3.FirstName = "15"
SELECT avg(price) , max(price) , min(price) FROM goods
SELECT avg(price) , min(price) , max(price) , Food FROM goods GROUP BY Food
SELECT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T1.Four = 'Cake' AND T1.Fifth = 'Cookie'
SELECT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T1.Four = 'cake' INTERSECT SELECT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T1.Four = 'cookie'
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.firstname = "LOGAN" AND T1.lastname = "LOGAN" AND T2.item = "Craissant"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.firstname = "Logon" AND T1.lastname = "Logon" AND T2.item = "Croissant"
SELECT T2.ReceiptNumber , T1.Date FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.ReceiptNumber ORDER BY T1.Price DESC LIMIT 1
SELECT T2.ReceiptNumber , T1.Date FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber ORDER BY T1.Item DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , type FROM goods GROUP BY type
SELECT COUNT(*) , T2.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.Flavor
SELECT avg(price) , Food FROM goods GROUP BY Food
SELECT avg(price) , TYPE FROM goods GROUP BY TYPE
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT T2.id , T2.price FROM goods AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T1.price < (SELECT avg(price) FROM goods)
SELECT DISTINCT goods.id , goods.price FROM goods WHERE goods.price < (SELECT avg(price) FROM goods)
SELECT DISTINCT T2.id FROM goods AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T1.price < T2.price
SELECT DISTINCT goods.id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id JOIN customers AS T3 ON T2.Ordinal = T3.Ordinal WHERE T1.price > 13
SELECT DISTINCT receiptnumber FROM items WHERE price > 13
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item JOIN customers AS T3 ON T2.customerid = T3.id WHERE T1.price > 15 AND T1.Flavor = "good"
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item JOIN customers AS T3 ON T1.id = T3.id WHERE T1.price > 15
SELECT id FROM goods WHERE Flavor = "APP"
SELECT id FROM goods WHERE flavor LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE id = 70
SELECT id , price FROM goods WHERE Flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE price = 0 ORDER BY price ASC
SELECT DISTINCT id FROM goods
SELECT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.Ordinal = T2.Ordinal WHERE T1.Flavor = "apple" OR T2.CustomerId = 12
SELECT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN customers AS T3 ON T1.Ordinal = T2.CustomerId WHERE T3.FirstName = "12" AND T3.LastName = "Shops"
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 10 OR T1.id = T2.Ordinary
SELECT ReceiptNumber FROM receipts WHERE price > 10 OR date = (SELECT min(date) FROM receipts)
SELECT T2.id , T1.Four , T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price >= 3 AND T1.price <= 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 OR id = 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T2.FirstName , T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Date = (SELECT min(Date) FROM receipts)
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT Price FROM goods WHERE Flavor = "cheese" ORDER BY Price ASC LIMIT 1
SELECT Food FROM goods WHERE Flavor = "cheese" ORDER BY Price LIMIT 1
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY AVG(Price) DESC, Flavor ASC
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price) , max(Price) FROM goods ORDER BY Food
SELECT date , count(*) FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.Date ORDER BY count(*) DESC LIMIT 3
SELECT T1.FirstName , T1.LastName , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.id , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1
SELECT date , count(DISTINCT customer_id) FROM receipts GROUP BY date
SELECT T2.Date , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.Date
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Apple" AND T3.flavor = "Tart"
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN goods AS T3 ON T3.id = T2.item WHERE T3.Flavor = "apple" AND T3.Price = 1000
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < 200 AND flavor = "course"
SELECT T2.id FROM goods AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T1.price >= (SELECT avg(price) FROM goods)
SELECT T2.Id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price >= (SELECT avg(T1.Price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.id = T2.id)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT T2.id , T1.Flavor , T2.Forename , T2.Forename FROM goods AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T1.Price > T2.Price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT item FROM goods WHERE flavor = "chocolate" EXCEPT SELECT item FROM items WHERE ordinal = 10
SELECT T2.Item FROM items AS T1 JOIN goods AS T2 ON T1.Id = T2.id WHERE T2.Flavor = "Chocolate" GROUP BY T2.Item HAVING COUNT(*) <= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Tart" EXCEPT SELECT Flavor FROM goods
SELECT Goods.From, Goods.Price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id JOIN goods AS T3 ON T2.id = T3.id GROUP BY T1.id ORDER BY T3.Price DESC LIMIT 3
SELECT T2.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Item WHERE T1.FaceName = 'Bakery' ORDER BY T1.Quantity DESC LIMIT 3
SELECT T2.Id FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Date > '2011-01-01' AND T1.Price > 150
SELECT T2.Id FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Date > '2012-01-01 AND T1.Temperature > 150
SELECT T2.id , T1.Frequency FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id HAVING avg(T1.price) > 5
SELECT avg(T2.Price) , T1.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.Item GROUP BY T1.id WHERE T2.Price > 5
{"sql": "SELECT date FROM receipts WHERE id = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item JOIN customers AS T3 ON T1.id = T3.id WHERE T1.price > 100 GROUP BY T2.Date HAVING sum(T1.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , MAKE FROM driver WHERE Points > 150 GROUP BY MAKE
SELECT T3.Make , count(*) FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN team AS T3 ON T2.Team_ID = T3.Team_ID GROUP BY T3.Make HAVING max(T1.Points) > 150
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Tagner.Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_O Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Oowner
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT T2.Make FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Car_O Owner = "Buddy Arrington"
SELECT T2.Make FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN team AS T3 ON T2.Team_ID = T3.Team_ID WHERE T1.Car_O Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(T1.Points) , min(T1.Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(T1.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT avg(T1.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT avg(Age) FROM country WHERE Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Points = (SELECT max(Points) FROM driver WHERE Country = "United States")
SELECT country FROM driver ORDER BY Points DESC LIMIT 1 JOIN country ON country.Country_id = country.Country ORDER BY capital
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT T3.Make FROM team_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING COUNT(*) >= 3
SELECT Team FROM Team EXCEPT SELECT T1.Team FROM Team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID
SELECT Team FROM driver EXCEPT SELECT T1.Team FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Total , AVG(Points) FROM driver GROUP BY Total
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM driver EXCEPT SELECT Country FROM driver
SELECT Country FROM driver EXCEPT SELECT Country FROM driver
SELECT Manager , Sponsor FROM team ORDER BY Points DESC LIMIT 1
SELECT Manager , Sponsor FROM team ORDER BY Points DESC LIMIT 1
SELECT T2.Manager , T2.Car_Oowner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT T2.Manager , T2.Car_O Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT name FROM institution ORDER BY name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT name FROM institution ORDER BY Founded
SELECT city , province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM institution WHERE City = "Vancouver")
SELECT Affiliation FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM institution WHERE City = "Vancouver")
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT name , nickname FROM institution
SELECT name , nickname FROM institution
SELECT T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships LIMIT 1
SELECT T2.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE Affiliation = 'Public'
SELECT sum(count(*)) FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE Affiliation = "Public"
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT T2.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT T1.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT enrollment FROM institution WHERE city = "Vancouver" OR city = "Campagina"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT Province FROM institution GROUP BY Province HAVING COUNT(*) > 1
SELECT * FROM boxes
SELECT * FROM boxes
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT Contents FROM boxes WHERE Value > 150
SELECT Contents FROM boxes WHERE Value > 150
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(box.value) , warehouse FROM boxes GROUP BY warehouse
SELECT avg(box_value) , sum(box_value) FROM boxes
SELECT avg(box_value) , sum(box_value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT count(*) , avg(value) , max(value) FROM boxes
SELECT avg(box_value) , max(box_value) , contents FROM boxes GROUP BY contents
SELECT Contents FROM boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT Contents FROM boxes ORDER BY Value DESC LIMIT 1
SELECT avg(box.value) FROM boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT Contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT Contents) FROM boxes
SELECT DISTINCT LOCATION FROM warehouses
SELECT DISTINCT LOCATION FROM warehouses
SELECT box_code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT box_code FROM boxes JOIN boxes AS boxes2 ON boxes2.warehouse = boxes2.warehouse WHERE location = 'Chicago' OR location = 'New York'
SELECT sum(boxes.value) FROM boxes AS boxes JOIN boxes AS boxes2 ON boxes2.warehouse = boxes2.warehouse WHERE boxes2.location = 'Chicago' OR boxes2.location = 'New York'
SELECT sum(boxes.value) FROM boxes AS boxes JOIN boxes AS boxes2 ON boxes2.warehouse = boxes2.warehouse WHERE boxes2.location = 'Chicago' OR boxes2.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN boxes AS T2 ON T1.contents = T2.contents WHERE T2.warehouse = 'Chicago' OR T2.warehouse = 'New York'
SELECT Contents FROM boxes WHERE Warehouse = 'Chicago' INTERSECT SELECT Contents FROM boxes WHERE Warehouse = 'New York'
SELECT Contents FROM boxes WHERE warehouse != 'New York'
SELECT DISTINCT Contents FROM boxes WHERE warehouse != "New York"
SELECT LOCATION FROM boxes WHERE Contents = 'Rocks' EXCEPT SELECT warehouse FROM boxes WHERE contents = 'Scissors'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT warehouse FROM boxes WHERE contents = "Scissors" OR contents = "Ross"
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT LOCATION FROM boxes WHERE Contents = 'Rocks' INTERSECT SELECT LOCATION FROM boxes WHERE Contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = 'Scissors'
SELECT contents , value FROM boxes ORDER BY value
SELECT contents , value FROM boxes ORDER BY value
SELECT Contents , Value FROM boxes ORDER BY value LIMIT 1
SELECT Contents , VALUE FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT Contents FROM boxes WHERE Value > (SELECT avg(Value) FROM boxes)
SELECT DISTINCT Contents FROM boxes WHERE Value > (SELECT avg(Value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY value
SELECT DISTINCT Contents FROM boxes ORDER BY Contents
SELECT DISTINCT T1.code FROM boxes AS T1 JOIN boxes AS T2 ON T1.contents = T2.contents WHERE T1.value > (SELECT min(T1.value) FROM boxes AS T1 WHERE T1.contents = 'Rocks')
SELECT Contents FROM boxes WHERE Value > (SELECT min(Value) FROM boxes WHERE Contents = 'Ross')
SELECT Contents , VALUE FROM boxes WHERE value > (SELECT max( value) FROM boxes WHERE contents = 'Scissors' )
SELECT Contents , code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(boxes.value) FROM boxes AS boxes JOIN boxes AS boxes2 ON boxes2.box_id = boxes2.box_id WHERE boxes2.warehouse = (SELECT warehouse FROM boxes ORDER BY capacity DESC LIMIT 1)
SELECT sum(boxes.value) FROM boxes AS boxes JOIN warehouses AS warehouse ON boxes.warehouse = boxes.warehouse GROUP BY boxes.warehouse ORDER BY capacity DESC LIMIT 1
SELECT warehouse_code , avg(box_value) FROM boxes GROUP BY box_code HAVING avg(box_value) > 150
SELECT avg(box.value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(box.value) > 150
SELECT sum(box_count) , sum(box_value) , contents FROM boxes GROUP BY contents
SELECT sum(box_value) , count(*) FROM boxes
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , location FROM warehouses GROUP BY location
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT T1.contents , T2.warehouse , max(T2.value) FROM boxes AS T1 JOIN boxes AS T2 ON T1.warehouse = T2.warehouse GROUP BY T2.warehouse
SELECT warehouse , max(box) FROM boxes GROUP BY warehouse
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT LOCATION) FROM boxes WHERE Contents = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes
SELECT boxes.code , boxes.contents , boxes.value , boxes.warehouse FROM boxes WHERE warehouse = (SELECT warehouse FROM boxes)
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT contents FROM boxes WHERE warehouse = "Chicago"
SELECT T1.box_code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity > capacity
SELECT warehouse FROM boxes GROUP BY warehouse HAVING sum(box) > capacity
SELECT sum(boxes.value) FROM boxes WHERE boxes.code NOT IN (SELECT warehouse FROM boxes WHERE location = "Chicago")
SELECT sum(boxes.value) FROM boxes WHERE box_id NOT IN (SELECT box_id FROM boxes WHERE warehouse = 'Chicago')
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state = "Illinois" OR state = "Ohio"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT T1.Team_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.University_Name HAVING Sum(Enrollment) > (SELECT avg(Enrollment) FROM university)
SELECT home_conference FROM university
SELECT DISTINCT home_conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference ORDER BY avg(enrollment) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY sum(enrollment) ASC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) DESC LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T1.Major_Name , T1.Major_Code FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID WHERE T2.University_ID = 'Augustana College'
SELECT T2.Major_Name , T1.Rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID WHERE T2.Rank = 1
SELECT T2.University_Name , T2.City , T2.State FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID WHERE T1.Rank = 1 AND T1.Major_Name = 'Accounting'
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_ID = 1 ORDER BY T2.rank DESC
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank = 1 GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.rank LIMIT 1
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.major_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank = 1
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name != "Magnetism" AND T1.Enrollment = 0
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = 'Accounting' INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = 'Urban Education'
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = 'Accounting' INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = 'Urban Education'
SELECT T1.University_Name , T2.overall_rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.State WHERE T1.State = "Wisconsin"
SELECT T1.University_Name , T2.Rank FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID JOIN major_ranking AS T3 ON T2.Major_ID = T3.Major_ID WHERE T1.State = "Wisconsin"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Report_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Report_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Report_point ASC
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Accounting" AND T1.Enrollment > 3
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Accounting" AND T1.Rank >= 3
SELECT sum(enrollment) FROM university WHERE overall_ranking.rank = 5 OR overall_ranking.rank = 5
SELECT sum(enrollment) FROM university WHERE rank <= 5
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.University_Name HAVING COUNT(*) >= 3
SELECT T1.University_Name , T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Report_3 DESC LIMIT 3
SELECT T1.State FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Enrollment < 3000 GROUP BY T1.State HAVING count(*) > 2
SELECT T1.State FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT title FROM movies WHERE rating = "null"
SELECT Title FROM Movies WHERE Rating = "null"
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating = 'G'
SELECT T2.title FROM movies AS T1 JOIN movie theaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT T2.title FROM movies AS T1 JOIN movie theaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT T1.title , T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.movie = 'Theater'
SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code
SELECT count(*) FROM Movies WHERE rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM movies AS T1 JOIN movie theaters AS T2 ON T1.code = T2.code
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM Movies WHERE title LIKE '%Citian%'
SELECT rating FROM Movies WHERE title LIKE "%Citian%"
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM Movies WHERE rating = 'G' OR rating = 'PG')
SELECT name FROM MovieTheaters WHERE movie = 'G' OR rating = 'PG'
SELECT T1.title FROM movies AS T1 JOIN movie theaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movieaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movieaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Imperial'
SELECT title FROM movies EXCEPT SELECT t1.title FROM movies AS t1 JOIN movietheaters AS t2 ON t1.code = t2.code WHERE t2.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT t1.title FROM movies AS t1 JOIN movietheaters AS t2 ON t1.code = t2.code WHERE t2.name = 'Odeon'
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY rating
SELECT title FROM Movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM movieTheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT name FROM movie theaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , rating FROM Movies GROUP BY rating
SELECT count(*) , rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE rating != "null"
SELECT name FROM MovieTheaters WHERE movie = 'Theater Name'
SELECT name FROM MovieTheaters WHERE movie = "All movies"
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT code FROM Movies)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT code FROM Movies)
SELECT name FROM MovieTheaters WHERE code = (SELECT code FROM Movies WHERE rating = 'G')
SELECT name FROM MovieTheaters WHERE movie = "G"
SELECT title FROM Movies
SELECT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM movies WHERE rating = "unrated"
SELECT * FROM movies WHERE rating = "unrated"
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT Recipient FROM HAS_clearance GROUP BY Recipient ORDER BY SUM(Contents) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.contains ORDER BY sum(T2.contains) DESC LIMIT 1
SELECT sum(weight) FROM HAS_clearance AS T1 JOIN CLIENT AS T2 ON T1.employee = T2.accountnumber JOIN PLANET AS T3 ON T3.planetid = T1.plentid JOIN SHIPMENT AS T4 ON T4.shipmentid = T3.plentid WHERE T4.manager = "Leo Wong"
SELECT sum(weight) FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet JOIN Client AS T3 ON T3.accountnumber = T1.employee WHERE T2.manager = 'Leo Wong'
SELECT position FROM Employee WHERE name = "Amy Wong";
SELECT position FROM Employee WHERE name = "Amy Wong";
SELECT salary , position FROM Employee WHERE name = "Turanga Leela";
SELECT salary , position FROM Employee WHERE name = "Turanga Leela";
SELECT avg(Salary) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE LEVEL LIKE "Physician"
SELECT T2.Level FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Employee = (SELECT Employee FROM Has_clearance WHERE Level = "Clearance")
SELECT PackageNumber FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet WHERE T2.manager = "Leo Wong"
SELECT count(*) FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet WHERE T2.manager = "Leo Wong"
SELECT T2.packagenumber FROM HAS_clearance AS T1 JOIN Employee AS T2 ON T1.employee = T2.employee JOIN PLANET AS T3 ON T3.planetid = T1.planet WHERE T1.employee = 1 AND T3.name = "Leo Wong"
SELECT DISTINCT T1.packagenumber FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet JOIN CLIENT AS T3 ON T3.accountnumber = T1.employee WHERE T3.name = "Leo Wong"
SELECT T2.packagenumber FROM HAS_clearance AS T1 JOIN Shipment AS T2 ON T1.planet = T2.plentid JOIN Client AS T3 ON T1.employee = T3.accountnumber WHERE T3.name = "Leo Wong"
SELECT DISTINCT T2.packagenumber FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet JOIN CLIENT AS T3 ON T1.employee = T3.accountnumber JOIN HAS_clearance AS T4 ON T4.employee = T3.accountnumber WHERE T3.name = "Leo Wong"
SELECT count(*) FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet WHERE T1.employee = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.plankid WHERE T1.employee = "Leo Wong"
SELECT count(*) FROM HAS_clearance AS T1 JOIN Employee AS T2 ON T1.employee = T2.employee JOIN HAS_clearance AS T3 ON T1.level = T3.level JOIN Planet AS T4 ON T4.planetid = T3.planet WHERE T2.name = "Ogden Wernstrom" AND T3.level = "1" AND T4.name = "Leo Wong"
SELECT Contents FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet WHERE T2.manager = "John Zoidfarb"
SELECT Contents FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.planet = T2.planet WHERE T2.manager = "John Zoidfarb"
SELECT T2.packagenumber , T2.weight FROM has_clearance AS T1 JOIN client AS T2 ON T1.employee = T2.accountnumber JOIN shipper AS T3 ON T1.shipper = T3.shipmentid JOIN planet AS T4 ON T4.planetid = T1.plantid WHERE T3.manager = "John"
SELECT T2.packagenumber , T2.weight FROM shipment AS T1 JOIN client AS T2 ON T1.shipper = T2.accountnumber WHERE T1.name = "John"
SELECT PackageNumber , Weight FROM HAS_clearance JOIN Planet ON Has_clearance.plankid = Planet.plankid JOIN Shipment AS T1 ON T1.ShipmentID = Shipment.ShipmentID ORDER BY T1.ShipmentID LIMIT 3
SELECT PackageNumber , Weight FROM HAS_clearance JOIN PLANET ON Has_clearance.plankid = planetid JOIN SHIPMENT AS T2 ON T2.shipmentid = shipmentid JOIN HAS_clearance AS T3 ON T3.employee = shipmentemployeeid WHERE T2.date = T3.date AND T2.plankid = T3.plankid AND T2.packagenumber = T3.packagenumber ORDER BY T2.date = T3.date LIMIT 3
SELECT T2.name , T1.packagenumber FROM HAS_clearance AS T1 JOIN CLIENT AS T2 ON T1.employee = T2.accountnumber GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , COUNT(*) FROM Has_clearance AS T1 JOIN Client AS T2 ON T1.AccountNumber = T2.AccountNumber JOIN Package AS T3 ON T1.Employee = T3.ShipmentID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN HAS_clearance AS T2 ON T1.accountnumber = T2.employee GROUP BY T1.accountnumber ORDER BY count(*) LIMIT 1
SELECT min(packagenumber) , manager FROM HAS_clearance GROUP BY manager
SELECT T1.Name FROM Client AS T1 JOIN HAS_clearance AS T2 ON T1.AccountNumber = T2.Employee WHERE T2.Level > 1 GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM Client AS T1 JOIN Client AS T2 ON T1.AccountNumber = T2.AccountNumber GROUP BY T1.AccountNumber HAVING COUNT(*) > 1
SELECT Coordinates FROM planet WHERE name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name
SELECT shipmentid FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.employee = T2.employee WHERE T2.name = "Phiblith J. Fry"
SELECT shipmentid FROM Shipment WHERE manager = "Philip J. Fry"
SELECT Date FROM Shipment
SELECT Date FROM Has_clearance UNION SELECT Date FROM Shipment
SELECT ShipmentID FROM Has_clearance WHERE Planet = 'Mars'
SELECT shipmentid FROM has_clearance WHERE planet = "Mars"
SELECT shipmentid FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.plankid = T2.plankid WHERE T2.name = "Mars" AND T1.employee = "Turanga Leela"
SELECT shipmentid FROM HAS_clearance AS T1 JOIN Planet AS T2 ON T1.plannedplanetid = T2.plannedplanetid JOIN Shipment AS T3 ON T1.plannedplanetid = T3.plannedplanetid WHERE T2.name = "Mars" AND T3.manager = "Turanga Leela"
SELECT shipmentid FROM has_clearance AS T1 JOIN planet AS T2 ON T1.plankid = T2.plankid WHERE T2.name = "Turanga Leela" INTERSECT SELECT shipmentid FROM has_clearance AS T1 JOIN planet AS T2 ON T1.plankid = T2.plankid WHERE T2.name = "Mars"
SELECT T1.ShipmentID FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.plankid = T2.plankid JOIN Shipment AS T3 ON T1.employee = T3.employeeid WHERE T2.name = "Turanga Leela" AND T3.plankid = "Mars"
SELECT sum(ShipmentID) , NAME FROM Has_clearance JOIN Planet ON Has_clearance.Planet = Planet.plankid GROUP BY NAME
SELECT count(*) , planetid FROM has_clearance GROUP BY planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.plankid = T2.plankid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Level = 1 ORDER BY T1.Name DESC LIMIT 1
SELECT Manager , COUNT(*) FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Shipment AS T3 ON T1.Shipment = T3.ShipmentID WHERE T2.Name = T3.Manager
SELECT count(*) , manager FROM Shipment GROUP BY manager
SELECT sum(weight) FROM HAS_clearance AS T1 JOIN Planet AS T2 ON T1.plankid = T2.plankid JOIN Shipment AS T3 ON T1.employee = T3.employee WHERE T2.name = 'Mars'
SELECT sum(weight) FROM HAS_clearance AS T1 JOIN PLANET AS T2 ON T1.planet = T2.planid JOIN Shipment AS T3 ON T3.planeid = T2.planeid WHERE T3.planet = 'mars'
SELECT sum(weight) , name FROM HAS_clearance JOIN PLANET ON Has_clearance.plankid = planet.plankid GROUP BY planet.plankid
SELECT sum(T2.Weight) , T1.Name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet_id = T2.planetid GROUP BY T1.name
SELECT name FROM planet WHERE planetid IN (SELECT planet FROM has_clearance WHERE totalweight > 30)
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.plankid = T2.plankid JOIN employee AS T3 ON T2.employee = T3.employee WHERE T3.salary > 30
SELECT T2.packagenumber FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planetid = T2.plentid JOIN shipment AS T3 ON T1.employee = T3.employeeid WHERE T3.planet = "Omicron Perlei 8" AND T3.manager = "Zapp Brannigan"
SELECT count(*) FROM HAS_clearance AS T1 JOIN EMPLOYEE AS T2 ON T1.employee = T2.employee JOIN PLANET AS T3 ON T3.planetid = T1.plankid JOIN Shipment AS T4 ON T4.shipmentid = T3.plankid WHERE T2.name = "Zapp Brannigan" AND T4.plankid = "Omicron Persei 8"
SELECT T1.packagenumber FROM HAS_clearance AS T1 JOIN PLANET AS T2 ON T1.plankid = T2.plankid JOIN Shipment AS T3 ON T3.plankid = T2.plankid WHERE T2.name = "Omicron Peris 8" INTERSECT SELECT T1.packagenumber FROM PLANET AS T1 JOIN Shipment AS T2 ON T1.plankid = T2.plankid JOIN Shipment AS T3 ON T2.shipmentid = T3.shipmentid JOIN Client AS T4 ON T3.customerid = T4.accountnumber WHERE T2.name = "Zapp Brannigan"
SELECT count(*) FROM HAS_clearance AS T1 JOIN Planet AS T2 ON T1.plankid = T2.plankid JOIN Shipment AS T3 ON T3.shipmentid = T2.plankid WHERE T2.name = "Omicron Persei 8" OR T3.manager = "Zapp Brannigan"
SELECT shipment , contents FROM has_clearance WHERE level = 30 INTERSECT SELECT shipment , contents FROM package WHERE weight > 10 AND weight < 30
SELECT PackageNumber , Weight FROM HAS_clearance AS T1 JOIN SHIPMENT AS T2 ON T1.plankid = T2.plankid JOIN CLIENT AS T3 ON T3.AccountNumber = T1.Employee JOIN PACKAGE AS T4 ON T4.Shipment = T2.Shipment WHERE T4.Weight BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = 'Mars')
SELECT name FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = "Mars")
SELECT T2.name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.employee = T2.employee WHERE T1.level = 'Omega III'
SELECT T2.Name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Level = "Omega III"
SELECT T2.name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.plankid = T2.plankid WHERE T1.employee = (SELECT employee FROM Has_clearance GROUP BY employee HAVING count(*) = 1)
SELECT T1.Name FROM Planet AS T1 JOIN Has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Level = "Chief"
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee)
SELECT count(*) FROM has_clearance WHERE planet != "Mars"
SELECT count(*) FROM has_clearance WHERE planet != "mars"
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE platform_id = (SELECT platform_id FROM game ORDER BY 1 DESC LIMIT 1)
SELECT platform_name , platform_id FROM platform WHERE platform_id = (SELECT platform_id FROM game ORDER BY 1 DESC LIMIT 1)
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_year DESC
SELECT T2.Player_name , T2.Rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.If_active = 'Y' AND T2.Title = "Super Mario World"
SELECT T1.player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id WHERE T2.title = "Super Mario World"
SELECT DISTINCT T2.Developer FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auberson"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T3.College = 'Aberona'
SELECT avg(T2.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.Position = "Guard"
SELECT avg(T2.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.Position = 'Guard'
SELECT title , platform_name FROM game WHERE platform_id = (SELECT platform_id FROM game)
SELECT title , platform_name FROM game
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T2.Franchise , COUNT(*) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID GROUP BY T2.Franchise
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT T1.Frankenstein FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID GROUP BY T2.Game_ID HAVING count(*) >= 2
SELECT T1.Franace FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID GROUP BY T2.Game_ID HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Olympus" INTERSECT SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Aubison"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Olympus" OR T3.College = "A Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Player_ID NOT IN (SELECT Player_ID FROM player WHERE Position = "Guard")
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'Guard' EXCEPT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'General'
SELECT name FROM press ORDER BY month_profits_billion DESC
SELECT name FROM press ORDER BY month_profts_billions DESC
SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.year_profits_billion > 1000 AND T2.year_profits_billion > 1000
SELECT name FROM press WHERE year_profit_billion > 15 OR month_profit_billion > 1000000
SELECT avg(month_profit_billion) , max(month_profit_billion) FROM press
SELECT avg(month_profits_billions) , max(month_proft_billions) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 JOIN author ON press.author_id = author.author_id ORDER BY month_profits_billion ASC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profit_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profit_billion DESC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Book_Series , count(*) FROM book GROUP BY Book_Series
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series
SELECT title , release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT book_series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT book_series FROM book WHERE Sale_A_amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING count(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING count(*) > 1
SELECT T2.title , T1.name , T1.publisher_name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY sum(T2.sales_amount) DESC LIMIT 3
SELECT T2.Title , T1.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID GROUP BY T1.Title ORDER BY T1.Title LIMIT 3
SELECT T2.name , sum(T1.sales_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name
SELECT T2.Name , sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT count(*) , T1.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING sum(Sale_Amount) > 1000
SELECT T1.name , count(*) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name HAVING T2.Sale_Amount > 1000
SELECT t2.name FROM book AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id WHERE t1.title = (SELECT title FROM book ORDER BY profit_billion DESC LIMIT 1)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name ORDER BY T2.Name DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = "Accor")
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = "Accor")
SELECT T2.Name , T2.Month_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name HAVING T2.Year_Profits_billion > 2
SELECT T2.name , T2.month_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM authors WHERE author_name = "document with id 4"
SELECT author_name FROM authors WHERE other_details = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT author_name , other_details FROM authors JOIN document AS T1 ON T1.author_name = T1.author_name WHERE document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM authors GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT next_process_name FROM Business_Processes WHERE next_process_id = 9;
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR";
SELECT count(*) FROM Documents_PROCESSES
SELECT process_id FROM Documents_PROCESSES
SELECT document_id FROM Documents_PROCESSES EXCEPT SELECT document_id FROM Documents_PROCESSes
SELECT process_id FROM Business_Processes WHERE process_id NOT IN (SELECT process_id FROM Documents_Processes)
SELECT process_outcome_code , process_outcome_description , process_status_code FROM Documents_PROCESSES WHERE document_id = 0
SELECT process_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_PROCESSES GROUP BY process_id
SELECT count(*) FROM Documents_PROCESSES AS T1 JOIN Business_Processes AS T2 ON T1.process_id = T2.process_id JOIN Staff_IN_Processes AS T3 ON T3.document_id = T1.document_id AND T3.process_id = T2.process_id WHERE T2.process_id = 9 AND T1.process_outcome_code = 0
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Ref_Staff_Roles GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM clients
SELECT count(*) FROM clients
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.client_details , T1.sic_code FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.invoice_status = "Client" AND T1.sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM INVOICES
SELECT count(*) FROM Invoices
SELECT T1.client_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN CLIENTS AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status , T1.client_id , T1.client_details , T2.agency_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_status , invoice_details , client_id , other_details , agency_id FROM invoices
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , meeting_type FROM Meetings
SELECT meeting_outcome , other_details FROM Meetings
SELECT payment_id , payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT payment_id , payment_details FROM payments JOIN invoices ON payments.invoice_id = invoices.invoice_id WHERE invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_status != "Payment"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_status FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT payment_id , count(*) FROM payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT payment_id , count(*) FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T2.invoice_status , T3.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id JOIN Invoices AS T3 ON T1.invoice_id = T3.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT T2.agency_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.agency_id
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.staff_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT T1.meeting_type , count(*) FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , other_details FROM Meetings WHERE client_id = "client_id"
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
SELECT T1.meeting_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT count(*) , meetings_id FROM Staff_in_Meetings GROUP BY meetings_id
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff EXCEPT SELECT count(*) FROM Staff_IN_Meetings
SELECT count(*) FROM Staff EXCEPT SELECT count(*) FROM Staff_IN_Meetings
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T2.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_type = 'S'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IN (SELECT T3.meeting_id FROM Staff_in_Meetings AS T3 JOIN Meetings AS T4 ON T3.meeting_id = T4.meeting_id WHERE T4.business_type = "Meeting") AND T1.staff_details LIKE "%s%"
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id JOIN meetings AS T3 ON T2.invoice_id = T3.client_id WHERE T3.meeting_outcome = 'Yes'
SELECT T1.client_id , T1.sic_code , T2.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id JOIN Meetings AS T3 ON T2.invoice_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN staff AS T3 ON T3.staff_id = T3.staff_id
SELECT T1.start_date_time , T1.client_id , T2.client_details , T2.agency_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
