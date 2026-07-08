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
SELECT Country FROM player WHERE Earnings > 1200000 GROUP BY Country HAVING COUNT(*) >= 1
SELECT Country FROM player WHERE Earnings = (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT T2.Country FROM player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T1.Wins_count > 2 ORDER BY T2.Country DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING Max(T1.Wins_count) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING COUNT(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = 'Sam Allardyce'
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manager FROM club GROUP BY Manager ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manager FROM club GROUP BY Manager HAVING COUNT(*) > 1
SELECT Manager FROM club GROUP BY Manager HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING Wins_count > 1
SELECT Country FROM player GROUP BY Country HAVING Wins_count > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwa"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN order_items AS T3 ON T1.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 UNION SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN order_items AS T3 ON T1.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T2.product_name , T2.product_price FROM Order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1
SELECT sum(total_cost) , order_id FROM order_items GROUP BY order_id ORDER BY sum(total_cost) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT count(*) , gender_code FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code
SELECT count(*) , T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T2.product_name , T1.product_color FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_item_id = T2.order_item_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.status = "Shipped"
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.gender_code = 'F'
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T4.customer_id = T3.customer_id WHERE T4.gender_code = 'F'
SELECT T1.invoice_status_code FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number WHERE T2.order_id NOT IN (SELECT T3.order_id FROM orders AS T3 JOIN order_items AS T4 ON T3.order_id = T4.order_id)
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT T1.invoice_number FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE "%+12%"
SELECT login_name , login_password FROM customers WHERE phone_number LIKE "+12%"
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T1.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T2.customer_first_name , T1.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.order_item_status_code = "placed"
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address , T2.town_city , T2.county FROM customers AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.gender_code NOT IN ( SELECT T1.customer_id FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.order_status_code = '2') GROUP BY T2.town_city , T2.county ORDER BY count(*) ASC LIMIT 3
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T2.product_description FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T2.product_description FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE "%bbc%"
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name , t1.internet FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id HAVING count(*) > 1
SELECT count(*) , t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT t1.channel_id , t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.name = "Hank Baskett"
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city_channel_id , city , station_name FROM city_channel ORDER BY station_name
SELECT T1.Transmitter , T2.City FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.id
SELECT T1.Transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1 Radio_ID = T2 Radio_ID ORDER BY T1.Erp_kW DESC
SELECT T1.Transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT T2.Driver_ID , count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(power) , avg(power) , builder FROM vehicle WHERE builder = 'Zhuzhou'
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.build_year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(*) FROM driver WHERE Citizenship = 'NASCAR'
SELECT count(*) FROM driver WHERE Citizenship = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.power > 5000
SELECT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT model FROM vehicle EXCEPT SELECT T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = 'Ziyang'
SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Builder = "Ziyang" GROUP BY T2.Vehicle_ID HAVING COUNT(*) = 2
SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE COUNT(*) > 2 UNION SELECT T1.vehicle_id , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Name = 'Jeff Gordon'
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon" GROUP BY T1.Vehicle_ID HAVING count(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed > 1000
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = 'DJ1'
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT Exam_Name , Exam_Date FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.First_Name , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T2.Email_Address , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN EXAMS AS T2 ON T1.Exam_ID = T2.Exam_ID GROUP BY T1.Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T2.First_Name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.question_id ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT first_name FROM students EXCEPT SELECT T1.first_name FROM students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT first_name FROM students EXCEPT SELECT T1.first_name FROM students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
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
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price ASC LIMIT 1
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
SELECT customer_name FROM customers ORDER BY payment_method_code COUNT(*) ASC LIMIT 1
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
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.customer_id = 44165
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT t1.customer_id , t1.customer_name , t1.customer_phone , t1.customer_email FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(DISTINCT T2.product_name) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = 'Monitor'
SELECT count(DISTINCT product_id) FROM order_items
SELECT count(*) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 3
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE count(*) > 3
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
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.Capital FROM building AS t1 JOIN region AS t2 ON t1.Region_ID = t2.Region_ID ORDER BY t2.Area DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT sum(number_of_stories) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = "Abruzzo"
SELECT count(*) , T1.Building_ID FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = "Abruzzo" GROUP BY T1.Building_ID
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name , Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM SERVICES
SELECT Analytical_Layer_Type_Code FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch"
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Customer_Details = "Hardy Kutch"
SELECT T1.Service_Details FROM SERVICES AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T2.Service_ID HAVING COUNT(*) > 3
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T2.Service_ID HAVING COUNT(*) > 3
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.customers_and_services_details = (SELECT min(customers_and_services_details) FROM customers_and_services)
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customers_and_services_details) , count(DISTINCT customers_details) FROM customers_and_services
SELECT count(*) FROM customers_and_services
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch" OR t2.status_code = "good"
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch" OR t2.customers_and_services_details = "Good"
SELECT T3.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers_and_Services AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T1.Status_Code = "bad" AND T3.Customer_Details = "Hardy Kutch"
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT DISTINCT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "15"
SELECT DISTINCT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN channels AS t3 ON t2.channel_id = t3.channel_id WHERE t2.status_code = "Stuck" AND t3.channel_details = "bad"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customer_interactions AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Status_Code = "Stuck" AND T2.Services_and_channels_details = "bad"
SELECT count(*) FROM integration_platform
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.status_code = 'Failed'
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT analytical_layer_type_code , count(*) FROM Analytical_Layer GROUP BY analytical_layer_type_code
SELECT analytical_layer_type_code , count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT DISTINCT T1.service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T1.Status_Code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM VEHICLES
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_OF_powertrain FROM Vehicles GROUP BY TYPE_OF_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers WHERE membership_credit = (SELECT max(membership_credit) FROM Customers)
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM DISCOUNT
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY total_hours DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.Type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T2.name , T2.TypeOf_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(Combined_fuel_economy_rate) , avg(Highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T3.bio_data , T3.student_id FROM Students AS T3 JOIN Detention AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id HAVING count(*) <= 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.student_id FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = (SELECT max(count) FROM Behaviour_Monitoring) INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = (SELECT max(count) FROM Behaviour_Monitoring) - 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , event_date FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , T1.event_date , T1.student_id , count(*) FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T3.teacher_id FROM Achievements AS T3 JOIN Students AS T4 ON T4.student_id = T5.student_id
SELECT count(DISTINCT teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id WHERE T3.achievement_type_code != "Award"
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT T1.event_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T1.teacher_id , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_id , T1.student_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT max(T1.teacher_id) , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT max(student_id) , count(*) FROM Classes
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T2.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T2.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.amount_of_loan) > T2.amount_of_loan
SELECT min(date_of_loan) FROM Student_Loans
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY sum(T2.amount_of_loan) DESC LIMIT 1
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id ON T3.student_id IN (SELECT T2.student_id FROM transcripts AS T4 JOIN students AS T5 ON T4.student_id = T5.student_id ORDER BY T4.date_of_transcript ASC LIMIT 1)
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_code , T3.address_type_description FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T3.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention GROUP BY datetime_detention_start HAVING count(*) = DETENTION_TYPE_CODE
SELECT datetime_detention_start FROM Detention
SELECT name FROM author
SELECT name FROM author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , ISBN , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM book
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT title , author FROM book
SELECT title , author FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT idorder , name FROM orders JOIN client ON orders.idclient = clients.idclient
SELECT idorder , idclient FROM orders
SELECT T2.name , count(*) FROM Author_book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor GROUP BY T2.idauthor
SELECT count(*) , T1.name FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.isbn , count(*) FROM Book AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT sum(amount) , isbn FROM books_order GROUP BY isbn
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T3.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT idclient , count(*) FROM orders GROUP BY idclient
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient GROUP BY t1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient GROUP BY t2.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM orders AS T1 JOIN Books_Order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idclient
SELECT sum(T1.amount) , T2.name FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T2.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T3.idorder = T2.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(purchasePrice) , min(purchasePrice) FROM Book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(saleprice - purchaseprice) FROM book
SELECT max(T2.saleprice) - max(T2.purchaseprice) , max(T2.saleprice) - min(T2.purchaseprice) FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT saleprice FROM book WHERE author = (SELECT idauthor FROM author WHERE name = 'Plato')
SELECT saleprice FROM book WHERE author = (SELECT idauthor FROM author WHERE name = 'Plato')
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE author = (SELECT idauthor FROM author WHERE name = 'Plato') AND purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT title FROM book WHERE author = (SELECT idAuthor FROM author WHERE name = 'Plato') AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT author FROM book WHERE title = "Pride and Prejudice"
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE title = 'Pride and Prejudice'
SELECT t1.title FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn WHERE t2.author LIKE '%Plato%'
SELECT t2.title FROM author AS t1 JOIN book AS t2 ON t1.idAuthor = t2.author WHERE t1.name LIKE "%Plato%"
SELECT count(*) FROM orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder JOIN books_order AS T3 ON T3.isbn = T2.isbn WHERE T2.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE title = 'Pride and Prejudice'
SELECT idorder FROM books_order JOIN orders ON orders.idorder = books_order.idorder JOIN author_book ON author_book.isbn = books_order.isbn AND author_book.author = books_order.author WHERE title = 'Pride and Prejudice' INTERSECT SELECT idorder FROM books_order JOIN orders ON orders.idorder = books_order.idorder JOIN author_book ON author_book.isbn = books_order.isbn AND author_book.author = books_order.author WHERE title = 'The Little Prince'
SELECT idorder FROM books_order JOIN order ON books_order.idorder = orders.idorder JOIN book ON books_order.isbn = book.isbn WHERE book.title = 'The Little Prince' AND book.title = 'Pride and Prejudice'
SELECT T1.isbn FROM book AS T1 JOIN Books_Order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = (SELECT idclient FROM orders WHERE name = "Peter Doe") INTERSECT SELECT T1.isbn FROM book AS T1 JOIN Books_Order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = (SELECT idclient FROM orders WHERE name = "James Smith")
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn JOIN orders AS t3 ON t2.idorder = t3.idorder WHERE t3.idclient = 101 AND t2.idorder != 105 OR t1.author = (SELECT T1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient WHERE t2.dateorder = '2023-04-10' AND t2.dateexped = '2023-04-15' AND t1.name = 'Peter Doe')
SELECT t3.title FROM orders AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn JOIN books_order AS t3 ON t1.idorder = t3.idorder WHERE t1.idclient = (SELECT idclient FROM clients WHERE name = 'Peter Doe') EXCEPT SELECT t3.title FROM orders AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn JOIN books_order AS t3 ON t1.idorder = t3.idorder WHERE t1.idclient = (SELECT idclient FROM clients WHERE name = 'James Smith')
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = 'Pride and Prejudice'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN author_book AS T4 ON T3.isbn = T4.isbn WHERE T4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , book_id FROM book GROUP BY book_id
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT max(T1.Rating) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Chapters = (SELECT max(T2.Chapters) FROM book AS T2 WHERE T2.Chapters != "null")
SELECT Rank FROM review GROUP BY Rank ORDER BY count(*) LIMIT 1
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1 Rating
SELECT Title , Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , card_credit FROM customer
SELECT Nationality , card_credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT name FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.dish_name , T1.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Dish_Name ORDER BY COUNT(*) DESC
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Dish_Name ORDER BY COUNT(*) DESC
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T2.Team_Leader , T1.club_name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT t3.Team_Leader FROM club_leader AS t1 JOIN club AS t2 ON t1.Club_ID = t2.Club_ID JOIN member AS t3 ON t1.Member_ID = t3.Member_ID WHERE t2.overall_ranking = 1 AND t1.year_join < 2018
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT name FROM member EXCEPT SELECT t1.name FROM club AS t1 JOIN club_leader AS t2 ON t1.member_id = t2.member_id
SELECT nationality FROM member WHERE age > 22 INTERSECT SELECT nationality FROM member WHERE age < 19
SELECT avg(T2.age) FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.year_join = (SELECT max(year_join) FROM club_leader)
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T2.Collection_Subsubset_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_Subset_ID
SELECT Collection_Subset_Name FROM Collection_Subsets
SELECT collection_subset_details FROM Collection_Subsets WHERE collection_subset_name = 'Top collection'
SELECT T2.collection_subset_details FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Name FROM Document_Subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections
SELECT Document_Object_ID FROM Document_Objects
SELECT parent_document_object_id FROM Document_Objects WHERE owner = "Marlin"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.document_object_id = T2.collection_subset_id WHERE T1.description = 'Braeden Collection'
SELECT T1.OWNER FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = 'Braeden Collection'
SELECT T1.owner FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.parent_document_object_id = T2.collection_subset_id WHERE T2.collection_name = 'Marlin'
SELECT Owner FROM Document_Objects WHERE Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT document_object_id FROM Document_Objects EXCEPT SELECT parent_document_object_id FROM Document_Objects
SELECT T1.parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.parent_document_object_id
SELECT count(*) , T1.parent_document_object_id FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.parent_document_object_id
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT collection_description FROM Collections WHERE collection_name = "Best"
SELECT collection_description FROM Collections WHERE collection_name = 'Best'
SELECT parent_collection_id FROM Collections WHERE collection_name = "Nice"
SELECT parent_collection_id FROM Collections WHERE collection_name = "Nice" UNION SELECT parent_collection_id FROM Collection_Subsets WHERE collection_name = "Nice"
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.parent_collection_id = T2.collection_id
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.parent_collection_id = T2.collection_id
{"sql": "SELECT parent_document_object_id FROM Document_Objects WHERE document_object_id IN (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = (SELECT document_object_id
SELECT parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id HAVING count(*) > 1
SELECT count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM Collection_Subset_Members AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Document_Object_ID WHERE T2.Owner = "Ransom"
SELECT T2.document_object_id FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID WHERE T2.owner = "Ransom"
SELECT T2.collection_subset_id , T1.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT count(*) , T1.collection_subset_id , T2.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_subset_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id
SELECT T1.document_object_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T2.Document_Object_ID , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_Subset_Members AS T3 ON T1.document_object_id = T3.Document_Object_ID WHERE T3.Related_Document_Object_ID = (SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_id = (SELECT document_subset_id FROM Document_Objects WHERE owner = 'Braeden') )
SELECT DISTINCT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T2.Owner = 'Braeden')
SELECT DISTINCT t1.document_subset_name FROM Document_Subsets AS t1 JOIN Document_Subset_Members AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden'
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT count(*) , T1.document_subset_id , T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_subset_id , T2.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Document_Subset_Members WHERE Document_Subset_ID = "Best for 2000"
SELECT document_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000"
SELECT T1.document_subset_name , T2.document_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T1.document_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_id
SELECT t1.collection_name FROM Collections AS t1 JOIN Documents_in_Collections AS t2 ON t1.collection_id = t2.collection_id JOIN Document_Objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t3.owner = 'Ransom'
SELECT t3.collection_name FROM Document_Objects AS t1 JOIN Document_Subsets AS t2 ON t1.document_object_id = t2.document_subset_id JOIN Collection_Subsets AS t3 ON t2.document_subset_id = t3.collection_subset_id JOIN Collection_ID AS t4 ON t3.collection_id = t4.collection_id WHERE t1.owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Best"
SELECT t1.collection_name , t1.collection_id , count(*) FROM Collections AS t1 JOIN Documents_in_Collections AS t2 ON t1.collection_id = t2.collection_id GROUP BY t1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id HAVING count(*) = (SELECT max(count(*) ) FROM Documents_in_Collections) WHERE T1.collection_name = 'Best'
SELECT T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Documents_in_Collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T1.document_subset_name = "Best" AND T3.collection_id = (SELECT T4.collection_id FROM Collection_Subsets AS T4 JOIN Collections AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE T5.collection_name = "Best" AND T4.collection_id = (SELECT T6.collection_id FROM Collection_Subsets AS T6 JOIN Collections AS T7 ON T6.collection_subset_id = T7.collection_subset_id WHERE T7.collection_name = "Best")) AND T1.document_subset_details = 2000
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' INTERSECT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_Subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = 'Best for 2000'
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" EXCEPT SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND T1.related_document_object_id = 2000
SELECT DISTINCT t1.document_object_id FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = 'Best' EXCEPT SELECT DISTINCT t1.document_object_id FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = 'Best for 2000'
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' OR T2.document_object_id IN (SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = '2000')
SELECT DISTINCT T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.collection_subset_name = 'Best for 2000' UNION SELECT DISTINCT T1.document_subset_id FROM Document_Subsets AS T1 JOIN Collection_Subsets AS T2 ON T1.document_subset_id = T2.collection_subset_id WHERE T2.collection_subset_name = 'Best'
SELECT T1.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.Related_Collection_ID = (SELECT collection_id FROM Collections WHERE collection_name = "Best")
SELECT t3.collection_subset_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subset_members AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(DISTINCT collection_id) FROM Collections WHERE collection_name = 'Best'
SELECT t2.collection_subset_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_subset_id WHERE t1.collection_name = "Best"
SELECT T2.collection_subset_id FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T2.voice_sound_quality , T2.rhythm_tempo , T2.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T2.participant_id ORDER BY count(*) DESC
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T3.voice_sound_quality FROM performances AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id WHERE T2.language = 'english' AND T2.name = 'The Balkan Girls'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id ORDER BY T3.popularity DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T2.rhythm_tempo) , T1.language FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = "Canada"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT country , count(*) FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code WHERE t1.country = "China"
SELECT count(*) FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code WHERE t1.country = "China"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "Baltimore"
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1
SELECT t1.country FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.country ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM student WHERE city_code = "PA" AND sex = 'F'
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT T1.city_code FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'USA')
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code AND t1.city_code = "Boston" AND t2.city_code = "Newark"
SELECT distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code AND t1.city_code = "Boston" AND t2.city_code = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY max(T2.distance) LIMIT 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 1
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T1.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE distance < 1000
SELECT sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT sum(distance) FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t1.city_name = "BAL"
SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance WHERE distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = "Chicago"))
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = "Chicago")
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = "Boston")
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.city1_code = "Boston" ORDER BY distance DESC LIMIT 1
SELECT city1_code , sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY city1_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT avg(T1.distance) , T2.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY T2.city_name
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T2.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T3.city_code = T1.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT T2.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T3.city_code = T1.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT T2.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = (SELECT city_name FROM student WHERE Fname = "Tracy" AND Lname = "Kim") INTERSECT SELECT T2.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = (SELECT city_name FROM student WHERE Fname = "Linda")
{"sql": "SELECT fname , lname FROM student WHERE StuID = (SELECT StuID FROM student WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' AND distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = '
SELECT t1.fname , t1.lname FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code AND t2.city2_code = (SELECT city_code FROM student WHERE Fname = "Linda" AND Lname = "Smith")
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T3.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.name = "1"
SELECT DISTINCT T3.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age = 1
SELECT T2.name , T2.color FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name = '102'
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = "102"
SELECT count(DISTINCT bid) FROM reserves
SELECT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 1
SELECT T1.id , T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.id HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "blue"
SELECT T3.name , T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' INTERSECT SELECT T3.name , T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = "103"
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%';
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM Sailors
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' AND T1.day > 2018 GROUP BY T1.bid HAVING T1.bid > 50
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T3.bid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T3.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid > 1 GROUP BY T1.name
SELECT T1.rating , avg(T2.age) FROM Reserves AS T3 JOIN Boats AS T4 ON T3.bid = T4.bid JOIN Sailors AS T2 ON T3.sid = T2.sid WHERE T4.color = 'red' GROUP BY T2.rating
SELECT T3.rating , avg(T2.age) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' GROUP BY T3.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color != 'red'
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE sid IN (SELECT sid FROM Reserves JOIN Boats ON Reserves.bid = Boats.bid WHERE Boats.color = 'red') )
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.name = "Melon"
SELECT name , age FROM sailers ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model ASC
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT model FROM headphone GROUP BY model ORDER BY count(*) DESC LIMIT 2
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY count(*) DESC LIMIT 2
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT CLASS FROM headphone WHERE earpads = 'Bowls' INTERSECT SELECT CLASS FROM headphone WHERE earpads = 'Comfort Pads'
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT Earpads FROM headphone WHERE Construction != 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.name , count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T1.Quantity FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T1.Headphone_ID = T3.Headphone_ID WHERE T3.Class = 'Headphone'
SELECT name FROM store EXCEPT SELECT T2.name FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id JOIN headphone AS T3 ON T1.headphone_id = T3.headphone_id WHERE T3.Class = 'Headphone'
SELECT name FROM store EXCEPT SELECT T2.name FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T1.headphone_id IN (SELECT headphone_id FROM headphone)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_ID = T2.headphone_ID GROUP BY T1.headphone_ID ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT count(*) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Name = "Woodman"
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = 'Woodman'
SELECT Neighborhood FROM store EXCEPT SELECT T2.neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id
SELECT Neighborhood FROM store EXCEPT SELECT T2.Neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID IN (SELECT Headphone_ID FROM headphone)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = "Columbia University" AND t1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT t3.title , t1.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Harvard University'
SELECT t3.title , t1.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Harvard University"
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = "Mckeown"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown"
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford' INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT t2.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = "Mckeown" AND t3.name = "Kathleen" INTERSECT SELECT t2.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = "Rambow" AND t3.name = "Owen"
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown" AND t1.email = "kathleen@mckeown.edu" INTERSECT SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Rambow" AND t1.email = "owen@rambow.edu"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id NOT IN (SELECT T2.author_id FROM Author_list AS T2 JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown") INTERSECT SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id NOT IN (SELECT T2.author_id FROM Author_list AS T2 JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow")
SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN (SELECT author_id FROM author WHERE name = "Mckeown") EXCEPT SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN (SELECT author_id FROM author WHERE name = "Rambow")
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Kathleen" OR T3.name = "Owen"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Rambow"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT T2.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.affiliation_id ORDER BY count(*) DESC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T2.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = "A00-1002"
SELECT count(*) FROM CITEREFS AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = "A00-1002"
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT count(*) FROM CITEREFS AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT T1.paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , count(*) FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT t1.title , count(*) FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT count(*) FROM CITERELATION AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT count(*) FROM CITERELATION AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT count(*) FROM CITE AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author_list AS T3 ON T3.paper_id = T1.paper_id JOIN author AS T4 ON T4.author_id = T3.author_id WHERE T4.name = "Mckeown" AND T4.name = "Kathleen"
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.venue , T2.year FROM Author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT venue , YEAR FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Mckeown , Kathleen")
SELECT venue , YEAR FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Columbia University") )
SELECT venue , YEAR FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id = (SELECT author_id FROM author WHERE name = "Columbia University") )
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id WHERE t2.paper_id = (SELECT paper_id FROM paper WHERE YEAR = 2009 GROUP BY paper_id ORDER BY count(*) DESC LIMIT 3)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.paper_id = (SELECT paper_id FROM paper WHERE YEAR = 2009 GROUP BY paper_id ORDER BY count(*) DESC LIMIT 3)
SELECT count(*) FROM paper WHERE title LIKE "%Columbia University%" AND YEAR <= 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year < 2009
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND venue = 'Stanford'
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND venue = "Stanford"
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" OR T2.name = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = (SELECT max(YEAR) FROM paper) AND T2.author_id IN (SELECT T5.author_id FROM author AS T5 JOIN author_list AS T6 ON T5.author_id = T6.author_id JOIN paper AS T7 ON T6.paper_id = T7.paper_id WHERE T7.title = "Mckeown , Kathleen")
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.title = 'Mckeown , Kathleen' AND t2.author_id IN (SELECT t2.author_id FROM author_list AS t2 JOIN author AS t1 ON t2.author_id = t1.author_id WHERE t1.name = 'Mckeown , Kathleen') GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id WHERE t1.address LIKE '%China%' GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id WHERE t1.address LIKE "%China%" GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , venue FROM paper GROUP BY venue , YEAR
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , affiliation_id FROM Author_list GROUP BY affiliation_id
SELECT count(*) , affiliation_id FROM author_list GROUP BY affiliation_id
SELECT t1.title FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author_list WHERE author_id NOT IN ( SELECT author_id FROM author_list AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50 )
SELECT count(*) FROM author_list WHERE author_id NOT IN (SELECT T1.author_id FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING sum(T3.citations) > 50)
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t1.year = 2009 AND t1.venue = 'NAACL' INTERSECT SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t1.year = 2009 AND t1.venue = 'ACL'
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = "NAACL" INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = "ACL"
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = 'ACL'
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = 'ACLS'
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT count(*) , conference_name FROM conference GROUP BY conference_name
SELECT count(*) , conference_name FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT count(*) , T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT institution_name FROM institution EXCEPT SELECT T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff
SELECT T3.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T3.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM staff WHERE role = 'ACL') INTERSECT SELECT name FROM staff WHERE role = 'NACCL'
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.conference_name = 'ACL' INTERSECT SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.conference_name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2003 OR T3.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_year >= 2003 OR T2.conference_year = 2004
SELECT count(*) , T1.Conference_Name , T1.Year FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT T2.Conference_Name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff EXCEPT SELECT t1.name , t1.nationality FROM staff AS t1 JOIN conference_participation AS t2 ON t1.staff_id = t2.staff_id JOIN conference AS t3 ON t2.conference_id = t3.conference_id WHERE t3.conference_name = 'ACL'
SELECT name , nationality FROM staff EXCEPT SELECT T1.name , T1.nationality FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = 'ACL'
SELECT institution_name , LOCATION FROM institution EXCEPT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.year = 2004
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id WHERE T2.year = 2004)
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT DISTINCT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = 'Jones'
SELECT plane_name FROM pilotskills WHERE age = 32 AND pilot_name = "Jones"
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = "B-52"
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" ORDER BY age LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Smith" AND age = 41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilotskills WHERE pilot_name = "Smith"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith"
SELECT count(DISTINCT plane_name) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "Piper Cub" AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "F-14 Fighter" AND age < 30
SELECT pilot_name , age FROM pilotskills WHERE plane_name = "Piper Cub" AND age > 35 UNION SELECT pilot_name , age FROM pilotskills WHERE plane_name = "F-14 Fighter" AND age < 30
SELECT DISTINCT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" EXCEPT SELECT DISTINCT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = "B-52 Bomber"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "B-52 Bomber" INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub"
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name = "B-52 Bomber"
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT DISTINCT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT plane_name , avg(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , avg(age) FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name
SELECT pilot_name , plane_name , age FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT plane_name , pilot_name FROM pilotskills ORDER BY pilot_name , plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM pilotskills GROUP BY plane_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT avg(age) , count(*) FROM PilotSkills
SELECT avg(age) , count(*) , LOCATION FROM pilotskills GROUP BY LOCATION
SELECT count(*) FROM PilotSkills WHERE avg(age) < 35
SELECT plane_name , count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT pilot_name , age FROM pilotskills WHERE location = 'Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speak_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesmen WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesmen AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.Start_year > 2004
SELECT count(*) , T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.district_id
SELECT T3.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 1 INTERSECT SELECT T3.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 2
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesmen WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesmanship_district)
SELECT sum(t2.population) , avg(t2.population) FROM spokesman_district AS t1 JOIN district AS t2 ON t1.district_id = t2.district_id
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = "Gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != (SELECT LOCATION FROM sculptures WHERE LOCATION = 226)
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920 GROUP BY T1.artistID HAVING count(*) >= 1
SELECT fname , lname FROM artists ORDER BY birthyear + deathyear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthyear + deathyear DESC LIMIT 1
SELECT T1.fname , T1.lname , T1.birthyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid ORDER BY birthyear ASC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = (SELECT min(YEAR) FROM Paintings)
SELECT fname , deathyear FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , deathYear FROM artists ORDER BY birthYear + deathYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = "240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear - birthyear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear DESC LIMIT 1
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.bornyear < 1850
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT LOCATION , medium FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorID
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithography'
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = "canvas"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT DISTINCT painterid FROM paintings WHERE medium = "mediola" AND LOCATION = 240
SELECT DISTINCT painterid FROM paintings WHERE medium = "oil" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT painterid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT painterid FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.title LIKE "%female%" JOIN sculptures AS T3 ON T2.sculptureid = T3.sculptureid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T2.painterid = T3.sculptorid WHERE T3.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title , T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.medium = T2.medium WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title , T1.year FROM paintings AS T1 JOIN sculptures AS T2 ON T1.medium = T2.medium WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.medium = T2.medium WHERE T1.painterid = 222
SELECT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.medium = T2.medium WHERE T1.painterID = 222
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM sculptures WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE LOCATION = 241 AND medium = 'Oil'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND LOCATION = 241
SELECT max(height_mm) , MAX(painterID) FROM paintings WHERE YEAR < 1900
SELECT height_mm , paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) <= 3
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT height_mm , paintingID FROM Paintings WHERE WIDTH_mm = (SELECT max(width_mm) FROM Paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR < 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR < 2000)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 1
SELECT title , LOCATION , medium FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT title , LOCATION , sculptureID FROM paintings ORDER BY YEAR
SELECT title , LOCATION , YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT title , YEAR , LOCATION FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "sculpture"
SELECT fname , lname FROM artists EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "medium on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_team , Winning_driver FROM race ORDER BY Winning_team
SELECT DISTINCT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Winning_driver != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_Name
SELECT count(*) , T2.Driver_ID FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID
SELECT T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.driver_id GROUP BY T1.Driver_Name HAVING COUNT(*) >= 2
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT DISTINCT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "PolePosition" AND T2.Driver_Name = "James Hinchcliffe" INTERSECT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "PolePosition" AND T2.Driver_Name = "Carl Skerlong"
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
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
SELECT count(DISTINCT T2.name) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T2.language FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T3.id ORDER BY count(*) DESC LIMIT 1
SELECT t2.name FROM official_languages AS t1 JOIN languages AS t2 ON t1.language_id = t2.id GROUP BY t1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT avg(overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY T3.overall_score DESC
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T1.country_id ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T2.count(*) , T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.count(*)
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM Features WHERE feature_name = "TRELLIS ROOF"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%Mother%'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'garage'
SELECT avg(room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.feature_name = 'garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN property_features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_name = 'Swimming pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Ref_Room_Types AS T3 ON T2.room_type_code = T3.room_type_code WHERE T3.room_type_description = "swimming pool"
SELECT property_id , price_min FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY datestamp DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , datestamp FROM User_Searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.owner_user_id GROUP BY T1.zip_postcode HAVING count(*) <= 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Users AS T3 ON T2.owner_user_id = T3.user_id GROUP BY T1.zip_postcode HAVING count(*) <= 1
SELECT T1.user_category_description , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , T1.user_category_code FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T2.age_category_description FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id ORDER BY T1.search_datetime LIMIT 1
SELECT T1.age_category_description FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code WHERE T2.user_id IN (SELECT user_id FROM User_Searches ORDER BY search_datetime ASC LIMIT 1)
SELECT login_name FROM users WHERE age_category_code = 'senior' ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 'senior' ORDER BY first_name
SELECT count(*) FROM User_Searches WHERE is_buyer = '1'
SELECT count(*) FROM User_Searches WHERE is_buyer = 'T'
SELECT date_registered FROM users WHERE login_name = 'ratione'
SELECT date_registered FROM users WHERE login_name = 'ratione'
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 'T'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE age_category_code = "Senior"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.user_address_id = T2.user_address_id WHERE T2.age_category_code = "senior"
SELECT count(*) FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY property_id HAVING count(*) >= 2
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T2.owner_user_id , count(*) FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.owner_user_id
SELECT T1.owner_user_id , count(*) FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE first_name = 'Single' OR last_name = 'Student')
SELECT price_max FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE first_name = "single" OR last_name = "student")
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.property_type_description , T2.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_User_Categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T2.country FROM users AS T1 JOIN addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = "Robbie"
SELECT T2.country FROM users AS T1 JOIN addresses AS T2 ON T1.user_id = T2.address_id WHERE T1.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id = ( SELECT address_id FROM Addresses WHERE line_1_number_building = ( SELECT T2.line_1_number_building FROM Properties AS T2 JOIN Addresses AS T1 ON T2.property_address_id = T1.address_id WHERE T1.town_city = ( SELECT T3.town_city FROM Addresses AS T3 WHERE T3.country = "USA" ) ) }
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T2.owner_user_id = T1.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T3.last_name , T3.user_id FROM Users AS T3 JOIN User_Property_History AS T4 ON T3.user_id = T4.user_id GROUP BY T3.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T2.id HAVING count(*) >= 4
SELECT T1.cyclist_id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year < 2015)
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result > '4:21.558'
SELECT T3.product_name , T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Bradley Wiggins' INTERSECT SELECT T3.product_name , T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE material = 'race')
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.id ORDER BY T1.id
SELECT flavor , max(price) FROM goods GROUP BY flavor
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT flavor , min(price) FROM goods GROUP BY flavor
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.Receipt = T2.Item WHERE T3.flavor = "cake" AND T2.date = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = 'lemon'
SELECT food , count(*) FROM goods JOIN items ON goods.id = items.food GROUP BY food
SELECT count(*) , T1.Flavor FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receipts GROUP BY T1.flavor
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING COUNT(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.LastName FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T1.item = 'bakery' GROUP BY T2.LastName HAVING COUNT(*) > 10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId HAVING COUNT(*) > 10
SELECT count(DISTINCT Flavor) FROM goods WHERE Food = "Cake"
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT DISTINCT T3.Item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.RecceiptNumber = T3.Receipt
SELECT avg(Price) , max(Price) , min(Price) , Food FROM goods GROUP BY Food
SELECT avg(Price) , min(Price) , max(Price) , Food FROM goods GROUP BY Food
SELECT receiptnumber FROM items WHERE item = "Cake" INTERSECT SELECT receiptnumber FROM items WHERE item = "Cookie"
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cake" INTERSECT SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cookie"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.LastName = "LOGAN" AND T2.Food = "Croissant"
SELECT T3.ReceiptNumber FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN receipts AS T3 ON T2.receipt = T3.receipt
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.Item WHERE T2.price = (SELECT max(price) FROM goods)
SELECT T1.receiptnumber , T1.date FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.customer WHERE T1.price = (SELECT max(price) FROM items)
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Food , COUNT(*) FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT Food , avg(Price) FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "Tart")
SELECT DISTINCT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.price > 13
SELECT DISTINCT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id WHERE T2.price > 13
SELECT T2.Date FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T1.good > 15
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receipts WHERE T1.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE Id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT lastname FROM customers ORDER BY lastname
SELECT lastname FROM customers ORDER BY lastname
SELECT id FROM goods WHERE price > 0 ORDER BY id
SELECT DISTINCT id FROM goods ORDER BY id
SELECT T2.receiptnumber FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.receipt WHERE T1.flavor = "apple" OR T2.customerid = 12
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.firstname = "Alice" OR T1.lastname = "Smith"
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 10 OR T1.date = (SELECT min(date) FROM receipts)
SELECT T2.ReceiptNumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.price > 10 UNION SELECT ReceiptNumber FROM receipts ORDER BY DATE ASC LIMIT 1
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T2.firstname , T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date = (SELECT min(date) FROM receipts)
SELECT T2.firstname , T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT Flavor FROM goods WHERE Food = "cheese" ORDER BY Price ASC LIMIT 1
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , Food FROM goods GROUP BY Food
SELECT min(Price) , max(Price) , Food FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T2.customerid , count(*) FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.receipts GROUP BY T2.customerid ORDER BY count(*) DESC LIMIT 1
SELECT T1.receiptnumber , count(*) FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T1.receiptnumber ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , Date FROM receipts GROUP BY Date
SELECT count(*) , date FROM receipts GROUP BY date
SELECT T3.firstname , T3.lastname FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id JOIN receipts AS T3 ON T1.receipt = T3.id WHERE T2.flavor = "apple" AND T1.food = "Tart"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.receiptnumber = T2.receiptnumber JOIN goods AS T4 ON T4.id = T3.item WHERE T4.flavor = 'apple' AND T4.food = 'Tart'
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = "crosie")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Food = "Tart")
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT flavor , TYPE FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id WHERE T2.flavor = "Chocolate" EXCEPT SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id GROUP BY T1.Item HAVING count(*) > 10
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Flavor = "Chocolate" GROUP BY T1.Item HAVING count(*) <= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Tarts" EXCEPT SELECT Flavor FROM goods WHERE Food = "Cakes"
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id GROUP BY T1.Item ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING sum(T2.price) > 150
SELECT avg(T1.price) , T2.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.id GROUP BY T2.id HAVING avg(T1.price) > 5
SELECT T1.id , avg(T2.price) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T3.receiptNumber = T4.receiptNumber AND sum(T4.price) > 100
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.CustomerId = T2.id WHERE T2.price > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Country FROM driver
SELECT T1.Driver , T1.Country FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE Official_native_language = "English"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
{"sql": "SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1 WHERE T1.Capital = (SELECT T1.Country FROM country AS T1 JOIN driver AS
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country FROM driver)
SELECT manager , sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT manager , sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT manager , car_owner FROM team WHERE team_id IN (SELECT team_id FROM team_driver GROUP BY team_id HAVING count(*) >= 2)
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Founded
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM Institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Name , T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY COUNT(*) DESC
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Affiliation = 'Public'
SELECT sum(t1.number_of_championships) FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id WHERE t2.affiliation = 'Public'
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE Location = "New York"
SELECT DISTINCT contents FROM boxes WHERE location = 'New York'
SELECT contents FROM boxes WHERE value > 150
SELECT Contents FROM boxes WHERE Value > 150
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT Contents FROM boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY VALUE LIMIT 1
SELECT avg(Value) FROM boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(value) FROM boxes WHERE LOCATION = "Chicago" OR LOCATION = "New York"
SELECT Contents FROM boxes WHERE Warehouses.Location = "Chicago" INTERSECT SELECT Contents FROM boxes WHERE Warehouses.Location = "New York"
SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE location = 'Chicago') INTERSECT SELECT contents FROM boxes WHERE warehouse = (SELECT code from warehouses where location = 'New York')
SELECT Contents FROM Boxes EXCEPT SELECT T1.Contents FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = "New York"
SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2 Contents = "Rocks" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2 Contents = "Scissors"
SELECT DISTINCT T1.warehouse FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2 Contents = "Rocks" OR T2.contents = "Scissors"
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Scissors"
SELECT contents , value FROM boxes ORDER BY value
SELECT contents , code FROM boxes ORDER BY value
SELECT Contents , code FROM boxes ORDER BY Value LIMIT 1
SELECT contents , code FROM boxes ORDER BY VALUE LIMIT 1
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT Contents FROM boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE VALUE > (SELECT min(value) FROM boxes WHERE Contents = 'Rocks')
SELECT contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.warehouse , avg(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.warehouse HAVING avg(T2.value) > 150
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(Value) , count(*) FROM boxes
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT max(T1.Value) , T2.Location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Location
SELECT max(T1.Value) , T2.Location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Location
SELECT T1.code , count(*) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code GROUP BY T1.code
SELECT count(*) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE code = "Rocks"
SELECT count(DISTINCT warehouse) FROM boxes
SELECT T2.code , T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT T2.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago'
SELECT T2.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.wharehouse WHERE T1.location = "Chicago"
SELECT count(*) , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT count(*) , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT contents , count(DISTINCT warehouse) FROM boxes GROUP BY contents
SELECT code FROM warehouses WHERE capacity = 0
SELECT T1.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE count(*) > capacity
SELECT sum(value) FROM boxes WHERE code NOT IN (SELECT warehouse FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT home_confidence FROM university
SELECT DISTINCT home_conf FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT count(*) , home_confERENCE FROM university GROUP BY home_confERENCE
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conf FROM university GROUP BY home_conf HAVING avg(enrollment) > 2000
SELECT home_conf FROM university GROUP BY home_conf HAVING avg(enrollment) > 2000
SELECT home_confidence FROM university GROUP BY home_confidence ORDER BY sum(enrollment) ASC LIMIT 1
SELECT home_conf FROM university GROUP BY home_conf ORDER BY enrollment LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T2.Major_Name , T3.rank FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T1.Major_ID = T3.Major_ID WHERE T2.University_Name = "Augustana College"
SELECT T2.rank , T1.major_name FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T3.university_id = T2.university_id WHERE T3.university_name = "Augustana College"
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank = 1
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank = 1 ORDER BY t1.university_name
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.rank = 1 GROUP BY t1.university_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Major_ID DESC LIMIT 1 JOIN major AS T3 ON T2.Major_ID = T3.Major_ID GROUP BY T1.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT university_name FROM university EXCEPT SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id WHERE t2.rank = 1
SELECT university_name FROM university EXCEPT SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id ORDER BY t2.rank = 1
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name , Rank FROM university WHERE state = 'WI'
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Research_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point ASC
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank >= 3
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank >= 3
SELECT sum(t1.enrollment) FROM university AS t1 JOIN overall_ranking AS t2 ON t1.University_ID = t2.University_ID WHERE t2.rank <= 5
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT T2.University_Name , T1.Citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY Reputation_point DESC LIMIT 3
SELECT T1.University_Name , T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND enrollment < 3000
SELECT title FROM movies WHERE rating = "null"
SELECT title FROM movies WHERE rating = "null"
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM movies AS T1 JOIN movieaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'PG' OR T1.rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'PG' OR T1.Rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon" OR T1.name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" OR T1.Name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT title FROM Movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM Movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE rating != "null"
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters WHERE Movie != "null"
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT name FROM MovieTheaters WHERE movie = "null"
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1 Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE Rating = 'G'
SELECT title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating = "unrated"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT T2.Name FROM package AS T1 JOIN has_clearance AS T2 ON T1.shipment = T2.shipment JOIN employee AS T3 ON T2.employee = T3.employeeid WHERE T1.weight = (SELECT max(weight) FROM package) ORDER BY T2.Name
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE重量 = (SELECT max(重量) FROM package)
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT sum(weight) FROM package WHERE sender = (SELECT client.accountnumber FROM client WHERE name = "Leo Wong")
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary , POSITION FROM Employee WHERE name = "Turanga Leela"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(Salary) FROM Employee WHERE Position = "Intern"
SELECT avg(Salary) FROM Employee WHERE Position = "Intern"
SELECT LEVEL FROM Has_clearance WHERE Employee = (SELECT Employee FROM Employee WHERE Position = "Physician")
SELECT DISTINCT T1.level FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.employee = T2.employeeID WHERE T2.position = "Physician"
SELECT count(*) FROM PACKAGE WHERE sender = (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT count(*) FROM Package WHERE Sender = (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong")
SELECT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT * FROM PACKAGE WHERE Sender = (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong") OR Recipient = (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong")
SELECT DISTINCT sender , recipient FROM Package WHERE sender = "Leo Wong" OR recipient = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.Name = "John"
SELECT PackageNumber , WEIGHT FROM PACKAGE WHERE Sender = (SELECT AccountNumber FROM Client WHERE Name = "John")
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.sender GROUP BY T1.AccountNumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1
SELECT min(T1.Recipient) , T2.Sender FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber GROUP BY T2.Sender
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name , Coordinates FROM PLANET ORDER BY Name
SELECT name , coordinates FROM planet ORDER BY name
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip J. Fry"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip J. Fry"
SELECT Date FROM SHIPMENT
SELECT Date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T1.Planet = 1 AND T2.Name = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T1.Planet = 1001 AND T2.Name = "Turanga Leela"
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = "Mars"
SELECT T2.name , sum(T1.shipment) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet
SELECT count(*) , T1.name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T2.Planet ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , COUNT(*) FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID GROUP BY T1.Manager
SELECT count(*) , manager FROM shipment GROUP BY manager
SELECT sum(weight) FROM package WHERE shipment.PLANET = "Mars"
SELECT sum(weight) FROM package WHERE Shipment.Planet = "Mars"
SELECT sum(T2.weight) , T1.name FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment GROUP BY T1.planet
SELECT sum(weight) , T1.name FROM package AS T1 JOIN planet AS T2 ON T1.shipment = T2.planetID GROUP BY T1.shipment
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE Sum(T2.Weight) > 30
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2重量 > 30
SELECT T2.PackageNumber FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Planet = "Omicron Persei 8" AND T2.Sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" AND T1.sender = "Zapp Brannigan"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipment WHERE T2.planet = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT PackageNumber , Weight FROM PACKAGE WHERE Weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.please IN ( "Mars" )
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.Planet = "Mars"
SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Omega III"
SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = 1003
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Employee = (SELECT Employee FROM Has_clearance GROUP BY Employee HAVING count(*) = 1)
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T1.Employee = T3.EmployeeID GROUP BY T3.EmployeeID HAVING count(*) = 1
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars")
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , platform_id FROM platform ORDER BY Download_rank ASC LIMIT 1
SELECT Platform_name , Platform_ID FROM platform ORDER BY Download_rank ASC LIMIT 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.Title = "Super Mario World"
SELECT T3.player_name , T3.rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = "Super Mario World"
SELECT DISTINCT T3.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Auburn'
SELECT avg(T3.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT avg(T2.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = 'Asia' OR T1.Market_district = 'USA'
SELECT t1.Title FROM game AS t1 JOIN platform AS t2 ON t1.Platform_ID = t2.Platform_ID WHERE t2.Market_district = 'Asia' OR t2.Market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = 'Oklahoma' OR T3.College = 'Auburn'
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = 'Guard')
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 10000000 OR month_profits_billion = 1000000
SELECT name FROM press WHERE YEAR_profits_billion > 15 || month_profits_billion > 1000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(month_profits_billion) , max(year_profits_billion) , press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT book_series , COUNT(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 1
SELECT title , T1.name , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY sale_amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN author AS T3 ON T1.Author_ID = T3.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T1.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T1.sale_amount) > 1000
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Book_Series DESC LIMIT 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T3.press_id = T2.press_id WHERE T3.name = 'Accor'
SELECT name , year_profits_billion FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM AUTHORS
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT T2.author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_id = 4
SELECT T2.author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT authors.author_name , authors.other_details FROM authors JOIN Documents ON Documents.author_name = authors.author_name WHERE Documents.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T2.author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name GROUP BY T2.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9;
SELECT process_name FROM Business_Processes WHERE process_id = 9 LIMIT 1
SELECT count(*) FROM Process_outcome_code
SELECT process_outcome_code , process_outcome_description FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM documents_process_outcomes
SELECT process_id FROM documents_processes WHERE document_id IN (SELECT document_id FROM documents_processes WHERE process_id IN (SELECT process_id FROM staff_in_processes))
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Staff_in_Processes
SELECT process_id FROM Business_processes EXCEPT SELECT process_id FROM Documents_processes
SELECT T3.process_outcome_description , T3.process_status_description FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN process_outcomes AS T3 ON T2.process_outcome_code = T3.process_outcome_code JOIN process_status AS T4 ON T2.process_status_code = T4.process_status_code WHERE T1.document_id = 0
SELECT T2.process_name FROM documents AS T1 JOIN business_processes AS T2 ON T1.document_id = T2.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_Processes GROUP BY process_id
SELECT count(*) FROM documents_processes AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id AND T1.process_id = T2.process_id WHERE T1.process_outcome_code = "Success" AND T2.staff_id = 9
SELECT staff_id , count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT count(*) FROM agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agendas
SELECT agency_id , agency_details FROM Agreements
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.client_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices WHERE client_id IN (SELECT client_id FROM Clients)
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status , T1.client_id , T1.agency_details , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_status , invoice_details , T1.client_id , T1.client_details , T2.agency_id , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T1.payment_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT payment_id , payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM Staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT count(*) , meeting_outcome FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , T1.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T1.client_id FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , count(*) FROM Staff_in_Meetings AS T2 JOIN Meetings AS T1 ON T2.meeting_id = T1.meeting_id GROUP BY T1.meeting_id
SELECT count(*) , T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM staff_in_meetings )
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM staff_in_meetings )
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T2.staff_id , T2.staff_details FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.meeting_type = 'P' AND T2.staff_details LIKE '%s%'
SELECT T2.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING count(*) >= 1 INTERSECT SELECT staff_id FROM Staff WHERE staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T4.client_details , T5.staff_details FROM Meetings AS T1 JOIN Clients AS T4 JOIN Staff_in_Meetings AS T5 ON T1.meeting_id = T5.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T1.client_id , T1.staff_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
