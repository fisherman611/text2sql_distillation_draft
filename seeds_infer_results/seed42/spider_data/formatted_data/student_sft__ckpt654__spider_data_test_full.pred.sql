SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != "Nikeland"
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1200000
SELECT country FROM player ORDER BY earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM CLub WHERE Club_id NOT IN (SELECT Club_id FROM player)
SELECT Name FROM CLub WHERE Club_id NOT IN (SELECT Club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T3.order_id = T1.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers EXCEPT SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name FROM customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT product_id , product_name , product_price , product_color FROM products EXCEPT SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price , T2.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) < 2
SELECT T2.order_id , T2.date_order_placed FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id , sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT T2.order_id , sum(T1.product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T2.order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM Customers AS T1 JOIN Orders AS T2 JOIN Order_Items AS T3 JOIN Products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN shipments AS T3 ON T2.invoice_number = T3.invoice_number
SELECT T1.product_name , T2.shipment_date FROM Products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name , T2.shipment_date FROM Products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_status_code , T3.shipment_tracking_number FROM ORDER_ITEMS AS T1 JOIN Orders AS T2 JOIN shipments AS T3 ON T1.order_id = T2.order_id AND T2.invoice_id = T3.invoice_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.shipment_id = T2.shipment_id ORDER BY T3.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN shipments AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T4.invoice_number = T3.invoice_number WHERE T1.gender_code = "female"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.gender_code = "Female"
SELECT invoice_status_code FROM invoices EXCEPT SELECT T1.invoice_status_code FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT invoice_status_code FROM invoices EXCEPT SELECT T1.invoice_status_code FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT order_id , date_order_placed , sum(total_cost) FROM orders GROUP BY order_id
SELECT order_id , date_order_placed , sum(total_amount_paid) FROM orders GROUP BY order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_Items
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM Customers WHERE phone_number LIKE "12%"
SELECT customer_first_name , login_password FROM customers WHERE phone_number LIKE "12%"
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods );
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods );
SELECT order_status_code , date_order_placed FROM Orders
SELECT order_status_code , date_order_placed FROM Orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name , T2.product_name FROM Customers AS T1 JOIN Products AS T2 ON T1.customer_id = T2.product_id
SELECT T1.customer_first_name , T2.product_name FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(T1.product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T3.order_id
SELECT avg(t1.product_price) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id GROUP BY t2.product_id
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address , town_city , county FROM Customers WHERE gender_code IN (SELECT gender_code FROM Customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T2.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE "%bbc%"
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY Start_Year ASC
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name , t1.channel_id FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id HAVING count(*) > 1
SELECT count(*) , t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.interernet FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT t1.channel_id , t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.name = "Hank Baskett"
SELECT count(*) FROM radio
SELECT TRANmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT TRANmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ErP_kW) FROM radio
SELECT Affiliation , count(*) FROM city_channel GROUP BY Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T1.Transmitter , T2.City FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.Erp_kW DESC
SELECT T1.transmitter , count(*) FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.transmitter
SELECT DISTINCT TRANmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*) , T1.Driver_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.driver_id , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.driver_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT T2.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle WHERE Build_Year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Build_Year = 2012)
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T2.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT Vehicle_ID , Model FROM vehicle WHERE Builder = "Ziyang"
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT Vehicle_ID , Model FROM vehicle WHERE Builder = "Ziyang"
SELECT T2.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon' OR COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon"
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name ASC
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM EXAMS
SELECT count(*) FROM EXAMS
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT DISTINCT subject_code FROM EXAMS ORDER BY subject_code
SELECT Exam_Name , Exam_Date FROM EXAMS WHERE Subject_Code != "Database"
SELECT exam_date , exam_name FROM exams WHERE subject_code != "Database"
SELECT Exam_Date FROM EXAMS WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM EXAMS WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code , COUNT(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T2.first_name , T1.date_of_answer FROM student_answers AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT T2.first_name , T1.date_of_answer FROM student_answers AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.first_name FROM student_assessments AS T1 JOIN student_answers AS T2 ON T1_valid_answer_id = T2_valid_valid_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T2.first_name FROM student_assessments AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT gender_code , count(*) FROM students GROUP BY gender_code
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students EXCEPT SELECT T1.Fname FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT First_Name FROM Students EXCEPT SELECT T1.FirstName_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Assessments WHERE Assessment = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Assessments WHERE Assessment = "Absent"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
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
SELECT T2.address_details , T2.customer_phone , T2.customer_email FROM customers AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
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
SELECT order_id , order_date , order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id = ( SELECT customer_id FROM customers WHERE customer_name = "Jeromy" )
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
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_Items )
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_Items )
SELECT count(DISTINCT t3.product_name) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t1.order_status_code = "Monitor"
SELECT count(DISTINCT t3.product_name) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_type_code = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T2.order_id = T3.order_id WHERE T1.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 UNION SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT T2.order_id , T2.order_date FROM Order_items AS T1 JOIN Customer_Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T1.order_quantity) > 6 UNION SELECT T2.order_id , T2.order_date FROM Order_items AS T1 JOIN Customer_Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T1.order_quantity) > 3
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
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT t1.Capital FROM region AS t1 JOIN building AS t2 ON t1.region_id = t2.region_id GROUP BY t1.region_id ORDER BY count(*) DESC LIMIT 1
SELECT Capital FROM region GROUP BY Capital ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Address , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.service_details FROM services AS T1 JOIN customers AS T2 ON T1.service_id = T2.customer_id WHERE T2.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT service_details FROM services GROUP BY service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.customer_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details) , count(DISTINCT service_details) FROM customers_and_services
SELECT count(*) , sum(t1.customer_details) FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" UNION SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Good"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T1.customer_details = "good" IN T2.customer_interaction_id
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.customer_id JOIN customer_interactions AS T3 ON T2.service_id = T3.service_id WHERE T3.Status_Code = "Hardy Kutch" INTERSECT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.customer_id JOIN customer_interactions AS T3 ON T2.service_id = T3.service_id WHERE T3.Status_Code = "Bad"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T2.Status_Code = "Bad"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT * FROM customer_interactions AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.Status_Code = "Stuck" AND T1.Service_id = "bad"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id WHERE t2.Status_Code = "Stuck" AND t2.Services_and_Channels_Details = "bad"
SELECT count(*) FROM integration_platform
SELECT count(*) FROM integration_platform_details WHERE integration_platform_details LIKE "%Success%"
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_id = T2.customer_id
SELECT DISTINCT customer_details FROM customers AS t1 JOIN integration_platform AS t2 ON t1.customer_id = t2.customer_id WHERE t2.integration_platform_details = "Fail"
SELECT service_details FROM services EXCEPT SELECT customers_and_services_details FROM customers_and_services
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.customer_id
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.service_id = T2.customer_id JOIN Customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "unsatisfied"
SELECT T2.service_details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_OF_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
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
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.Model_year FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T2.name , T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Events
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T2.bio_data , T1.student_id FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T2.bio_data , T1.student_id FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.amount_of_loan , T2.date_of_loan FROM Achievements AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.teacher_details , T2.teacher_id FROM CLASSES AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_type_description FROM Detention
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Ref_Address_Types AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_address_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.bio_data , T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.student_id FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.bio_data , T1.event_date FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details , T1.achievement_type_description FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.event_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT T2.teacher_id) FROM Achievements AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id WHERE T1.achievement_id NOT IN ( SELECT T2.teacher_id FROM Achievements AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id )
SELECT count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id EXCEPT SELECT count(*) FROM Achievements AS T4 JOIN Students AS T3 ON T4.student_id = T3.student_id
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bi_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE "%Suite%"
SELECT T2.teacher_details , T3.student_details FROM Courses AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T1.class_details = T3.student_details
SELECT T2.teacher_details , T1.student_details FROM CLASSs AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*) , teacher_id FROM Courses GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_id , count(*) FROM Courses AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.student_id FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.student_id , count(*) FROM Courses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , student_details FROM Students GROUP BY student_id HAVING count(*) = 2
SELECT T2.student_id , T2.student_details FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T1.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T1.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loan AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING sum(T2.amount_of_loan) > (SELECT avg(amount_of_loan) FROM Student_Loan)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Leans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Leans)
SELECT min(date_of_loan) FROM Student_Events
SELECT min(date_of_loan) FROM Student_Events
SELECT T2.bio_data FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY min(amount_of_loan) ASC LIMIT 1
SELECT T2.bio_data FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN Student_Leans AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY max(T2.amount_of_loan) DESC LIMIT 1
SELECT T1.date_of_loan FROM Student_Events AS T1 JOIN Student_Loans AS T2 ON T1.event_id = T2.event_id GROUP BY T2.student_id ORDER BY sum(T2.amount_of_loan) DESC LIMIT 1
SELECT T2.teacher_details FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T2.bio_data , COUNT(*) FROM Students AS T1 JOIN Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT student_id , student_bio_data , count(*) FROM Students GROUP BY student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T2.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_code , T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bi_data FROM Students EXCEPT SELECT T2.bio_data FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM Author
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM BOOK
SELECT title , ISBN , saleprice FROM book
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT name , address FROM client ORDER BY name
SELECT Name , Address FROM Client ORDER BY Name ASC
SELECT title , author FROM book
SELECT T1.Title , T2.Author FROM Book AS T1 JOIN Author AS T2 ON T1.ISBN = T2.ISBN
SELECT idorder , name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.ISBN , count(*) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.ISBN , count(*) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.ISBN , sum(T2.amount) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT sum(amount) , isbn FROM books_order GROUP BY isbn
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.Title ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title , T1.PurchasePrice FROM BOOK AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.ISBN ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.idorder
SELECT DISTINCT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.DateOrder
SELECT name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , sum(T2.amount) FROM Clients AS T1 JOIN Books_Order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.Name , sum(T2.amount) FROM Client AS T1 JOIN Books_Order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.Name
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT Title FROM Book WHERE ISBN NOT IN (SELECT ISBN FROM Books_Order)
SELECT Title FROM Book WHERE ISBN NOT IN (SELECT ISBN FROM Books_order)
SELECT Name FROM Client WHERE id NOT IN (SELECT id FROM Orders)
SELECT Name FROM Client EXCEPT SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice) , max(PurchasePrice) FROM BOOK
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT Title FROM BOOK ORDER BY SalePrice ASC LIMIT 1
SELECT Title FROM BOOK WHERE SalePrice = (SELECT min(SalePrice) FROM BOOK)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.Author = T3.id Author WHERE T3.Name = "George Orwell"
SELECT avg(T1.SalePrice) FROM BOOK AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "George Orwell"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "Plato"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "Plato"
SELECT title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.idsn = T3.idsn WHERE T3.name = "George Orwell" ORDER BY T1.SalePrice ASC LIMIT 1
SELECT Title FROM Book WHERE SalePrice = (SELECT min(SalePrice) FROM Book WHERE Author = "George Orwell")
SELECT title FROM book WHERE purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Author = "Plato" AND T1.SalePrice < (SELECT avg(SalePrice) FROM Book)
SELECT Author FROM Book WHERE Title = "Pride and Prejudice"
SELECT T1.Name FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.Author JOIN Book AS T3 ON T2.ISBN = T3.ISBN WHERE T3.Title = "Pride and Prejudice"
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE "%Plato%"
SELECT count(*) FROM orders AS T1 JOIN author AS T2 ON T1.idorder = T2.idorder WHERE T2.name = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN author AS T2 ON T1.idorder = T2.idorder WHERE T2.name = 'Pride and Prejudice'
SELECT idorder FROM orders WHERE dateorder LIKE "%Pride and Prejudice%" INTERSECT SELECT idorder FROM orders WHERE dateorder LIKE "%The Little Prince%"
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books ORDER BY title) AND title = 'Pride' INTERSECT SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books ORDER BY title) AND title = 'Prince')
SELECT T3.ISBN FROM Clients AS T1 JOIN Orders AS T2 JOIN Books_Order AS T3 ON T1.idclient = T2.idorder AND T2.DateExped = T3.DateExped WHERE T1.Name = "Peter Doe" INTERSECT SELECT T3.ISBN FROM Clients AS T1 JOIN Orders AS T2 JOIN Books_Order AS T3 ON T1.idclient = T2.idorder AND T2.DateExped = T3.DateExped WHERE T1.Name = "James Smith"
SELECT T3.ISBN FROM Clients AS T1 JOIN Orders AS T2 JOIN Books_Order AS T3 ON T1.Name = T2.Name AND T2.IdOrder = T3.IdOrder WHERE T1.Name = "Peter Doe" INTERSECT SELECT T3.ISBN FROM Clients AS T1 JOIN Orders AS T2 JOIN Books_Order AS T3 ON T1.Name = T2.Name AND T2.IdOrder = T3.IdOrder WHERE T1.Name = "James Smith"
SELECT T3.Title FROM Clients AS T1 JOIN Books_Order AS T2 ON T1.idclient = T2.idclient JOIN Books AS T3 ON T2.isbn = T3.isbn WHERE T1.Name = "Peter Doe" EXCEPT SELECT T3.Title FROM Clients AS T1 JOIN Books_Order AS T2 ON T1.idclient = T2.idclient JOIN Books AS T3 ON T2.isbn = T3.isbn WHERE T1.Name = "James Smith"
SELECT T3.Title FROM Books AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.DateOrder = "Peter Doe" EXCEPT SELECT T3.Title FROM Books AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.DateOrder = "James Smith"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder LIKE "%Pride and Prejudice%"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books AS T3 ON T2.idorder = T3.idorder WHERE T3.Title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book WHERE TYPE != "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review GROUP BY Rating ORDER BY COUNT(*) DESC LIMIT 1
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
SELECT name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE nationality = 'England' OR nationality = 'Australia'
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1
SELECT name FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM customer WHERE card_credit < 50 INTERSECT SELECT nationality FROM customer WHERE card_credit > 75
SELECT nationality FROM customer WHERE card_credit > 50 INTERSECT SELECT nationality FROM customer WHERE card_credit < 75
SELECT T2.name , T1.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_id = T2.Customer_id JOIN dish AS T3 ON T1.Dish_Name = T3.Dish_Name
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.quantity DESC
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T1.quantity) DESC
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY sum(T1.quantity)
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) >= 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer EXCEPT SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT name FROM customer EXCEPT SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != " England "
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member WHERE Age = (SELECT max(Age) FROM member)
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Name , T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID JOIN member AS T3 ON T2.Member_ID = T3.Member_ID WHERE T1 Overall_Ranking > 100
SELECT T1.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T1.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(t1.age) FROM member AS t1 JOIN club_leader AS t2 ON t1.member_id = t2.member_id
SELECT club_name FROM club WHERE club_name LIKE "%state%"
SELECT Collection_Name FROM Collections
SELECT collection_subset_name FROM collection_subsets
SELECT detail_subset_details FROM Collection_Subsets WHERE collection_subset_name = 'Top collection'
SELECT collection_subset_details FROM Collection_Subsets WHERE collection_subset_name = 'Top collection'
SELECT document_subset_name FROM Document_subsets
SELECT document_subset_name FROM Document_subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_id FROM Documents_in_Collections
SELECT Document_Object_ID FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE OWNER = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT count(DISTINCT description) FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_id FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT document_id FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT Parent_Document_Object_ID , count(*) FROM Document_Objects GROUP BY Parent_Document_Object_ID
SELECT count(*) , Parent_Document_Object_ID FROM Document_Objects GROUP BY Parent_Document_Object_ID
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM COLLECTIONs
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = "Nice"
SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = "Nice"
SELECT Collection_Name FROM Collections WHERE Parent_Collection_ID = "null"
SELECT Collection_Name FROM Collections EXCEPT SELECT Parent_Collection_ID FROM Collections
SELECT document_id FROM Document_Objects GROUP BY document_id HAVING count(*) > 1
SELECT document_id FROM Document_Objects GROUP BY document_id HAVING count(*) > 1
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT document_id FROM Document_Objects WHERE OWNER = "Ransom"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Ransom"
SELECT T1.collection_id , T1.collection_name , count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT T1.collection_id , T1.collection_name , count(*) FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT document_id , count(*) FROM Documents_in_collections GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id , count(*) FROM Document_Objects GROUP BY document_object_id
SELECT document_id , count(*) FROM Document_Objects GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Documents_in_collections GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id , count(*) FROM Document_Objects GROUP BY document_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT T2.documentsubset_name FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.documentobject_id = T2.documentobject_id WHERE T1.owner = "Braeden"
SELECT DISTINCT T1.documentsubset_name FROM Document_subsets AS T1 JOIN Document_Objects AS T2 ON T1.documentsubset_id = T2.documentsubset_id WHERE T2.owner = "Braeden"
SELECT document_id , document_subset_name , count(*) FROM Document_Subsets GROUP BY document_id
SELECT document_subset_id , document_subset_name , count(Documents_in_Collections) FROM Document_Subsets GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT T2.documentsubset_name , T1.documentid FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.documentsubset_id = T2.documentsubset_id
SELECT T1.Document_subset_name , T2.Document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.Document_subset_id = T2.Document_subset_id
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = 'Ransom'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = "Ransom"
SELECT count(*) , T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_id
SELECT T1.Document_Object_ID , count(*) FROM Documents_in_Collections AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT count(Documents_in_Collections) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.Collection_Name , T1.Collection_ID , COUNT(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Collection_Name , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" AND T1.year = 2000
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T2.document_subset_name = 'Best for 2000'
SELECT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best" EXCEPT SELECT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT DISTINCT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best for 2000'
SELECT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1 Collection_id = T2 Collection_id WHERE T2.Collection_Name = "Best" OR T1.year = 2000
SELECT DISTINCT T1.document_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id JOIN Document_Subsets AS T3 ON T1.document_id = T3.document_id WHERE T2.collection_name = 'Best' OR T3.document_subset_name = 'Best for 2000'
SELECT Collection_Name FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Name FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM collections WHERE collection_name = 'Best'
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Best in"
SELECT T1.Subset_id FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T3.voice_sound_quality , T3.rhythm_tempo , T3.stage_presence FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN performance_score AS T3 ON T2.songs_id = T3.songs_id WHERE T1.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stagepresence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) AS T2.count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.score = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = "The Balkan Girls" AND T1.language = "english"
SELECT T2.id , T2.name FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score AS T1 JOIN stage_presence AS T2 ON T1.stage_presence = T2.id WHERE T1.stage_presence < 7 OR T2.stagepresence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T2.rhythm_tempo) , T1.language FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3english_translation = 'English'
SELECT T2.name , T2.popularity FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T2.name , T2.popularity FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_code = "Baltimore"
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT state , count(*) FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT country , count(*) FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD"
SELECT fname , lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM city WHERE country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT count(*) , country FROM city GROUP BY country
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM student EXCEPT SELECT StuID FROM city WHERE country = 'USA'
SELECT StuID FROM student EXCEPT SELECT StuID FROM city WHERE country = 'USA'
SELECT StuID FROM student WHERE sex = 'F' AND state = "PA"
SELECT StuID FROM student WHERE sex = 'F' AND state = "PA"
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM city WHERE country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT city1_code FROM direct_distance GROUP BY city1_code ORDER BY distance DESC LIMIT 2
SELECT city_code FROM direct_distance GROUP BY city_code ORDER BY distance DESC LIMIT 1
SELECT city_code FROM distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city2_code FROM direct_distance WHERE distance < 1000
SELECT city_code FROM distance WHERE distance < 1000
SELECT sum(distance) FROM direct_distance WHERE city1_code = "BAL"
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM direct_distance WHERE city1_code = "Boston"
SELECT avg(distance) FROM (SELECT city1_code FROM direct_distance WHERE city1_code = "Boston")
SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM direct_distance WHERE distance = "Chicago")
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code JOIN distance AS t3 ON t2.city1_code = t3.city1_code WHERE t3.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = "Chicago")
SELECT city_name FROM city WHERE city_code IN (SELECT city_code FROM direct_distance WHERE distance = (SELECT max(distance) FROM direct_distance WHERE city2_code = "Boston")
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city_code GROUP BY t2.city_code ORDER BY distance DESC LIMIT 1
SELECT city_code , sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_code , sum(distance) FROM Direct_distance GROUP BY city_code
SELECT city_name , avg(distance) FROM city GROUP BY city_name
SELECT city_name , avg(distance) FROM city GROUP BY city_name
SELECT distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith" AND T2.fname = "Tracy" AND T2.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT T2.fname , T2.lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM Direct_distance WHERE city1_code = "Linda Smith")
SELECT T2.fname , T2.lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM T1 WHERE T2.fname = "Linda")
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = "LINDA"
SELECT t2.state FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t1.fname = "LINDA"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT T1.name FROM boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT count(DISTINCT bid) FROM Reserves
SELECT DISTINCT T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT count(DISTINCT sid) FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors EXCEPT SELECT DISTINCT sid FROM sailors WHERE age = (SELECT min(age) FROM sailors)
SELECT count(DISTINCT name) FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT name , sid FROM sailsors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'Red' OR T2.color = 'Blue'
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'Red' OR T2.color = 'Blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOINBoats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'Red' OR T3.color = 'Blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOINboats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'Red' INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'Blue'
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "Red" INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "Blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'Red' INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'Blue'
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM Reserves
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T2.name , T3.sid FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.rating > 2
SELECT name , sid FROM sailors WHERE rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.name != "No";
SELECT name , age FROM sailors ORDER BY age LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM Sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(Rating) , max(Age) FROM Sailors
SELECT avg(Rating) , max(Age) FROM Sailors
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T2.name FROM Reservations AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T2.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reservations AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age > 1 GROUP BY T1.name
SELECT avg(T1.age) , T2.rating FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = 'Red' GROUP BY T2.rating
SELECT avg(T1.age) , T2.rating FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'Red' GROUP BY T2.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM Boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'Red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE sid IN (SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red")
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE sid IN (SELECT T1.id FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red')
SELECT max(Rating) FROM Sailors
SELECT max(Rating) FROM Sailors
SELECT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = "Melon"
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T1.bid WHERE T3.name = "Melon"
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) != 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT CLASS , count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads , count(*) FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT model , CLASS , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT DISTINCT Earpads FROM headphone EXCEPT SELECT DISTINCT Earpads FROM headphone WHERE Construction = "plastic"
SELECT DISTINCT Earpads FROM headphone EXCEPT SELECT DISTINCT Earpads FROM headphone WHERE Construction = "plastic"
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(*) , Neighborhood FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.Name , COUNT(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T1.Store_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone EXCEPT SELECT Headphone_ID FROM stock
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.quantity) DESC LIMIT 1
SELECT count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
SELECT Neighborhood FROM store EXCEPT SELECT T2.Nighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID
SELECT DISTINCT Neighborhood FROM store EXCEPT SELECT DISTINCT T2.Nighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID
SELECT count(*) FROM Author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM Paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM Paper WHERE venue = "NAACL" AND YEAR = 2000
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T2.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T1.year = 2009 AND T2.name = 'Columbia University'
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM Paper ORDER BY YEAR
SELECT t3.title , t2.paper_id FROM authors AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Harvard University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id JOIN university AS t4 ON t3.uad_id = t4.uad_id WHERE t4.name = "Harvard University"
SELECT title , paper_id FROM Paper WHERE author_id = (SELECT author_id FROM Author WHERE name = 'Mckeown')
SELECT title , paper_id FROM Paper AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown'
SELECT title , paper_id FROM Paper WHERE title IN (SELECT T1.title FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Columbia University')
SELECT T1.title , T1.paper_id FROM Paper AS T1 JOIN Affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Stanford' INTERSECT SELECT T1.title , T1.paper_id FROM Paper AS T1 JOIN Affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Columbia'
SELECT title , paper_id FROM Paper WHERE author_id = (SELECT T1.author_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown , Kathleen , Rambow , Owen')
SELECT T3.title , T2.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" INTERSECT SELECT T3.title , T2.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Kathleen" INTERSECT SELECT T3.title , T2.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow" INTERSECT SELECT T3.title , T2.paper_id FROM authors AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN papers AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Owen"
SELECT title , paper_id FROM paper WHERE author_id IN (SELECT T1.author_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Mckeown' EXCEPT SELECT T1.author_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Rambow')
SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Mckeown' EXCEPT SELECT t3.title , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Rambow'
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" OR T1.name = "Kathleen" OR T1.name = "Rambow" AND T2.author_id = "Owen"
SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id = 'Mckeown , Kathleen' OR t2.author_id = 'Rambow , Owen'
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T2.author_id = T3.author_id JOIN paper AS T4 ON T2.paper_id = T4.paper_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT name FROM affiliation ORDER BY count(*)
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM Paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Citation WHERE cited_paper_id = "A00-1002"
SELECT count(*) FROM Citation WHERE cited_paper_id = "A00-1002"
SELECT count(*) FROM Citation WHERE paper_id = "D12-1027"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T1.paper_id = "D12-1027"
SELECT T1.cited_paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.cited_paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) , T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Citation AS T1 JOIN Author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = 'Mckeown , Kathleen'
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T2.cited_id = T3.cited_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.cited_paper_id = t3.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper WHERE author_id = (SELECT author_id FROM Author WHERE name = 'Mckeown , Kathleen')
SELECT venue , YEAR FROM Paper WHERE author_id = (SELECT author_id FROM Author WHERE name = "Mckeown , Kathleen")
SELECT venue , YEAR FROM Paper WHERE title = 'Columbia University'
SELECT venue , YEAR FROM Paper WHERE title = "Columbia University"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T2.author_id = T3.author_id JOIN paper AS T4 ON T4.paper_id = T2.paper_id WHERE T4.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T2.author_id = T3.author_id JOIN paper AS T4 ON T4.paper_id = T2.paper_id WHERE T4.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM Paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year < 2009
SELECT count(*) FROM Paper WHERE YEAR <= 2009 AND Title = "Columbia University"
SELECT count(*) FROM Paper WHERE YEAR BETWEEN 2000 AND 2009
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND title = "Stanford University"
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM (SELECT * FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" , T1.name = "Kathleen")
SELECT count(*) FROM (SELECT * FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown , Kathleen")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = 'Mckeown , Kathleen' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.citation_id = t3.citation_id JOIN paper AS t4 ON t2.paper_id = t4.paper_id WHERE t4.title = 'Mckeown , Kathleen' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM Citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM Citation)
SELECT name FROM affiliation WHERE address LIKE "%China%" GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM affiliation WHERE address LIKE "%China%" GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , YEAR FROM Paper GROUP BY YEAR
SELECT venue , count(*) FROM Paper GROUP BY venue , YEAR
SELECT count(*) , affiliation_id FROM author_list GROUP BY affiliation_id
SELECT count(*) , affiliation_id FROM author_list GROUP BY affiliation_id
SELECT title FROM paper GROUP BY title HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE count(*) > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY author_id HAVING count(*) > 50)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.affiliation_id IN (SELECT T2.affiliation_id FROM affiliation AS T4 JOIN author_list AS T5 ON T4.affiliation_id = T5.affiliation_id WHERE T4.name = 'NAACL' INTERSECT SELECT T2.affiliation_id FROM affiliation AS T4 JOIN author_list AS T5 ON T4.affiliation_id = T5.affiliation_id WHERE T4.name = 'ACLS')
SELECT name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t2.affiliation_id = 'NAACL' INTERSECT SELECT name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t2.affiliation_id = 'ACLS'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.title = 'ACLS')
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.title = 'ACLS')
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY COUNT(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT Institution_Name , LOCATION , Founded FROM institution
SELECT Institution_Name , LOCATION , Founded FROM institution
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT Institution_Name , LOCATION FROM institution ORDER BY Founded DESC LIMIT 1
SELECT Institution_Name , LOCATION FROM institution ORDER BY Founded DESC LIMIT 1
SELECT T1.Institution_Name , COUNT(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_Name
SELECT T1.Institution_Name , COUNT(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_ID
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = "United States"
SELECT max(Age) , min(Age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT name FROM staff WHERE Nationality = 'ACL' INTERSECT SELECT name FROM staff WHERE Nationality = 'Naccl'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.year = 2003 OR T3.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Year >= 2003 OR T3.Year <= 2004
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T2.Conference_Name , T1.Year , COUNT(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT Conference_Name FROM conference ORDER BY Attendance DESC LIMIT 2
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID ORDER BY COUNT(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff EXCEPT SELECT T1.name , T1.nationality FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID WHERE YEAR = 2004)
SELECT Institution_Name , LOCATION FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID WHERE YEAR = 2004)
SELECT pilot_name FROM pilot_skills WHERE age = (SELECT max(age) FROM pilot_skills)
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT max(age) FROM PilotSkills)
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM pilot_skills WHERE age < 35 AND plane_name = "Piper Cub"
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT LOCATION FROM Hangar WHERE LOCATION = "F-14 Fighter"
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilot_skills WHERE age = 32
SELECT plane_name FROM pilot_skills WHERE pilot_name = "Jones" AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilotskills AS T1 JOIN aircraft AS T2 ON T1.plane_name = T2.plane_name WHERE T2.bomber = 'B-52' AND T1.age < 35
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT min(age) FROM PilotSkills WHERE plane_name = "Piper Cub")
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT min(age) FROM PilotSkills WHERE pilot_name = "Piper Cub")
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.plane_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT T2(plane_name) FROM pilot_skills GROUP BY T2(plane_name) ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT DISTINCT T2.plane_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 41 AND T1.pilot_name = 'Smith'
SELECT T2(plane_name) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 41 AND T1.pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN Smith AS T2 ON T1.pilot_name = T2.pilot_name
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT T2.type_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.pilot_name
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "Piper Cub" OR age > 35 OR age < 30
SELECT t1.pilot_name , t1.age FROM pilotskills AS t1 JOIN flyings AS t2 ON t1.plane_name = t2.plane_name WHERE t2.F-14 Fighter = 'Piper Cub' OR t1.age > 35
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM pilot_skills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM pilot_skills WHERE plane_name = "B-52 Bomber"
SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2(plane_name = "Piper Cub" INTERSECT SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2(plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT DISTINCT T1.pilot_name FROM pilot_skills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT DISTINCT T1.pilot_name FROM pilot_skills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(age) , T2.type_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.type_name
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name
SELECT count(*) , TYPE FROM PilotSkills GROUP BY TYPE
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , TYPE_of_plane_name FROM pilot_skills ORDER BY plane_name
SELECT DISTINCT t1.pplane_name , t2.pilot_name FROM PilotSkills AS t1 JOIN Hangar AS t2 ON t1.pplane_name = t2.pplane_name ORDER BY t1.pplane_name
SELECT pilot_name , age FROM PilotSkills WHERE age = (SELECT max(age) FROM PilotSkills) GROUP BY age , TYPE_OF_plane_name
SELECT DISTINCT T2(plane_name) , T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = (SELECT max(age) FROM PilotSkills)
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) FROM PilotSkills GROUP BY count(*)
SELECT LOCATION , COUNT(*) , avg(age) FROM PilotSkills GROUP BY LOCATION
SELECT count(*) FROM pilot_skills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35
SELECT DISTINCT T2(plane_name) , count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2(plane_name) HAVING avg(T1.age) < 35
SELECT t2.location FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name ORDER BY t1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT DISTINCT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT max(age) FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT max(age) FROM pilot_skills WHERE plane_name = "Piper Cub") ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT max(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills WHERE age < (SELECT max(age) FROM pilot_skills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM PilotSkills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilot_skills WHERE age > (SELECT max(age) FROM pilot_skills WHERE plane_name = "Piper Cub")
SELECT count(*) FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE pilot_name = "Piper Cub")
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT District_ID , Name , Government_website FROM district ORDER BY Population ASC
SELECT Name FROM district WHERE Government_website LIKE "%gov%"
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speech_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T1.District_ID = T3.District_ID WHERE T3.Name < 2004
SELECT count(*) , T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID WHERE T2.Rank_position = 1 INTERSECT SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID WHERE T2.Rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.District_ID = t2.District_ID
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT DISTINCT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM artists WHERE birthYear > 1850
SELECT fname , lname FROM artists WHERE birthYear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION != "226"
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT lname FROM artists ORDER BY deathYear ASC LIMIT 1
SELECT fname FROM artists ORDER BY deathYear ASC LIMIT 1
SELECT fname FROM artists ORDER BY deathYear ASC LIMIT 1
SELECT fname , age FROM artists ORDER BY deathYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT T2.fname , T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T1.height_mm DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.birth_year DESC LIMIT 1
SELECT T2.fname , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthYear < 1850
SELECT width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear < 1850
SELECT T2.location , T2.medicaltype FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid WHERE T1.fname = "Pablo"
SELECT T2.location , T2.mediumon FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium oil painting" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = " lithographic painting"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Lithographic"
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.mediumon = 'yes'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = 241
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT title FROM paintings WHERE YEAR > 1910
SELECT DISTINCT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.height_mm = 240
SELECT DISTINCT painterid FROM paintings WHERE medium = 'Medium' AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = "canvas")
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = "canvas")
SELECT DISTINCT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE LOCATION != 240)
SELECT DISTINCT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR = (SELECT max(YEAR) FROM paintings)
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950
SELECT title , title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950
SELECT title FROM paintings WHERE painterid = 222
SELECT title FROM paintings WHERE painterid = 222
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.artistID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scultorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE mediumOn = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'Oil' AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND paintingid = 241
SELECT max(height_mm) , painterid FROM paintings WHERE YEAR < 1900
SELECT height_mm , painterid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY name
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY name
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.ddeathYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculotid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT height_mm , painterid FROM paintings WHERE width_mm = 240
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT DISTINCT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings ORDER BY YEAR
SELECT title , LOCATION , painterid FROM paintings ORDER BY creationdate , LOCATION , title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT fname , lname FROM artists EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN painting AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculotorid
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures) INTERSECT SELECT fname , lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings)
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = "mediumOn"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "Canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT ENGINE) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING COUNT(*) >= 2
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age >= 26
SELECT race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(just_score) FROM countries
SELECT avg(jjustice_score) FROM countries
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.language_id FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT T2.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "English"
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.id ORDER BY avg(T3.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT county_state_province , town_city FROM Addresses
SELECT county_state_province , town_city FROM Addresses
SELECT T1.state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "Rounded Ridges"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code , T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.other_user_details LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.other_user_details LIKE "%Mother%"
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_type_code = "Garden"
SELECT avg(T2.room_count) FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T1.feature_id = T3.feature_id WHERE T3.feature_name = 'Garden'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id JOIN Features AS T4 ON T3.feature_id = T4.feature_id WHERE T4.feature_name = 'Swimming Pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id JOIN Features AS T4 ON T3.feature_id = T4.feature_id WHERE T4.feature_name = 'Swimming Pool'
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT T1.user_id , T1.first_name , T1.last_name FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY date_datetime DESC LIMIT 1
SELECT search_datetime FROM user_searches ORDER BY date_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM user_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM user_searchs ORDER BY search_string DESC
SELECT zip_postcode FROM Addresses EXCEPT SELECT zip_postcode FROM Properties WHERE owner_user_id <= 2
SELECT zip_postcode FROM Addresses EXCEPT SELECT zip_postcode FROM Properties WHERE owner_user_id IN ( SELECT count(*) FROM User_Property_History GROUP BY zip_postcode HAVING count(*) <= 2 )
SELECT T1.age_category_code , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.date_registered ASC LIMIT 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.date_registered LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = "senior" ORDER BY first_name
SELECT count(*) FROM user_searches
SELECT count(*) FROM user_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id GROUP BY T2.is_buyer
SELECT date_registered FROM Users WHERE login_name = "ratioe"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 'Yes'
SELECT line_1_building , line_2_street , line_3_city FROM Addresses WHERE other_address_details = 'Senior Citizens'
SELECT line_1_number_building , line_2_number_street , line_3_area_locality FROM Addresses WHERE other_address_details = 'senior'
SELECT count(*) FROM Property_Features GROUP BY count(*) HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY count(*) HAVING count(*) >= 2
SELECT count(*) , T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id GROUP BY T1.property_id
SELECT T1.owner_id , count(*) FROM Users AS T1 JOIN Property_photos AS T2 ON T1.user_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.owner_id , count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id JOIN Property_Photos AS T4 ON T2.property_id = T4.property_id GROUP BY T1.owner_id
SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID = 'single' OR OWNER_USER_ID = 'student'
SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID = 'single' OR OWNER_USER_ID = 'student'
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM user_property_history AS T1 JOIN properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_code , T1.property_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT count(*) , room_size FROM Rooms GROUP BY room_size
SELECT T1.county FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id
SELECT search_string FROM User_Searches EXCEPT SELECT T1.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT search_string FROM user_searches EXCEPT SELECT T1.search_string FROM user_searches AS T1 JOIN properties AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.last_name , T1.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , RESULT FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T1.bike_id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nationality = 'Russia' OR T3.nationality = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 );
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.Result > '4:21.558'
SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nationality , RESULT FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.id ORDER BY T1.id
SELECT max(Price) , max(Favor) FROM goods
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(Price) , Flavor FROM goods GROUP BY Flavor
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT Id FROM goods WHERE Flavor = "Apple"
SELECT Id FROM goods WHERE Flavor = "Apple"
SELECT Id FROM goods WHERE Price < 3
SELECT Id FROM goods WHERE Price < 3
SELECT DISTINCT T2.CustomerId FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptid WHERE T1.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.receiptnumber = T3.id WHERE T3.flavor = "lemon"
SELECT T1.Food , COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptid GROUP BY T1.Food
SELECT T2.Fname , T2.Lname , COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptid GROUP BY T1.Fname , T1.Lname
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*) >= 15
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId HAVING COUNT(*) > 10
SELECT count(*) FROM goods WHERE flavor = "Cake"
SELECT count(*) FROM goods WHERE food = "Cake"
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.Receipts WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.ReceiptNumber JOIN customers AS T3 ON T2.CustomerId = T3.Id WHERE T3.FirstName = "15"
SELECT avg(Price) , max(Price) , min(Price) , Food FROM goods GROUP BY Food
SELECT avg(Price) , min(Price) , max(Price) , Food FROM goods GROUP BY Food
SELECT receiptnumber FROM receipts WHERE item = "Cake" INTERSECT SELECT receiptnumber FROM receipts WHERE item = "Cookie"
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.customerid WHERE T2.flavor = "Cake" INTERSECT SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.customerid WHERE T2.flavor = "Cookie"
SELECT T1.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.Item = T3.Id JOIN goods AS T4 ON T3.Goods = T4.Id WHERE T4.Flavor = "Croissant" AND T1.LastName = "LOGAN"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.LastName = "Logan" AND T2.Flavor = "Crocans"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id ORDER BY T3.Price DESC LIMIT 1
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.ReceiptNumber ORDER BY T2.Price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Item FROM items GROUP BY Item ORDER BY COUNT(*) ASC LIMIT 1
SELECT food , count(*) FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.id WHERE T1.price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.CustomerId JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 13
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN goods AS T3 ON T1.id = T3.id WHERE T3.Price > 15
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN items AS T3 ON T1.ReceiptNumber = T3.ReceiptNumber JOIN goods AS T4 ON T3.GoodsId = T4.Id WHERE T4.Price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT id , price FROM goods WHERE Price LIKE "%70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT Order FROM items
SELECT DISTINCT Id FROM items
SELECT T1.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN customers AS T3 ON T2.CustomerId = T3.Id WHERE T3.FirstName = "Apple" OR T2.CustomerId = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.id JOIN goods AS T3 ON T1.Item = T3.id WHERE T3.Favoring = "Apple" OR T2.id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT Date FROM receipts ORDER BY Date ASC LIMIT 1 UNION SELECT Price FROM goods WHERE Price > 10
SELECT receiptnumber FROM receipts WHERE price > 10 OR Date ASC LIMIT 1
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.FirstName , T1.LastNameName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.CustomerId ORDER BY T2.Date ASC LIMIT 1
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "Blackberry" OR Flavor = "Blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "Blackberry" OR Flavor = "Blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price) , max(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(price) , max(price) FROM goods WHERE food = 'food'
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T2.FirstName , COUNT(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T2.CustomerId ORDER BY COUNT(*) DESC LIMIT 1
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , Date FROM receipts GROUP BY Date
SELECT count(*) , Date FROM receipts GROUP BY Date
SELECT T1.FirstName , T1.LastNameName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.Flavor = "Apple"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.id WHERE T3.flavor = "Apple"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = 'Cookies')
SELECT id FROM goods EXCEPT SELECT id FROM goods WHERE price = (SELECT max(price) FROM goods WHERE flavor = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Cake")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods WHERE food = "Cakes" ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.Flavor = "Chocolate" EXCEPT SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING COUNT(*) > 10
SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Flavor = "Chocolate" GROUP BY T1.Receipt HAVING count(*) <= 10
SELECT DISTINCT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT DISTINCT Flavor FROM goods WHERE Food = "Tart"
SELECT DISTINCT flavor FROM goods EXCEPT SELECT DISTINCT flavor FROM goods WHERE food = 'Tart'
SELECT * FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT item FROM items GROUP BY item ORDER BY count(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.Price) > 150
SELECT id FROM goods GROUP BY id HAVING sum(price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) >= 5
SELECT T1.id , avg(T2.Price) FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING avg(T2.Price) > 5
SELECT Date FROM receipts GROUP BY Date HAVING sum(Price) > 100
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.Id = T2.Receipts GROUP BY T2.Date HAVING sum(T1.Price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT make , COUNT(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner ASC
SELECT Manager , Sponsor , Car_Owner FROM Team ORDER BY Car_Owner
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
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT avg(Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Official_native_language = "English"
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = "English")
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver ORDER BY Points DESC LIMIT 1
SELECT Country FROM driver ORDER BY Points DESC LIMIT 1
SELECT T1.Make , COUNT(*) FROM team AS T1 JOIN driver AS T2 ON T1.Team_ID = T2.Driver_ID GROUP BY T1.Make
SELECT T2.Make , COUNT(*) FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Make
SELECT T2.Make FROM driver AS T1 JOIN team AS T2 ON T1.Car_# = T2.Car_# GROUP BY T1.Car_# ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT T2.Make FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Make HAVING COUNT(*) >= 3
SELECT Team FROM Team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM Team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country != "United States"
SELECT Country FROM country WHERE Country != (SELECT Country FROM driver)
SELECT T2.Manager , T2.Sponsor FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID HAVING COUNT(*) >= 2
SELECT T2.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY founded
SELECT name FROM institution ORDER BY founded
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(enrollment) , min(enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT affiliation FROM institution WHERE city != 'Vancouver'
SELECT DISTINCT affiliation FROM institution WHERE city != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id ORDER BY count(*) DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT sum(T1.number_of_championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT Contents FROM boxes WHERE LOCATION = "New York"
SELECT DISTINCT Contents FROM Boxes WHERE LOCATION = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT avg(T1.value) , T2.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT avg(T1.value) , T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT avg(Value) , sum(Value) FROM Boxes
SELECT avg(Value) , sum(Value) FROM Boxes
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(max) , Contents FROM Boxes GROUP BY Contents
SELECT avg(Value) , max(Value) , Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT DISTINCT LOCATION FROM warehouses
SELECT DISTINCT LOCATION FROM warehouses
SELECT code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT * FROM warehouses WHERE LOCATION = 'Chicago' INTERSECT SELECT * FROM warehouses WHERE LOCATION != 'New York'
SELECT Contents FROM boxes WHERE LOCATION = "Chicago" INTERSECT SELECT Contents FROM boxes WHERE LOCATION = "New York"
SELECT TYPE FROM boxes EXCEPT SELECT TYPE FROM warehouses WHERE LOCATION != "New York"
SELECT DISTINCT Contents FROM Boxes EXCEPT SELECT DISTINCT Contents FROM Warehouses WHERE LOCATION = "New York"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = "Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = "Rocks" EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1_contents = "Scissors"
SELECT DISTINCT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T2.Warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" OR T1.Contents = "Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1_contents = "Rocks and Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1_contents = "Rocks and Scissors"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT count(*) FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT Contents FROM Boxes ORDER BY Contents ASC
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = "Rocks")
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = "Rocks")
SELECT code , Contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE Contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT avg(T1.value) , T2.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150
SELECT avg(T1.value) , T2.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse HAVING avg(T1.value) > 150
SELECT sum(T1.value) , count(T2.contents) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.contents
SELECT sum(boxes) , Contents FROM boxes GROUP BY Contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT LOCATION , avg(capacity) , max(capacity) FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(Contents) , LOCATION FROM Boxes GROUP BY LOCATION
SELECT max(Price) , LOCATION FROM Boxes GROUP BY LOCATION
SELECT warehouse , count(*) FROM Boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE_contents = "Rocks"
SELECT count(DISTINCT T2.warehouse) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks"
SELECT code , name FROM Warehouses
SELECT code , LOCATION FROM warehouses UNION SELECT code , LOCATION FROM boxes
SELECT Code FROM Boxes WHERE LOCATION = "Chicago"
SELECT code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE LOCATION = "Chicago"
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT T1.contents) , T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT count(DISTINCT T1 Contents) , T2.Warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Warehouse
SELECT code FROM warehouses WHERE capacity > (SELECT max(capacity) FROM warehouses)
SELECT code FROM boxes GROUP BY code HAVING count(*) > capacity
SELECT sum(Value) FROM boxes WHERE Warehouse != "Chicago"
SELECT sum(Contents) FROM Boxes WHERE Contents != "Chicago"
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_conference , COUNT(*) FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) >= 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY Enrollment ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.Major_Name , T1.Rank FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T3.University_Name = "8888"
SELECT T2.Rank , T1.Major_Name FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.City = "8888"
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T2.Rank
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Major_ID = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT University_Name , COUNT(*) FROM university WHERE State = "Wisconsin" GROUP BY University_Name
SELECT University_Name , Rank FROM university WHERE State = "Wisconsin"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Ranking_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name >= "Accounting" ORDER BY T2.Rank
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" OR T2.Rank >= 3
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T2.University_ID HAVING sum(T2.Total) <= 5
SELECT sum(Enrollment) FROM university WHERE University_ID IN (SELECT University_ID FROM overall_ranking WHERE Rank <= 5)
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating = "null"
SELECT Title FROM MovieTheaters WHERE Movie != "Movies"
SELECT Title FROM Movies WHERE Rating = "G"
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code WHERE T2.Name = "Odeon"
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(DISTINCT T2.Title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(DISTINCT T2.Title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(DISTINCT T2.Title) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(DISTINCT title) FROM movies
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code WHERE T1 Rating = ‘G’ OR T1 Rating = ‘PG’
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" OR T1.Name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon" OR T1.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon"
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon"
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title , T2.Code FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie GROUP BY T2.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY COUNT(*) DESC LIMIT 1
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT Name FROM MovieTheaters WHERE Movie != "Movies"
SELECT T2.name FROM movies AS T1 JOIN movieaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code WHERE T1.Rating = "G"
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies
SELECT * FROM Movies
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1
SELECT T2.name FROM Package AS T1 JOIN Client AS T2 ON T1.Reipient = T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT sum(weight) FROM Package WHERE sender = 'Leo Wong'
SELECT sum(weight) FROM Package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary , POSITION FROM Employee WHERE name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = "Turanga Leela"
SELECT avg(Salary) FROM Employee
SELECT avg(Salary) FROM Employee
SELECT LEVEL FROM Has_clearance
SELECT DISTINCT LEVEL FROM has_clearance
SELECT PackageNumber FROM Package WHERE Sender = "Leo Wong"
SELECT count(*) FROM Package WHERE Sender = "Leo Wong"
SELECT packagenumber FROM Package AS T1 JOIN Employee AS T2 ON T1.Reipient = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT packagenumber FROM Package AS T1 JOIN Employee AS T2 ON T1.Reipient = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT * FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT DISTINCT T1.packagenumber FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Reipient = T2.AccountNumber JOIN Employee AS T3 ON T1.Sender = T3.EmployeeID WHERE T3.Name = "Ogden Wernstrom" AND T2.Name = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Reipient = T2.AccountNumber JOIN Employee AS T3 ON T1.Sender = T3.EmployeeID WHERE T3.Name = "Ogden Wernstrom" AND T2.Name = "Leo Wong"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT T2 packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name LIKE '%John%'
SELECT PackageNumber , Weight FROM Package WHERE Sender = "John" OR Sender = "John"
SELECT packagenumber , weight FROM Package ORDER BY weight LIMIT 3
SELECT PackageNumber , Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.Sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sentor GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.reipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1
SELECT min(weight) , min(Recipient) FROM Package
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.Sender GROUP BY T2.Sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.Sender GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT name , coordinates FROM Planet ORDER BY name
SELECT Name , Coordinates FROM PLANET ORDER BY Name
SELECT shipmentid FROM shipment WHERE manager = "Phillip J. Fry"
SELECT shipmentid FROM shipment WHERE manager = 'Phillip J Fry'
SELECT Date FROM shipment
SELECT Date FROM SHipment
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Name = "Mars"
SELECT ShipmentID FROM SHipment WHERE PLANET = "Mars" AND Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM shipment AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID JOIN employee AS T3 ON T1.Manager = T3.EmployeeID WHERE T2.Name = "Mars" AND T3.Name = "Turanga Leela"
SELECT ShipmentID FROM SHipment AS T1 JOIN PLANET AS T2 ON T1.Planet = T2.PlanetID JOIN EMPLOYEE AS T3 ON T1.Manager = T3.EmployeeID WHERE T2.Name = "Mars" OR T3.Name = "Turanga Leela"
SELECT ShipmentID FROM Shipment WHERE Manager = "Martins"
SELECT T2.Name , COUNT(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet
SELECT count(*) , T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.name
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT count(*) , manager FROM shipment GROUP BY manager
SELECT sum(weight) FROM Package WHERE shipment = 'Mars'
SELECT sum(weight) FROM package WHERE shipment = 'Mars'
SELECT T2.Name , SUM(T1.Weight) FROM Package AS T1 JOIN Shipments AS T2 ON T1.Shipment = T2.ShipmentID GROUP BY T2.Name
SELECT sum(T1.Weight) , T2.Name FROM Package AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT T2.Name FROM SHipment AS T1 JOIN PLANET AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING SUM(T1.Weight) > 30
SELECT T2.Name FROM shipment AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING sum(T1.Weight) > 30
SELECT T2.packingnumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Zapp Brannigan" AND T2.name = "Omicron Persei"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Employee AS T3 ON T1.Sender = T3.AccountNumber WHERE T3.Name = "Zapp Brannigan" AND T2.Name = "Omicron Persei 8"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Employee AS T3 ON T1.Sender = T3.AccountNumber JOIN Planet AS T4 ON T4.PlanetID = T2.PlanetID WHERE T4.Name = "Omicron Persei" OR T3.Name = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T3.planetid = T1.planetid WHERE T3.name = "OMICRON PERSEI" AND T2.name = "ZAPPS BRANGA"
SELECT PackageNumber , Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT PackageNumber , Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Date LIKE "Mars%"
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Date = "Mars"
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employeeid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Omega III'
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.EmployeeID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = "Omega III"
SELECT T2.Name FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING COUNT(*) = 1
SELECT T2.Name FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING COUNT(*) = 1
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR has_clearance >= 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN ( SELECT Employee FROM Has_clearance WHERE Date LIKE "Mars%" )
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN ( SELECT Employee FROM Has_clearance WHERE Date LIKE "Mars%" )
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT Platform_name , Market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T2.Player_name , T2.Rank_of_the_year FROM game AS T1 JOIN player AS T2 ON T1.Game_ID = T2.Player_ID WHERE T1.Title = "Super Mario World"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Auburn'
SELECT avg(T2.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT title , platform_name FROM game
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T1.Franchise , COUNT(*) FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID GROUP BY T1.Franchise
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Oklahoma' OR T3.College = 'Auburn'
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.Position = "Guard")
SELECT title FROM game EXCEPT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = "Guard"
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY Year_Profits_billion DESC
{"sql": "SELECT T1.name FROM author AS T1 JOIN press AS T2 ON T1.author_id = T2.press_id GROUP BY T1.name HAVING sum(T2.year_profits_billion) > 15000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM press WHERE Year_Profits_billion > 15 billion OR Month_Profits_billion > 1 billion
SELECT avg(YEAR_PROFITS_billion) , max(YEAR_PROFITS_billion) FROM press
SELECT avg(YEAR_PROFITS_billion) , max(YEAR_PROFITS_billion) FROM press
SELECT name FROM press ORDER BY monthly_profit_billion DESC LIMIT 1
SELECT name FROM press ORDER BY monthly_profit_billion DESC LIMIT 1
SELECT name FROM press ORDER BY monthly_profit_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(Age) , Gender FROM author GROUP BY Gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING COUNT(*) > 1
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title , T1.Author_ID , T1.Press_ID FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID GROUP BY T1.Title ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.name , sum(T2.Sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T1.Name , sum(T2.Sale_Amount) FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING T1.book_amount > 1000
SELECT T1.name , count(*) FROM press AS T1 JOIN book AS T2 ON T1.prise_id = T2.prise_id WHERE T2.sales_amount > 1000 GROUP BY T1.name
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Book_Sales_Amount DESC LIMIT 1
SELECT T1.Name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.prise_id = T2.prise_id GROUP BY T1.prise_id HAVING count(*) > 2
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = " Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM documents WHERE document_id = 4
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT author_name , other_details FROM Documents WHERE document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT process_name FROM Business_Processes WHERE next_process_id = 9
SELECT count(*) FROM process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(Documents.document_id) FROM Documents_Processes
SELECT DISTINCT T2.process_id FROM Documents_Processes AS T1 JOIN Business_Processes AS T2 ON T1.process_id = T2.process_id
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_Processes
SELECT process_id FROM Business_Processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_outcomes AS T1 JOIN Documents_Processes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.document_id = 0
SELECT T2.process_name FROM Documents AS T1 JOIN Business_Processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Travel to Brazil"
SELECT T1.process_id , count(*) FROM Documents_Processes AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.process_id
SELECT count(*) FROM Staff_in_Processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
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
SELECT T1.agency_id , count(*) FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agility_id
SELECT count(*) , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agency_details
SELECT T1.agency_id , T1.agey_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agey_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agy_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id GROUP BY T1.agy_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agy_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id GROUP BY T1.agy_id HAVING count(*) >= 2
SELECT T1.ago_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id WHERE T2.client_details = "Mac"
SELECT client_details , T1.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agage_id
SELECT client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agy_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agy_id = T2.agy_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agility_id = T2.agility_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status , invoice_details , client_id , agency_id , client_details FROM Invoices
SELECT invoice_status , invoice_details , client_id , client_details , agency_id , invoice_details FROM Invoices
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT payment_id , payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT payment_id , payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM Invoices EXCEPT SELECT invoice_id , invoice_status FROM Payments
SELECT invoice_id , invoice_status FROM invoices EXCEPT SELECT invoice_id , invoice_status FROM Payments
SELECT count(*) FROM Payments
SELECT count(*) FROM payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM INVOICES
SELECT DISTINCT invoice_id , invoice_status FROM INVOICES
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_details
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agent_id , count(*) FROM Staff GROUP BY agent_id
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.ago_id , T1.staff_details FROM Staff AS T1 JOIN Agencies AS T2 ON T1.ago_id = T2.ago_id GROUP BY T1.ago_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.ago_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.ago_id = T2.ago_id GROUP BY T1.ago_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
SELECT meeting_id , count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*) , T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT staff_id , count(*) FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings );
SELECT client_id , client_details FROM Clients INTERSECT SELECT client_id , invoice_details FROM Invoices
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT staff_id , staff_details FROM Staff WHERE staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) >= 1
SELECT T1.client_id , T1.sic_code , T1.company_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.company_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) >= 2
SELECT start_date_time , end_date_time , client_details , staff_details FROM Meetings
SELECT start_date_time , end_date_time , client_id , staff_details FROM Meetings
