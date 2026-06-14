SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player GROUP BY Name ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000 GROUP BY Country HAVING count(*) > 1
SELECT Country FROM player WHERE Earnings > (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Name , Club_ID FROM player
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING max(T2.Wins_count) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY AVG(Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
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
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT date_order_placed FROM orders ORDER BY date_order_placed
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 ORDER BY T1.date_order_placed
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT * FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT sum(T1.product_price) , T1.invoice_number FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN invoices AS T3 ON T3.invoice_number = T1.invoice_number GROUP BY T3.invoice_number ORDER BY sum(T1.product_price) LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T2.gender_code
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T3.product_id = T2.product_id GROUP BY T2.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN order_items AS T2 JOIN orders AS T3 ON T1.order_id = T2.order_id AND T3.order_id = T1.order_id
SELECT T1.status_code , T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.order_id IN (SELECT T1.order_id FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_id = T3.order_id AND T3.order_status_code = '2')
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id WHERE T3.order_status_code = 'Shipped'
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 JOIN customers AS T3 ON T1.product_id = T2.product_id AND T2.customer_id = T3.customer_id WHERE T3.gender_code = "Female"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 JOIN orders AS T3 JOIN customers AS T4 ON T1.product_id = T2.product_id AND T2.order_id = T3.order_id AND T3.customer_id = T4.customer_id WHERE T4.gender_code = "Female"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code != 'Shipped'
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT T1.order_id , T1.date_order_placed , sum(T2.order_item_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods );
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = "USA"
SELECT address_line_1 , town_city , county FROM customers WHERE country = "United States";
SELECT T2.customer_first_name , T1.product_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.product_name ORDER BY count(*) DESC
SELECT T2.customer_first_name , T1.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T3.customer_id = T1.customer_id GROUP BY T1.product_id HAVING count(*) >= 2
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT min(gender_code) FROM customers)
SELECT email_address , town_city , county FROM customers WHERE gender_code NOT IN (SELECT customer_id FROM orders GROUP BY customer_id ORDER BY count(*) LIMIT 1)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING COUNT(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT min(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id HAVING count(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN ( SELECT channel_id FROM program )
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age > 60
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director_admin WHERE director_id = (SELECT director_id FROM director WHERE name = "Hank Baskett") )
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT affiliation , count(*) FROM city_channel GROUP BY affiliation
SELECT max(affiliation) FROM city_channel
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T2.Transmitter , T1.city FROM city_channel AS T1 JOIN radio AS T2 ON T1 Radio_ID = T2 Radio_ID
SELECT T2.Transmitter , T1.station_name FROM city_channel AS T1 JOIN radio AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T2.ERP_kW DESC
SELECT T2.Transmitter , count(*) FROM city_channel AS T1 JOIN radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T2.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT T3.Driver_ID , T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID GROUP BY T3.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996 ORDER BY Top_Speed DESC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT build_year , model , builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T2.Name) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Vehicle_ID = (SELECT Vehicle_ID FROM vehicle WHERE Build_Year = 2012)
SELECT count(DISTINCT driver_id) FROM vehicle_driver WHERE vehicle_id IN (SELECT vehicle_id FROM vehicle WHERE model = 'F1' )
SELECT count(DISTINCT driver_id) FROM vehicle_driver WHERE vehicle_id IN (SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.name = "NASCAR")
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT model , build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT vehicle_id , model FROM vehicle WHERE builder = 'Ziyang' INTERSECT SELECT vehicle_id , model FROM vehicle_driver GROUP BY vehicle_id HAVING COUNT(*) >= 2
SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Driver_ID IN (SELECT Driver_ID FROM driver GROUP BY T1.Driver_ID HAVING COUNT(*) = 2) INTERSECT SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Driver_ID IN (SELECT Driver_ID FROM driver WHERE T3.Build_Year = "2015")
SELECT T3.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon' OR COUNT(*) > 2
SELECT T3.Vehicle_ID , T3.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T2.Name = "Jeff Gordon" OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , count(*) FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT DISTINCT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T2.first_name , T1.date_of_answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T2.first_name , T3.date_of_answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Questions_in_Exams AS T3 ON T1.question_id = T3.question_id
SELECT T2.Email_Address , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Valid_Answer_ID AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T2.first_name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T1.Valid_Answer_Text = (SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T2.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT first_name FROM students EXCEPT SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT first_name FROM students WHERE student_id NOT IN (SELECT student_id FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Student_Answer_Text = T2.Valid_Answer_ID WHERE T2.Comments = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Student_Answer_Text = T2.Valid_Answer_ID WHERE T2.Comments = "Absent"
SELECT TYPE_of_Question_code FROM Questions GROUP BY TYPE_of_Question_code HAVING COUNT(*) >= 3
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
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = "hardware"
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_price = (SELECT max(product_price) FROM products)
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products WHERE product_price = (SELECT min(product_price) FROM products)
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
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
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
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
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.customer_id = (SELECT customer_id FROM customers WHERE customers.customer_name = "Jeromy")
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT t1.customer_id , t1.customer_name , t1.customer_phone , t1.customer_email FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_name = "Monitor" JOIN order_items ON products.product_id = order_items.product_id JOIN customer_orders ON order_items.order_id = customer_orders.order_id
SELECT count(DISTINCT product_id) FROM order_items
SELECT count(*) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T2.order_id HAVING sum(T2.order_quantity) > 3 OR product_type_code > 'food'
SELECT T1.order_id , T2.order_date FROM order_items AS T1 JOIN customer_orders AS T2 ON T1.order_id = T2.order_id WHERE T1.order_quantity > 6 UNION SELECT T1.order_id , T2.order_date FROM order_items AS T1 JOIN customer_orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
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
SELECT Capital , Region_ID FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT t2.Capital FROM building AS t1 JOIN region AS t2 ON t1.Region_ID = t2.Region_ID GROUP BY t1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.capital , t2.region_id FROM region AS t1 JOIN building AS t2 ON t1.region_id = t2.region_id GROUP BY t2.region_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT sum(number_of_stories) FROM building WHERE name = 'Abruzzo'
SELECT sum(number_of_stories) , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = 'Abruzzo' GROUP BY T1.name
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT name , completed_year FROM building ORDER BY number_of_stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Customer_Details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t2.service_id HAVING COUNT(*) > 3
SELECT T3.service_details FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T1.service_id = T3.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers AND count(*) FROM customers_and_services
SELECT DISTINCT t1.customer_details FROM Customers AS t1 JOIN Customers.customer_id AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_details LIKE "%Kutch%"
SELECT DISTINCT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" OR t2.status_code = "Good"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN customers_and_services AS t3 ON t3.customer_id = t1.customer_id WHERE t1.customer_details = "Hardy Kutch" OR t2.status_code = "good"
SELECT T3.Service_Details FROM Customer_Interactions AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Status_Code = "bad" AND T2.Customer_ID = "Hardy Kutch"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN customers_and_services AS t3 ON t3.customer_id = t1.customer_id WHERE t1.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id JOIN channels AS t3 ON t2.channel_id = t3.channel_id WHERE t3.channel_details = "15 ij"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id JOIN channels AS t3 ON t2.channel_id = t3.channel_id WHERE t3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM integration_platform WHERE integration_platform_details LIKE "%successful%"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.service_id = t3.customer_interaction_id WHERE t3.integration_platform_details = 'Failed'
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.integration_platform_details = "Fail"
SELECT * FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT t1.analytical_layer_type_code , count(*) FROM Analytical_layer AS t1 JOIN customers_and_services AS t2 ON t1.customers_and_services_id = t2.customers_and_services_id GROUP BY t1.analytical_layer_type_code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T2.service_details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id WHERE T1.status_code = "unsatisfied"
SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id WHERE t2.status_code = "unsatisfied"
SELECT count(*) FROM vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , Model_year FROM vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , Model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers;
SELECT name , age , membership_credit FROM Customers;
SELECT name , age FROM Customers WHERE membership_credit = (SELECT max(membership_credit) FROM Customers)
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Discount)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id
SELECT Name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT Name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T2.name , T2.Model_year FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY total_hours DESC
SELECT T2.Name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY total_hours DESC
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T1.Type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T2.total_hours > 30
SELECT T2.Name , T2.Type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T3.address_details , T2.bio_data FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Addresses AS T3 ON T1.detention_type_code = T3.address_type_code
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.bio_data , T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 JOIN Students AS T3 ON T1.student_id = T3.student_id
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.bio_data , T1.event_date FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , other_details FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , event_type_code , event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T3.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(DISTINCT teacher_id) FROM Classes WHERE student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T1.teacher_id , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT count(*) , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*) , T1.student_id) , T1.student_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.student_id , T1.student_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T2.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T2.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T2.bio_data , T2.student_details FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN transcripts AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN transcripts AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T2.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(Detention.student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT title , author FROM book AS T1 JOIN author AS T2 ON T1.author IS T2.idauthor
SELECT title , author FROM book AS T1 JOIN Author AS T2 ON T1.author = T2.idauthor
SELECT idorder , T1.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT idorder , T1.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM Author_book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor GROUP BY T2.idauthor
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT isbn , count(*) FROM Books_order GROUP BY isbn
SELECT T1.isbn , count(*) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT isbn , sum(amount) FROM Books_order GROUP BY isbn
SELECT T3.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder JOIN Book AS T3 ON T1.isbn = T3.isbn GROUP BY T3.isbn
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn JOIN books_order AS t3 ON t2.isbn = t3.isbn GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.ISBN = t2.ISBN ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T3.idorder = T2.idorder
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT count(DISTINCT idclient) FROM orders
SELECT T1.name , count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT idclient , count(*) FROM orders GROUP BY idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT idclient , sum(amount) FROM Books_order GROUP BY idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM book
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
SELECT saleprice FROM book WHERE title IN (SELECT t1.title FROM author_book AS t1 JOIN author AS t2 ON t1.author = t2.idauthor WHERE t2.name = 'Plato')
SELECT saleprice FROM book WHERE author = 'Plato'
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.author IS T2.idauthor WHERE T2.name = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT title FROM book AS T1 JOIN Author AS T2 ON T1.author IS T2.idauthor WHERE T2.name = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE author = 'Plato' AND purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT title FROM book WHERE author = 'Plato' AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM author_book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor JOIN book AS T3 ON T1.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T1.title = 'Pride and Prejudice'
SELECT T1.title FROM book AS T1 JOIN Author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books_order AS T3 ON T1.idorder = T3.idorder JOIN author_book AS T4 ON T4.isbn = T3.isbn WHERE T4.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN author_book AS T4 ON T4.ISBN = T3.ISBN WHERE T4.title = 'Pride and Prejudice'
SELECT idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE title = 'Pride and Prejudice' INTERSECT SELECT idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE title = 'The Little Prince'
SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'The Little Prince'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT T1.isbn FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN client AS T3 ON T2.isbn = T3.idclient WHERE T3.name = "Peter" AND T3.name = "James" ORDER BY T1.isbn
SELECT t1.title FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = "Peter" EXCEPT SELECT t1.title FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = "James"
SELECT T1.title FROM book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 101 EXCEPT SELECT T1.title FROM book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 102
SELECT T1.name FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = (SELECT min(dateorder) FROM orders WHERE title = "Pride and Prejudice")
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN authors AS T4 ON T3.ISBN = T4.ISBN WHERE T4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , title FROM book GROUP BY title
SELECT Title FROM book WHERE TYPE = "Poet" EXCEPT SELECT Title FROM book WHERE TYPE = "Novelist"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT max(Rating) FROM review
SELECT Rank FROM review GROUP BY Rank ORDER BY Pages LIMIT 1
SELECT T2.Title , T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1 Rating
SELECT T1.Title , T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T2.Book_ID ORDER BY COUNT(*) DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT nationality , card_credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT customer_id , card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE card_credit > 50 INTERSECT SELECT Nationality FROM customer WHERE card_credit < 75
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Dish_Name ORDER BY COUNT(*) DESC
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.dish_name ORDER BY quantity DESC
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name HAVING sum(T1.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT name FROM member ORDER BY age ASC
SELECT name , nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT t1.Team_Leader , t1.Club_Name FROM club AS t1 JOIN club_leader AS t2 ON t1.Club_ID = t2.Club_ID
SELECT T1.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.overall_rank > 100
SELECT t1.team_leader FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t2.year_join < 2018
SELECT T2.Year_Join , T1.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member EXCEPT SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID GROUP BY T1.Club_ID
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_details FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT T1.collection_description FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T2.collection_subset_name = 'Top collection'
SELECT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID
SELECT Document_Subset_Name FROM Document_Subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections
SELECT Document_Object_ID FROM Document_Objects
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.parent_document_object_id = T2.collection_subset_id WHERE T2.collection_subset_name = "Marlin"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Document_Object_ID = T2.Collection_ID WHERE T2.collection_name = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Collection_Subset_ID WHERE T2.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T2.collection_name = 'Marlin'
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Collection_Subset_ID WHERE T1.Owner = "Marlin"
SELECT DISTINCT T1.Description FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.Related_Document_Object_ID = T2.Document_Subset_ID
SELECT DISTINCT Other_Details FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM document_objects EXCEPT SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.parent_document_object_id = T2.document_object_id
SELECT document_object_id FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT T1.parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.parent_document_object_id
SELECT count(*) , T1.parent_document_object_id FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.related_document_object_id = T2.document_subset_id GROUP BY T1.parent_document_object_id
SELECT Collection_Name FROM COLLECTIONS
SELECT Collection_Name FROM Collections;
SELECT collection_description FROM Collections WHERE collection_name = "Best"
SELECT collection_description FROM Collections WHERE collection_name = 'Best'
SELECT t2.parent_collection_id FROM collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Nice"
SELECT T2.parent_collection_id FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Nice"
SELECT collection_name FROM Collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM Collections)
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.parent_collection_id = T2.collection_id
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Related_Document_Object_ID = T2.Document_Object_ID WHERE T1.parent_document_object_id = (SELECT parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id HAVING count(*) > 1)
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.related_document_object_id = T2.document_object_id WHERE T1.parent_document_object_id = (SELECT parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id HAVING count(*) > 1)
SELECT count(*) FROM Collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT T2.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = "Ransom"
SELECT T2.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE T1.owner = "Ransom"
SELECT T1.collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_id GROUP BY T1.collection_subset_id
SELECT T2.collection_subset_id , T1.collection_name , count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_subset_id GROUP BY T1.collection_name
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT T1.document_subset_id , count(*) FROM Document_subset_members AS T1 JOIN Document_subset_members AS T2 ON T1.related_document_object_id = T2.related_document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.document_subset_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T2.Related_Document_Object_ID = "Braeden"
SELECT DISTINCT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner = "Braeden"
SELECT DISTINCT t1.document_subset_name FROM Document_Subsets AS t1 JOIN Document_Subset_Members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN Document_Objects AS t3 ON t2.related_document_object_id = t3.document_object_id WHERE t3.owner = "Braeden"
SELECT DISTINCT t1.document_subset_name FROM Document_Subsets AS t1 JOIN Document_Objects AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.owner = "Braeden"
SELECT T1.document_subset_id , T2.document_subset_name , count(D1.document_object_id) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T2.document_subset_name , count(D1.document_object_id) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT document_subsubset_id , document_subset_name , count(*) FROM Document_Subsets JOIN Document_Subset_Members ON Document_Subsets.document_subsubset_id = Document_Subset_Members.document_subsubset_id GROUP BY document_subsubset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Document_subset_id , T2.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN T3 ON T1.document_subset_id = T3.document_subset_id WHERE T1.document_subset_name = "Document Subset with most number of different documents" GROUP BY T2.document_subset_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = "Best for 2000"
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000"
SELECT T1.document_subset_name , T2.document_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id
SELECT t1.document_subset_name , t2.document_id FROM Document_subsets AS t1 JOIN Document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN Documents_in_collections AS t3 ON t2.document_object_id = t3.document_object_id
SELECT t1.collection_name FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t3.owner = 'Ransom'
SELECT t1.collection_name FROM collections AS t1 JOIN document_subsets AS t2 ON t1.collection_id = t2.collection_subset_id JOIN document_objects AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t3.owner = 'Ransom'
SELECT count(*) , T1.collection_id FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DOM) FROM Document_objects AS dom JOIN Documents_in_Collections AS doc ON dom.document_object_id = doc.document_object_id JOIN Collections AS col ON doc.collection_id = col.collection_id WHERE col.collection_name = "Best";
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.collection_name , t1.collection_id , count(*) FROM Collections AS t1 JOIN Documents_in_Collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best' GROUP BY t1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T4.document_subset_id = "Best for 2000"
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T2.document_subset_id = 'Best for 2000'
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" EXCEPT SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subset_members AS T2 ON T1.document_object_id = T2.document_object_id JOIN document_subset_members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.document_subset_name = "Best" AND T1.document_subset_id = "Best" AND T1.document_subset_details = "2000"
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best for 2000'
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.parent_document_object_id = "Best for 2000"
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_members.document_object_id JOIN Collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T2.name = 'Best for 2000' OR T3.collection_subset_id = 'Best'
SELECT t1.collection_name FROM Collections AS t1 JOIN Collection_Subsets AS t2 ON t1.collection_id = t2.Related_Collection_ID WHERE t2.collection_subset_name = "Best"
SELECT T1.collection_id FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.Related_Collection_ID WHERE T1.collection_name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(DISTINCT t1.collection_id) FROM collections AS t1 JOIN document_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T2.collection_subset_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best in"
SELECT t2.collection_subset_id FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_subset_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name
SELECT name , LANGUAGE FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id GROUP BY T1.participant_id HAVING count(*) >= 2
SELECT id , name , popularity FROM participants ORDER BY popularity
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.score = 5
SELECT T3.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.language = 'english' AND T1.name = 'The Balkan Girls'
SELECT T3.id , T3.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id ORDER BY T2.popularity DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T3.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id WHERE T2.language = 'English'
SELECT T2.name , T2.popularity FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T2.name , T2.popularity FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
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
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = 'MD'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "Baltimore"
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT state FROM city WHERE city_code IN (SELECT T1.city_code FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code ORDER BY count(*) DESC LIMIT 1)
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT DISTINCT city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT DISTINCT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code HAVING count(*) >= 3
SELECT state FROM city WHERE city_code IN (SELECT T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 5)
SELECT state FROM city WHERE city_code IN (SELECT T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 5)
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM student WHERE state = 'PA' AND sex = 'F'
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE LName = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance AS t1 JOIN city AS t2 ON t1.city1_code = t2.city_code WHERE t2.city_name = "BAL" INTERSECT SELECT distance FROM direct_distance AS t1 JOIN city AS t2 ON t1.city1_code = t2.city_code WHERE t2.city_name = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance < 1000 UNION SELECT city2_code FROM direct_distance WHERE distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'BAL'
SELECT avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Boston"
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = (SELECT StuID FROM student WHERE Fname = "Chicago"))
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Chicago') )
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance WHERE city1_code = 'Boston')
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1
SELECT city_code , sum(distance) FROM Direct_distance GROUP BY city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT avg(distance) , city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.Fname = "Linda" AND T2.Lname = "Smith" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.Fname = "Tracy" AND T2.Lname = "Kim"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Linda Smith' AND distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = T2.city_code AND city2_code = T3.city_code AND T3.fname = T1.fname AND T3.lname = T1.lname)
{"sql": "SELECT t1.fname , t1.lname FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.city_name = (SELECT t3.city_name FROM city AS t3 JOIN direct_distance AS t4 ON t3.city_code = t4.city1_code WHERE t4.distance = (SELECT t5.city_code FROM city AS t5 JOIN direct_distance AS t6 ON t5.city_code = t6.city1_code WHERE t6.distance = (SELECT t7.city_code FROM city AS t7 JOIN direct_distance AS t8 ON t5.city_code = t8.city1_code WHERE t8.distance = (SELECT t9.city_code FROM city AS t9 JOIN direct_distance AS t10 ON t5.city_code = t10.city1_code WHERE t10.distance = (SELECT t11.city_code FROM city AS t11 JOIN direct_distance AS t12 ON t11.city_code = t12.city1_code WHERE t12.distance = (SELECT t13.city_code FROM city AS t13 JOIN direct_distance AS t14 ON t13.city_code = t14.city1_code WHERE t14.distance = (SELECT t15.city_code FROM city AS t15 JOIN direct_distance AS t16 ON t15.city_code = t16.city1_code WHERE t16.distance = (SELECT t17.city_code FROM city AS t17 JOIN direct_distance AS t18 ON t17.city_code = t18.city1_code WHERE t18.distance = (SELECT t19.city_code FROM city AS t19 JOIN direct_distance AS t20 ON t19.city_code = t20.city1_code WHERE t20.distance = (SELECT t21.city_code FROM city AS t21 JOIN direct_distance AS t22 ON t21.city_code = t22.city1_code WHERE t22.distance = (SELECT t23.city_code FROM city AS t23 JOIN direct_distance AS t24 ON t23.city_code = t24.city1_code WHERE t24.distance = (SELECT t25.city_code FROM city AS t25 JOIN direct_distance AS t26 ON t25.city_code = t26.city1_code WHERE t26.distance = (SELECT t27.city_code FROM city AS t27 JOIN direct_distance AS t28 ON t27.city_code = t28.city1_code WHERE t28.distance = (SELECT t29.city_code FROM city AS t29 JOIN direct_distance AS t30 ON t29.city_code = t30.city1_code WHERE t30.distance = (SELECT t31.city_code FROM city AS t31 JOIN direct_distance AS t32 ON t31.city_code = t32.city1_code WHERE t32.distance = (SELECT t33.city_code FROM city AS t33 JOIN direct_distance AS t34 ON t33.city_code = t34.city1_code WHERE t34.distance = (SELECT t35.city_code FROM city AS t35 JOIN direct_distance AS t36 ON t35.city_code = t36.city1_code WHERE t36.distance = (SELECT t37.city_code FROM city AS t37 JOIN direct_distance AS t38 ON t37.city_code = t38.city1_code WHERE t38.distance = (SELECT t39.city_code FROM city AS t39 JOIN direct_distance AS t40 ON t39.city_code = t40.city1_code WHERE t40.distance = (SELECT t41.city_code FROM city AS t41 JOIN direct_distance
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T3.name FROM sailsid T1 JOIN reserves T2 ON T1.sid = T2.sid WHERE T1.name = "Sailor with id 1"
SELECT DISTINCT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid = 1
SELECT T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = "boat 102"
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM Sailors EXCEPT SELECT DISTINCT sid FROM Sailors WHERE age = (SELECT min(age) FROM Sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.id , T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.id HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.sid FROM sailsors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT id FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT id FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating >= 3
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(rating) , max(age) FROM Sailors;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT T2.name , count(*) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.day > 50 GROUP BY T2.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.day > 50 GROUP BY T1.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.day = (SELECT max(day) FROM Reserves WHERE count(*) > 1) GROUP BY T2.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN resives AS T2 ON T1.bid = T2.bid WHERE T2.day > '2023-04-18' GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age > 1 GROUP BY T1.name
SELECT T2.bid , count(*) FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T2.bid
SELECT T1.rating , avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT T1.rating , avg(T1.age) , T2.bid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" GROUP BY T2.bid
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM BOATS WHERE color = "red"
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color != "red" GROUP BY T1.sid ORDER BY T1.rating LIMIT 1
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' AND T1.rating > (SELECT max(T1.rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red')
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone EXCEPT SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT T2.Earpads FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT name FROM store ORDER BY Date_Opened
SELECT name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.name , T1.quantity FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id JOIN headphone AS T3 ON T1.headphone_id = T3.headphone_id GROUP BY T3.headphone_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id JOIN headphone AS T3 ON T1.headphone_id = T3.headphone_id GROUP BY T3.headphone_id
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT sum(t3.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id JOIN headphone AS t3 ON t2.headphone_id = t3.headphone_id WHERE t1.name = 'Woodman'
SELECT Neighborhood FROM store EXCEPT SELECT T2.neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id
{"sql": "SELECT DISTINCT neighborhood FROM store EXCEPT SELECT DISTINCT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id}
SELECT count(*) FROM author
SELECT count(*) FROM Author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T1.year = 2009 AND T3.name = 'Columbia University'
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = "Harvard University"
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id JOIN Affiliation AS T4 ON T4.affiliation_id = T2.affiliation_id WHERE T4.name = 'Harvard University'
SELECT t2.title , t2.paper_id FROM Author AS t1 JOIN Paper AS t2 ON t1.paper_id = t2.paper_id WHERE t1.name = "Mckeown"
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Mckeown'
SELECT t3.title , t3.paper_id FROM author_list AS t1 JOIN affiliation AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id WHERE t2.name = 'Stanford University' INTERSECT SELECT t3.title , t3.paper_id FROM author_list AS t1 JOIN affiliation AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id WHERE t2.name = 'Columbia University'
SELECT t3.title , t2.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Stanford' INTERSECT SELECT t3.title , t2.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Columbia'
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Kathleen" AND t1.email = "kathleen.mckeown@example.com" INTERSECT SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Owen" AND t1.email = "owen.rambow@example.com"
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Kathleen" AND t1.email = "mckeown@kmt.edu" INTERSECT SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Owen" AND t1.email = "rambow@kmt.edu"
SELECT t3.title , t2.paper_id FROM Author AS t1 JOIN Author_list AS t2 ON t1.author_id = t2.author_id JOIN Paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Mckeown' EXCEPT SELECT t3.title , t2.paper_id FROM Author AS t1 JOIN Author_list AS t2 ON t1.author_id = t2.author_id JOIN Paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Rambow'
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown" EXCEPT SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Rambow"
SELECT t3.title , t2.paper_id FROM Author AS t1 JOIN Author_list AS t2 ON t1.author_id = t2.author_id JOIN Paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen" OR t1.name = "Rambow , Owen"
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen" OR t1.name = "Rambow , Owen"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.affiliation_id ORDER BY count(*) ASC
SELECT count(*) FROM affiliation
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Citation WHERE paper_id = 'A00-1002'
SELECT count(*) FROM CITE AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title LIKE "%A00-1002%"
SELECT count(*) FROM CITATION AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = "reference paper" AND T2.paper_id = "D12-1027"
SELECT count(*) FROM Author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = 'D12-1027'
SELECT t1.paper_id , count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.paper_id , count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , t2.cited_paper_id FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) , T1.title FROM paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.cited_paper_id WHERE T3.name = 'Kathleen Mckeown'
SELECT count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.cited_paper_id WHERE T3.name = 'Kathleen Mckeown'
SELECT count(*) FROM CITED_paper AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.author_id WHERE T3.name = "Kathleen Mckeown"
SELECT count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'kathleen.mckeown@example.com'
SELECT t1.name , count(*) FROM Author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , count(*) FROM Author AS t1 JOIN Author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.venue , T3.year FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown , Kathleen"
SELECT venue , YEAR FROM Paper WHERE paper_id IN (SELECT T1.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 100323)
SELECT T2.venue , T2.year FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT venue , YEAR FROM Paper WHERE title LIKE "%Columbia University%"
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND title NOT IN (SELECT title FROM paper WHERE venue = 'Columbia')
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year < 2009
SELECT count(*) FROM paper WHERE YEAR >= 2000 AND YEAR <= 2009 AND title LIKE "%Stanford%"
SELECT count(*) FROM paper WHERE YEAR >= 2000 AND YEAR <= 2009 AND title LIKE "%Stanford%"
SELECT t1.title FROM paper AS t1 JOIN Author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN Author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Mckeown , Kathleen")
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN (SELECT T3.paper_id FROM author_list AS T3 JOIN author AS T4 ON T3.author_id = T4.author_id WHERE T4.name = 'Mckeown , Kathleen' GROUP BY T3.paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.title = 'Mckeown , Kathleen' INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.title = 'Mckeown , Kathleen'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE "%China%" GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , venue , YEAR FROM Paper GROUP BY venue , YEAR
SELECT count(*) , venue , YEAR FROM Paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT T1.title FROM paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author_list WHERE author_id NOT IN ( SELECT author_id FROM author_list AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id HAVING count(*) > 50 )
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T2.paper_id = T3.cited_paper_id WHERE T3.paper_id NOT IN (SELECT T4.paper_id FROM citation AS T4 JOIN paper AS T5 ON T4.paper_id = T5.paper_id GROUP BY T5.paper_id HAVING sum(T3.cited_paper_id) > 50)
SELECT DISTINCT T3.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T1.year = 2009 AND T1.venue = 'NAACL' INTERSECT SELECT DISTINCT T3.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T1.year = 2009 AND T1.venue = 'ACLS'
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'NAACL' INTERSECT SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'ACL'
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = 'ACL'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE 1=1 AND 1=1) AND paper_id NOT IN (SELECT paper_id FROM paper WHERE venue = 'ACLS' )
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT DISTINCT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT count(*) , T1.Institution_Name FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_Name
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nation = 'United States'
SELECT max(Age) , min(Age) FROM staff
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = "Canada"
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.nationality = 'Canada'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T1.role = 'sponsor'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T1.role = 'sponsor'
SELECT name FROM institution WHERE founded = (SELECT min(founded) FROM institution WHERE institution_id IN (SELECT DISTINCT institution_id FROM staff WHERE role = 'ACL') INTERSECT SELECT min(founded) FROM institution WHERE institution_id IN (SELECT DISTINCT institution_id FROM staff WHERE role = 'NACCL') )
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.Conference_Name = 'ACL' INTERSECT SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_ID WHERE T1.Conference_Name = 'NACCL'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE YEAR = 2003 OR YEAR = 2004
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.year >= 2003 OR T2.year >= 2004
SELECT T1.Conference_Name , T1.Year , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T2.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id = "ACLS" )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE role = 'conference' AND conference_name = 'ACLS' )
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT max(age) FROM PilotSkills)
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT max(age) FROM PilotSkills)
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM pilotskills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "F-14 Fighter"
SELECT count(DISTINCT location) FROM Hangar
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = 'Jones'
SELECT plane_name FROM pilotskills WHERE age = 32 AND pilot_name = 'Jones'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = "B-52" AND age < 35
SELECT count(*) FROM PilotSkills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.aircraft_type = "B-52"
SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Plane AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" ORDER BY T1.age LIMIT 1
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub")
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(*) FROM pilotskills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilotskills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM pilotskills WHERE age = 20 ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age > 35 OR plane_name = 'F-14 Fighter' AND age < 30
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Plane_info AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Plane_info AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "F-14 Fighter" AND T1.age < 30
SELECT count(*) FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT count(*) FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" OR T1.plane_name = "F-14 Fighter"
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT plane_name , count(*) FROM Hangar GROUP BY plane_name
SELECT plane_name , count(*) FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY max(age)
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY max(age)
SELECT pilot_name , plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , LOCATION FROM pilotskills GROUP BY LOCATION
SELECT count(*) , T1.location , avg(T1.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM PilotSkills WHERE avg(age) < 35
SELECT plane_name , count(*) FROM PilotSkills WHERE avg(age) < 35 GROUP BY plane_name
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM hangar WHERE LOCATION LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE LOCATION LIKE "%bomber%"
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE pilot_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesmen WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1
SELECT T3.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T1.Spokesman_ID = T3.Spokesman_ID WHERE T1.Start_year < 2004
SELECT count(*) , T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.rank_position = (SELECT rank_position FROM spokesman WHERE rank_position = 1) INTERSECT SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.rank_position = (SELECT rank_position FROM spokesman WHERE rank_position = 2)
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesmen WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesimen_district)
SELECT sum(T2.population) , avg(population) FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE sculptureID = (SELECT sculptureID FROM paintings WHERE LOCATION = "Gallery 226")
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM ARTISANS WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != (SELECT LOCATION FROM paintings WHERE ID = 226)
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM ARTISANS AS T1 JOIN SCULPTURES AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , lname FROM Artists ORDER BY birthyear DESC LIMIT 1
SELECT birthyear FROM ARTISTS ORDER BY birthyear ASC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT fname , deathyear FROM Artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , deathyear FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = "Gallery 240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear > T3.birthyear AND T2.birthyear < T3.birthyear
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear > T2.deathyear ORDER BY T2.birthyear DESC LIMIT 1
SELECT T2.title , T2.year FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthYear < 1850
SELECT T2.location , T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Pablo"
SELECT T2.location , T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic medium"
SELECT T1.lname , T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.lname , T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.birthyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = "canvas"
SELECT T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium oil" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT medium , avg(height_mm) FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT COUNT(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT T2.title FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear > 1910 AND T2.medium = "oil"
SELECT DISTINCT artistID FROM paintings WHERE LOCATION = 240 AND medium = "oil"
SELECT DISTINCT artistID FROM paintings WHERE medium = "oil" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = "gallery 240")
SELECT DISTINCT T1.painterid FROM paintings AS T1 JOIN sculptures AS T2 ON T1.medium = T2.sculptorID WHERE T1.year > (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT painterid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT painterid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT T2.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T2.title , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T2.title , T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = 222
SELECT T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.painterID = 222
SELECT painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM paintings WHERE height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND LOCATION = 241
SELECT max(height_mm) , T2.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1900 GROUP BY T2.painterID
SELECT height_mm , paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T2.fname ORDER BY T2.fname
SELECT avg(height_mm) , avg(width_mm) , T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T2.fname ORDER BY T2.fname
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = "Gallery 240")
SELECT height_mm , paintingID FROM paintings WHERE WIDTH_MM = (SELECT max(width_mm) FROM paintings WHERE LOCATION = "Gallery 240")
SELECT painterid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "Gallery 240")
SELECT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR < 1900)
SELECT painterid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T2.fname , T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T1.painterid ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT T1.title , T1.location , T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.year
SELECT title , YEAR , LOCATION FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT fname , lname FROM ARTISANS EXCEPT SELECT T1.fname , T1.lname FROM ARTISANS AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium = "medium" REPEATABLE
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE pole_position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Winning_driver != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT count(*) , T2.Driver_ID FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID
SELECT T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
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
SELECT DISTINCT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "Carl Skerlong"
SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
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
SELECT T4.name , T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id JOIN countries AS T4 ON T2.id = T4.id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t2.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT avg(t1.overall_score) FROM countries AS t1 JOIN official_languages AS t2 ON t1.id = t2.country_id JOIN languages AS t3 ON t2.language_id = t3.id WHERE t3.name = "English"
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = (SELECT id FROM languages WHERE name = "English")
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.country_id , t2.name FROM countries AS t1 JOIN official_languages AS t2 ON t1.id = t2.country_id GROUP BY t2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T2.count(*) , T1.property_address_id , T1.property_name FROM Properties AS T1 JOIN Addresses AS T2 ON T1.property_address_id = T2.address_id GROUP BY T1.property_address_id
SELECT T2.count_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "rooftop";
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.other_user_details LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T2.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = "House" AND property_type_description LIKE "%garden%"
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'Garden'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_id = 1
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code IN ("Swimming Pool" , "Pools")
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY datestamp DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T3.zip_postcode FROM Addresses AS T3 JOIN User_Property_History AS T4 ON T3.address_id = T4.property_id JOIN Users AS T5 ON T5.user_id = T4.user_id WHERE T5.is_buyer = 'Y' AND count(*) <= 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T3.zip_postcode FROM Addresses AS T3 JOIN User_Property_History AS T4 ON T3.address_id = T4.property_id JOIN Users AS T5 ON T5.user_id = T4.user_id GROUP BY T3.address_id HAVING count(*) >= 2
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_age_categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_id IN (SELECT T3.user_id FROM User_Searches AS T3 JOIN Users AS T4 ON T3.user_id = T4.user_id ORDER BY T3.search_datetime LIMIT 1)
SELECT T2.age_category_description FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id ORDER BY T1.search_datetime LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "senior" ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM users WHERE is_buyer = '1'
SELECT count(DISTINCT user_id) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_buyer = 1 AND is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Y'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE age_category_code = 'Senior Citizen'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE town_city = 'Senior Citizen'
SELECT count(*) FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY property_id HAVING count(*) >= 2
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T2.owner_user_id , count(*) FROM Property_photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.owner_user_id
SELECT owner_user_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name = 'Single' OR T2.first_name = 'Student'
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name = 'Single mother' OR T2.first_name = 'Student'
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T2.owner_user_id = T1.user_id WHERE T2.property_address_id = (SELECT T3.property_address_id FROM Addresses AS T3 JOIN Properties AS T2 ON T2.property_address_id = T3.address_id WHERE T2.date_on_market = (SELECT date_on_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_min = (SELECT price_min FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_max = (SELECT price_max FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_name = (SELECT property_name FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_type_code = (SELECT property_type_code FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.date_off_market = (SELECT date_off_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.vendor_requested_price = (SELECT vendor_requested_price FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_min = (SELECT price_min FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_max = (SELECT price_max FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_name = (SELECT property_name FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_type_code = (SELECT property_type_code FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.date_off_market = (SELECT date_off_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.vendor_requested_price = (SELECT vendor_requested_price FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_min = (SELECT price_min FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_max = (SELECT price_max FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_name = (SELECT property_name FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_type_code = (SELECT property_type_code FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.date_off_market = (SELECT date_off_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.vendor_requested_price = (SELECT vendor_requested_price FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_min = (SELECT price_min FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_max = (SELECT price_max FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_address_id = (SELECT property_address_id FROM Addresses ORDER BY date_on_market LIMIT 1) AND T2.date_on_market = (SELECT date_on_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.date_off_market = (SELECT date_off_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_name = (SELECT property_name FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_type_code = (SELECT property_type_code FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.date_off_market = (SELECT date_off_market FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.vendor_requested_price = (SELECT vendor_requested_price FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_min = (SELECT price_min FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.price_max = (SELECT price_max FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_name = (SELECT property_name FROM Properties ORDER BY date_on_market LIMIT 1) AND T2.property_type_code = (SELECT property_type_code FROM Properties ORDER BY date_on_market LIMIT 1
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT search_string FROM User_Searches EXCEPT SELECT T1.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T2.id HAVING count(*) >= 4
SELECT T1.cyclist_id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.nation = 'Russia' OR T2.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year < 2015 )
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result > '4:21.558'
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT DISTINCT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT flavor , max(price) FROM goods GROUP BY flavor
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(price) , flavor FROM goods GROUP BY flavor
SELECT id , flavor FROM goods ORDER BY price LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.receipt FROM goods AS T3 JOIN items AS T4 ON T3.id = T4.item WHERE T3.flavor = "cake" AND T4.item = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.receiptno JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "lemon"
SELECT Food , count(*) FROM goods GROUP BY Food
SELECT food , count(*) FROM goods GROUP BY food
SELECT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN receipts AS T3 ON T3.customerid = T2.customerid GROUP BY T3.customerid HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN receipts AS T3 ON T2.receipt = T3.id GROUP BY T2.item HAVING count(*) > 10
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT count(DISTINCT flavor) FROM goods WHERE food = "Cake"
SELECT count(DISTINCT flavor) FROM goods WHERE food = "cake"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt = T2.receipt WHERE T2.customerid = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.customerid = 15
SELECT food , avg(price) , max(price) , min(price) FROM goods GROUP BY food
SELECT food , avg(price) , min(price) , max(price) FROM goods GROUP BY food
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cake" INTERSECT SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cookie"
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Cake' INTERSECT SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Cookie'
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T3.id = T1.customerid WHERE T3.lastname = "LOGAN" AND T2.flavor = "Croissant"
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T3.id = T1.customerid WHERE T3.lastName = 'Logan' AND T2.Flavor = 'Croissant'
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt ORDER BY T2.Price DESC LIMIT 1
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt ORDER BY T2.price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT Food , avg(Price) FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10
SELECT Flavor FROM goods WHERE price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 13
SELECT DISTINCT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 13
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt WHERE T2.item = goods.id AND T3.price > 15
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt WHERE T2.item = 'good' AND T3.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE ID LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE price > 0
SELECT DISTINCT id FROM goods
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'apple' OR T1.receiptid = 12
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Apple' UNION SELECT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.receipt WHERE T2.item = 'good' AND T3.price > 10 UNION SELECT receiptnumber FROM receipts ORDER BY date ASC LIMIT 1000
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id WHERE T2.price > 10 UNION SELECT T1.ReceiptNumber FROM receipts AS T1 ORDER BY T1.date LIMIT 1
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId ORDER BY T2.Date ASC LIMIT 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T2.customerid = T1.id ORDER BY T2.date LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = 'cheese'
SELECT price FROM goods WHERE flavor = "cheese" ORDER BY price ASC LIMIT 1
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price) , max(Price) FROM goods ORDER BY Food
SELECT Date FROM receipts ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.customerid , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1
SELECT customerid , count(*) FROM items GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date
SELECT count(*) , T1.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.Date
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.Flavor = "apple" AND T3.Food = "Tart"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.Flavor = "apple" AND T3.Food = "Tart"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)*2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT item FROM goods WHERE flavor = "chocolate" GROUP BY item HAVING count(*) > 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.receipt = T2.id WHERE T2.flavor = "Chocolate" GROUP BY T1.item HAVING count(*) <= 10
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT flavor FROM goods WHERE food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT flavor , price FROM goods GROUP BY flavor ORDER BY count(*) DESC LIMIT 3
SELECT item FROM goods ORDER BY price DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.receiptnumber GROUP BY T1.id HAVING sum(T2.item) > 150
SELECT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN receipts AS T3 ON T2.receipt = T3.id WHERE T3.receiptnumber > 150 AND sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.receiptnumber JOIN goods AS T3 ON T3.id = T2.item GROUP BY T3.id HAVING avg(T3.price) > 5
SELECT T1.id , avg(price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id HAVING avg(price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt WHERE T2.item = "bakey" AND sum(T3.price) > 100
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt WHERE T2.item = 'food' AND T3.price > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
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
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id WHERE T2.Official_native_language = "English"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id WHERE T2.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team EXCEPT SELECT Team FROM team_driver
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country != (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Manager , Sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT Manager , Sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
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
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.Affiliation = "Public"
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT affiliation , COUNT(*) FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.valueofwarehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT warehouse , avg(value) FROM Boxes GROUP BY warehouse
SELECT avg(Value) , Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(Value) , sum(Value) FROM Boxes
SELECT avg(value) , sum(value) FROM boxes
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
SELECT count(DISTINCT Contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT location FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE location = 'Chicago') INTERSECT SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE location = 'New York')
SELECT DISTINCT contents FROM boxes WHERE warehouse != (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT Contents FROM Boxes WHERE Warehouse NOT IN (SELECT code FROM Warehouses WHERE LOCATION = "New York")
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.code WHERE T2.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Scissors"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code ORDER BY T1.capacity DESC LIMIT 1
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.whousecode WHERE capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T2.value) > 150
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT max(T1.Value) , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT max(T1.Value) , T2.Warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Warehouse
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT count(*) , T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT count(DISTINCT location) FROM warehouses WHERE code = "Rocks"
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT count(*) , T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT count(*) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity < 0
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > capacity
SELECT sum(value) FROM boxes WHERE code NOT IN (SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2warehouse WHERE T1.location = 'Chicago')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT home_confERENCE FROM university
SELECT DISTINCT home_confidence FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(Enrollment) , Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT avg(Enrollment) , Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT home_confidence FROM university GROUP BY home_confidence ORDER BY sum(enrollment) LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference ORDER BY enrollment LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T1.Major_Name , T3.Rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T3.University_ID = T2.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T3.Major_Name , T2.rank FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T1.Major_ID = T3.Major_ID WHERE T2.University_Name = "Augustana College"
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank = 1
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major AS t2 ON t1.university_id = t2.major_id JOIN overall_ranking AS t3 ON t3.university_id = t1.university_id ORDER BY t3.rank LIMIT 1
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id ORDER BY t3.major_name , t2.rank LIMIT 1
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id ORDER BY t2.rank LIMIT 1
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Top'
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T2.university_name FROM major AS T1 JOIN university AS T2 ON T1.major_id = T2.major_id WHERE T1.major_name = 'Accounting' INTERSECT SELECT T2.university_name FROM major AS T1 JOIN university AS T2 ON T1.major_id = T2.major_id WHERE T1.major_name = 'Urban Education'
SELECT T1.University_Name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name , rank FROM university WHERE state = 'WI'
SELECT university_name FROM overall_ranking ORDER BY Research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY Research_point DESC LIMIT 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = 'Accounting' ORDER BY t2.rank DESC LIMIT 3
SELECT t1.university_name FROM university AS t1 JOIN major AS t2 ON t1.university_id = t2.major_id JOIN major_ranking AS t3 ON t2.major_id = t3.major_id WHERE t3.rank >= 3
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank <= 5
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank <= 5
SELECT t2.University_Name , t2.Citation_point FROM overall_ranking AS t1 JOIN university AS t2 ON t1.University_ID = t2.University_ID ORDER BY Reputation_point DESC LIMIT 3
SELECT university_name , citation_point FROM overall_ranking ORDER BY Reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING avg(Enrollment) < 3000 GROUP BY State HAVING count(*) > 2
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND enrollment < 3000
SELECT TITLE FROM Movies WHERE Rating = "null"
SELECT TITLE FROM Movies WHERE Rating = "null"
SELECT title FROM movies WHERE rating = 'G'
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT T2.Name , T1.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != "Theaters"
SELECT T1.name , T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.movie = (SELECT code FROM movies WHERE rating = 'Gold')
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters;
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE "%Citizen%"
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT Name FROM MovieTheaters WHERE Movie = 'G' OR Movie = 'PG'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon" OR T1.name = "Imperial"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon" OR T1.name = "Imperial"
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon" INTERSECT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Imperial"
SELECT title FROM movies EXCEPT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT T2.title FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null";
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters WHERE Movie != "null" GROUP BY Name HAVING count(*) >= 1
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT Name FROM MovieTheaters WHERE Movie NOT IN (SELECT Movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Name FROM MovieTheaters WHERE Movie.Code = (SELECT T1.Code FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = "G")
SELECT title FROM movies
SELECT title FROM movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating < 0
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM Client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , position FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(Salary) FROM Employee WHERE POSITION = "Intern"
SELECT avg(Salary) FROM Employee WHERE POSITION = "Intern"
SELECT LEVEL FROM Has_clearance WHERE EMPLOYEE = (SELECT EMPLOYEE FROM Employee WHERE POSITION = "Physician")
SELECT LEVEL FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T2.position = "Physician"
SELECT packagenumber FROM PACKAGE WHERE sender = (SELECT accountnumber FROM Employee WHERE name = "Leo Wong")
SELECT count(*) FROM package WHERE sender = (SELECT accountnumber FROM Employee WHERE name = "Leo Wong")
SELECT packagenumber FROM package WHERE sender = (SELECT accountnumber FROM Employee WHERE name = "Leo Wong")
SELECT packagenumber FROM package WHERE sender = (SELECT accountnumber FROM employee WHERE name = 'Leo Wong')
SELECT * FROM PACKAGE WHERE sender = (SELECT AccountNumber FROM Employee WHERE Name = "Leo Wong") OR recipient = (SELECT AccountNumber FROM Employee WHERE Name = "Leo Wong")
SELECT DISTINCT sender , recipient FROM PACKAGE WHERE sender = "Leo Wong" OR recipient = "Leo Wong"
SELECT count(*) FROM PACKAGE WHERE sender = (SELECT accountnumber FROM Employee WHERE name = "Ogden Wernstrom") AND recipient = (SELECT accountnumber FROM Employee WHERE name = "Leo Wong")
SELECT count(*) FROM PACKAGE WHERE sender = (SELECT accountnumber FROM Employee WHERE name = "Ogden Wernstrom") AND recipient = (SELECT accountnumber FROM Employee WHERE name = "Leo Wong")
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%'
SELECT packagenumber , weight FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'John') ORDER BY weight DESC LIMIT 1
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1
SELECT min(Recipient) , Sender FROM PACKAGE GROUP BY Sender
SELECT T1.name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name
SELECT ShipmentID FROM SHIPMENT WHERE manager = (SELECT Employee.EmployeeID FROM Employee JOIN SHIPMENT ON SHIPMENT.Manager = Employee.EmployeeID WHERE Name = "Philip J. Fry")
SELECT ShipmentID FROM SHIPMENT WHERE manager = (SELECT Employee.EmployeeID FROM Employee JOIN SHIPMENT ON SHIPMENT.manager = Employee.EmployeeID WHERE Name = "Phillip J. Fry")
SELECT Date FROM SHIPMENT
SELECT Date FROM SHIPMENT
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars"
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars"
SELECT T1.shipmentid FROM shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Mars" AND T2.name = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = "Mars" AND T2.name = "Turanga Leela"
SELECT ShipmentID FROM SHIPMENT WHERE Planet = "Mars" OR Manager = (SELECT EmployeeID FROM Employee WHERE Name = "Turanga Leela")
SELECT T2.ShipmentID FROM HAS_CLEARANCE AS T1 JOIN SHIPMENT AS T2 ON T1.Planet = T2.Planet WHERE T1.Employee = (SELECT EmployeeID FROM Employee WHERE Name = "Turanga Leela") AND T1.Level = 3
SELECT T2.name , sum(T1.shipments) FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , count(*) FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T1.level = "Manager" GROUP BY T1.employeeid
SELECT count(*) , T1.name FROM Employee AS T1 JOIN SHIPMENT AS T2 ON T1.employeeid = T2.manager GROUP BY T2.manager
SELECT sum(t1.weight) FROM package AS t1 JOIN shipment AS t2 ON t1.shipment = t2.shipmentid WHERE t2.planet = "Mars"
SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Mars"
SELECT sum(T1.weight) , T2.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid GROUP BY T2.planet
SELECT sum(T2.weight) , T1.name FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.recipient GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T1.weight > 30
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.weight > 30
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" AND T2.manager = "Zapp Brannigan"
SELECT count(*) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = "Zapp Brannigan") AND Recipient = (SELECT planet FROM planet WHERE name = "Omicron Persei 8")
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" OR T2.manager = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM Package WHERE weight BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = "Mars")
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = "Mars"
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.level = "Omega III"
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.level = "Omega III"
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING COUNT(*) = 1
SELECT T3.Name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID WHERE T2.Position = "Manager"
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE employeeid NOT IN ( SELECT employee FROM Has_clearance WHERE planet = "Mars")
SELECT count(*) FROM Employee WHERE employeeid NOT IN ( SELECT employee FROM Has_clearance WHERE planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , Developers FROM game ORDER BY units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_ID FROM platform ORDER BY Download_rank ASC LIMIT 1
SELECT Platform_name , Platform_ID FROM platform ORDER BY Download_rank DESC LIMIT 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T3.Player_name , T3.Rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T2.Title = "Super Mario World"
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T3.Developer FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Auburn"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(T2.units_sold_millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.Position = "Guard"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT Title , T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = 'Asia' OR T1.Market_district = 'USA'
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = 'Asia' OR T1.Market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , count(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT T3.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T3.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Oklahoma" OR T2.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE player AS 'Guard')
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE player_id = (SELECT Player_ID FROM player WHERE POSITION = "Guard") )
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT press_id , name FROM press WHERE year_profits_billion > 15_000_000 OR month_profits_billion > 1_000_000
SELECT name FROM press WHERE year_profits_billion > 15 OR month_profits_billion > 1000000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(year_profits_billion) , max(year_profits_billion) , press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , Release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING COUNT(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT t1.title , t2.name , t3.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id JOIN author AS T3 ON T1.author_id = T3.author_id ORDER BY sale_amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID JOIN author AS T3 ON T1.Author_ID = T3.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T1.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T1.sale_amount) > 1000
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T1.sale_amount) > 1000
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T3.press_id = T2.press_id WHERE T3.name = "Accor"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.press_id != (SELECT press_id FROM press WHERE name = 'Accor')
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM AUTHORS
SELECT author_name FROM authors
SELECT author_name , other_details FROM AUTHORS
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT authors.author_name FROM authors JOIN documents ON documents.author_name = authors.author_name WHERE documents.document_id = 4;
SELECT author_name FROM authors JOIN documents ON documents.author_name = authors.author_name WHERE documents.document_name = "Travel to Brazil";
SELECT count(*) FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , T1.document_name FROM Documents AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM AUTHORS AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T2.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T2.author_name HAVING count(*) >= 2
SELECT count(*) FROM BUSINESS_PROCESSES
SELECT next_process_id , process_name , process_description FROM Business_processes WHERE process_id = 9;
SELECT process_name FROM Business_Processes WHERE next_process_id = 9;
SELECT count(*) FROM Documents_Processes
SELECT process_outcome_code , process_outcome_description FROM Process_Outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100;
SELECT count(*) FROM Staff
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id WHERE T2.process_id = "process"
SELECT process_id FROM Documents_processes WHERE document_id IN (SELECT document_id FROM Documents)
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM Business_Processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT T2.process_outcome_description , T2.process_status_code FROM Documents_Processes AS T1 JOIN Process_Outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.document_id = 0
SELECT T2.process_name FROM documents AS T1 JOIN business_processes AS T2 ON T1.document_id = T2.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM documents_processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM AGENCIES
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_details , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , COUNT(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T2.client_id , T3.agency_details , T4.agency_id , T5.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T3.agency_id = T4.agency_id JOIN Clients AS T5 ON T5.client_id = T1.client_id
SELECT invoice_status , invoice_details , T1.client_id , T1.client_details , T2.agency_id , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id , T1.invoice_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT T1.invoice_id , count(*) FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT T1.meeting_type , count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , T1.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T3.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T3.meeting_id = T1.meeting_id
SELECT meeting_id , count(DISTINCT staff_id) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*) , T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT client_id , client_details FROM clients WHERE client_id IN (SELECT client_id FROM meetings) UNION SELECT client_id , client_details FROM invoices
SELECT client_id , client_details FROM clients INTERSECT SELECT client_id , client_details FROM meetings UNION SELECT client_id , client_details FROM invoices
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT staff_id , staff_details FROM Staff WHERE staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id JOIN Meetings AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T2.agency_id FROM Clients AS T1 JOIN Payments AS T2 ON T1.client_id = T2.invoice_id WHERE T2.billable_yn = 'Y' GROUP BY T1.client_id HAVING COUNT(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 JOIN Staff_in_Meetings AS T3 ON T1.client_id = T2.client_id AND T1.meeting_id = T3.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T4.staff_details , T3.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T3.meeting_id = T1.meeting_id JOIN Staff AS T4 ON T3.staff_id = T4.staff_id
