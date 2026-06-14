SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000 GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player WHERE Earnings = (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Country DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Name , Club_ID FROM player
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING COUNT(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce'
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(T2.product_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT date_order_placed FROM orders
SELECT T1.date_order_placed , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT * FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1
SELECT sum(T1.product_price) , T2.order_id FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T2.order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_item_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN orders_items AS T3 ON T2.order_item_id = T3.order_item_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.shipment_id
SELECT T1.product_name , T2.invoice_number FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.order_item_status_code = 'Confirmed'
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.order_id IN (SELECT T3.order_id FROM shipments AS T3 JOIN order_items AS T4 ON T3.order_item_id = T4.order_item_id WHERE T4.order_item_status_code = '2')
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 JOIN orders AS T3 ON T1.product_id = T2.product_id AND T2.order_id = T3.order_id WHERE T3.order_status_code = "Shipped"
SELECT DISTINCT T3.product_name , T2.product_price , T3.product_description FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_item_id = T2.order_item_id AND T2.product_id = T3.product_id JOIN customers AS T4 ON T1.customer_id = T4.customer_id WHERE T4.gender_code = "F"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T4.customer_id = T3.customer_id WHERE T4.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code != "Shipped"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code != "Shipped"
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT COUNT (DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT invoice_status_code) FROM invoices
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE "+12"
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM orders )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items WHERE order_item_status_code != "Shipped" )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT order_status_code , date_order_placed FROM ORDERS
SELECT order_status_code , date_order_placed FROM ORDERS
SELECT address_line_1 , town_city , county FROM customers WHERE country = "USA"
SELECT address_line_1 , town_city , county FROM customers WHERE country = "United States"
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T2.order_status_code = "Cancelled" AND T3.order_item_status_code = "Cancelled"
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T2.customer_id HAVING count(T3.payment_method_code) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T2.customer_id HAVING count(T3.payment_method_code) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T2.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T2.product_description FROM orders AS T1 JOIN Order_Items AS T2 ON T1.order_item_id = T2.order_item_id GROUP BY T1.order_item_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING COUNT(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE "%bbc%"
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS t2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age > 60
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director_admin WHERE director = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != 'ABC'
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , count(*) FROM city_channel GROUP BY Affiliation
SELECT max(affiliation) FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T2.Transmitter , T1.City FROM city_channel AS T1 JOIN radio AS T2 ON T1 Radio_ID = T2 Radio_ID
SELECT T1.transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1 Radio_ID = T2 Radio_ID ORDER BY T1 ERP_kW DESC
SELECT T2.Transmitter , count(*) FROM city_channel AS T1 JOIN radio AS T2 ON T1 Radio_ID = T2 Radio_ID GROUP BY T2.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT T1.Driver_ID , count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) , builder FROM vehicle WHERE builder = 'Zhuzhou' GROUP BY builder
SELECT max(power) , avg(power) , builder FROM vehicle WHERE builder = 'Zhuzhou' GROUP BY builder
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "NASCAR"
SELECT count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.driver_id IN (SELECT driver_id FROM vehicle_driver GROUP BY driver_id HAVING count(*) >= 2) UNION SELECT vehicle_id , model FROM vehicle WHERE builder = 'Ziyang'
SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING COUNT(*) = 2 UNION SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T1.builder = 'Ziyang'
SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING COUNT(*) > 2 UNION SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Driver_ID = (SELECT Driver_ID FROM vehicle_driver GROUP BY Driver_ID HAVING COUNT(*) > 2)
SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon" OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed > 100
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT Exam_Name , Exam_Date FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.First_Name , T3.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID JOIN Questions AS T3 ON T1.Question_ID = T3.Question_ID
SELECT T2.Email_Address , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T2.Email_Address , T3.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID JOIN Questions AS T3 ON T1.Question_ID = T3.Question_ID ORDER BY T3.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T2.first_name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.first_name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T2.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id WHERE valid_answer_text = (SELECT max(valid_answer_text) FROM valid_answers WHERE valid_answer_text = 'valid')
SELECT T2.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.question_id ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students EXCEPT SELECT T2.First_Name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT first_name FROM students WHERE student_id NOT IN (SELECT student_id FROM student_answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' AND product_price = (SELECT min(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id = "Jeromy"
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id = (SELECT customer_id FROM customers WHERE customer_name = "Jeromy")
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_number , count(*) , T2.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_name
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_id , t1.customer_name , t1.customer_phone , t1.customer_email FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(DISTINCT product_id) FROM order_items WHERE product_id IN (SELECT product_id FROM products WHERE product_name = 'Monitor')
SELECT count(DISTINCT product_id) FROM order_items
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE product_id IN (SELECT product_id FROM order_items WHERE product_type_code = 'Monitor')
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 3
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
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
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT sum(number_of_stories) FROM building WHERE name = "Abruzzo"
SELECT sum(number_of_stories) , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.name
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT name , completed_year FROM building ORDER BY number_of_stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT Channel_Details FROM CHANNELS ORDER BY Channel_Details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customers_and_Services_Details LIKE "%Hardy Kutch%"
SELECT T2.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Customer_Details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T3.Service_Details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers_and_Services AS T3 ON T1.Customer_ID = T3.Customer_ID GROUP BY T3.Service_ID HAVING COUNT(*) > 3
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT Customer_Details FROM Customers EXCEPT SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
{"sql": "SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT T2.customers_and_services_details FROM customers_and_services AS T2 WHERE T2.customers_and_services_details = (SELECT
SELECT DISTINCT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM Customers WHERE customer_details LIKE "%Kutch%"
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id WHERE t2.status_code = "Good" OR t2.customer_id = "Hardy Kutch"
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Customer_Details = "Hardy Kutch" UNION SELECT T3.Service_Details FROM Customers_and_Services AS T2 JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID JOIN Customer_Interactions AS T4 ON T2.Customer_ID = T4.Customer_ID WHERE T4.Status_Code = "Good"
SELECT T3.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers_and_Services AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "Bad" AND T3.Customer_Details = "Hardy Kutch"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_id = "Hardy Kutch" AND T1.status_code = "bad"
SELECT t3.service_details FROM customer_interactions AS t1 JOIN channels AS t2 ON t1.channel_id = t2.channel_id JOIN services AS t3 ON t3.service_id = t1.service_id WHERE t2.channel_details = "15 ij"
SELECT T3.Service_Details FROM Channels AS T1 JOIN Customer_Interactions AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Channel_Details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T1.customer_details = "" AND T1.customer_details = "Service and channel details are bad"
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.Services_and_Channels_Details = "bad"
SELECT count(*) FROM integration_platform_details WHERE status_code = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN integration_platform AS t2 ON t1.customer_id = t2.customer_interaction_id WHERE t2.integration_platform_details = 'failed'
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.integration_platform_details = "Fail"
SELECT * FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT Service_Details FROM Services EXCEPT SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID
SELECT T1.Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer AS T1 JOIN Customers_and_Services AS T2 ON T1.Customers_and_Services_ID = T2.Customers_and_Services_ID GROUP BY T1.Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.customer_details , T1.customers_and_services_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.service_id IN (SELECT T3.service_id FROM customers_and_services AS T3 GROUP BY T3.service_id HAVING count(*) = 1) AND T2.status_code = 'unsatisfied'
SELECT T3.Service_Details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers_and_Services AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "unsatisfied"
SELECT count(*) FROM Vehicles;
SELECT count(*) FROM vehicles
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT DISTINCT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , COUNT(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers;
SELECT name , age FROM Customers WHERE membership_credit = (SELECT max(membership_credit) FROM Customers)
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM DISCOUNT
SELECT * FROM DISCOUNT
SELECT T1.name , T2.total_hours FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T2.id HAVING count(*) >= 2
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.Name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM vehicles AS T1 JOIN renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY total_hours DESC
SELECT T1.Name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY SUM(T2.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T2.Type_of_powertrain FROM Vehicles AS T2 JOIN Renting_history AS T1 ON T2.id = T1.vehicles_id GROUP BY T1.id HAVING sum(T1.total_hours) > 30
SELECT T1.Name , T2.Type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.Type_of_powertrain HAVING SUM(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T3.bio_data , T3.student_id FROM Students AS T3 JOIN Detention AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id HAVING count(*) <= 1
SELECT DISTINCT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT DISTINCT teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT DISTINCT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT DISTINCT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.date_of_loan , T1.amount_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T2.address_details , T1.bio_data FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 JOIN Students AS T3 ON T3.student_id = T2.student_id WHERE T3.student_id != T1.student_id
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = (SELECT count(*) FROM Behaviour_Monitoring) INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = (SELECT count(*) FROM Behaviour_Monitoring) + 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.bio_data , T1.event_date FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , other_details FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , event_type_code , Ref_Event_Types.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.event_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT T1.teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Achievements GROUP BY student_id HAVING max(achievement_type_code) != 'Won' )
SELECT count(DISTINCT T1.teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id WHERE T3.achievement_type_code != "Award"
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT T1.achievement_type_code , T2.achievement_details , T3.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code JOIN Students AS T3 ON T1.student_id = T3.student_id
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.bio_data FROM Students AS T1 JOIN student_details AS T2 ON T1.student_details = T2.student_details LIKE '%Suite%'
SELECT T2.teacher_details , T1.student_id , T1.class_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.student_id
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT max(T1.teacher_id) , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT max(student_id) , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T2.bio_data , T2.student_details FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING avg(T2.amount_of_loan) > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans
SELECT min(date_of_loan) FROM Student_Loans
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T2.student_id = T3.student_id ORDER BY T3.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T2.student_id LIMIT 1
SELECT T2.teacher_details FROM transcripts AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN transcripts AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T2.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_description , T1.address_type_code FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcript AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention GROUP BY datetime_detention_start HAVING count(*) = "all"
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , ISBN , saleprice FROM BOOK
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.title , T1.author FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT idorder , name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM orders JOIN client ON orders.idclient = client.idclient
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.idauthor GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.idauthor GROUP BY T1.idauthor
SELECT T1.isbn , count(*) FROM Books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT T1.isbn , count(*) FROM Books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT isbn , sum(amount) FROM Books_order GROUP BY isbn
SELECT T3.ISBN , sum(T2.amount) FROM Books_order AS T2 JOIN Orders AS T1 JOIN Books_order AS T3 ON T1.idorder = T3.idorder GROUP BY T3.ISBN
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T1.amount = (SELECT max(amount) FROM books_order)
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T3.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn
SELECT DISTINCT T3.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT idclient FROM orders
SELECT T1.name , count(*) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT idclient , count(*) FROM orders GROUP BY idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T3.amount) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T3.isbn = T3.isbn GROUP BY T1.idclient
SELECT T1.name , sum(T3.amount) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(psaleprice) , min(psaleprice) FROM book
SELECT max(saleprice) , min(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = 'George Orwell'
SELECT avg(SalePrice) FROM Book WHERE Author = 'George Orwell'
SELECT saleprice FROM book WHERE author = 'Plato'
SELECT saleprice FROM book WHERE author = 'Plato'
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.isbn = T2.isbn WHERE name = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.isbn = T2.isbn WHERE T1.author = 'Plato' AND T1.purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT title FROM book WHERE author = 'Plato' AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE title = "Pride and Prejudice"
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE title = 'Pride and Prejudice'
SELECT T3.title FROM author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T1.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T2.author = (SELECT idauthor FROM author WHERE name LIKE '%Plato%')
{"sql": "SELECT count(*) FROM orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder JOIN books_order AS T3 ON T3.isbn = T2.isbn JOIN books_order AS T4 ON T4.isbn = T3.isbn JOIN books_order AS T5 ON T5.isbn = T4.isbn JOIN books_order AS T6 ON T6.isbn = T5.isnbn JOIN books_order AS T7 ON T7.isbn = T6.isbn JOIN books_order AS T8 ON T8.isbn = T7.isbn JOIN books_order AS T9 ON T9.isbn = T8.isbn JOIN books_order AS T10 ON T10.isbn = T9.isbn JOIN books_order AS T11 ON T11.isbn = T10.isbn JOIN books_order AS T12 ON T12.isbn = T11.isbn JOIN books_order AS T13 ON T13.isbn = T12.isbn JOIN books_order AS T14 ON T14.isbn = T13.isbn JOIN books_order AS T15 ON T15.isbn = T14.isbn JOIN books_order AS T16 ON T16.isbn = T15.isbn JOIN books_order AS T17 ON T17.isbn = T16.isbn JOIN books_order AS T18 ON T18.isbn = T17.isbn JOIN books_order AS T19 ON T19.isbn = T18.isbn JOIN books_order AS T20 ON T20.isbn = T19.isbn JOIN books_order AS T21 ON T21.isbn = T20.isbn JOIN books_order AS T22 ON T22.isbn = T21.isbn JOIN books_order AS T23 ON T23.isbn = T22.isbn JOIN books_order AS T24 ON T24.isbn = T23.isbn JOIN books_order AS T25 ON T25.isbn = T24.isbn JOIN books_order AS T26 ON T26.isbn = T25.isbn JOIN books_order AS T27 ON T27.isbn = T26.isbn JOIN books_order AS T28 ON T28.isbn = T27.isbn JOIN books_order AS T29 ON T29.isbn = T28.isbn JOIN books_order AS T30 ON T30.isbn = T29.isbn JOIN books_order AS T31 ON T31.isbn = T30.isbn JOIN books_order AS T32 ON T32.isbn = T31.isbn JOIN books_order AS T33 ON T33.isbn = T32.isbn JOIN books_order AS T34 ON T34.isbn = T33.isbn JOIN books_order AS T35 ON T35.isbn = T34.isbn JOIN books_order AS T36 ON T36.isbn = T35.isbn JOIN books_order AS T37 ON T37.isbn = T36.isbn JOIN books_order AS T38 ON T38.isbn = T37.isbn JOIN books_order AS T39 ON T39.isbn = T38.isbn JOIN books_order AS T40 ON T40.isbn = T39.isbn JOIN books_order AS T41 ON T41.isbn = T40.isbn JOIN books_order AS T42 ON T42.isbn = T41.isbn JOIN books_order AS T43
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT idorder FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE title = "The Little Prince"
SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.title = 'The Little Prince' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.title = 'Pride and Prejudice'
{"sql": "SELECT T1.isbn FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder WHERE T2.idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient =
SELECT T3.isbn FROM orders AS T1 JOIN books AS T2 ON T1.isbn = T2.isbn JOIN client AS T3 ON T3.idclient = T1.idclient WHERE T3.name = 'Peter Doe' AND T1.idclient = T2.idclient JOIN orders AS T4 ON T4.idclient = T3.idclient WHERE T4.name = 'James Smith'
SELECT t3.title FROM orders AS t1 JOIN books AS t2 ON t1.isbn = t2.isbn JOIN Books_Order AS t3 ON t1.idorder = t3.idorder WHERE t1.idclient = "111" EXCEPT SELECT t3.title FROM orders AS t1 JOIN books AS t2 ON t1.isbn = t2.isbn JOIN Books_Order AS t3 ON t1.idorder = t3.idorder WHERE t1.idclient = "222"
{"sql": "SELECT T3.title FROM orders AS T1 JOIN books AS T2 ON T1.isbn = T2.isbn JOIN books_order AS T3 ON T3.isbn = T2.isbn WHERE T1.idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE idclient = (SELECT idclient FROM orders WHERE id
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = "2023-04-15" AND T2.dateexped = "2023-04-15" AND T2.dateorder = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN author_book AS T4 ON T4.isbn = T3.isbn JOIN book AS T5 ON T4.author = T5.isbn WHERE title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , title FROM book GROUP BY title
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT T2.Title , T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review GROUP BY Rating ORDER BY Chapters DESC LIMIT 1
SELECT title FROM book ORDER BY pages ASC LIMIT 1
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1 Rating
SELECT T2.Title , T1.Audio FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Customer_ID , Name FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.dish_name ORDER BY count(*) DESC
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id ORDER BY T1.quantity DESC
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name FROM customer AS T1 JOIN customer_order AS t2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT name FROM member ORDER BY age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT t1.Team_Leader , t1.Club_Name FROM club AS t1 JOIN club_leader AS t2 ON t1.Club_ID = t2.Club_ID
SELECT T1.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT t1.Team_Leader FROM club AS t1 JOIN club_leader AS t2 ON t1.Club_ID = t2.Club_ID WHERE t2.Year_Join < 2018
SELECT T3.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID JOIN member AS T3 ON T2.Member_ID = T3.Member_ID WHERE T1.Club_Name = "Houston"
SELECT name FROM member EXCEPT SELECT t1.name FROM member AS t1 JOIN club_leader AS t2 ON t1.member_id = t2.member_id
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT Collection_Subset_Name FROM Collection_Subsets
SELECT collection_subset_details FROM Collection_Subsets WHERE collection_subset_name = 'Top collection'
SELECT T2.collection_subset_details FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Top collection'
SELECT Document_subset_name FROM Document_subsets
SELECT Document_subset_name FROM Document_subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections
SELECT Document_Object_ID FROM Document_Objects
SELECT parent_document_object_id FROM Document_Objects WHERE Owner = "Marlin"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collection_subsets AS T2 ON T1.Parent_document_object_id = T2.Related_collection_id WHERE T1.Description = "Braeden Collection"
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Collection_Subset_ID WHERE T1.Document_Object_ID IN (SELECT T3.Document_Object_ID FROM Document_Objects AS T3 JOIN Collection_Subsets AS T4 ON T3.Parent_Document_Object_ID = T4.Collection_Subset_ID WHERE T4.Collection_Subset_Name = 'Marlin')
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT count(DISTINCT description) FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT T1.Document_Object_ID , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT count(*) , T1.parent_document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_Document_Object_ID GROUP BY T1.parent_document_object_id
SELECT collection_name FROM Collections;
SELECT collection_name FROM Collections
SELECT collection_description FROM Collections WHERE collection_name = "Best"
SELECT collection_description FROM Collections WHERE collection_name LIKE '%Best%';
SELECT T2.parent_collection_id FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Nice"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Nice"
SELECT collection_name FROM Collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM Collections)
SELECT collection_name FROM Collections EXCEPT SELECT T2.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.parent_collection_id = T2.collection_id
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT T1.document_subset_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id GROUP BY T1.document_subset_id HAVING count(*) > 1
SELECT count(*) FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.document_subset_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subset_details AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id WHERE T1.owner = "Ransom"
SELECT Related_Document_Object_ID FROM Document_Objects WHERE Owner = "Ransom"
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN T1.collection_subset_id ON T1.collection_subset_id = T1.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.Collection_subset_id , T1.collection_subset_name , count(*) FROM Collection_subsets AS T1 JOIN T1.collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id GROUP BY T1.document_object_id
SELECT T1.document_subset_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 GROUP BY T1.document_subset_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_subset_members AS T1 JOIN Document_objects AS T2 ON T1.Related_document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Document_subset_id , count(*) FROM Document_subset_members AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID JOIN Document_Objects AS T3 ON T1.Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = "Braeden"
SELECT DISTINCT T2.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID JOIN Document_Objects AS T3 ON T1.Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = "Braeden"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT DISTINCT t1.document_subset_name FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.Related_document_object_id = t3.document_object_id WHERE t3.owner = "Braeden"
SELECT T1.Document_subset_id , T2.collection_subset_name , count(*) FROM Document_subsets AS T1 JOIN collection_subsets AS T2 ON T1.document_subset_id = T2.collection_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T2.collection_subset_name , count(*) FROM Document_subsets AS T1 JOIN Collection_subsets AS T2 ON T1.document_subset_id = T2.collection_subset_id GROUP BY T1.document_subset_id
SELECT T1.Document_subset_id , T1.Document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.Document_subset_id = T2.Document_subset_id GROUP BY T1.Document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_subset_id , T1.Document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.Document_subset_id = T2.Document_subset_id GROUP BY T1.Document_subset_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id JOIN Document_subsets AS T3 ON T2.Document_subset_id = T3.Document_subset_id WHERE T3.Document_subset_name = "Best for 2000"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Document_subset_name = "Best for 2000"
SELECT T1.document_subset_name , T2.document_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.collection_id = T2.Related_document_object_id
SELECT T2.document_subset_name , T1.document_id FROM Document_subset_members AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Documents_in_collections AS T3 ON T3.document_object_id = T1.Related_document_object_ID
SELECT t4.collection_name FROM Document_objects AS t1 JOIN Document_subsets AS t2 ON t1.document_object_id = t2.document_object_id JOIN Document_subset_members AS t3 ON t2.document_subset_id = t3.document_subset_id JOIN Document_subset_members AS t4 ON t3.Related_document_object_id = t4.document_object_id JOIN Collections AS t5 ON t5.collection_id = t4.collection_subset_id JOIN Documents_in_collections AS t6 ON t6.collection_id = t5.collection_id WHERE t1.owner = 'Ransom'
SELECT t3.collection_subset_name FROM document_objects AS t1 JOIN document_subset_members AS t2 ON t1.document_object_id = t2.document_object_id JOIN document_subsets AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t1.owner = 'Ransom'
SELECT count(*) , T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DOUBLE) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Best"
SELECT T2.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Related_document_object_id = T2.Document_subset_members.Document_subset_id JOIN Collection_subsets AS T3 ON T3.collection_subset_id = T2.document_subset_members.Related_collection_id WHERE T2.document_subset_name = "Best" AND T3.collection_subset_name = "Best" AND T1.parent_collection_id IN ( SELECT T5.collection_id FROM Collection_subsets AS T4 JOIN Document_subset_members AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN Collection_subsets AS T6 ON T6.collection_subset_id = T5.Related_collection_id WHERE T6.collection_subset_name = "Best" AND T6.document_subset_name = "2000" )
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T1.parent_document_object_id = (SELECT T1.parent_document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best')
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T3.collection_subset_name = "Best" EXCEPT SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T3.collection_subset_name = "Best" AND T1.document_object_id IN (SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T3.collection_subset_name = "2000")
SELECT DISTINCT document_object_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' EXCEPT SELECT DISTINCT document_object_id FROM collection_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_subset_name = 'Best for 2000'
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.document_object_id = T4.collection_id WHERE T3.collection_name = "Best" OR T4.collection_id = (SELECT collection_id FROM Document_subsets_members WHERE document_subset_id = "Best for 2000")
SELECT T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Documents_in_Collections AS T3 ON T3.document_object_id = T2.Related_document_object_id WHERE T1.collection_subset_name = 'Best' OR T1.document_subset_name = 'Best for 2000'
SELECT T1.collection_subset_name FROM Collection_Subset_Members AS T1 JOIN Collections AS T2 ON T1.Related_collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN Collections AS T3 ON T3.collection_id = T2.Related_Collection_ID WHERE T3.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subset_names AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_subset_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.Related_Collection_ID WHERE T1.collection_name = "Best"
SELECT T2.collection_subset_name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best in"
SELECT T2.collection_subset_id FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T2.voice_sound_quality , T2.rhythm_tempo , T2.stage_presence FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T1.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT original_artist , english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T3.id , T2.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id GROUP BY T1.participant_id HAVING count(*) >= 2
SELECT id , name , popularity FROM participants ORDER BY count(*)
SELECT participant_id , name FROM participants JOIN performance_score ON performance_score.participant_id = participants.id WHERE voice_sound_quality = 5 OR rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "english"
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score );
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T3.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id WHERE T2.language = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT DISTINCT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
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
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM city WHERE country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "Baltimore"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT count(*) , country FROM city WHERE country = 'United States'
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT count(*) , state FROM city WHERE count(*) > 5 GROUP BY state
SELECT StuID FROM student WHERE city_code != 'TX'
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = "F" AND city_code = "PA"
SELECT StuID FROM student WHERE state = "PA" AND sex = "F"
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN ( (SELECT T1.city_code FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.country = 'USA') )
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE country_code = 'USA'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Bali" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Chiang Mai"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Bali" AND T1.city1_code = "Chiangming"
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' JOIN direct_distance AS T3 ON T1.city1_code = T3.city1_code WHERE T3.city2_code = 'Newark'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' JOIN direct_distance AS T3 ON T1.city1_code = T3.city1_code WHERE T3.city2_code = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY distance DESC LIMIT 2
SELECT DISTINCT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE distance < 1000
SELECT DISTINCT city1_code FROM direct_distance WHERE distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Boston"
SELECT avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = "Chicago"
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = city_code = 'Chicago'))
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance) JOIN city AS T3 ON T3.city_code = T2.city1_code WHERE T3.city_name = T1.city_name AND T3.country = 'USA' AND T1.state = 'New York'
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.city2_code = "Boston" ORDER BY t2.distance DESC LIMIT 1
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T2.distance
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.Fname = "Linda" Smith AND T1.city2_code = T2.city_code WHERE T1.city1_code = (SELECT city_code FROM student WHERE Fname = "Tracy" Kim)
SELECT t1.fname , t1.lname FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.city_name = "Linda Smith"
SELECT t1.fname , t1.lname FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.latitude = (SELECT min(latitude) FROM city WHERE city_name = "Linda Smith" )
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.Fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.Fname = "Linda"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T3.name , T2.color FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T3.bid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T1.name = 1
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue" AND T1.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "Red" OR T2.color = "Blue"
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T3.name , T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" INTERSECT SELECT T3.name , T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "blue"
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = "103"
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.bid = 103
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating >= 3
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%';
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors;
SELECT avg(rating) , max(age) FROM Sailors
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.day > "2016-03-28" GROUP BY T2.bid HAVING T1.sid > 50
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 50 GROUP BY T2.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.day = (SELECT max(day) FROM Reserves WHERE T1.bid = (SELECT bid FROM Reserves GROUP BY bid HAVING count(*) > 1))
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" GROUP BY T2.bid HAVING count(*) > 1
SELECT count(*) , T1.name , T2.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T3.sid = T2.sid WHERE T3.id > 1 GROUP BY T2.bid
SELECT T2.bid , count(*) FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid != 1 GROUP BY T1.bid
SELECT T2.rating , avg(T1.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "red" GROUP BY T2.rating
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM BOATS WHERE color = "red";
SELECT count(*) FROM BOATS WHERE color = "red"
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" AND T1.rating > (SELECT max(T1.rating) FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red")
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' EXCEPT SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model ASC
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(headphone_id) <= 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT T1.earpads FROM headphone AS T1 JOIN stock AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.earpads ORDER BY count(*) DESC LIMIT 2
SELECT T2.Earpads FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.Name , T1.Quantity FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T1.Store_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T1.Store_ID HAVING sum(T1.quantity) > 0
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT sum(t3.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id JOIN headphone AS t3 ON t2.headphone_id = t3.headphone_id WHERE t1.name = 'Woodman'
SELECT sum(t3.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id JOIN headphone AS t3 ON t2.headphone_id = t3.headphone_id WHERE t1.name = 'Woodman'
SELECT Neighborhood FROM store EXCEPT SELECT T2.Neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID
SELECT DISTINCT Neighborhood FROM store EXCEPT SELECT DISTINCT Neighborhood FROM stock
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T1.year = 2009 AND T2.name = 'Columbia University'
SELECT count(*) FROM paper WHERE YEAR = 2009 AND venue = "Columbia"
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT t3.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t1.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT T3.title , T1.paper_id FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T2.name = 'Harvard University'
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown'
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN affiliation AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN affiliation AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = 'Columbia University'
SELECT T3.title , T1.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Kathleen Mckeown" AND T2.author_id = "85" AND T1.name = "Owen Rambow"
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Kathleen Mckeown" AND t2.name = "Owen Rambow"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' EXCEPT SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Rambow'
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" EXCEPT SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow"
SELECT T2.title , T1.paper_id FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id IN (SELECT T2.author_id FROM Author_list AS T3 JOIN author AS T4 ON T3.author_id = T4.author_id WHERE T4.name = "Mckeown" OR T4.name = "Rambow" )
SELECT T2.title , T1.paper_id FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id IN (SELECT T2.author_id FROM Author_list AS T3 JOIN Author AS T4 ON T3.author_id = T4.author_id WHERE T4.name = "Mckeown, Kathleen" OR T4.name = "Rambow, Owen")
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T2.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.paper_id GROUP BY T2.name ORDER BY count(*) ASC
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM CITERELATION WHERE paper_id = 'A00-1002'
SELECT count(*) FROM CITE WHERE cited_paper_id = "A00-1002"
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t1.paper_id = "D12-1027"
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = 'D12-1027'
SELECT t1.paper_id , count(*) FROM Citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id , count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , T1.paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT t3.title , count(*) FROM Citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t3.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.cited_paper_id WHERE T3.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.cited_paper_id WHERE T3.name = "Mckeown , Kathleen"
SELECT count(*) FROM CITED AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T3.paper_id = T2.paper_id JOIN affiliation AS T4 ON T4.affiliation_id = T3.affiliation_id WHERE T4.name = "Mckeown" AND T3.author_id = (SELECT author_id FROM author WHERE name = "Kathleen Mckeown" )
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.cited_paper_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN Citation AS t3 ON t2.paper_id = t3.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN Citation AS t3 ON t2.paper_id = t3.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE author_name = "Mckeown , Kathleen")
SELECT venue , YEAR FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown , Kathleen")
SELECT venue , YEAR FROM paper WHERE title LIKE '%Columbia%'
SELECT venue , YEAR FROM Paper WHERE title LIKE '%Columbia%'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id = 'Columbia University')
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia' AND T1.year < 2009
SELECT count(*) FROM paper WHERE title = "Research Paper" AND YEAR >= 2000 AND YEAR <= 2009 AND affliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Stanford University")
SELECT count(*) FROM paper WHERE YEAR >= 2000 AND YEAR <= 2009 AND venue = 'Stanford'
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown , Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown , Kathleen"
{"sql": "SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown , Kathleen' AND T1.paper_id = (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Mckeown ,
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN affilation AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = 'Mckeown , Kathleen' INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN affilation AS T4 ON T3.affiliation_id = T4.affiliation_id JOIN author AS T5 ON T4.name = 'Mckeown , Kathleen'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE "%China%" GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE "%China%" GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , venue FROM paper GROUP BY venue , YEAR
SELECT venue , YEAR , count(*) FROM Paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T2.title FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id HAVING count(*) > 50
SELECT T1.title FROM paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year NOT IN (SELECT T4.year FROM Citation AS T4 JOIN paper AS T5 ON T4.cited_paper_id = T5.paper_id GROUP BY T4.cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id JOIN Citation AS T4 ON T3.paper_id = T4.cited_paper_id WHERE T5.cites > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue IN ("NAACL", "ACL")
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = 'ACL'
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = "ACL"
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = 'ACLS' )
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT DISTINCT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.Institution_Name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_ID
SELECT T1.Institution_Name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.founded > 1800 GROUP BY T1.Institution_ID
SELECT institution_name FROM institution EXCEPT SELECT T2.institution_name FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nation = "United States"
SELECT max(Age) , min(Age) FROM staff
SELECT DISTINCT t3.conference_name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID JOIN staff AS t3 ON t2.staff_id = t3.staff_id WHERE t3.nationality = 'Canada'
SELECT T3.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT name FROM staff WHERE nation IN (‘American’, ‘Canadian’) AND institution_id IN (SELECT institute_id FROM institution JOIN staff ON institution.institution_id = staff.institution_id WHERE institution_name = 'ACL') AND institution_id IN (SELECT institute_id FROM institution JOIN staff ON institution.institution_id = staff.institution_id WHERE institution_name = 'NACCL')
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.Conference_Name = 'ACL' INTERSECT SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.Conference_Name = 'NACCL'
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T1.year = 2003 OR T1.year = 2004
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.year >= 2003 OR T1.year = 2004
SELECT T2.Conference_Name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.year
SELECT T2.Conference_Name , T2.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID
SELECT T2.Conference_Name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT t1.conference_name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.conference_id = t2.conference_id GROUP BY t1.conference_name ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_name = 'ACLS' )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_name = 'ACM' OR conference_name = 'ICML' OR conference_name = 'ICML-14' OR conference_name = 'ICML-15')
SELECT institution_name , location FROM institution EXCEPT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T3.Conference_ID = T2.Conference_ID WHERE T3.year = 2004
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004 GROUP BY staff_id HAVING count(*) > 0)
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = "Piper Cub"
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM Hangar
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = 'Jones'
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = 'Jones'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = "B-52"
SELECT count(*) FROM PilotSkills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.name = "B-52 Bombers"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2 WHERE T1.age = (SELECT min(age) FROM PilotSkills WHERE T1.plane_name = 'Piper Cub')
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub') AND T1.plane_name = 'Piper Cub'
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE pilot_name = "Smith"
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM PilotSkills ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 INTERSECT SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30 AND T1.plane_name = "Piper Cub" INTERSECT SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "F-14 Fighter"
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter' AND T1.age > 35 DIFFERENT FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM PilotSkills WHERE plane_name = "Piper Cub" EXCEPT SELECT count(*) FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Plane_info AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" EXCEPT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Plane_info AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "B-52 Bomber"
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub" OR T2.plane_name = "F-14 Fighter"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" OR T1.plane_name = "F-14 Fighter"
SELECT plane_name , avg(age) FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT plane_name , count(*) FROM Hangar GROUP BY plane_name;
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY max(age)
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , LOCATION FROM PilotSkills WHERE plane_name = 'Plane' GROUP BY LOCATION
SELECT T1.location , count(*) , avg(T1.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM PilotSkills WHERE age < 35
SELECT count(*) , plane_name FROM pilotskills WHERE age < 35 GROUP BY plane_name
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT DISTINCT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM pilotskills WHERE pilot_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT name FROM district WHERE government_website LIKE 'gov'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T2.Start_year < 2004
SELECT count(*) , T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Rank_position = 1 INTERSECT SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Rank_position = 2
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN ( SELECT district_id FROM spokesman_district )
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.Population) , avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID GROUP BY T3.Spokesmen_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "Gallery 226"
SELECT title FROM sculptures WHERE LOCATION = "Gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname,lname FROM Artists WHERE birthYear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname , lname FROM Artists ORDER BY birthYear + deathYear DESC LIMIT 1
SELECT fname,lname FROM Artists ORDER BY birthYear , deathYear DESC LIMIT 1
SELECT birthyear FROM Artists ORDER BY deathyear - birthyear LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthYear + deathYear ASC LIMIT 1
SELECT fname , deathyear FROM Artists ORDER BY deathyear DESC LIMIT 1
SELECT fname , deathyear FROM artists ORDER BY birthyear + deathyear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = "240"
SELECT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear < T2.deathyear ORDER BY T2.birthyear DESC LIMIT 1
SELECT T2.fname , T2.birthyear FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T1.location , T2.medium FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Pablo"
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.medium = 'lithographic oil'
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.medium = "on canvas"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*) , medium FROM Paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT T2.title FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear > 1910 AND T2.medium = "oil"
SELECT DISTINCT painterid FROM paintings WHERE LOCATION = 240 AND medium = "medium oil"
SELECT DISTINCT artistID FROM paintings WHERE LOCATION = 240 AND medium = "oil"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT T1.painterid FROM paintings AS T1 JOIN paintings AS T2 ON T1.year > T2.year WHERE T2.painterid NOT IN (SELECT painterid FROM paintings WHERE LOCATION = "240")
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT painterID FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT T2.title , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterid = T2.sculptorid WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T2.title , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterid = T2.sculptorid WHERE T1.year BETWEEN 1900 AND 1950
SELECT T2.title FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T1.artistid = 222
SELECT T2.title FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm BETWEEN 500 AND 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM paintings WHERE height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE LOCATION = "241" AND medium = "Oil"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'Oil' AND LOCATION = 241
SELECT max(T1.height_mm) , T1.painterID FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1900 GROUP BY T1.painterID
SELECT height_mm , paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , T2.fname , T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T2.fname , T2.lname ORDER BY T2.fname , T2.lname
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) , T2.painterID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) >= 2
SELECT T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.lname , T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE width_mm >= (SELECT max(width_mm) FROM paintings WHERE LOCATION = "240")
SELECT height_mm , paintingID FROM paintings WHERE LOCATION = "Gallery 240" ORDER BY height_mm DESC LIMIT 1
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings created after 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR < 1900)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings ORDER BY YEAR
SELECT T1.painterid , T2.location , T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.medium = "oil"
SELECT title , LOCATION , YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != 'medium on canvas'
SELECT LOCATION FROM paintings WHERE YEAR > 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT DISTINCT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race EXCEPT SELECT Winning_driver FROM race WHERE Pole_Position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20
SELECT COUNT (DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT count(*) , T2.Driver_ID FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Driver_Name , T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Driver_Name , T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = 'Carl Skerlong'
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
SELECT DISTINCT driver_name FROM driver EXCEPT SELECT DISTINCT Winning_driver FROM race WHERE pole_position = 'James Hinchcliffe'
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
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT count(DISTINCT name) FROM languages
SELECT count(DISTINCT name) FROM languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM official_languages AS t1 JOIN languages AS t2 ON t1.language_id = t2.id JOIN countries AS t3 ON t1.country_id = t3.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT avg(T3.overall_score) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T3.name = "English"
SELECT avg(T3.overall_score) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.name = 'English'
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id ORDER BY avg(T2.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T3.id = T1.country_id GROUP BY T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.count(*) , T2.count(*) FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T2.count(*)
SELECT T1.town_city , T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T2.feature_name , T2.feature_description FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.feature_name , T2.feature_description FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_description = T2.age_category_description WHERE T2.other_user_details LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = "garage_yn" AND property_type_code = "parking_lots" AND property_type_code = "garden"
SELECT avg(room_count) FROM Properties WHERE garage_yn = 'yes' AND property_type_code = "Garden"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_name = "swimming pool"
SELECT T2.town_city FROM properties AS T1 JOIN addresses AS T2 ON T1.property_address_id = T2.address_id JOIN Ref_Room_Types AS T3 ON T1.room_type_code = T3.room_type_code WHERE T1.property_type_code = "Swimming Pool"
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price LIMIT 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms;
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_seq DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_seq , search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id JOIN User_Property_History AS T3 ON T2.user_id = T3.user_id GROUP BY T1.zip_postcode HAVING count(*) > 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T3.zip_postcode FROM Addresses AS T3 JOIN User_Property_History AS T4 ON T3.address_id = T4.property_id GROUP BY T3.zip_postcode HAVING count(*) < 2
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , T1.user_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) = 1
SELECT T2.age_category_description FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id ORDER BY T1.search_datetime LIMIT 1
SELECT T1.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code JOIN User_Searches AS T3 ON T2.user_id = T3.user_id ORDER BY T3.search_datetime LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM users WHERE is_buyer = '1'
SELECT count(*) FROM users WHERE is_buyer = '1' JOIN user_searches ON user_id = user_searches.user_id
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_buyer = 1 AND is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = '1'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE town_city LIKE "%Senior%"
SELECT T1.building , T1.street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = 'Senior'
SELECT count(*) FROM Property_Features WHERE count(*) >= 2
SELECT count(*) FROM Property_features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id HAVING count(*) >= 2
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T2.owner_user_id , count(*) FROM Property_photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.owner_user_id
SELECT count(*) , T1.owner_user_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE first_name = "single" UNION SELECT user_id FROM Users WHERE first_name = "student")
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN ( SELECT user_id FROM Users WHERE first_name = "single" UNION SELECT user_id FROM Users WHERE first_name = "student")
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.property_type_description , T2.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT search_string FROM User_Searches EXCEPT SELECT search_string FROM Properties
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT DISTINCT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T2.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.purchase_year >= (SELECT min(purchase_year) FROM cyclists_own_bikes GROUP BY T1.bike_id HAVING count(*) >= 4)
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year < 2015 )
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result > '4:21.558'
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T2.bike_id = T1.id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T2.bike_id = T1.id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE material = 'racing')
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id
SELECT Flavor , MAX(Price) FROM goods GROUP BY Flavor
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT Flavor , Price FROM goods ORDER BY Price ASC LIMIT 1
SELECT Flavor , Id FROM goods ORDER BY Price ASC LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT Id FROM goods WHERE Price < 3
SELECT Id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item JOIN items AS T4 ON T4.ordinal = T2.ordinal WHERE T3.flavor = "cake" AND T3.item = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.Item WHERE T3.flavor = "lemon"
SELECT Food , COUNT(*) FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.lastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN goods AS T3 ON T1.Item = T3.Id WHERE T3.Food = "Bakery" GROUP BY T1.CustomerId HAVING COUNT(*) > 10
SELECT count(DISTINCT flavor) FROM goods WHERE Food = "Cake"
SELECT count(DISTINCT Flavor) FROM goods WHERE Food = "cake"
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT DISTINCT T3.Item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.Receipt = T2.Receipt WHERE T1.FirstName = "John" AND T1.LastName = "Doe"
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN receipts AS T3 ON T3.CustomerId = T1.Item WHERE T2.Food = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN receipts AS T3 ON T3.CustomerId = T1.Item WHERE T2.Food = "Cookie"
SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN receipts AS T3 ON T3.Receipt = T1.Item WHERE T2.Food = 'cake' INTERSECT SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN receipts AS T3 ON T3.Receipt = T1.Item WHERE T2.Food = 'cookie'
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN customers AS T3 ON T1.Receipt = T3.Id WHERE T3.LastName = 'LOGAN' AND T2.Flavor = 'Croissant'
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T1.receipt = T3.id WHERE T3.lastname = "Logan" AND T2.Flavor = "Croissant"
SELECT T1.ReceiptNumber , T1.Date FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.Item ORDER BY T1.Price DESC LIMIT 1
SELECT T2.ReceiptNumber , T2.Date FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.Item ORDER BY T1.item_price DESC LIMIT 1
SELECT Item FROM items GROUP BY Item ORDER BY COUNT(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT Food , avg(Price) FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = "Tart")
SELECT DISTINCT ID FROM goods WHERE Price < (SELECT min(Price) FROM goods WHERE Food = "Tart")
SELECT DISTINCT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 13
SELECT DISTINCT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 13
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.Item JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 15
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt WHERE T2.Item = "good" AND T2.price > 15
SELECT Id FROM goods WHERE Id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE ID LIKE "%70%"
SELECT id , price FROM goods WHERE id = 70
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods
SELECT DISTINCT id FROM goods ORDER BY id
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.Item WHERE T2.Item = "Flavor" AND T2.Item = "Apple" OR T1.CustomerId = 12
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id JOIN customers AS T3 ON T1.Receipt = T3.Id WHERE T2.Flavor = "Flower" OR T3.Id = 12
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR price > 10
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR price > 10
SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T2.firstname , T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date = (SELECT min(date) FROM receipts)
SELECT T2.firstname , T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date = (SELECT min(date) FROM receipts)
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(price) FROM goods WHERE Flavor = "cheese"
SELECT Flavor , Price FROM goods WHERE Flavor = "cheese" ORDER BY Price ASC LIMIT 1
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food
SELECT min(price) , max(price) , food FROM goods ORDER BY food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T2.CustomerId , COUNT(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T2.CustomerId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.customerid , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , date FROM receipts GROUP BY date
SELECT count(*) , T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.Date
SELECT T2.firstname , T2.lastname FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id JOIN receipts AS T3 ON T1.ordinal = T3.ordinal JOIN customers AS T4 ON T3.customerid = T4.id WHERE T2.flavor = "apple" AND T1.food = "Tart"
SELECT T2.firstname , T2.lastname FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = "apple" AND T1.Food = "Tarts"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Food = "Tart")
SELECT Id FROM goods WHERE Price > (SELECT avg(Price) FROM goods * 2)
SELECT Id FROM goods WHERE Price > (SELECT avg(Price) FROM goods) * 2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT item FROM goods WHERE flavor = "Chocolate" EXCEPT SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T2.id HAVING count(*) > 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.receipt = T2.id WHERE T2.flavor = "Chocolate" GROUP BY T1.item HAVING count(*) <= 10
SELECT Flavor FROM goods WHERE Food = "cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "tart"
SELECT Flavor FROM goods WHERE Food = "Cakes" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tarts"
SELECT Food FROM goods GROUP BY Food ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.Food = "Cake" ORDER BY T2.price DESC LIMIT 3
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T3.price) > 5
SELECT avg(price) , T1.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T2.customerid = customers.id GROUP BY T1.id HAVING avg(T1.price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.id WHERE T2.price > 100
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.CustomerId = T2.id WHERE T2.Price > 100 GROUP BY T1.Date ORDER BY sum(T2.Price) DESC LIMIT 1
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT Laps FROM driver WHERE Age < 20
SELECT Laps FROM driver WHERE Age < 20 GROUP BY Laps HAVING sum(Laps) >= (SELECT avg(Laps) FROM driver WHERE Age < 20)
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
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
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country AND T1.Capital = "Dublin"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT t1.Capital FROM country AS t1 JOIN driver AS t2 ON t1.Country = t2.Country ORDER BY t2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT make , count(*) FROM driver GROUP BY make
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Make = T2.Make GROUP BY T2.Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team EXCEPT SELECT T2.Team FROM team_driver AS T1 JOIN team AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country != (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Manager , Sponsor FROM team WHERE Team_ID = (SELECT Team_ID FROM team_driver GROUP BY Team_ID ORDER BY count(*) DESC LIMIT 1)
SELECT manager , sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM Institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT name FROM institution ORDER BY enrollment LIMIT 1
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Enrollment LIMIT 1
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT sum(t2.number_of_championships) FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id WHERE t1.affiliation = 'Public'
SELECT sum(t1.number_of_championships) FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id WHERE t2.affiliation = 'Public'
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse LOCATION = "New York"
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(T1.value) , T2.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(total) , sum(total) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT location FROM Warehouses
SELECT DISTINCT location FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE code = (SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.code = T2.code WHERE T2.location = 'Chicago') INTERSECT SELECT contents FROM boxes WHERE code = (SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.code = T2.code WHERE T2.location = 'New York')
SELECT contents FROM boxes EXCEPT SELECT T1.contents FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT Contents FROM Boxes WHERE Warehouse NOT IN (SELECT Code FROM Warehouses WHERE LOCATION = "New York")
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" OR T1.contents = "Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = "Rocks")
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code HAVING avg(T2.value) > 150
SELECT avg(T1.value) , T2.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse HAVING avg(T1.value) > 150
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT LOCATION , sum(capacity) , avg(capacity) , max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT max(T1.Value) , T2.location FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT max(T1.Value) , T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Location
SELECT T1.code , count(*) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code
SELECT count(*) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE code = "Rocks"
SELECT count(DISTINCT T1.warehouse) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks"
SELECT T2.code , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT count(*) , T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code
SELECT count(*) , T1.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code
SELECT count(DISTINCT contents) , T2.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT count(DISTINCT contents) , T1.location FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.location
SELECT code FROM warehouses WHERE capacity > (SELECT min(capacity) FROM warehouses)
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.value > T2.capacity
SELECT sum(value) FROM boxes WHERE code NOT IN (SELECT warehouse FROM boxes WHERE LOCATION = "Chicago")
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT home_confidence FROM university
SELECT DISTINCT home_confidence FROM university
SELECT Home_Conference , count(*) FROM university GROUP BY Home_Conference
SELECT count(*) , home_confERENCE FROM university GROUP BY home_confERENCE
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home Conference FROM university GROUP BY home Conference HAVING avg(Enrollment) > 2000
SELECT home Conference FROM university GROUP BY home Conference HAVING avg(Enrollment) > 2000
SELECT home Conference FROM university GROUP BY home Conference ORDER BY sum(enrollment) LIMIT 1
SELECT Home_Conference FROM university ORDER BY Enrollment ASC LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T1.Major_Name , T1.rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T3.University_ID = T2.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T3.Major_Name , T2.rank FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T3.Major_ID = T1.Major_ID WHERE T2.University_Name = "Augustana College"
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank = 1
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" ORDER BY t1.overall_rankING.rank LIMIT 1
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id ORDER BY t3.major_name , t1.reputation_point LIMIT 1
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id ORDER BY t2.rank LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE Rank = 1)
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = 'Accounting' INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = 'Urban Education'
SELECT T2.University_Name FROM major AS T1 JOIN university AS T2 ON T1.Major_ID = T2.University_ID WHERE T1.Major_Name = "Accounting" INTERSECT SELECT T2.University_Name FROM major AS T1 JOIN university AS T2 ON T1.Major_ID = T2.University_ID WHERE T1.Major_Name = "Urban Education"
SELECT T2.University_Name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name , home_confERENCE FROM university WHERE state = 'WI'
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY Research_point DESC LIMIT 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY Research_point DESC LIMIT 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point ASC
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id ORDER BY t3.major_name , t1.university_id DESC LIMIT 3
SELECT t1.university_name FROM university AS t1 JOIN major AS t2 ON t1.university_id = t2.university_id JOIN major_ranking AS t3 ON t3.university_id = t1.university_id WHERE t3.major_id = (SELECT major_id FROM major WHERE major_name = "Accounting") ORDER BY t3.rank LIMIT 3
SELECT sum(Enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking GROUP BY university_id ORDER BY overall_rank ASC LIMIT 5)
SELECT sum(Enrollment) FROM university WHERE Rank <= 5
SELECT university_name , Citation_point FROM overall_ranking ORDER BY Reputation_point DESC LIMIT 3
SELECT university_name , Citation_point FROM overall_ranking ORDER BY Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING count(*) > 2
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND enrollment < 3000
SELECT Title FROM Movies WHERE Rating = "null"
SELECT title FROM movies WHERE rating = "null"
SELECT title FROM movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating LIKE 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon"
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.Name , T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Movie = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT Name FROM MovieTheaters WHERE Movie = "G" OR Rating = "PG"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon" OR T1.name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" OR T1.Name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Imperial"
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE name = "Odeon")
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT Name FROM MovieTheaters WHERE Movie != "Unknown"
SELECT Name FROM MovieTheaters GROUP BY Name HAVING COUNT(*) >= 1
SELECT Name FROM MovieTheaters WHERE Movie = (SELECT Code FROM Movies ORDER BY Rating DESC LIMIT 1)
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT MovieTheaterCode FROM MovieTheaters JOIN Movies ON MovieTheaterCode = MovieTheaterCode GROUP BY MovieTheaterCode HAVING sum(Rating) > 8)
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T2.Rating = 'G'
SELECT title FROM Movies
SELECT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT count(DISTINCT rating) FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating < 0
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT recipient FROM PACKAGE ORDER BY WEIGHT DESC LIMIT 1
SELECT T1.name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.sender WHERE T2.weight = (SELECT max(weight) FROM PACKAGE)
SELECT sum(weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT sum(weight) FROM package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , position FROM Employee WHERE name = "Turanga Leela"
SELECT avg(Salary) FROM Employee WHERE POSITION = "Intern"
SELECT avg(Salary) FROM Employee WHERE POSITION = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE manager = "Physician"
SELECT LEVEL FROM Has_clearance WHERE manager = "Physician"
SELECT packagenumber FROM PACKAGE WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT count(*) FROM PACKAGE WHERE sender = (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong")
SELECT packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = "Leo Wong"
SELECT packagenumber FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT * FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong') OR recipient = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT DISTINCT sender , recipient FROM PACKAGE WHERE sender = "Leo Wong" OR recipient = "Leo Wong"
SELECT count(*) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.sender = T2.AccountNumber WHERE T2.name = "Ogden Wernstrom" AND T1.Recipient = T2.AccountNumber
SELECT count(*) FROM Package AS T1 JOIN Employee AS T2 ON T1.sender = T2.employeeID AND T1.Recipient = T2.AccountNumber WHERE T2.name = 'Ogden Wernstrom' AND T2.AccountNumber = 'Leo Wong'
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T2.packagenumber , T2.weight FROM Client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "John"
SELECT T2.packagenumber , T2.weight FROM Client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "John"
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.sender GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT min(Recipient) , min(Sender) FROM PACKAGE
SELECT T1.name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM Planet ORDER BY name
SELECT ShipmentID FROM SHIPMENT WHERE Manager = "Phillip J. Fry"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Phillip J Fry"
SELECT Date FROM SHIPMENT
SELECT Date FROM SHIPMENT
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars"
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars"
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars" AND Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT ShipmentID FROM SHILMENT WHERE Planet = "Mars" OR Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T2.name , sum(T1.shipments) FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN shipment AS T3 ON T3.planet = T2.planetid GROUP BY T2.name
SELECT count(*) , name FROM SHIPMENT AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet
SELECT T1.Name FROM Planet AS T1 JOIN SHIPMENT AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Date = (SELECT min(Date) FROM SHIPMENT) GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.date = (SELECT max(date) FROM shipment)
SELECT T2.name , count(*) FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid GROUP BY T1.manager
SELECT count(*) , T2.name FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid
SELECT sum(t2.weight) FROM shipment AS t1 JOIN package AS t2 ON t1.shipmentid = t2.shipment WHERE t1.planet = "Mars"
SELECT sum(weight) FROM PACKAGE WHERE sender = "Mars"
SELECT sum(T2.weight) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Jupiter" GROUP BY T1.name
SELECT sum(weight) , T1.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE sum(T2.weight) > 30
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Date > "2023-01-01" AND SUM(T2.weight) > 30
SELECT T2.packagenumber FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet JOIN planet AS T3 ON T1.plainetid = T3.plainetid JOIN has_clearance AS T4 ON T4.plainetid = T1.plainetid JOIN client AS T5 ON T5.accountnumber = T4.employee WHERE T3.name = "Omicron Persei 8" AND T5.name = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment -> T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.shipment WHERE T2.name = "Omicron Persei 8" AND T1.sender = "Zapp Brannigan"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.manager = "Zapp" AND T1.planet = "Omicron Persei 8" OR T1.manager = "Zapp" AND T1.planet = "Earth"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN has_clearance AS T3 ON T3.planet = T2.planet WHERE T2.manager = employee ID AND T2.planet = omicron persei 8 OR T1.sender = zapp brannigan
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Omega III"
SELECT T2.Name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Level = "Omega III"
SELECT T2.name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.plant = T2.planid WHERE T1.level = 1
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Plant = T2.PlanetID WHERE T1.Employee = (SELECT Employee FROM Has_clearance GROUP BY Employee ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE employeeid NOT IN ( SELECT employee FROM Has_clearance )
SELECT count(*) FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance ON Has_clearance.Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_ID FROM platform ORDER BY Download_rank ASC LIMIT 1
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.Player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T3.Game_ID = T2 Game_ID WHERE T3.Title = "Super Mario World"
SELECT T3.Player_name , T3.Rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T2.Title = "Super Mario World"
SELECT DISTINCT T3.Developer FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn College"
SELECT avg(T2.Units_sold_Millions) FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T1.Position = "Guard"
SELECT avg(T3.Units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT t1.title FROM game AS t1 JOIN platform AS t2 ON t1.platform_id = t2.platform_id WHERE t2.market_district = 'Asia' OR t2.market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE player_id IN (SELECT Player_ID FROM player WHERE POSITION = 'Guard' ))
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE player = "Guard" )
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE profits_billion > 10000000
SELECT name FROM press WHERE year_profits_billion > 15 OR month_profits_billion > 1000000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(year_profits_billion) , max(year_profits_billion) , name FROM press GROUP BY name
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY Release_date DESC
SELECT title FROM book ORDER BY Release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.Book_Series = "LT"
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING COUNT(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT T2.title , T3.name , T1.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T2.title , T3.name , T1.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY sale_amount DESC LIMIT 3
SELECT T1.name , sum(T2.sale_amount) , T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T2.name , sum(T1.sale_amount) , T2.month_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T1.sale_amount) > 1000
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = "Accor" )
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING count(*) > 2
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM AUTHORS
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , T1.document_name FROM documents AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id JOIN authors AS T3 ON T3.author_name = T2.author_name WHERE T3.author_name = "Bianka Cummings"
SELECT T1.author_name , T2.other_details FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM Documents GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9;
SELECT process_name FROM Business_Processes WHERE process_id = (SELECT next_process_id FROM Business_Processes WHERE process_id = 9)
SELECT count(*) FROM documents_processes WHERE process_outcome_code = "In Progress"
SELECT process_outcome_code , process_outcome_description FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM STAFF
SELECT staff_details FROM staff WHERE staff_id = 100;
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id WHERE T2.process_outcome_code = "Pending"
SELECT process_id FROM Documents_Processes WHERE document_id IN (SELECT document_id FROM Documents)
SELECT document_id FROM documents WHERE document_id NOT IN ( SELECT document_id FROM documents_processes )
SELECT process_id FROM Business_processes EXCEPT SELECT process_id FROM Documents_processes
SELECT T2.process_outcome_description , T2.process_status_description FROM Documents_Processes AS T1 JOIN Process_Outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.document_id = 0
SELECT T2.process_name FROM documents AS T1 JOIN business_processes AS T2 ON T1.document_id = T2.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.process_id = 9
SELECT staff_id , count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM agenies
SELECT count(*) FROM agencies
SELECT agency_id , agency_details FROM Agencys
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id WHERE T1.client_details = "Mac"
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T2.client_details , T3.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_details = T3.agency_details
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T3.agency_details , T3.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T1.payment_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT invoice_id , invoice_status FROM Invoices EXCEPT SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id IN (SELECT invoice_id FROM Payments WHERE payment_details = "paid")
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id , T1.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , COUNT(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , T1.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T3.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*) , T1.meeting_id FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM staff_in_meetings )
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T2.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' GROUP BY T2.staff_id HAVING COUNT(*) >= 1
SELECT T1.staff_id , T2.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IN (SELECT meeting_id FROM meetings) UNION SELECT staff_id , staff_details FROM staff WHERE staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T2.agency_id FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T2.agency_id HAVING COUNT(*) = 1
SELECT T1.client_id , T1.sic_code , T2.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING COUNT(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T2.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING COUNT(*) >= 1
SELECT T2.start_date_time , T2.end_date_time , T1.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T3.meeting_id = T1.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T4.staff_details , T3.client_details FROM Meetings AS T1 JOIN Staff AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id JOIN Staff_in_Meetings AS T4 ON T1.meeting_id = T4.meeting_id
