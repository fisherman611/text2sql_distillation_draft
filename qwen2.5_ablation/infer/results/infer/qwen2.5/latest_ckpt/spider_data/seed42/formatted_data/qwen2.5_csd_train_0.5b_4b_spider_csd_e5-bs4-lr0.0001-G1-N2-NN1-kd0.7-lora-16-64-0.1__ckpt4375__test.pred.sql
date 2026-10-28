SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manufacturer != 'Nike'
SELECT name FROM club WHERE manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
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
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T2.customer_id , T1.customer_first_name , T1.customer_last_name FROM orders AS T1 JOIN customer_permanent_payments AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 2 INTERSECT SELECT T2.customer_id , T1.customer_first_name , T1.customer_last_name FROM orders AS T1 JOIN customer_permanent_payments AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 3
SELECT T2.order_id , T2.order_status_code , count(*) FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT count(*) , T2.order_status_code , T1.order_id FROM Order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 1 UNION SELECT date_order_placed FROM orders ORDER BY date_order_placed ASC LIMIT 1
SELECT T2.date_order_placed , T1.product_name FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 1 UNION SELECT date_order_placed FROM order_items GROUP BY date_order_placed HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T2.product_id , T2.product_name , T2.product_price , T2.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T2.order_id , T2.date_order_placed FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.order_id , SUM(T1.product_price) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.order_id ORDER BY SUM(T1.product_price) ASC LIMIT 1
SELECT T2.date_order_placed , sum(T1.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code , count(*) FROM customers GROUP BY gender_code
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code
SELECT T2.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T1.payment_method_code FROM customers AS T1 JOIN customers_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN invoices AS T3 ON T1.customer_id = T3.customer_id
SELECT T2.invoice_status_code , T1.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN products AS T3 ON T3.product_id = T2.shipment_items.product_id
SELECT T2.invoice_status_code , T1.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN shippers AS T3 ON T2.shipment_id = T3.shipment_id
SELECT T2.product_name , T1.shipment_date FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T2.product_name , T1.shipment_date FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T2.order_status_code , T3.shipment_tracking_number FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T2.order_item_id = T3.order_item_id
SELECT T2.order_status_code , T3.shipment_tracking_number FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T2.order_item_id = T3.order_item_id
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN order_items AS T3 ON T2.order_id = T3.order_id ORDER BY T3.date_order_placed
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.gender_code = "Female"
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id WHERE T1.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT invoice_status_code FROM orders WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT T2.order_id , T2.date_order_placed , SUM(T1.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT T2.order_id , T1.date_order_placed , sum(T1.amount_paid) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_status_code) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE ' +12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size , product_price FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = "USA"
SELECT address_line_1 , town_city , county FROM customers WHERE country = "United States"
SELECT T2.customer_first_name , T3.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id
SELECT T3.customer_first_name , T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id WHERE T1.gender_code = "Male"
SELECT count(*) FROM shipments
SELECT count(DISTINCT product_id) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address , town_city , county FROM customers WHERE customer_gender_code = (SELECT customer_gender_code FROM customers GROUP BY customer_gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoicenum FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T2.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE name LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name , t1.digital_terrestrial_channel FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id HAVING count(*) > 1
SELECT t1.name , t3.channel_id FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN channel AS t3 ON t2.channel_id = t3.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN ( SELECT channel_id FROM program )
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE t1.title = 'Dracula'
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id JOIN director_admin AS T3 ON T1.director_id = T3.director_id WHERE T1.age < 40 INTERSECT SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id JOIN director_admin AS T3 ON T1.director_id = T3.director_id WHERE T1.age > 60
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE T2.name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT affiliation , count(*) FROM city_channel GROUP BY affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T3.transmitter , T1.city FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.id
SELECT T1.transmitter , T3.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel_radio AS T3 ON T2.id = T3.city_channel_id ORDER BY T1.ERP_kW DESC
SELECT T1.transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.transmitter
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT MODEL FROM vehicle WHERE Top_Speed > 6000 AND POWER > 6000
SELECT MODEL FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT T1.Name , T2.Driver_ID FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T2.Vehicle_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(DISTINCT T1.name) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.Vehicle_ID WHERE T3.Build_Year = 2012
SELECT count(DISTINCT T1.Name) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.Vehicle_ID WHERE T3.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.Name FROM DRIVER AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT MODEL FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.vehicle_id , T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) >= 2 UNION SELECT T1.vehicle_id , T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.builder = "Ziyang"
SELECT T1.Vehicle_ID , T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T3.Vehicle_ID , T4.Build_Year FROM vehicle AS T3 JOIN vehicle_driver AS T4 ON T3.Vehicle_ID = T4.Vehicle_ID WHERE T4.Builder = "Ziyang"
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.vehicle_id HAVING COUNT(*) > 2 UNION SELECT T3.driver_id , T3.model FROM driver AS T3 JOIN vehicle_driver AS T4 ON T3.driver_id = T4.driver_id WHERE T3.Name = "Jeff Gordon"
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.driver_id WHERE T4.Name = "Jeff Gordon"
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name ASC
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver WHERE vehicle_id NOT IN ( SELECT vehicle_id FROM vehicle ) )
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM EXAMS
SELECT count(*) FROM EXAMS
SELECT DISTINCT subject_code FROM EXAMS ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT exam_date , exam_name FROM exams WHERE subject_code != "Database"
SELECT Exam_Date FROM EXAMS WHERE subject_code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM EXAMS WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_code , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_code
SELECT TYPE_of_Question_Code , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN VALID_ANSWER_TEXT AS T2 ON T1.Valid_Answer_Text = T2.Question_Text ORDER BY COUNT(*) DESC
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_Text = T2.Valid_Answer_Text GROUP BY T1.Satisfactory_YN ORDER BY COUNT(*) DESC
SELECT T2.First_Name , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.First_Name , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.First_Name FROM STUDENTS AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM VALID_ANSWERS GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.valid_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T2.valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM STUDENTS WHERE Gender_MFU != "M"
SELECT Last_Name FROM STUDENTS WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT gender_mfu , count(*) FROM students GROUP BY gender_mfu
SELECT Last_Name FROM STUDENTS WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM STUDENTS WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM STUDENTS EXCEPT SELECT T1.First_Name FROM STUDENTS AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT First_Name FROM STUDENTS EXCEPT SELECT T1.First_Name FROM STUDENTS AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_Text = T2.Valid_Answer_Text WHERE T2.Comments = "Normal" INTERSECT SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_Text = T2.Valid_Answer_Text WHERE T2.Comments = "Absent"
SELECT T2.Satisfactory_YN FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T1.comments = "Normal" INTERSECT SELECT T2.Satisfactory_YN FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T1.comments = "Absent"
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM students
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
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price
SELECT product_name FROM products ORDER BY product_price
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code
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
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1)
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT T1.product_id , T2.product_type_code FROM products AS T1 JOIN products AS T2 ON T1.product_type_code = T2.product_type_code ORDER BY T1.product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Jeromy'
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Jeromy'
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_type_code = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = "Monitor"
SELECT count(DISTINCT T1.customer_id) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = 'Monitor Product'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT t1.order_date , t2.order_id FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t2.order_id HAVING sum(t2.order_quantity) > 6 UNION SELECT t1.order_date , t2.order_id FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t2.order_id HAVING count(*) > 3
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 UNION SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T2.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Capital , T2.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Address , T1.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Address , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT count(*) , T1.region_id FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id WHERE T1.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id GROUP BY t2.service_id HAVING count(*) > 3
SELECT t2.service_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions AS T1 JOIN service_id AS T2 ON T1.service_id = T2.service_id)
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.service_id = (SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1)
SELECT count(DISTINCT customers_details) , count(DISTINCT service_details) FROM customers_and_services
SELECT count(*) , sum(t2.customers_and_services_details) FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t3.service_id = t2.service_id WHERE t1.customer_details = "Hardy Kutch" OR t2.status_code = "good"
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" OR t2.services_and_channels_details LIKE "%good%"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t3.service_id = t2.service_id WHERE t1.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT t3.Services_and_Channels_Details FROM channels AS t1 JOIN customer_interactions AS t2 ON t1.channel_id = t2.channel_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.channel_details = "15 ij"
SELECT t3.services_details FROM channels AS t1 JOIN customer_interactions AS t2 ON t1.channel_id = t2.channel_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details LIKE "%bad%"
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id WHERE t2.status_code = "Stuck" AND t2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Successful'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.customer_integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T2.integration_platform_details = "Fail"
SELECT customers_and_services_details FROM customer_interactions EXCEPT SELECT t1.customers_and_services_details FROM customer_interactions AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT t3.customer_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t1.customer_id = t3.customer_id WHERE t2.service_details = "unsatisfied"
SELECT t3.service_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id JOIN analytical_layer AS t3 ON t1.customers_and_services_id = t3.customers_and_services_id WHERE t3.pattern_recognition = "unsatisfied"
SELECT count(*) FROM Vehicles;
SELECT count(*) FROM Vehicles;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , annual_fuel_cost FROM Vehicles WHERE model_year = 2013 OR model_year = 2014
SELECT name , TYPE_of_powertrain , annual_fuel_cost FROM Vehicles WHERE MODEL_year = 2013 OR MODEL_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T2.name , sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T2.name , sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN ( SELECT vehicles_id FROM renting_history )
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY sum(total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY sum(total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN_DEMATATIONS AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN_DEMATATIONS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details HAVING count(*) < 2
SELECT T2.teacher_details FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE class_details LIKE '%net%'
SELECT T2.teacher_details FROM CLASSAS AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM CLASSAS AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id UNION SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id UNION SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.teacher_details , T1.teacher_id FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_details , T1.teacher_id FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_type_description FROM Detention
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_details FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.address_id
SELECT T2.student_details , T3.address_details FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T1.student_id = T3.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id
SELECT T2.bio_data , T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count) , T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(T1.behaviour_monitoring_details) DESC LIMIT 1
SELECT * FROM Students WHERE student_id NOT IN ( SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details HAVING count(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_description , T2.event_type_code FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_description , T2.achievement_type_code FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM ( SELECT T2.teacher_id FROM students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN ( SELECT T1.student_id FROM students AS T1 JOIN achievements AS T2 ON T1.student_id = T2.student_id ) }
SELECT count(*) FROM ( SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN ( SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id ) )
SELECT date_of_transcript , transcript_details FROM transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.achievement_type_description , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.achievement_type_description , T2.date_of_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM STUDENTS WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T2.teacher_details , T1.student_details FROM CLASSIFICATIONS AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.teacher_details , T1.student_details FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*) , T2.teacher_id FROM CLASS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_id , count(*) FROM CLASS AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM DETENTION GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.biographical_data , T2.other_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM STUDENTS AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM_CLASSES AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM detention
SELECT count(DISTINCT student_id) FROM detention
SELECT T1.student_id , T2.address_type_description FROM Students_addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_code , T2.address_details FROM addresses AS T1 JOIN students_addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students WHERE student_id IN (SELECT student_id FROM Student_Events WHERE event_type_code = "Student Loan") EXCEPT SELECT bio_data FROM Students WHERE student_id IN (SELECT student_id FROM Student_Events WHERE event_type_code = "Event")
SELECT bio_data FROM STUDENTS WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from , T1.date_to FROM Students_addresses AS T1 JOIN Transcripts AS T2 ON T1.address_id = T2.address_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1
SELECT datetime_detention_start FROM Detention
SELECT name FROM AUTHOR
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT name , address FROM client ORDER BY name
SELECT name , address FROM client ORDER BY name
SELECT T1.title , T2.name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.isbn = T2.isbn JOIN Author AS T3 ON T2.author = T3.idauthor
SELECT title , author FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT idorder , nameclient FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.Name , COUNT(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.Name
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT count(*) , T1.isbn FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT sum(amount) , isbn FROM Books_order GROUP BY isbn
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T2.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idorder HAVING count(*) >= 1
SELECT DISTINCT idclient FROM orders
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T2.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE ISBN NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT T2.SalePrice FROM Author_Book AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T1.Author = T3.idauthor WHERE T3.Name = "Plato"
SELECT T2.SalePrice FROM Author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T1.author = T3.idauthor WHERE T3.name = "Plato"
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE purchaseprice < (SELECT avg(purchaseprice) FROM book) AND author = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = "Plato" AND T1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T1.title = "Pride and Prejudice"
SELECT T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author WHERE T2.title = 'Pride and Prejudice'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT count(*) FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idbook WHERE T2.title = 'Pride and Prejudice'
SELECT idorder FROM orders WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM orders WHERE title = "The Little Prince"
SELECT idorder FROM books ORDER BY title LIMIT 2 WHERE title = 'Pride and Prejudice' INTERSECT SELECT idorder FROM books ORDER BY title LIMIT 2 WHERE title = 'The Little Prince'
SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN orders AS T3 ON T1.idorder = T3.idorder WHERE T3.name = 'Peter Doe' INTERSECT SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN orders AS T3 ON T1.idorder = T3.idorder WHERE T3.name = 'James Smith'
SELECT T2.isbn FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T1.name = 'Peter Doe' INTERSECT SELECT T2.isbn FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T1.name = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T1.idclient = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = "Peter Doe" EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = "James Smith"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T2.idorder WHERE T3.title = "Pride and Prejudice" AND T2.dateorder = (SELECT max(dateorder) FROM orders)
SELECT count(*) FROM book
SELECT title FROM book ORDER BY title ASC
SELECT title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) FROM book
SELECT title FROM book WHERE TYPE != 'Poet'
SELECT avg(Rating) FROM review
SELECT T1.title , T2.rating FROM book AS T1 JOIN review AS T2 ON T1.book_id = T2.book_id
SELECT Rating FROM review ORDER BY Chapters DESC LIMIT 1
SELECT rank FROM review ORDER BY Pages ASC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN review AS T2 ON T1.book_id = T2.book_id ORDER BY T2.rating DESC LIMIT 1
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.title , T2.audio FROM book AS T1 JOIN review AS T2 ON T1.book_id = T2.book_id GROUP BY T2.book_id ORDER BY T2.readers_in_million DESC
SELECT count(*) FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE nationality = 'England' OR nationalitity = 'Australia'
SELECT name FROM customer WHERE nationality = 'England' OR nationality = 'Australia'
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Card_Credit , LEVEL_of_Membership FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN customer_order AS T3 ON T1.Customer_ID = T3.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN customer_order AS T3 ON T1.Customer_ID = T3.Customer_ID ORDER BY T3.Quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name ORDER BY sum(T2.Quantity)
SELECT T1.Name , SUM(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name HAVING SUM(T1.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name , nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T3.Club_Name , T2.Club_Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T3.Club_ID = T1.Club_ID
SELECT t2.club_name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t1.overall_ranking > 100
SELECT t2.club_name FROM club_leader AS t1 JOIN club AS t2 ON t1.club_id = t2.club_id WHERE t1.year_join < 2018
SELECT t2.name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t1.club_name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id
SELECT T1.collecrtion_details FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = "Top collection"
SELECT * FROM Collection_subsets WHERE collection_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM Document_Objects
SELECT document_object_id FROM document_objects
SELECT T1.Parent_Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Owner = "Marlin"
SELECT document_object_id FROM document_objects WHERE OWNER = 'Marlin'
SELECT OWNER FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN_collections AS T2 JOIN COLLECTION_SUBSET_MEMBERS AS T3 ON T1.document_object_id = T3.document_object_id AND T2.parent_collection_id = T3.parent_collection_id AND T2.collection_name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = "Marlin"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_document_object_id = T2.Parent_document_object_id WHERE T1.Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM document_objects WHERE OWNER = "Marlin"
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT T1.Parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.Parent_document_object_id
SELECT count(*) , T1.Parent_document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.Parent_document_object_id
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT T2.parent_collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = "Nice"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Nice"
SELECT collection_name FROM collections EXCEPT SELECT t1.collection_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id
SELECT collection_name FROM collections EXCEPT SELECT t1.collection_name FROM collections AS t1 JOIN collections AS t2 ON t1.parent_collection_id = t2.collection_id
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = "Ransom"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T1.owner = "Ransom"
SELECT T1.collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN_collections_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.Collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN_collections_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT T1.document_object_id , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT count(*) , t1.document_object_id FROM document_subset_members AS t1 JOIN document_objects AS t2 ON t1.related_document_object_id = t2.document_object_id GROUP BY t1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Braeden"
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = "Braeden"
SELECT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = "Braeden"
SELECT DISTINCT t1.document_subset_name FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t3.owner = "Braeden"
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_subset_members GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_Subsets GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(*) FROM Document_Subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name , T2.document_object_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T2.document_object_id FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.document_subset_id = T2.collection_id
SELECT T2.collection_name FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.owner = "Ransom"
SELECT T2.collection_name FROM document_objects AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.owner = "Ransom"
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.collection_id = "Best"
SELECT count(*) FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id WHERE t1.collection_name = "Best"
SELECT T2.collection_name , T1.collection_id , count(*) FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best" GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id FROM document_subset_members AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.collection_id WHERE T2.year = 2000 AND T2.collection_name = "Best"
SELECT DISTINCT T1.document_object_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = "Best for 2000" AND T1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" EXCEPT SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND YEAR (T2.year) = 2000
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" EXCEPT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best for 2000"
SELECT document_subset_id FROM document_subsets WHERE document_subset_name = "Best" UNION SELECT document_subset_id FROM document_subsets WHERE document_subset_name = "Best"
SELECT DISTINCT T1.document_object_id FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000' UNION SELECT DISTINCT T1.document_object_id FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.collection_id = "Best"
SELECT count(*) FROM COLLECTION_SUBSETS WHERE collection_subset_name = "Best"
SELECT count(DISTINCT collection_id) FROM collections WHERE collection_name = "Best"
SELECT T2.collection_subset_name FROM Collection_subsets AS T1 JOIN Collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = "Best in"
SELECT T1.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'english'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score )
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2participant_id JOIN songs AS T3 ON T3.id = T2songs_id WHERE T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2Songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2Songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city WHERE country = 'country'
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
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
SELECT fname , lname FROM student WHERE city_code IN (SELECT T1.city_code FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD")
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT count(*) FROM student WHERE city_code = 'China'
SELECT fname , major FROM student WHERE city_code IN (SELECT city_code FROM city WHERE state = 'MD' AND country = 'USA') AND city_name = 'Baltimore'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT t3.state FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code JOIN direct_distance AS t3 ON t2.city_code = t3.city1_code GROUP BY t2.state ORDER BY count(*) DESC LIMIT 1
SELECT t3.state FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code JOIN direct_distance AS t3 ON t2.city_code = t3.city1_code GROUP BY t2.state ORDER BY count(*) DESC LIMIT 1
SELECT T3.country FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code JOIN direct_distance AS T3 ON T2.city_code = T3.city1_code GROUP BY T2.country ORDER BY count(*) LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T3.city_name FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code JOIN direct_distance AS T3 ON T1.city_code = T3.city1_code GROUP BY T2.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM student EXCEPT SELECT StuID FROM student WHERE city_code = 'USA'
SELECT StuID FROM student EXCEPT SELECT StuID FROM student WHERE city_code = 'USA'
SELECT StuID FROM student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM STUDENT WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code , max(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T2.city2_code
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code ORDER BY max(T2.distance) DESC LIMIT 1
SELECT T3.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T1.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 GROUP BY T1.city_code HAVING count(*) >= 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000
SELECT sum(distance) FROM direct_distance WHERE city1_code = 'BAL'
SELECT sum(distance) FROM direct_distance WHERE city1_code = 'BAL'
SELECT avg(distance) FROM direct_distance WHERE city1_code = 'Boston'
SELECT avg(distance) FROM direct_distance WHERE city1_code NOT IN (SELECT city_code FROM city WHERE city_name = 'Boston')
SELECT t3.city_name FROM direct_distance AS t1 JOIN city AS t2 ON t1.city1_code = t2.city_code JOIN student AS t3 ON t1.city2_code = t3.city_code WHERE t3.city_code = 'Chicago' ORDER BY t1.distance LIMIT 1
SELECT t3.city_name FROM direct_distance AS t1 JOIN city AS t2 ON t1.city1_code = t2.city_code JOIN student AS t3 ON t1.city2_code = t3.city_code WHERE t3.city_code = 'Chicago' ORDER BY t1.distance LIMIT 1
SELECT t3.city_name FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code JOIN city AS t3 ON t1.city1_code = t3.city_code WHERE t2.state = 'MA' AND t1.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code WHERE t2.city1_code = 'Boston' ORDER BY t2.distance DESC LIMIT 1
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T3.city_name , avg(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T1.city2_code = T3.city_code GROUP BY T3.city_code
SELECT distance FROM direct_distance WHERE city1_code = "Linda" AND city2_code = "Smith" UNION SELECT distance FROM direct_distance WHERE city1_code = "Tracy" AND city2_code = "Kim"
SELECT T3.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city_code = T3.city_code WHERE T1.city_name = "Linda Smith" INTERSECT SELECT T3.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city_code = T3.city_code WHERE T1.city_name = "Tracy Kim"
SELECT fname , lname FROM student WHERE StuID IN (SELECT StuID FROM direct_distance WHERE city1_code = 'Linda' AND city2_code = 'Smith')
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = "Linda Smith" ORDER BY T1.distance DESC LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T3.state FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.fname = "Linda"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.sid = 1
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' OR color = 'blue')
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'Red' OR T2.color = 'Blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM boats WHERE color = 'red' OR color = 'blue')
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' INTERSECT SELECT bid FROM boats WHERE color = 'blue')
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM boats WHERE color = "red") INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM boats WHERE color = "blue")
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "blue"
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = "red" INTERSECT SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = "Luis")
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = "Luis")
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name != "Luis")
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3
SELECT name , age FROM sailors WHERE age = (SELECT max(age) FROM sailors)
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 50 GROUP BY T2.name
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM sailors WHERE rating > 50) GROUP BY T2.name
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T2.name
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T2.name
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = "Red Boat" GROUP BY T1.rating
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = "Red" GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE bid IN (SELECT bid FROM reserves WHERE color = "red") )
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE bid = 'red boat')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T2.name FROM reserves AS T1 JOIN ships AS T2 ON T1.sid = T2.sid WHERE T1.bid = "Melon"
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "Melon";
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) <= 2
SELECT CLASS , COUNT(*) FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT CLASS , COUNT(*) FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earmaps FROM headphone GROUP BY Earmaps ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpad FROM headphone EXCEPT SELECT Earpad FROM headphone WHERE Construction = 'Plastic'
SELECT DISTINCT earpads FROM headphone WHERE Construction != "Plastic"
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store
SELECT neighborhood , count(*) FROM store GROUP BY neighborhood
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT T2.Name , COUNT(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name , SUM(T2.Quantity) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T1.Store_ID HAVING COUNT(*) >= 1
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT neighborhood FROM store EXCEPT SELECT t2.neighborhood FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id
SELECT neighborhood FROM store EXCEPT SELECT t2.neighborhood FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id WHERE model = 'headphones'
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM Paper
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = "NAACL" AND YEAR = 2000
SELECT count(*) FROM paper WHERE venue = "NAACL" AND YEAR = 2000
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University' AND T1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T3.title , T3.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Harvard University'
SELECT T3.title , T3.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Harvard University'
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown"
SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Stanford University") INTERSECT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Columbia University")
SELECT T3.title , T3.paper_id FROM affiliation AS T1 JOIN citation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Stanford" INTERSECT SELECT T3.title , T3.paper_id FROM affiliation AS T1 JOIN citation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Columbia University"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen@McKeown.com" INTERSECT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Rambow" AND T1.email = "Owen@Rambow.com"
SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen" INTERSECT SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow" AND T2.author_id = "Owen"
SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" EXCEPT SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow"
SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" EXCEPT SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow"
SELECT T3.title , T3.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" OR T1.name = "Rambow , Owen"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" OR T1.name = "Rambow , Owen"
SELECT T2.name , count(*) FROM Author_list AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name ORDER BY count(*) DESC
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*)
SELECT T2.name FROM Author_list AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 50
SELECT T2.name FROM Author_list AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 50
SELECT T2.name FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T2.name FROMAuthor AS T1 JOINAuthor_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM Paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = (SELECT paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.paper_id = T4.paper_id WHERE T4.title = "A00-1002")
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT T2.title , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM authors AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.paper_id IN ( SELECT T3.paper_id FROM authors AS T3 JOIN paper AS T4 ON T3.author_id = T4.author_id WHERE T4.title = "Kathleen")
SELECT count(*) FROM authors AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.paper_id IN ( SELECT T3.paper_id FROM authors AS T3 JOIN paper AS T4 ON T3.author_id = T4.author_id WHERE T4.title = "Kathleen")
SELECT count(*) FROM authors AS T1 JOIN citation AS T2 ON T1.author_id = t2.author_id WHERE T1.name = "McKeown" AND T2.paper_id IN ( SELECT T3.paper_id FROM authors AS T3 JOIN paper AS T4 ON T3.author_id = T4.author_id WHERE T4.title = "Kathleen")
SELECT count(*) FROM authors AS T1 JOIN citations AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.cited_paper_id IN ( SELECT T3.paper_id FROM authors AS T3 JOIN paper AS T4 ON T3.author_id = T4.author_id WHERE T4.title = "Kathleen")
SELECT T2.name , count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.venue , T2.year FROM Author AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown , Kathleen"
SELECT T2.venue , T2.year FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T1.email = "kathleen@smith.com"
SELECT venue , YEAR FROM paper WHERE name = "Columbia University"
SELECT venue , YEAR FROM paper WHERE name = "Columbia University"
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM Author AS t1 JOIN Author_list AS t2 ON t1.author_id = t2.author_id JOIN Paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE YEAR = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM Paper AS T1 JOIN Affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year >= 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year >= 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Stanford University" AND T1.year BETWEEN 2000 AND 2009
SELECT count(*) FROM Paper WHERE YEAR BETWEEN 2000 AND 2009 AND affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Stanford University")
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen"
SELECT count(*) FROM collaboration AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'McKeown' AND T1.collaborator_id = T2.collaborator_id
SELECT T1.name FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND count(*) = (SELECT max(count*) FROM author_list AS T3 JOIN citation AS T4 ON T3.author_id = T4.author_id JOIN paper AS T5 ON T4.paper_id = T5.paper_id WHERE T5.title = "Co-authoring with Kathleen Mckeown")
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T2.author_id = 'Mckeown' AND T3.title LIKE '%paper%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT paper_id FROM citation )
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , C1.year FROM Paper AS T1 JOIN Conference AS T2 ON T1.venue = T2.venue GROUP BY T1.year
SELECT venue , YEAR , count(*) FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list GROUP BY author_id HAVING avg(cited_paper_id) > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE cited_paper_id IN ( SELECT paper_id FROM citation GROUP BY paper_id HAVING max(citation) > 50 ) )
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = "NAACL" INTERSECT SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = "ACL"
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = 'NAACL' INTERSECT SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = 'ACL'
SELECT name FROM Author EXCEPT SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = "ACL"
SELECT name FROM AUTHOR EXCEPT SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = 'ACL'
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT count(*) , T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = "United States"
SELECT max(Age) , min(Age) FROM staff
SELECT T2.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID WHERE T2.staff_id IN (SELECT staff_id FROM staff WHERE nationality = 'Canada')
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Academic' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Nursing'
SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID WHERE T2.role = 'participant' AND T1.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID WHERE T2.role = 'participant' AND T1.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year >= 2003 OR T2.year <= 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.Conference_Name , T1.Year , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY COUNT(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name = 'ACL') )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name = 'ACL') )
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = "Piper Cub"
SELECT t2.location FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t1.plane_name = "F-14 Fighter"
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT T2.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = "B-52 Bomber"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.bomber_model = "B-52"
SELECT t1.pilot_name FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name ORDER BY t2.location LIMIT 1
SELECT t1.pilot_name FROM pilot_skills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t2 plane_name = "Piper Cub" ORDER BY t1.age LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills WHERE plane_name IN (SELECT T2.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Chicago')
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT T2.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND now() - T1.age >= 0
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills WHERE plane_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT T2.plane_type FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.pilot_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT T2.pilot_name , T2.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 OR T1.pilot_name LIKE "%Piper Cub%" UNION SELECT pilot_name , age FROM pilotskills WHERE age < 30 AND plane_name = "F-14 Fighter"
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN hull AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 OR T1.age < 30 INTERSECT SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub'
SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1(plane_name) = "Piper Cub" EXCEPT SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = "B-52 Bomber"
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.country_code = 'USA' AND T2.plane_name != 'B-52 Bomber' INTERSECT SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.country_code = 'USA' AND T2.plane_name == 'Piper Cub'
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name = "B-52 Bomber"
SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plan_name = 'Piper Cub' INTERSECT SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plan_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilotskills
SELECT avg(age) , min(age) FROM pilotskills
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN aircraft_type AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Austin' INTERSECT SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN aircraft_type AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Boston'
SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Austin' INTERSECT SELECT T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Boston'
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plan_name = "Piper Cub" OR T1.plan_name = "F-14 Fighter"
SELECT avg(age) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT avg(T2.age) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*) , T1.plane_type FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_type
SELECT count(*) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT pilot_name , plane_name , max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT plane_name , max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT T1.pilot_name , T2.plane_name , max(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name
SELECT T1.plane_name , max(T2.age) FROM pilotskills AS T1 JOIN aircraftplanes AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT max(age) , pilot_name FROM pilotskills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.city FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.city
SELECT count(*) , T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) , T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T2.age) < 35
SELECT count(*) , T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING avg(T1.age) < 35
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T3.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name JOIN pilot AS T3 ON T1.pilot_name = T3.pilot_name ORDER BY T3.age LIMIT 1
SELECT T2.pilot_name , T2.age FROM pilotskills AS T1 JOIN aircraftplane AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT t1.pilot_name , t1.age FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE age > ( SELECT max(age) FROM pilot_skills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT max(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills WHERE age < (SELECT max(age) FROM pilotskills WHERE plane_name = "F-14 Fighter")
SELECT count(*) FROM pilotskills WHERE age < (SELECT max(age) FROM pilotskills WHERE plane_name = "F-14 Fighter")
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub")
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub")
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT Government_website , Area_km FROM district ORDER BY Population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(population) FROM district WHERE area_km IN (SELECT max(area_km) FROM district GROUP BY area_km ORDER BY count(*) DESC LIMIT 3)
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT name FROM district WHERE Government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT t3.name FROM spokesman_district AS t1 JOIN district AS t2 ON t1.district_id = t2.district_id JOIN spokesman AS t3 ON t1.spokesman_id = t3.spokesman_id GROUP BY t2.name ORDER BY count(*) DESC LIMIT 1
SELECT T3.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN spokesman_as_district AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T1.Start_year < 2004
SELECT count(*) , T3.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id JOIN district AS T3 ON T2.district_id = T3.district_id GROUP BY T3.district_id
SELECT T3.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.rank_position = 1 INTERSECT SELECT T3.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.rank_position = 2
SELECT T3.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id GROUP BY T3.Name HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN ( SELECT district_id FROM spokesman_district )
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN ( SELECT Spokesman_ID FROM spokesman_district )
SELECT t3.population + t2.population , avg(t3.population) FROM spokesman_district AS t1 JOIN district AS t2 ON t1.district_id = t2.district_id JOIN spokesman AS t3 ON t1.spokesman_id = t3.spokesman_id GROUP BY t3.district_id
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT LOCATION FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title , LOCATION FROM Paintings
SELECT title , LOCATION FROM Paintings
SELECT title , LOCATION FROM sculptures
SELECT T1.title , T2.location FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT DISTINCT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != 'gallery 226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthYear ASC LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthyear ASC LIMIT 1
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = "gallery 240"
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear = (SELECT max(birthyear) FROM artists)
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.birthyear DESC LIMIT 1
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.birthYear < 1850
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T3.location , T3.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'Lithographic' EXCEPT SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'Medium Oil'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Lithographic"
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.medium = "canvas"
SELECT T2.birthYear FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium" AND T2.location = 241
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , T1.medium FROM Paintings AS T1 JOIN Media AS T2 ON T1.medium = T2.mediumGROUP BY T1.medium
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT title FROM paintings WHERE medium = 'oil' AND YEAR > 1910
SELECT DISTINCT painterID FROM paintings WHERE medium = "medium" AND LOCATION = 240
SELECT DISTINCT painterID FROM paintings WHERE medium = "oil" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = "gallery 240")
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE galleryID = 240)
SELECT paintingid FROM paintings ORDER BY YEAR LIMIT 1
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm + width_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT T1.title , T3.title FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 UNION SELECT T2.title , T3.title FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistID = 222
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE YEAR < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM paintings WHERE height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM Paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM Paintings WHERE medium = "on canvas"
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'Oil' AND LOCATION != 'Gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'Oil' AND mediumOn = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid
SELECT height_mm , paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T2.fname , count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T2.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = "gallery 240")
SELECT height_mm , painterID FROM paintings WHERE LOCATION = "gallery 240" ORDER BY width_mm DESC LIMIT 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingID , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR
SELECT T1.paintingID , T1.location , T1.title FROM Paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = 'oil' ORDER BY T1.year
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "paint" EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT painterid FROM sculptures) AND medium = 'paint'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'Canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT T2.driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT constructor FROM driver ORDER BY age
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(age) , min(age) FROM driver
SELECT max(age) , min(age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.driver_name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T3.driver_name , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN driver AS T3 ON T2.enr int = T3.enr_int GROUP BY T3.driver_name
SELECT T2.Race_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.Race_Name
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26
SELECT driver_name FROM driver WHERE constructor != 'Bugatti'
SELECT driver_name FROM driver EXCEPT SELECT driver_name FROM driver WHERE constructor = 'Bugatti'
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM driver GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 'James Hinchcliffe'
SELECT DISTINCT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'James Hinchcliffe'
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
SELECT count(DISTINCT T1.name) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT count(DISTINCT T2.name) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.name
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = 'english'
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T2.id = T1.language_id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T2.id = T1.language_id JOIN countries AS T3 ON T3.id = T1.country_id WHERE T3.overall_score < 90
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T2.id = T1.language_id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T2.id = T1.language_id JOIN countries AS T3 ON T3.id = T1.country_id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM_addresses
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM features WHERE feature_name = "rooftop";
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code WHERE T2.user_category_description LIKE '%Mother%'
SELECT user_category_code FROM Ref_User_categories WHERE user_category_description LIKE "%Mother%"
SELECT T1.first_name FROM USERS AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_type_code = 'Garden'
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.feature_value = 'Garden'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming pool"
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM rooms
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User_searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM user_searches
SELECT search_datetime FROM user_searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses EXCEPT SELECT T1.zip_postcode FROM addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.zip_postcode HAVING count(*) <= 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_id NOT IN ( SELECT T1.property_id FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.address_id HAVING count(*) <= 2 )
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) = 1
SELECT T1.user_id , T2.user_category_code FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T2.age_category_code FROM User_Searches AS T1 JOIN Ref_Age_Categories AS T2 ON T1.search_category_code = T2.age_category_code ORDER BY T1.search_string LIMIT 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.user_category_code = T2.user_category_code ORDER BY T2.search_datetime ASC LIMIT 1
SELECT login_name FROM Users WHERE is_seller = "No" AND is_buyer = "No" AND user_category_code = "Senior Citizen" ORDER BY first_name
SELECT login_name FROM users WHERE is_seller = "No" AND age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM user_searches WHERE is_buyer = 1
SELECT count(*) FROM User_searches WHERE is_buyer = 'Yes'
SELECT date_registered FROM USERS WHERE login_name = "rithe";
SELECT date_registered FROM users WHERE login_name = "ratione";
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Yes'
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Rooms AS T2 ON T1.address_id = T2.property_id WHERE T2.feature_id = "Senior Citizen"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_id WHERE T2.is_seller = "No" AND T2.age_category_code = "Senior"
SELECT count(*) FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY property_id HAVING count(*) >= 2
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT T1.user_id , count(*) FROM users AS T1 JOIN property_photos AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id
SELECT T1.user_id , count(*) FROM users AS T1 JOIN property_photos AS T2 ON T1.user_id = T2.property_id GROUP BY T1.user_id
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_seller = "No" AND T2.user_category_code = "Single mother" UNION SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_buyer = "No" AND T2.user_category_code = "Student"
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_buyer = 'Single Mother' OR T2.is_seller = 'Student'
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN User_searches AS T2 ON T1.address_id = T2.address_id JOIN users AS T3 ON T2.user_id = T3.user_id WHERE T3.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN User_Categories AS T2 ON T1.address_id = T2.user_address_id JOIN Users AS T3 ON T2.user_category_code = T3.user_category_code WHERE T3.first_name = "Robbie"
SELECT T2.first_name , T2.middle_name , T2.last_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT user_id FROM properties )
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT user_id FROM Properties )
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING max(count(*) ) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T1.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T1.bike_id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 )
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.result > '4:21.558'
SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT id FROM bike WHERE material LIKE "%fiber%"
SELECT count(*) , T1.id FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT T2.Flavor , T1.ID FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price = (SELECT max(Price) FROM goods)
SELECT T1.id , T2.flavor FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T2.price DESC LIMIT 1
SELECT T2.flavor , T2.food FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T1.price LIMIT 1
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T1.price LIMIT 1
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = 'Apple'
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.item = T3.id WHERE T3.flavor = "Lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.item = T3.item WHERE T3.flavor = "Lemon"
SELECT T2.food , count(*) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.food
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id GROUP BY T1.id
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = "Bakery" GROUP BY T1.id HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.lastname FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.item JOIN customers AS T3 ON T2.customerid = T3.id WHERE T1.food = "bakery" GROUP BY lastname HAVING count(*) > 10
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2receiptnumber = T3.receiptnumber WHERE T3.food = "bakery" GROUP BY T1.lastname HAVING count(*) > 10
SELECT count(DISTINCT food) FROM goods WHERE flavor = "Cake"
SELECT count(DISTINCT T1.flavor) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "cake"
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food = 'croissant'
SELECT DISTINCT T2.id FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.customerid = 15
SELECT DISTINCT T2.id FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.customerid = 15
SELECT food , avg(price) , max(price) , min(price) FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) FROM goods
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptid = T2.id WHERE T2.flavor = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptid = T2.id WHERE T2.flavor = "Cookie"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.id WHERE T2.Item = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.id WHERE T2.Item = "Cookie"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastName = "LOGAN" AND T2.item = "Croissant"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = "Logan" AND T2.item = "croissant"
SELECT T1.Receiptnumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.item ORDER BY sum(T2.price) DESC LIMIT 1
SELECT T1.Receiptnumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id GROUP BY T2.Item ORDER BY sum(T2.Price) DESC LIMIT 1
SELECT Item FROM items GROUP BY Item ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.item ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT Food , avg(Price) FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricots" AND price < 5
SELECT flavor FROM goods WHERE price > 10
SELECT flavor FROM goods WHERE price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.Price > 13
SELECT DISTINCT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.price > 13
SELECT T2.date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 15
SELECT T1.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.Price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT flavor , price FROM goods WHERE id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT lastname FROM customers ORDER BY lastname
SELECT lastname FROM customers ORDER BY lastname
SELECT id FROM goods WHERE flavor = 'good' ORDER BY id
SELECT DISTINCT id FROM goods ORDER BY id
SELECT T1.Receipt FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = "Apple" OR T2.CustomerId = 12
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = "Smith" OR T1.id = 12 WHERE T2.item.flavor = "Apple"
SELECT max(Date) , Date FROM receipts
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR max(price) > 10
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.receiptnumber = T2.id WHERE T2.Price > 10 UNION SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.receiptnumber = T2.id ORDER BY T1.Date LIMIT 1
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = 'blackberry' OR flavor = 'blueberry'
SELECT avg(price) FROM goods WHERE flavor = 'BlackBerry' OR flavor = 'Blueberry'
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price LIMIT 1
SELECT max(Price) , min(Price) , avg(Price) FROM goods ORDER BY Flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT T1.FirstName , T1.LastName , COUNT(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "Apple" AND T2.food = "Tart"
SELECT T2.firstname , T2.lastname FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Apple"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods EXCEPT SELECT id FROM items WHERE item = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price > (2 * (SELECT avg(price) FROM goods))
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "Cake" ORDER BY T1.flavor
SELECT T2.id , T2.flavor FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T2.flavor
SELECT id FROM items WHERE flavor = "Chocolate" GROUP BY id HAVING count(*) > 10
SELECT T2.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Chocolate" GROUP BY T2.id HAVING count(*) <= 10
SELECT DISTINCT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT DISTINCT flavor FROM goods WHERE food = 'Tart'
SELECT flavor FROM goods EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Tart'
SELECT food FROM goods GROUP BY food ORDER BY count(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.Item ORDER BY count(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.id , T2.flavor FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T2.flavor HAVING avg(T2.Price) > 5
SELECT T1.date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T1.date HAVING sum(T2.price) > 100
SELECT T2.date FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.date HAVING sum(T1.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T2.Driver_ID = "Buddy Arrington"
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
SELECT max(Points) FROM country WHERE Capital = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(Age) FROM country WHERE Official_native_language = "English"
SELECT avg(Age) FROM country WHERE Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM country WHERE Points > 150
SELECT country , T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN ( SELECT Team_ID FROM team_driver )
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Manager , T2.Sponsor FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T2.Manager , T2.Car_Owners FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY founded ASC
SELECT name FROM institution ORDER BY founded
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT affiliation FROM institution WHERE city != "Vancouver"
SELECT affiliation FROM institution WHERE city != 'Vancouver'
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT name FROM institution ORDER BY enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFiliation = "Public"
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT_province FROM institution WHERE founded < 1920 INTERSECT SELECT_province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT province) FROM institution
SELECT * FROM Warehouses;
SELECT * FROM Warehouses;
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT code FROM boxes WHERE warehouse IN (SELECT distinct(warehouse) FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'Chicago' OR t2.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT contents FROM boxes WHERE warehouse IN ( SELECT code FROM warehouses WHERE LOCATION = 'Chicago' ) INTERSECT SELECT contents FROM boxes WHERE warehouse IN ( SELECT code FROM warehouses WHERE LOCATION = 'New York' )
SELECT contents FROM boxes WHERE warehouse = 'Chicago' INTERSECT SELECT contents FROM boxes WHERE warehouse = 'New York'
SELECT DISTINCT contents FROM boxes WHERE code NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT DISTINCT contents FROM boxes EXCEPT SELECT DISTINCT contents FROM boxes WHERE contents LIKE "%New York%"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE contents != "Scissors" AND contents != "Rocks"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE contents = 'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T3.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code JOIN boxes AS T3 ON T1.warehouse = T3.code WHERE T1.contents LIKE '%Rock%' INTERSECT SELECT T3.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code JOIN boxes AS T3 ON T1.warehouse = T3.code WHERE T1.contents LIKE '%Scissors%'
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > ( SELECT max(value) FROM boxes WHERE contents = 'Rocks' )
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.warehouse , avg(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse HAVING avg(T1.value) > 150
SELECT avg(T2.value) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T1.value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM Warehouses
SELECT max(T2.value) , T1.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.location
SELECT T2.location , max(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT Warehouse , count(*) FROM boxes GROUP BY Warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT LOCATION) FROM warehouses WHERE capacity > 1
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE LOCATION = 'Chicago'
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT count(*) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT count(*) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT code FROM warehouses WHERE capacity > (SELECT max(capacity) FROM warehouses)
SELECT T2.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.weight > T2.capacity
SELECT sum(value) FROM boxes WHERE code NOT IN ( SELECT warehouse FROM boxes WHERE LOCATION = 'Chicago' )
SELECT sum(value) FROM boxes WHERE contents != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "Ohio"
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > ( SELECT avg(enrollment) FROM university )
SELECT DISTINCT home_conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT STATE FROM university GROUP BY STATE ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT T1.Home_Conference FROM overall_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id GROUP BY T1.Home_Conference ORDER BY sum(T2.Enrollment) LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.major_name , T1.university_id FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.university_name = "Augustana College"
SELECT T1.rank , T2.major_name FROM major_ranking AS T1 JOIN major AS T2 ON T1.maj_id = T2.maj_id WHERE T2.university_id = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 AND T2.major_id = 'Accounting'
SELECT T2.university_name , T2.city , T2.state FROM major AS T1 JOIN university AS T2 ON T1.maj_id = T2.maj_id WHERE T1.maj_name = "Accounting" ORDER BY T1.rank LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id GROUP BY T1.university_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank_num LIMIT 1
SELECT University_Name FROM university EXCEPT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Code = 'Research' ORDER BY T1.Enrollment
SELECT University_Name FROM university EXCEPT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Accounting" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Urban Education"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Accounting" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Urban Education"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.Research_point DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.Research_point DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.Reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.Rank >= 3 AND T2.Major_ID = "Accounting"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.maj_id = T3.maj_id WHERE T3.rank >= 3 ORDER BY T2.major_name
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Total <= 5
SELECT sum(enrollment) FROM university WHERE rank <= 5
SELECT T1.university_name , T1.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.Reputation_point >= 3
SELECT T1.university_name , T1.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT STATE FROM university WHERE Enrollment < 3000 GROUP BY STATE HAVING COUNT(*) > 2
SELECT STATE FROM university WHERE Enrollment < 3000 GROUP BY STATE HAVING COUNT(*) > 2
SELECT title FROM Movies WHERE rating = "null"
SELECT title FROM Movies WHERE rating = "null"
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.movie IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie HAVING count(*) > 1 )
SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.movie IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie HAVING count(*) > 1 )
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM movietheaters WHERE movie = (SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie HAVING count(*) >= max(count(*) FROM movietheaters)
SELECT count(*) FROM MovieTheaters WHERE Movie = 'Theater'
SELECT count(DISTINCT T2.title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT count(DISTINCT title) FROM MovieTheaters
SELECT count(DISTINCT name) FROM Movietheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT Rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T2.name FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Cinema Odeon' OR T1.name = 'Cinema Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT title FROM movies EXCEPT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT title FROM Movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM Movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code
SELECT name FROM MovieTheaters WHERE movie IN (SELECT code FROM Movie)
SELECT name FROM movietheaters WHERE moviecode NOT IN (SELECT movie FROM movies)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT T2.name FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT title FROM Movies;
SELECT title FROM Movies;
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters GROUP BY movie HAVING count(*) > 1)
SELECT title FROM Movies EXCEPT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT recipient FROM package ORDER BY weight DESC LIMIT 1
SELECT T1.Name FROM CLIENT AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1
SELECT sum(t2.weight) FROM client AS t1 JOIN package AS t2 ON t1.accountnumber = t2.sender WHERE t1.name = "Leo Wong"
SELECT sum(weight) FROM package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong";
SELECT POSITION FROM Employee WHERE Name = "Amy Wong";
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position = "Intern"
SELECT LEVEL FROM has_clearance WHERE POSITION = "Physician"
SELECT DISTINCT T1.Level FROM Has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T2.position = "Physician"
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT packagenumber FROM PACKAGE WHERE sender = "Leo Wong"
SELECT packagenumber FROM PACKAGE WHERE sender = "Leo Wong"
SELECT sender , recipient FROM PACKAGE WHERE sender = "Leo Wong" OR recipient = "Leo Wong"
SELECT DISTINCT T1.packagenumber FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.sender = T2.accountnumber AND T1.recipient = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT contents FROM package WHERE sender = 'John Zoidfarb'
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%' ORDER BY T1.weight DESC LIMIT 1
SELECT t1.packagenumber , t1.weight FROM package AS t1 JOIN client AS t2 ON t1.sender = t2.accountnumber WHERE t2.name LIKE "%John%"
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight LIMIT 3
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight LIMIT 3
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T2.recipient ORDER BY count(*) ASC LIMIT 1
SELECT min(packagenumber) , sender FROM package GROUP BY sender
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name
SELECT ShipmentID FROM Shipment WHERE manager = "Philippe J. Fry"
SELECT T2.ShipmentID FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = 'Mars'
SELECT ShipmentID FROM shipment WHERE Planet = "Mars"
SELECT T2.ShipmentID FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.position = 'Manager' AND T1.planet = 'Mars' AND T2.name = 'Turanga Leela'
SELECT ShipmentID FROM shipment WHERE Planet = "Mars" OR manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 'Mars'
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet GROUP BY T2.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT manager , count(*) FROM shipment GROUP BY manager
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(weight) FROM package WHERE planet = 'Mars'
SELECT sum(t2.weight) FROM planet AS t1 JOIN shipment AS t2 ON t1.planet = t2.planet WHERE t1.name = "Mars"
SELECT T1.name , T2.planet FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet UNION SELECT T1.name , T2.planet FROM planet AS T1 JOIN package AS T2 ON T1.planet = T2.shipment
SELECT T1.name , sum(weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.planetid GROUP BY T1.planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet GROUP BY T2.planet HAVING sum(T2.weight) > 30
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet GROUP BY T2.planet HAVING sum(T2.weight) > 30
SELECT T2.packagenumber FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet WHERE T1.name = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = 'Zapp Brannigan' AND T2.planet = 'Omicron Persei 8'
SELECT T2.packagenumber FROM planet AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet WHERE T1.name = "Omicron Persei" AND T2.manager = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = "Omicron Persei 8" AND T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee WHERE employee NOT IN (SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = 'Mars')
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE planet = 'Mars'
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.planet = "Omega III"
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.planet = "Omega" AND T2.level = 3
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planet = T2.planet GROUP BY T2.planet HAVING count(*) = 1
SELECT T2.name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet JOIN employee AS T3 ON T1.employee = T3.employeeid WHERE T3.position = 'Manager'
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = 'Mars' )
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = 'Mars' )
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T1.game_id = TITLE 'Super Mario World'
SELECT T1.player_name , T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.title = "Super Mario World"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.College = "Auburn"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = "Auburn"
SELECT avg(T2.Units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id WHERE T1.Position = "Guard"
SELECT avg(T2.units_sold_millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id WHERE T1.position = "Guard"
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = 'Asia' OR T2.market_district = 'USA'
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT franchise , COUNT(*) FROM game GROUP BY franchise
SELECT count(*) , franchise FROM game GROUP BY franchise
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise HAVING COUNT(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT player_name FROM player EXCEPT SELECT T2.player_name FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = "Oklahoma" INTERSECT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = "Auburn"
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = 'Oklahoma' OR T3.college = 'Auburn'
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game EXCEPT SELECT T2.title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id WHERE T1.rank_of_the_year = "Guard"
SELECT title FROM game EXCEPT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = 'Guard'
SELECT name FROM press ORDER BY YEAR_Profits_billion DESC
SELECT name FROM press ORDER BY YEAR_Profits_billion DESC
SELECT T2.name FROM press AS T1 JOIN author AS T2 ON T1.press_id = T2.author_id WHERE T1.year_profits_billion > 15 OR T1.month_profits_billion > 1000000
SELECT name FROM press WHERE year_profits_billion > 15 OR month_profits_billion > 1000000
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(yearly_profit_billion) , max(yearly_profit_billion) , press_id FROM press GROUP BY press_id
SELECT T2.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T1.month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT T2.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T1.month_profits_billion LIMIT 1 UNION SELECT T2.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T1.year_profits_billion LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion , year_profits_billion LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion , year_profits_billion LIMIT -1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY release_date DESC
SELECT title FROM book ORDER BY Release_date DESC
SELECT count(*) , book_series FROM book GROUP BY book_series
SELECT book_series , COUNT(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.title , T2.name , T3.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id JOIN author AS T3 ON T1.author_id = T3.author_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T1.title , T2.name , T2.press_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE sale_amount > 1000 GROUP BY T2.press_id
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T1.press_id
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT name FROM author EXCEPT SELECT T2.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T1.name = "Accor"
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM Authors
SELECT author_name , other_details FROM Authors
SELECT other_details FROM AUTHORS WHERE staff_name = "Addison Denesik";
SELECT count(*) FROM Documents
SELECT author_name FROM documents WHERE document_id = 4;
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.staff_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.staff_name = "Bianka Cummings"
SELECT T2.author_name , T2.other_details FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT T2.staff_name FROM Documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.staff_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name GROUP BY T2.staff_name HAVING count(*) >= 2
SELECT count(*) FROM business_processes
SELECT next_process_id , process_name , process_description FROM business_processes WHERE process_id = 9
SELECT T1.process_name FROM business_processes AS T1 JOIN process_outcomes AS T2 ON T1.process_id = T2.process_id WHERE T1.process_id = 9
SELECT count(*) FROM process_outcomes
SELECT process_outcome_code , process_outcome_description FROM process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working";
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct";
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR";
SELECT count(*) FROM Documents_processes
SELECT process_id FROM documents
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM documents EXCEPT SELECT process_id FROM documents_processes
SELECT T1.process_outcome_description , T2.process_status_description FROM documents AS T1 JOIN process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.document_id = 0
SELECT T1.process_name FROM Process_outcomes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id WHERE T2.document_id = "Travel to Brazil"
SELECT T1.process_id , count(*) FROM Documents AS T1 JOIN Documents_processes AS T2 ON T1.document_id = T2.document_id GROUP BY T1.process_id
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.process_id = 9
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Processes AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id
SELECT T1.staff_role_code , count(*) FROM Staff_in_Processes AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id GROUP BY T1.staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT T1.agent_id , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.client_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details , agency_id FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM INVOICES
SELECT count(*) FROM Invoices
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T2.client_details , T3.agent_id , T4.agent_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T3.agency_id = T2.agency_id JOIN Agencies AS T4 ON T4.agency_id = T3.agency_id
SELECT T2.invoice_status , T2.invoice_details , T1.client_id , T1.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id , T2.invoice_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT T2.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T2.invoice_id , count(*) FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id
SELECT count(*) , T1.invoice_id FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT T1.agency_id , count(*) FROM Agencies AS T1 JOIN Staff ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type
SELECT count(*) , meeting_type FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T2.client_id = T3.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT count(*) , T1.meeting_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_meadows )
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_meetings )
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Payments AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 UNION SELECT staff_id FROM staff WHERE staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agent_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Success' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Failed'
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Staff AS T3 ON T2.staff_id = T3.staff_id
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
