SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager, Captain FROM club
SELECT Manager, Captain FROM club
SELECT Name FROM club WHERE Manufacturer!= "Nike"
SELECT Name FROM club WHERE Manufacturer!= "Nike"
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2
SELECT T1.country FROM player AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id WHERE T1.wins_count > 2
SELECT T1.Name, T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING count(*) > 2
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Wins_count > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(Earnings) DESC
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(Earnings) DESC
SELECT DISTINCT manufacturer, count(*) FROM club GROUP BY manufacturer
SELECT count(*), manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT DISTINCT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player WHERE earnings > 1400000 INTERSECT SELECT country FROM player WHERE earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT customer_id, customer_first_name, customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY customer_id HAVING count(*) > 2 INTERSECT SELECT customer_id, customer_first_name, customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY customer_id HAVING count(*) >= 3
SELECT T1.order_id, T1.order_status_code, count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) > 1
SELECT min(date_order_placed), max(order_id) FROM orders GROUP BY order_id HAVING count(*) > 1
SELECT customer_id, customer_first_name, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) < 2)
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 5
SELECT product_id, product_name, product_price FROM products GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT min(product_price), sum(product_price) FROM products
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender, count(*) FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender
SELECT sum(T1.product_id), gender_code FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY gender_code
SELECT count(DISTINCT T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = 'placed'
SELECT count(DISTINCT T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "placed"
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM Customers
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT T2.product_name, T2.shipment_date FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name, T2.shipping_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_item_status_code, T1.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = 'Order'
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = "Shipped"
SELECT T2.product_name, T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.shipment_date > "2022-01-01"
SELECT product_name, product_color FROM shipments
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customers AS T2 ON T1.product_id = T2.product_id WHERE T2.gender_code = "F"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT sum(total_cost), order_id, date_order_placed FROM orders GROUP BY order_id
SELECT order_id, date_order_placed, sum(product_price) FROM INVOICES AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_id) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_id, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_id) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = "United States"
SELECT DISTINCT T1.customer_first_name, T1.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = "M" GROUP BY gender_code HAVING count(*) < (SELECT count(*) FROM customers WHERE gender_code = "M")
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT DISTINCT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT min(order_status_code) FROM orders
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT invoice_date, invoice_number FROM shipments WHERE shipment_date >= (SELECT min(shipment_date) FROM shipments) GROUP BY invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM INVOICES AS T1 JOIN SHIPMENTS AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T1.name FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, T1.age FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*), T2.name FROM program AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id WHERE T2.title = "Dracula"
SELECT T2.Name, T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.director_id = T2.channel_id WHERE T1.age < 40 INTERSECT SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.director_id = T2.channel_id WHERE T1.age > 60
SELECT Channel_ID, Name FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM director_admin WHERE Name = "Hank Baskett")
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE affiliation!= "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 UNION SELECT transmitter FROM radio WHERE ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT T1.Affiliation, COUNT(*) FROM city_channel AS T1 JOIN radio AS T2 ON T1.ID = T2.ID GROUP BY T1.Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city, station_name FROM city_channel ORDER BY station_name
SELECT transmitter, city_channel_id FROM radio
SELECT transmitter, station_name FROM radio ORDER BY ERP_kW DESC
SELECT transmitter, count(*) FROM radio GROUP BY transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT T2.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Citizenship = 'United States'
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Citizenship = "United States"
SELECT count(*), T1.driver_id FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT Driver_ID, count(*) FROM vehicle_driver GROUP BY Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT TOP (1), max(Top_Speed), max(Power) FROM vehicle WHERE Build_Year = 1996
SELECT top_speed, power FROM vehicle WHERE build_year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE build_year = 2012
SELECT count(*) FROM vehicle_driver WHERE racing_series = 'NASCAR'
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT model, build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID = 2 OR Builder = 'Ziyang'
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID IN (SELECT Driver_ID FROM vehicle_driver GROUP BY Driver_ID HAVING count(*) = 2) OR Builder = "Ziyang"
SELECT Vehicle_ID, Model FROM vehicle_driver GROUP BY Vehicle_ID HAVING count(*) > 2 UNION SELECT Vehicle_ID, Model FROM vehicle_driver WHERE Driver_ID = (SELECT Driver_ID FROM driver WHERE Name = 'Jeff Gordon')
SELECT Vehicle_ID, Model FROM vehicle_driver WHERE Driver_ID > 2 OR Driver_ID = (SELECT Driver_ID FROM driver WHERE Name = "Jeff Gordon")
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT DISTINCT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*), T1.Racing_Series FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Racing_Series
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT T2.Name, T2.Citizenship FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Model = 'DJ1'
SELECT T2.Name, T2.Citizenship FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Model = 'DJ1'
SELECT count(*) FROM vehicle_driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Exam_Name
SELECT DISTINCT Subject_Code FROM Exams
SELECT exam_name, exam_date FROM exams WHERE subject_code!= "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, count(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, COUNT(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text, Date_of_Answer FROM Student_Answers ORDER BY Date_of_Answer DESC
SELECT T2.Email_Adress, T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT Min(Assessment) FROM Student_Assessments
SELECT Exam_Name FROM exams GROUP BY Exam_Name ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.First_Name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, count(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, count(*) FROM Students GROUP BY Gender_MFU
SELECT DISTINCT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT DISTINCT last_name FROM students WHERE gender_mfu = "F" OR gender_mfu = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT DISTINCT Student_ID FROM Student_Answers WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM students
SELECT * FROM student_answers
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' AND product_price = (SELECT min(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_id, product_name FROM products ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code
SELECT product_type_code, avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code, avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT DISTINCT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id, customer_name FROM customers
SELECT customer_id, customer_name FROM customers
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = 'Jeromy';
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = "Jeromy"
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Jeromy"
SELECT customer_name, count(*), customer_id FROM Customer_Orders GROUP BY customer_id
SELECT customer_name, customer_id, count(*) FROM customer_orders GROUP BY customer_id
SELECT customer_id, customer_name, customer_phone, customer_email FROM customers ORDER BY order_count DESC LIMIT 1
SELECT customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT count(*), order_status_code FROM customer_orders
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_type_code = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T1.product_name = "Monitor"
SELECT count(DISTINCT t1.customer_id) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id JOIN customer_orders AS t3 ON t2.order_id = t3.order_id JOIN customers AS t4 ON t3.customer_id = t4.customer_id WHERE t1.product_name = "Monitor"
SELECT count(*) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM order_items
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT order_date, order_id FROM order_items WHERE order_quantity > 6 OR count(*) > 3
SELECT order_id, order_date FROM order_items WHERE order_quantity > 6 OR product_id IN (SELECT product_id FROM products GROUP BY product_id HAVING count(*) > 3)
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year!= 1980
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
SELECT T2.Name, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.name, T1.region_id FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT DISTINCT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T1.capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.capital ORDER BY count(*) DESC LIMIT 1
SELECT region_id, capital FROM region ORDER BY area DESC LIMIT 1
SELECT T2.Address, T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT Number_of_Stories FROM building WHERE region_id = (SELECT region_id FROM region WHERE name = "Abruzzo")
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building ORDER BY Completed_Year DESC LIMIT 1
SELECT Name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT * FROM building ORDER BY Number_of_Stories DESC, Completed_Year
SELECT Channel_Details FROM CHANNELS ORDER BY Channel_Details
SELECT Channel_Details FROM CHANNELS ORDER BY Channel_Details
SELECT count(*) FROM Services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Service_ID = T3.Service_ID WHERE T3.Customer_ID = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.customer_details FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT * FROM Customers WHERE Customer_ID NOT IN (SELECT Customer_ID FROM Customers_and_Services)
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details FROM customers_and_services
SELECT count(*), count(DISTINCT service_details FROM customers_and_services
SELECT * FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details LIKE '%Kutch%'
SELECT T2.Service_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Customer_Details = "Hardy Kutch" OR T2.Status_Code = "good"
SELECT T1.service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.service_id = T2.Service_ID WHERE T2.customer_id = "Hardy Kutch" AND T1.service_details = "good"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customer_ID = "Hardy Kutch" AND T1.Service_Details = "bad"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customer_ID = "Hardy Kutch" AND T1.Service_Details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT * FROM customer_interactions WHERE Status_Code = "Stuck" INTERSECT SELECT * FROM customer_interactions WHERE Services_and_Channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services_and_channels_details AS T3 ON T2.service_id = T3.service_id WHERE T3.service_details = "bad" AND T3.status_code = "Stuck"
SELECT count(*) FROM Integration_platforms
SELECT count(DISTINCT Integration_Platform_Details FROM Integration_Platform WHERE Integration_Platform_Details LIKE '%Success%'
SELECT * FROM Integration_Platform WHERE Integration_Platform_details = 'Failed integration platform'
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_id = T2.customer_id WHERE T2.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT DISTINCT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT Analytical_Layer_Type_Code, count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT analytical_layer_type_code, count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Status_Code = "unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T2.services_and_channels_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 UNION SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM customers
SELECT name, age FROM customers WHERE membership_credit = (SELECT max(membership_credit) FROM customers)
SELECT name, membership_credit FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(membership_credit) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM discount
SELECT * FROM Discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T2.name, T2.model_year FROM renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name ORDER BY sum(T2.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.powertrain_type FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(total_hours) > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(total_hours) > 30
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate) FROM Vehicles WHERE TYPE_of_powertrain = 'Automatic'
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate), TYPE_of_powertrain FROM Vehicles
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT student_id, bio_data FROM classes AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY student_id HAVING count(*) >= 2 UNION SELECT student_id FROM detention AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY student_id HAVING count(*) < 2
SELECT student_id, bio_data FROM students WHERE class_id IN (SELECT student_id FROM classes GROUP BY student_id HAVING count(*) >= 2) OR student_id IN (SELECT student_id FROM detention GROUP BY student_id HAVING count(*) < 2)
SELECT teacher_details FROM Classes WHERE class_details LIKE '%data%' AND teacher_id NOT IN (SELECT teacher_id FROM Classes WHERE class_details LIKE '%net%')
SELECT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM detention UNION SELECT student_id FROM student_loans)
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM detention UNION SELECT student_id FROM student_loans)
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_details, teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM detention
SELECT DISTINCT detention_summary FROM detention
SELECT student_details, address_type_description FROM students_addresses
SELECT student_details, address_type_description FROM Students ADDRESSES
SELECT T1.address_details, T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.address_details, T1.student_details FROM addresses AS T1 JOIN students_addresses AS T2 ON T1.address_id = T2.address_id
SELECT bio_data, date_of_transcript FROM transcripts
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM behaviour_monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details, T1.student_id, T2.student_details FROM behaviour_monitoring AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 3
SELECT * FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = (SELECT student_id FROM behaviour_monitoring GROUP BY student_id HAVING count(*) = 3)
SELECT student_details FROM behaviour_monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT bio_data, event_date FROM Student_Events
SELECT count(*), T1.event_type_code, T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT event_type_code, count(*), event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_description FROM achievements
SELECT achievement_details, achievement_type_description FROM achievements
SELECT count(*) FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM achievements)
SELECT count(*) FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id JOIN achievements AS T3 ON T1.student_id = T3.student_id WHERE T3.achievement_type_code = 'never'
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM TRANSCRIPS
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT achievement_type_code, achievement_details, date_achievement FROM ACHIEVEMENTS
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT bio_data FROM students WHERE bio_data LIKE '%Suite%'
SELECT student_details FROM students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.teacher_details, T1.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*), teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id, count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, T1.student_details FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY student_id HAVING count(*) = 2
SELECT student_id, T1.student_details FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM detention ORDER BY detention_type_code ASC LIMIT 1
SELECT detention_type_code, detention_type_description FROM detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.student_id, T1.student_details, T1.bio_data FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT min(amount_of_loan) FROM student_loans)
SELECT T1.student_details FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM student_loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans
SELECT T1.student_id, T1.student_details FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY amount_of_loan LIMIT 1
SELECT student_details FROM student_loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_transcript FROM Student_Loans WHERE amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1
SELECT teacher_details FROM Transcripts AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id ORDER BY date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T1.student_id = T3.teacher_id ORDER BY date_of_transcript LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id, bio_data, count(*) FROM students GROUP BY student_id
SELECT student_id, bio_data, count(*) FROM students GROUP BY student_id
SELECT count(DISTINCT student_id) FROM detention
SELECT count(*) FROM detention AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT address_type_code, address_type_description FROM addresses GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_description FROM addresses GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.bio_data, T1.student_details FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = "Event" AND T1.student_id NOT IN (SELECT student_id FROM student_loans)
SELECT student_details FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Events)
SELECT date_from, date_to FROM Students_Addresses WHERE student_id IN (SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2)
SELECT date_from, date_to FROM students_addresses WHERE student_id IN (SELECT student_id FROM transcripts) GROUP BY student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM detention
SELECT datetime_detention_start FROM detention
SELECT DISTINCT name FROM author
SELECT DISTINCT Name FROM Author
SELECT Name, Address FROM Client
SELECT name, address FROM client
SELECT title, isbn, saleprice FROM book
SELECT title, isbn, saleprice FROM book
SELECT count(*) FROM Books ORDER BY ISBN
SELECT count(*) FROM Books ORDER BY title
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT Name, Address FROM Client ORDER BY Name
SELECT name, address FROM client ORDER BY name
SELECT title, author FROM book
SELECT Title, Author FROM Book
SELECT IdClient, Name FROM Client
SELECT IdClient, Name FROM Orders
SELECT T2.Name, COUNT(*) FROM Books_Order AS T1 JOIN Author AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.Name
SELECT T1.Name, count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT ISBN, count(*) FROM Books ORDER BY ISBN
SELECT ISBN, count(*) FROM Books_order GROUP BY ISBN
SELECT isbn, sum(amount) FROM books_order GROUP BY isbn
SELECT isbn, sum(amount) FROM Books_order GROUP BY isbn
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.amount = (SELECT max(amount) FROM books_order)
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY sum(amount) DESC LIMIT 1
SELECT T2.Title, T1.PurchasePrice FROM Books ORDER BY amount DESC LIMIT 1
SELECT title, purchaseprice FROM Book ORDER BY amount DESC LIMIT 1
SELECT DISTINCT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT DISTINCT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.idorder > 0
SELECT DISTINCT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.author WHERE T2.idorder >= 1
SELECT DISTINCT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.author_id JOIN orders AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name
SELECT T1.Name, count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T2.Name, count(*) FROM Books ORDER BY T1.idorder GROUP BY T1.idorder
SELECT Name FROM Client ORDER BY NumCC DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author WHERE T1.name = "client" GROUP BY T1.name
SELECT T1.name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(amount) DESC LIMIT 1
SELECT T1.Name FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T2.idorder ORDER BY sum(amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT DISTINCT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT Name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT DISTINCT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(saleprice), min(saleprice) FROM book
SELECT max(saleprice), min(saleprice) FROM Book
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM Book ORDER BY saleprice
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 10
SELECT Title FROM BOOK ORDER BY PurchasePrice DESC LIMIT 1
SELECT avg(saleprice) FROM Book AS T1 JOIN Author AS T2 ON T1.author = T2.idauthor WHERE T2.name = 'George Orwell'
SELECT avg(saleprice) FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor WHERE T2.name = 'George Orwell'
SELECT SalePrice FROM BOOK WHERE Author = "Plato"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name = "Plato"
SELECT title FROM book WHERE author = 'George Orwell' AND purchaseprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book WHERE author = 'George Orwell' AND purchaseprice = (SELECT min(purchaseprice) FROM book WHERE author = 'George Orwell')
SELECT title FROM book WHERE author = 'Plato' AND purchaseprice < (SELECT avg(saleprice) FROM book)
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name = "Plato" AND T2.PurchasePrice < (SELECT avg(PurchasePrice) FROM Book)
SELECT T2.Name FROM BOOK AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T1.Title = "Pride and Prejudice"
SELECT T1.Name FROM AUTHOR AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T2.Title = "Pride and Prejudice"
SELECT title FROM book WHERE Author LIKE '%Plato%'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T3.isbn = T2.isbn AND T3.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.idorder = T3.idbook WHERE T3.name = 'Pride and Prejudice'
SELECT IdOrder FROM Books ORDER BY Title LIKE '%Pride and Prejudice%' INTERSECT SELECT IdOrder FROM Books ORDER BY Title LIKE '%The Little Prince%'
SELECT IdOrder FROM Books_order WHERE ISBN = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM Books_order WHERE ISBN = "The Little Prince"
SELECT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.idorder = T3.idorder JOIN Client AS T4 ON T3.idorder = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.idorder = T3.idorder JOIN Client AS T4 ON T3.idorder = T4.idclient WHERE T4.name = "James Smith"
SELECT ISBN FROM BOOK WHERE Author = "Peter Doe" UNION SELECT ISBN FROM BOOK WHERE Author = "James Smith"
{"sql": "SELECT title FROM book AS T1 JOIN orders AS T2 ON T1.isbn = T2.idorder WHERE idclient = " + "Peter Doe" AND idclient!= "James Smith""}
SELECT T2.Title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE T1.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE T1.name = 'James Smith'
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = "Pride and Prejudice"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_Order AS T3 ON T2.IdOrder = T3.IdOrder JOIN Book AS T4 ON T4.ISBN = T3.ISBN JOIN Author AS T5 ON T4.Author = T5.id WHERE T5.Name = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(chapters), min(chapters) FROM book
SELECT Title FROM book WHERE Type!= "Poet"
SELECT avg(Rating) FROM review
SELECT title, rating FROM book
SELECT Rating FROM review ORDER BY Chapters DESC LIMIT 1
SELECT rank FROM book ORDER BY pages
SELECT title FROM book ORDER BY rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE, COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT DISTINCT Title FROM book ORDER BY Rating ASC
SELECT Title, Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE chapters > 75 INTERSECT SELECT TYPE FROM book WHERE chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE, title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership
SELECT * FROM customer ORDER BY LEVEL_OF MEMBERSHIP
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT card_credit FROM customer ORDER BY level_of_memberships DESC LIMIT 1
SELECT card_credit FROM customer ORDER BY level_of_memberships DESC LIMIT 1
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name, T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Dish_Name ORDER BY Quantity DESC
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY sum(T2.quantity) DESC
SELECT T2.Name, sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name
SELECT T2.Name, sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name
SELECT customer_id, sum(quantity) FROM customer_order GROUP BY customer_id HAVING sum(quantity) > 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Quantity > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name, nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING count(*) >= 2
SELECT T2.club_name, T1.member_id FROM club_leader AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.overall_ranking > 100
SELECT T2.Name FROM clubleader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Year_Join < 2018
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(age) FROM club_leader
SELECT club_name FROM club WHERE club_name LIKE "%state%"
SELECT DISTINCT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id
SELECT DISTINCT collection_subset_name FROM collection_subsets
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN documents_in_collections AS T3 ON T2.collection_subset_id = T3.collection_id WHERE T1.collection_subset_name = 'Top collection'
SELECT * FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT DISTINCT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT T2.document_subset_details FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T3.document_object_id = T2.related_document_object_id JOIN collections AS T4 ON T4.collection_id = T3.collection_id WHERE T1.document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT OWNER FROM document_objects WHERE description = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin')
SELECT Owner FROM Document_Objects WHERE Owner = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT description FROM document_objects
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collection_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T1.owner = "Marlin"
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T1.owner = "Marlin"
SELECT document_object_id FROM Document_Objects EXCEPT SELECT document_object_id FROM Document_Objects WHERE document_object_id IN (SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id!= NULL)
{"sql": "SELECT Document_Object_ID FROM Document_Objects WHERE Document_Object_ID NOT IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = (SELECT Document_Object_ID FROM Document_Objects WHERE
SELECT T2.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT count(*), parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT collection_name FROM collections
SELECT Collection_Name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT T2.Collection_Name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Nice"
SELECT T2.Collection_Name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Nice"
SELECT Collection_Name FROM Collections EXCEPT SELECT Collection_Name FROM Collections WHERE Collection_ID IN (SELECT Collection_ID FROM Collection_Subsets GROUP BY Collection_ID HAVING COUNT(*) > 1)
SELECT Collection_Name FROM Collections WHERE Collection_ID NOT IN (SELECT Collection_ID FROM Collection_Subsets)
SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID HAVING count(*) > 1
SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id JOIN documents_in_collections AS T3 ON T1.document_object_id = T3.document_object_id JOIN collection_subset_members AS T4 ON T3.collection_id = T4.collection_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Collections" AND T1.owner = "Ransom"
SELECT Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID JOIN Document_Subsets AS T4 ON T3.Document_Subset_ID = T4.Document_Subset_ID JOIN Collections AS T5 ON T4.Collection_Subset_ID = T5.Collection_Subset_ID JOIN Collections AS T6 ON T5.Collection_ID = T6.Collection_ID JOIN Document_Objects AS T7 ON T6.Collection_ID = T7.Document_Object_ID JOIN Document_Subset_Members AS T8 ON T7.Document_Object_ID = T8.Document_Object_ID JOIN Document_Subsets AS T9 ON T8.Document_Subset_ID = T9.Document_Subset_ID WHERE T1.Owner = "Ransom"
SELECT T1.collection_subset_id, count(*), T2.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT Collection_Subset_ID, COUNT(*), Collection_Name FROM Collection_Subsets GROUP BY Collection_Subset_ID
SELECT document_object_id, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID
SELECT document_object_id, count(*) FROM document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id, count(*) FROM Document_Subset_Members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T2.document_object_id, count(*) FROM Document_subset_members AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_subsets AS T3 ON T1.related_document_object_id = T3.related_document_object_id WHERE T3.document_subset_id BETWEEN 2 AND 4 GROUP BY T2.document_object_id
SELECT OWNER FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID JOIN Documents_in_Collections AS T4 ON T3.Document_Object_ID = T4.Document_Object_ID JOIN Collections AS T5 ON T4.Collection_ID = T5.Collection_ID WHERE T1.owner = "Braeden"
SELECT DISTINCT OWNER FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID JOIN Collections AS T4 ON T3.Collection_ID = T4.Collection_ID JOIN Collections AS T5 ON T4.Collection_ID = T5.Collection_ID JOIN Collections_Subset_Members AS T6 ON T5.Collection_ID = T6.Collection_ID JOIN Collections_Subset_Members AS T7 ON T6.Collection_ID = T7.Collection_ID JOIN Document_Objects AS T8 ON T7.Document_Object_ID = T8.Document_Object_ID WHERE T1.owner = "Braeden"
SELECT DISTINCT T2.Document_Subset_Name FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T1.Owner = "Braeden"
SELECT DISTINCT document_subset_name FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id JOIN collections AS T4 ON T4.collection_id = T3.collection_id JOIN document_objects AS T5 ON T5.document_object_id = T2.document_object_id JOIN document_subset_members AS T6 ON T5.document_object_id = T6.document_object_id JOIN document_subsets AS T7 ON T6.document_subset_id = T7.document_subset_id WHERE T4.collection_subset_id = (SELECT collection_subset_id FROM collections AS T4 JOIN document_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE T4.collection_name = 'Braeden')
SELECT document_subset_id, count(DISTINCT document_object_id), document_subset_name FROM Document_Subset_Members GROUP BY document_subset_id
SELECT document_subset_id, document_subset_name, count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id
SELECT T1.document_subset_id, count(DISTINCT T1.document_subset_name), T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(DISTINCT T1.document_subset_name) DESC LIMIT 1
SELECT document_subset_id, document_subset_name, count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id ORDER BY count(DISTINCT document_object_id) DESC LIMIT 1
SELECT Document_Object_ID FROM Document_Subset_Members WHERE Document_Subset_ID = 'Best for 2000'
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = 'Best for 2000'
SELECT T1.Document_Subset_Name, T1.Document_Object_ID FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID JOIN Document_Object_ID AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Document_Object_ID = "document_id"
SELECT T1.document_subset_name, T1.document_object_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_Object_ID AS T3 ON T2.related_document_object_id = T3.document_object_id GROUP BY T1.document_subset_id
SELECT T2.Collection_Name FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Document_Object_ID = T2.Collection_ID WHERE T1.Owner = 'Ransom '
SELECT T1.Collection_Name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(DISTINCT T1.collection_id, T2.collection_name FROM collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(DISTINCT document_object_id) FROM documents_in_collections
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id JOIN document_subset_members AS T4 ON T3.document_object_id = T4.document_object_id JOIN document_subsets AS T5 ON T4.document_subset_id = T5.document_subset_id WHERE T5.collection_subset_name = 'Best'
SELECT count(*) FROM Document_Subsets AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T1.Collection_ID = (SELECT collection_id FROM Documents_in_Collections WHERE collection_name = 'Best')
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = Documents_in_collections.document_object_id JOIN Collection_subsets AS T3 ON T1.document_object_id = T3.document_object_id JOIN Collection_subsets AS T4 ON T3.collection_subset_id = T4.collection_subset_id WHERE T4.collection_name = "Best"
SELECT T2.collection_name, count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T2.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.collection_name, T1.collection_id, count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subset_Members WHERE document_subset_name = "Best for 2000") AND collection_subset_id IN (SELECT collection_subset_id FROM Collection_Subsets WHERE collection_subset_name = "Best"))
SELECT DISTINCT document_object_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000" INTERSECT SELECT DISTINCT document_object_id FROM Document_Subset_Members WHERE collection_subset_id = "Best"
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND T1.collection_id = (SELECT collection_id FROM collection_subsets WHERE collection_subset_name = "Best" AND collection_id = "2000")
SELECT document_object_id FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.collection_subset_id = (SELECT collection_subset_id FROM collection_subsets WHERE collection_subset_name = 'Best') EXCEPT SELECT document_object_id FROM Document_Objects AS T1 JOIN Collection_Subsets AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.collection_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND t1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND t1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best")
SELECT DISTINCT document_object_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_name = 'Best for 2000') OR collection_subset_name = 'Best'
SELECT collection_name FROM collections WHERE collection_name = "Best"
SELECT collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT collection_name) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_subset_name = "Best"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' GROUP BY T1.collection_subset_id HAVING count(*) = 1
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name, language FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id = 'Freeway'
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT id, name, popularity FROM participants ORDER BY popularity
SELECT participant_id, name FROM performance_score WHERE rhythm_tempo = 5
SELECT voice_sound_quality FROM performance_score WHERE name = 'The Balkan Girls' AND language = 'english'
SELECT T1.id, T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM performance_score WHERE songs_id NOT IN (SELECT id FROM performance_score)
SELECT avg(rhythm_tempo), language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT T2.name, T2.popularity FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "Croatian" INTERSECT SELECT T2.name, T2.popularity FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "English"
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name, state, country FROM city
SELECT city_name, city_code, state, country FROM city
SELECT latitude, longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude, longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = "Canada"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state, count(*) FROM city GROUP BY state
SELECT count(DISTINCT city_name), state FROM city GROUP BY state
SELECT country, count(*) FROM city GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT Fname, Lname FROM student WHERE state = "MD"
SELECT Fname, Lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT Fname, Major FROM student WHERE city_code = "Baltimore"
SELECT Fname, Major FROM student WHERE city_code = "Baltimore"
SELECT count(DISTINCT city_code), country FROM city GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT count(DISTINCT city_code), city_name FROM city GROUP BY city_name
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code HAVING count(*) >= 3
SELECT city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY city_name HAVING count(*) >= 3
SELECT state FROM city WHERE state IN (SELECT state FROM student GROUP BY state HAVING count(*) > 5)
SELECT state FROM city WHERE state > 5
SELECT StuID FROM student WHERE country!= "USA"
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' AND country!= "USA"
SELECT StuID FROM student WHERE sex = 'M' AND country!= 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city_code FROM city ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city GROUP BY city_code ORDER BY sum(distance) DESC LIMIT 1
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city GROUP BY city_code HAVING sum(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT city_name FROM city WHERE city_code = "CHI"
SELECT city_name FROM city WHERE city_code = "Chicago"
{"sql": "SELECT city_name FROM city ORDER BY distance FROM direct_distance WHERE city1_code = "Boston" LIMIT 1"}
SELECT city_name FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT T1.city_name, avg(distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT city_name, avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = (SELECT city_code FROM city WHERE first_name = "Linda" AND last_name = "Smith") INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = (SELECT city_code FROM city WHERE first_name = "Tracy" AND last_name = "Kim")
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON T2.city2_code = T3.city_code WHERE T3.fname = 'Linda' AND T3.lname = 'Smith' AND T3.advisor = 'Tracy'
SELECT Fname, Lname FROM student WHERE city_code = (SELECT city_code FROM city WHERE city_name = "Linda Smith") ORDER BY distance ASC LIMIT 1
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.fname = 'Linda' AND T1.lname = 'Smith' ORDER BY T2.distance DESC LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = 1
SELECT DISTINCT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.name = "102"
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > 7
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid > 0
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T2.sid, T1.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T1.sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE color = 'red' OR color = 'blue'
SELECT DISTINCT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT sid, name FROM reserves WHERE color = "red" OR color = "blue"
SELECT T2.name, T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM reserves WHERE color = 'red' INTERSECT SELECT sid FROM reserves WHERE color = 'blue'
SELECT sid FROM reserves WHERE color = 'red' INTERSECT SELECT sid FROM reserves WHERE color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' UNION SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' UNION SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = null
SELECT name, sid FROM sailors EXCEPT SELECT sid, name FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.bid = 103
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating), max(age) FROM sailors
SELECT avg(rating), max(age) FROM sailors
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(DISTINCT bid FROM reserves
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T1.sid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.id > 1
SELECT avg(rating), avg(age) FROM reserves WHERE color = "red"
SELECT rating, avg(age), color FROM reserves WHERE color = "red" GROUP BY rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = (SELECT sid FROM sailors WHERE age >= 20 AND age <= 30)
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM boats WHERE color = "red")
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' AND T1.rating > (SELECT min(rating) FROM sailors AS T4 JOIN reserves AS T5 ON T4.sid = T5.sid WHERE T5.bid = T3.bid)
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T1.name = 'Melon'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = 'Melon'
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*), CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT avg(Construction) FROM headphone
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Bowls"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= "plastic"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(*), Neighborhood FROM store GROUP BY Neighborhood
SELECT Neighborhood, count(*) FROM store GROUP BY Neighborhood
SELECT T2.Name, COUNT(*) FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T1.Quantity FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = (SELECT Headphone_ID FROM stock GROUP BY Headphone_ID HAVING count(*) = 1)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(Quantity) DESC LIMIT 1
SELECT model FROM headphone ORDER BY quantity DESC LIMIT 1
SELECT count(*) FROM headphone AS T1 JOIN stock AS T2 ON T1.headphone_id = T2.headphone_id JOIN store AS T3 ON T2.store_id = T3.store_id WHERE T3.name = "Woodman"
SELECT sum(Quantity) FROM stock WHERE Store_ID = (SELECT Store_ID FROM store WHERE Name = "Woodman")
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'NAACL 2000'
SELECT count(*) FROM paper WHERE title LIKE '%NAACL 2000%'
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year = 2009
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T2.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Harvard University")
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT title, paper_id FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Mckeown")
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown'
SELECT T2.title, T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T2.title, T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id AND T3.name = 'Columbia University'
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT DISTINCT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.name = 'Kathleen' AND T3.name = 'Rambow'
SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.email = "kathleen" INTERSECT SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.email = "owen"
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = 'Mckeown') EXCEPT SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = 'Rambow')
SELECT title, paper_id FROM paper WHERE author_id = "Mckeown" EXCEPT SELECT title, paper_id FROM paper WHERE author_id = "Rambow"
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown" OR name = "Kathleen" OR name = "Rambow" OR name = "Owen")
SELECT T2.title, T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown" OR name = "Kathleen" OR name = "Rambow")
SELECT T1.name, count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*), author_id FROM paper GROUP BY author_id ORDER BY count(*)
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT name FROM affiliation ORDER BY count(*)
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.paper_id = 1
SELECT DISTINCT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = "A00-1002"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = "A00-1002"
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = "D12-1027"
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id, count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Kathleen Mckeown"
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown, Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.cited_paper_id = T3.author_id WHERE T3.name = "Mckeown, Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.name = 'Kathleen'
SELECT T1.name, count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = 'Mckeown, Kathleen')
SELECT venue, YEAR FROM paper WHERE author_id = "Mckeown, Kathleen"
SELECT venue, YEAR FROM paper WHERE affiliation_id = (SELECT affiliation_id FROM author_list WHERE name = 'Columbia University')
SELECT venue, YEAR FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM author_list WHERE university = "Columbia University")
SELECT author_id FROM paper WHERE YEAR = 2009 GROUP BY author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE YEAR = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Columbia University' AND T1.year <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Columbia University') OR YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Stanford University' AND YEAR >= 2000 AND YEAR <= 2009)
SELECT count(*) FROM paper WHERE venue = 'Stanford University' AND YEAR >= 2000 AND YEAR <= 2009
SELECT title FROM paper GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY author_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2.title LIKE "%Kathleen%" GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" AND T3.title LIKE "%Kathleen%" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T2.name FROM citation AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T2.year, T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.year
SELECT venue, count(*), YEAR FROM paper GROUP BY venue
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT count(*), T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE title LIKE '%more than 50%'
SELECT count(*) FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T2.paper_id = T3.cited_paper_id WHERE T3.cited_count <= 50 AND T1.name = ""
SELECT count(*) FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title = 'paper' AND T2.year > 50 AND T1.name = 'unknown'
SELECT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T1.paper_id = T3.paper_id JOIN affiliation AS T4 ON T4.affiliation_id = T2.affiliation_id WHERE T4.name = 'NAACL' AND T1.year = 2009
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T2.paper_id = T3.paper_id WHERE T2.year = 2009 AND T3.cited_paper_id IN (SELECT paper_id FROM citation WHERE title = "NAACL" AND venue = "ACSL")
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM citation)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM citation)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT conference_name, YEAR, LOCATION FROM conference
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = "2020" OR YEAR = "2021" OR YEAR = "2022"
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT min(year) FROM conference
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, location, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_id
SELECT institution_id, name FROM staff WHERE institution_id IN (SELECT institution_id FROM institution WHERE founded > 1800)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE nationality = 'United States'
SELECT max(Age), min(Age) FROM staff
SELECT Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_ID = T2.staff_ID WHERE T2.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference_participation WHERE role = 'Naccl') INTERSECT SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference_participation WHERE role = 'ACL')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3 conference_name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3 conference_name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year >= 2003 AND T3.year = 2004
SELECT conference_name, YEAR, count(*) FROM conference_participation GROUP BY conference_id
SELECT T2.Conference_Name, T2.Year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT Conference_Name FROM conference_participation GROUP BY Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT * FROM pilotSkills WHERE age < 30
SELECT * FROM pilotSkills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT DISTINCT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT location FROM hangar)
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'B-52'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub'
SELECT plane_name FROM pilot_skills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub')
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t1.age > 40
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT DISTINCT location FROM hangar
SELECT DISTINCT location FROM hangar
{"sql": "SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "
SELECT DISTINCT plane_name FROM plane_name ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 UNION SELECT count(*) FROM pilot_skills WHERE age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T1.age > 35 INTERSECT SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T1.age > 35 OR T1.plane_name = 'F-14' AND T1.age < 30
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT DISTINCT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT avg(age), min(age) FROM pilotskills
SELECT avg(age), min(age) FROM pilotskills
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT plane_name, max(age), plane_name FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT plane_name, pilot_name FROM pilot_skills ORDER BY plane_name
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name
SELECT plane_name, plane_name FROM pilot_skills ORDER BY age DESC LIMIT 10
SELECT max(age), pilot_name FROM pilot_skills GROUP BY pilot_name
SELECT DISTINCT pilot_name, max(age) FROM pilot_skills
SELECT avg(age), count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'New York'
SELECT DISTINCT T2.location, count(*), avg(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT plane_name, count(*), avg(age) FROM pilot_skills GROUP BY plane_name HAVING avg(age) < 35
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age = (SELECT min(age) FROM pilotskills)
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T2.pilot_name, T2.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT T2.plane_name, T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t2.location = 'F-14' AND t1.age < t2.plane_name
SELECT DISTINCT plane_name FROM plane_name WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t1.age > (SELECT min(age) FROM pilot_skills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t2.plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > T2.age AND T2.plane_name = 'Piper Cub'
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT government_website, area_km FROM district ORDER BY population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT district_id, name, government_website FROM district ORDER BY population
SELECT DISTINCT Government_website FROM district WHERE Government_website LIKE '%gov%'
SELECT District_ID, Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT DISTINCT name, speach_title FROM spokesman
SELECT avg(Points), avg(Age) FROM spokesman WHERE rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Start_year < 2004
SELECT T1.name, count(*), T2.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name
SELECT T2.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.rank_position = 1 INTERSECT SELECT T2.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(population), avg(population) FROM district WHERE district_id IN (SELECT district_id FROM spokesman_district)
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY year LIMIT 1
SELECT T2.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.lname = "Sculpture" AND T1.location = "gallery 226"
SELECT title FROM sculptures WHERE sculptureID = 226
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM Sculptures
SELECT title, LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT DISTINCT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "Gallery 226"
SELECT T2.title, T2.year FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.location!= "Gallery 226"
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname, lname FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT min(deathYear) FROM Artists
SELECT birthYear FROM Artists ORDER BY deathYear ASC LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY deathYear LIMIT 1
SELECT fname, deathYear FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE painterID = 240
SELECT count(*) FROM paintings WHERE location = "Gallery 240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear = (SELECT max(deathYear) FROM artists)
SELECT T2.fname, T2.lname, COUNT(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID ORDER BY T1.deathYear DESC LIMIT 1
SELECT T2.title, T2.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT width_mm FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE birthYear < 1850
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE birthYear < 1850
SELECT T1.location, T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.location, T1.mediumOn FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID WHERE T2.medium = "painting" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Lithography"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "lithographic"
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.mediumOn = "canvas"
SELECT birthYear FROM Artists WHERE artistID IN (SELECT painterID FROM paintings WHERE YEAR = 1884)
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = "gallery 241"
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Oil" AND T2.location = "Gallery 241"
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year > 1910
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T2.name = "gallery 240"
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T1.location = "gallery 240"
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.painterID WHERE T1.height_mm > T2.height_mm
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.painterID WHERE T1.height_mm > T2.height_mm
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(year) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings ORDER BY year DESC LIMIT 1
SELECT paintingID FROM paintings ORDER BY year DESC LIMIT 1
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT T2.fname, T2.lname FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE title LIKE "%female%"
SELECT DISTINCT title FROM paintings
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title, T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT T2.title FROM artworks AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 ORDER BY T2.year DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT location FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT DISTINCT location FROM sculptures
SELECT DISTINCT location FROM paintings AS T1 JOIN sculptures AS T2 ON T1.mediumOn = T2.medium WHERE T2.medium = "on panels" INTERSECT SELECT DISTINCT location FROM paintings AS T1 JOIN sculptures AS T2 ON T1.mediumOn = T2.medium WHERE T2.medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT location FROM paintings WHERE YEAR < 1885 EXCEPT SELECT location FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE medium = "oil" AND location = "gallery 241"
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE medium = "oil" AND location = "gallery 241"
SELECT max(height_mm), max(paintingID) FROM paintings WHERE YEAR < 1900
SELECT height_mm, painterID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm), max(width_mm), YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm), year FROM paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname, T1.lname ORDER BY T1.fname
SELECT avg(height_mm), avg(width_mm), artistID FROM paintings GROUP BY artistID ORDER BY artistID
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) >= 2
SELECT T1.fname, T1.artistID, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) >= 2
SELECT deathYear FROM artists GROUP BY artistID HAVING count(*) <= 3
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 4
SELECT deathYear FROM artists GROUP BY sculptorID ORDER BY count(*) ASC LIMIT 1
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) ASC LIMIT 1
SELECT paintingID, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), paintingID FROM paintings WHERE location = "gallery 240"
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T2.painterID ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, LOCATION, title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid, LOCATION, title FROM paintings ORDER BY YEAR
SELECT title, LOCATION, height_mm FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.year, T1.location, T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE height_mm > 1000 ORDER BY T1.year
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" AND T2.mediumOn = "no"
SELECT DISTINCT T2.fname, T2.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.medium!= "sculpture"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium = 'canvas'
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < 1885 AND mediumOn = 'on canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team
SELECT winning_driver FROM race WHERE pole_position!= "Junior Strous"
SELECT winning_driver FROM race WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age
SELECT DISTINCT Constructor FROM driver ORDER BY Age
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age), min(Age) FROM driver
SELECT max(age), min(age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name, count(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT count(*), Driver_ID FROM race GROUP BY Driver_ID
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.age FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT Driver_Name, Age FROM driver GROUP BY Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Driver_Name, T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT DISTINCT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM driver GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.engine FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.engine HAVING count(*) >= 2
SELECT DISTINCT T1.engine FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.engine HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT DISTINCT T1.Constructor FROM driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age < 20 INTERSECT SELECT DISTINCT T1.Constructor FROM driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Driver_Name = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Driver_Name = "Carl Skerlong"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver WHERE T1.driver_name = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver WHERE T1.driver_name = "Carl Skerlong"
SELECT DISTINCT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = 'James Hinchcliffe')
SELECT Driver_Name FROM driver WHERE Driver_ID!= (SELECT Driver_ID FROM race WHERE Pole_Position = 'James Hinchcliffe')
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
SELECT max(health_score), min(health_score) FROM countries WHERE name!= "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages WHERE language_id IN (SELECT language_id FROM official_languages WHERE country_id IN (SELECT country_id FROM countries WHERE name = "Norway")))
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T2.name, T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T2.name, T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T2.name, count(*) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT language_id FROM official_languages GROUP BY country_id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE language_id IN (SELECT language_id FROM official_languages WHERE name = "English")
SELECT avg(overall_score) FROM countries WHERE language_id IN (SELECT language_id FROM official_languages WHERE language_id = 1)
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT country_id FROM official_languages GROUP BY country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id WHERE T2.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id WHERE T2.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name NOT IN (SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE overall_score > 95) AND T2.country_id IN (SELECT country_id FROM countries WHERE overall_score < 90)
SELECT country, town_city FROM addresses
SELECT country, town_city FROM addresses
SELECT county_state_province FROM addresses
SELECT county_state_province FROM addresses
SELECT feature_description FROM Features WHERE feature_name = "rooftop";
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT feature_name, feature_description FROM Property_Features GROUP BY property_id ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = '1' OR garage_yn = '1'
SELECT count(*) FROM properties WHERE garage_yn = 'Y' OR parking_lots = 'Y'
SELECT age_category_code FROM users WHERE user_category_description LIKE '%Mother%'
SELECT age_category_code FROM users WHERE user_category_description LIKE "%Mother%"
SELECT first_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T1.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT first_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T2.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_type_code = "garden"
SELECT avg(room_count) FROM Properties WHERE property_feature_description LIKE '%garden%'
SELECT town_city FROM addresses WHERE property_feature_description = "Swimming Pool"
SELECT town_city FROM addresses AS T1 JOIN property_features AS T2 ON T1.address_id = T2.property_id JOIN property_features AS T3 ON T2.property_id = T3.property_id JOIN property_features AS T4 ON T3.feature_id = T4.feature_id WHERE T4.feature_description = "swimming pool"
SELECT property_id, price_min FROM Properties WHERE vendor_requested_price = (SELECT min(price_requested) FROM Properties)
SELECT property_id, min(price_min) FROM properties GROUP BY property_id
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM user_property_history GROUP BY property_id HAVING count(*) <= 2)
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM properties GROUP BY property_id HAVING count(*) <= 2)
SELECT T1.user_category_code, T1.user_id FROM User_Searches AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T3.property_id = T2.property_id WHERE T3.property_type_code = "search" GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id, user_category_code FROM user_searches GROUP BY user_id HAVING count(*) = 1
SELECT age_category_code FROM User_Searches WHERE search_datetime = (SELECT min(search_datetime) FROM User_Searches)
SELECT age_category_code FROM User_Searches ORDER BY search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(DISTINCT user_id) FROM User_Searches
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name, middle_name, last_name, login_name FROM users WHERE seller = 1
SELECT first_name, last_name, login_name, first_name FROM users WHERE is_seller = 'true'
SELECT line_1_number_building, line_2_number_street, town_city FROM addresses WHERE age_category_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.user_category_code = "Senior Citizen"
SELECT count(*) FROM Property_Features WHERE feature_id >= 2
SELECT count(*) FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2
SELECT count(*), T1.property_name FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name
SELECT count(DISTINCT property_id) FROM Property_photos
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id, count(*) FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(T1.price_max) FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id JOIN users AS T3 ON T1.owner_user_id = T3.user_id WHERE T3.user_category_code = "single mother" OR T3.user_category_code = "student"
SELECT sum(T1.price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = "Single Mother" OR T2.user_category_code = "Student"
SELECT datestamp, property_name FROM User_Property_History ORDER BY datestamp
SELECT datestamp, property_name FROM user_property_history
SELECT property_type_description FROM Ref_property_types GROUP BY property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT property_type_code, property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = 'Over 60';
SELECT DISTINCT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT count(DISTINCT room_size FROM Rooms) AS count FROM Rooms
SELECT country FROM addresses WHERE first_name = "Robbie"
SELECT country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T2.first_name, T2.middle_name, T2.last_name FROM addresses AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T1.property_address_id = T2.property_address_id
SELECT T1.first_name, T1.last_name FROM users AS T1 JOIN addresses AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.address_id = T1.property_address_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT last_name, user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT T2.last_name, T2.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name, T2.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT cyclist_id, name FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T1.nation = 'Russia' OR T2.cyclist_id IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE nation = 'Great Britain')
SELECT count(DISTINCT heat FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.result > '4:21.558'
SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE cyclist_id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT material FROM bike WHERE material LIKE '%fiber%'
SELECT count(DISTINCT bike_id), cyclist_id FROM cyclists_own_bikes
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 1
SELECT Flavor, id FROM goods ORDER BY price DESC LIMIT 1
SELECT Flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT Id FROM goods WHERE Flavor = "apple"
SELECT DISTINCT Id FROM goods WHERE Flavor = 'apple'
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T2.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receiptnumber AND T3.item = 'lemon'
SELECT T2.Food, COUNT(*) FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.id GROUP BY T2.Food
SELECT count(DISTINCT T2.Food FROM receipts AS T1 JOIN goods AS T2 ON T1.Id = T2.Id WHERE T1.CustomerId = T1.CustomerId)
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "bakery" AND T2.date >= "2020-01-01" AND T2.date <= "2020-12-31" GROUP BY T1.id HAVING count(*) >= 15
SELECT DISTINCT customerId FROM receipts GROUP BY customerId HAVING count(*) >= 15
SELECT T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.id = T3.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Id = T2.Item WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.Id = T2.gid WHERE T2.CustomerId = 15
SELECT Flavor, AVG(Price), MAX(Price), MIN(Price) FROM goods
SELECT avg(Price), min(Price), max(Price) FROM goods
SELECT receiptnumber FROM goods JOIN items ON goods.id = items.id WHERE flavor = 'Cake' INTERSECT SELECT receiptnumber FROM goods JOIN items ON goods.id = items.id WHERE flavor = 'Cookie'
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = 'cake' INTERSECT SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = 'cookie'
SELECT receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "LOGAN" AND T1.flavor = "croissant"
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "Logan" AND T1.flavor = "croissant"
SELECT receiptnumber, date FROM receipts ORDER BY price DESC LIMIT 1
SELECT T1.receiptnumber, T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber GROUP BY T1.receiptnumber ORDER BY sum(T2.price) DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) LIMIT 1
SELECT Flavor, count(*) FROM goods GROUP BY Flavor
SELECT Flavor, COUNT(*) FROM goods GROUP BY Flavor
SELECT avg(Price), Food FROM goods
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT Id FROM goods WHERE Price < (SELECT min(Price) FROM goods WHERE Flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN goods AS T3 ON T2.id = T3.id WHERE T3.price > 13
SELECT DISTINCT T2.receiptnumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 13
SELECT T1.date FROM receipts AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 15
SELECT date FROM receipts AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 15
SELECT DISTINCT id FROM goods WHERE Flavor = "APP"
SELECT Id FROM goods WHERE Flavor LIKE "%APP%"
SELECT T1.id, T1.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.good WHERE T1.id = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods
SELECT DISTINCT Flavor FROM goods
SELECT * FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = "apple" OR T2.customerid = 12
SELECT receiptnumber FROM receipts WHERE flavor = 'apple' OR customerid = 12
SELECT * FROM receipts WHERE date = (SELECT max(date) FROM receipts)
SELECT receiptnumber, date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10) OR customerid IN (SELECT id FROM customers)
SELECT receiptnumber FROM receipts WHERE price > 10 OR date = (SELECT min(date) FROM receipts)
SELECT Id FROM goods WHERE Price BETWEEN 3 AND 7
SELECT Id FROM goods WHERE Price BETWEEN 3 AND 7
SELECT DISTINCT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "cheese"
SELECT Flavor FROM goods WHERE Food = "Cheese"
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor
SELECT min(price), max(price) FROM goods GROUP BY food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T2.FirstName, T2.LastName, COUNT(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.id, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT COUNT(DISTINCT t1.customerid), t2.date FROM customers AS t1 JOIN receipts AS t2 ON t1.id = t2.customerid
SELECT count(*), date FROM receipts GROUP BY date
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "Tart"
SELECT DISTINCT T1.firstname, T1.lastname FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customer_id WHERE T2.flavor = "Apple" AND T2.name = "Tart"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Flavor = 'Croissant')
SELECT Id FROM goods WHERE Price < (SELECT min(Price) FROM goods WHERE Flavor = "croissant"
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id, flavor, TYPE FROM goods ORDER BY price
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id, flavor FROM goods WHERE food = 'cake' ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT DISTINCT T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.gid WHERE T1.flavor = "chocolate" AND T2.receipt > 10
SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.gid WHERE T1.flavor = "chocolate" GROUP BY T1.id HAVING count(*) > 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food!= 'Tart'
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT DISTINCT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY SUM(ordinal) DESC LIMIT 3
SELECT id FROM receipts WHERE sum(Price) > 150
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.amount) > 150
SELECT T1.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 5 GROUP BY T1.id
SELECT T2.id, T1.id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 5 GROUP BY T1.id
SELECT date FROM receipts WHERE sum(price) > 100
SELECT date FROM goods GROUP BY date HAVING sum(price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*), make FROM driver WHERE points > 150 GROUP BY make
SELECT make, count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(Age), Make FROM driver GROUP BY Make
SELECT avg(Age), Make FROM driver GROUP BY Make
SELECT avg(laps) FROM driver WHERE age < 20
SELECT avg(laps) FROM driver WHERE age < 20
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT T2.make FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id WHERE T1.manager = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver, Country FROM driver
SELECT Driver, Country FROM driver
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country_id WHERE T1.capital = "Dublin"
SELECT avg(Age) FROM driver WHERE Official_native_language = "English"
SELECT avg(Age) FROM driver WHERE Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.capital FROM country AS T1 JOIN driver AS T2 ON T1.country_id = T2.country_id ORDER BY points DESC LIMIT 1
SELECT T2.Capital FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_Id ORDER BY T1.Points DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT make, count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Make FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Make HAVING count(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team_ID FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country_id WHERE T2.make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country_id WHERE T2.make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver
SELECT sum(Points), avg(Points) FROM driver
SELECT Country FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM team_driver)
SELECT Country FROM country WHERE Country_Id NOT IN (SELECT Team_ID FROM team_driver)
SELECT Manager, Sponsor FROM team GROUP BY Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT manager, sponsor FROM team GROUP BY sponsor ORDER BY count(*) DESC LIMIT 1
SELECT manager, car_owner FROM team GROUP BY team_id HAVING count(*) >= 2
SELECT T1.Managers, T1.car_owners FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT city, province FROM institution
SELECT DISTINCT city, province FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT affiliation FROM institution WHERE city!= "Vancouver"
SELECT affiliation FROM institution WHERE city!= "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Name, Nickname FROM institution
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM championship ORDER BY enrollment LIMIT 1
SELECT nickname FROM championship ORDER BY enrollment ASC LIMIT 1
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution WHERE Institution_ID IN (SELECT Institution_ID FROM championship)
SELECT T2.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT count(*) FROM institution WHERE affiliation = 'Public'
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = "Public"
SELECT DISTINCT affiliation, count(*) FROM institution
SELECT affiliation, count(*) FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded, count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT * FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT Province FROM institution WHERE Founded > 1920 EXCEPT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province FROM institution
SELECT count(DISTINCT Province FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(value), sum(value) FROM boxes
SELECT avg(value), sum(value) FROM boxes
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(value), max(value), contents FROM boxes GROUP BY contents
SELECT avg(value), max(value), contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM warehouses
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT code FROM boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT sum(value) FROM boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT sum(value) FROM boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT contents FROM boxes WHERE LOCATION = "Chicago" INTERSECT SELECT contents FROM boxes WHERE LOCATION = "New York"
SELECT contents FROM boxes WHERE warehouse = "Chicago" INTERSECT SELECT contents FROM boxes WHERE warehouse = "New York"
SELECT Contents FROM Boxes WHERE LOCATION!= "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT LOCATION FROM boxes WHERE contents = 'Rocks' EXCEPT SELECT LOCATION FROM boxes WHERE contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT LOCATION FROM Warehouses WHERE Contents = 'Rocks' OR Contents = 'Scissors'
SELECT T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.warehouse WHERE T1.contents = "Rocks" INTERSECT SELECT T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.warehouse WHERE T1.contents = "Scissors"
SELECT Contents, Code FROM Boxes ORDER BY Value
SELECT Contents, Code FROM Boxes ORDER BY Value
SELECT Contents, Value FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT code, contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT Code FROM Boxes WHERE Value > (SELECT min(Value) FROM Boxes WHERE Contents = 'Rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = "Scissors")
SELECT Contents, Value FROM Boxes WHERE Contents > (SELECT min(Contents) FROM Boxes WHERE Contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT max(capacity) FROM warehouses)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT max(capacity) FROM warehouses)
SELECT warehouse, avg(value) FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT avg(value), warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT sum(value), count(*) FROM boxes WHERE contents = 'boxes' UNION SELECT sum(value), count(*) FROM boxes WHERE contents = 'boxes2'
SELECT sum(value), count(*) FROM boxes AS T1 JOIN contents AS T2 ON T1.contents = T2.contents GROUP BY T1.contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses
SELECT sum(capacity), avg(capacity), max(capacity), LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT warehouse, max(value) FROM boxes GROUP BY warehouse
SELECT Warehouse, MAX(Value) FROM Boxes GROUP BY Warehouse
SELECT T2.Code, count(*) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Code
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'rocks'
SELECT count(DISTINCT warehouse FROM boxes WHERE contents = 'rocks')
SELECT T1.code, T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT Code, LOCATION FROM Boxes
SELECT code FROM boxes WHERE LOCATION = "Chicago"
SELECT DISTINCT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "Chicago"
SELECT count(*), T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(*), T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT contents), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents FROM boxes WHERE warehouse = 'warehouse1'), 'warehouse1'
SELECT code FROM warehouses WHERE capacity > 100
SELECT Code FROM Boxes GROUP BY Code HAVING COUNT(*) > Capacity
SELECT sum(value) FROM boxes WHERE warehouse = "Chicago"
SELECT sum(value) FROM boxes WHERE warehouse!= 'Chicago'
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state = "Illinois" OR state = "Ohio"
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT * FROM university WHERE Home_Conference = "Home"
SELECT DISTINCT home_conference FROM university
SELECT home_conference, count(*) FROM university GROUP BY home_conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT * FROM university WHERE home_conference = 'Home' AND enrollment > 2000
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT T2.Major_Name, T1.Major_Code FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.University_Name = "Augustana College"
SELECT T2.Major_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 AND T1.Major_Name = "Accounting"
SELECT T2.University_Name, T2.City, T2.State FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Major_ID = 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank = 1 GROUP BY T2.University_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking ORDER BY rank)
SELECT university_name FROM university WHERE major_name = "Accounting" INTERSECT SELECT university_name FROM university WHERE major_name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID JOIN major_ranking AS T3 ON T1.University_ID = T3.University_ID JOIN major_ranking AS T4 ON T1.University_ID = T4.University_ID JOIN major_ranking AS T5 ON T1.University_ID = T5.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT university_name, overall_rank FROM university WHERE state = 'Wisconsin'
SELECT university_name, rank FROM university WHERE state = 'Wisconsin'
SELECT university_name FROM overall_ranking ORDER BY research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT university_name FROM university ORDER BY reputation_point
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank >= 3
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank >= 3
SELECT sum(enrollment) FROM university WHERE overall_rank <= 5
SELECT count(*) FROM university WHERE rank <= 5
SELECT university_name, citation_point FROM overall_ranking WHERE reputation_point >= 3
SELECT university_name, citation_point FROM overall_ranking ORDER BY reputation_point DESC LIMIT 3
SELECT state FROM university GROUP BY state HAVING count(*) > 2 AND enrollment < 3000
SELECT state FROM university GROUP BY state HAVING count(*) > 2 AND enrollment < 3000
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT DISTINCT title FROM Movies WHERE Rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon'
SELECT DISTINCT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT T1.title, T2.name FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code
SELECT T2.name, T1.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Any Theater"
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters WHERE movie = 'playing'
SELECT count(DISTINCT movietheaters.code) FROM MovieTheaters
SELECT count(DISTINCT title) FROM MovieTheaters
SELECT count(DISTINCT Code) FROM MovieTheaters
SELECT count(DISTINCT name FROM movietheaters
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT name FROM MovieTheaters WHERE rating = 'G' OR rating = 'PG'
SELECT name FROM MovieTheaters WHERE Rating = 'G' OR Rating = 'PG'
SELECT DISTINCT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT title FROM MovieTheaters WHERE name = "Odeon" OR name = "Imperial"
SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Imperial'
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT DISTINCT title FROM movies ORDER BY title
SELECT DISTINCT title FROM Movies ORDER BY title
SELECT Title FROM Movies ORDER BY Rating
SELECT Title FROM Movies ORDER BY Rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM MovieTheaters GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.movie WHERE T2.rating = (SELECT max(rating) FROM Movies)
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT count(*) FROM movies WHERE rating!= "null"
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT Code FROM Movies GROUP BY Code HAVING COUNT(*) >= 1)
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT Code FROM MovieTheaters GROUP BY Code HAVING COUNT(*) > 1)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM Movies)
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT MovieTheaters.Code FROM MovieTheaters JOIN Movies ON MovieTheaters.Movie = Movies.Code)
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT name FROM MovieTheaters WHERE Rating = 'G'
SELECT DISTINCT title FROM movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT * FROM Movies WHERE Rating = "unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT DISTINCT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT T2.Recipient FROM SHIPMENT AS T1 JOIN PACKAGE AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Weight = (SELECT max(weight) FROM SHIPMENT)
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T2.weight = (SELECT max(weight) FROM package)
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.recipient = T3.accountnumber WHERE T3.name = "Leo Wong"
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT salary, POSITION FROM Employee WHERE name = 'Turanga Leela';
SELECT salary, POSITION FROM EMPLOYEE WHERE name = "Turanga Leela"
SELECT avg(salary) FROM EMPLOYEE
SELECT avg(salary) FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE T2.position = 'intern'
SELECT LEVEL FROM Has_clearance WHERE POSITION = 'Physician';
SELECT LEVEL FROM Has_clearance WHERE POSITION = 'Physician'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T2.recipient = T3.accountnumber WHERE T3.name = 'Leo Wong'
SELECT DISTINCT T1.packageNumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T2.sender = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT DISTINCT sender FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.recipient = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT DISTINCT sender FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T2.sender = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid JOIN employee AS T4 ON T3.employeeid = T4.employeeid WHERE T4.name = 'Ogden Wernstrom' INTERSECT SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid JOIN employee AS T4 ON T3.employeeid = T4.employeeid WHERE T4.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = "Leo Wong"
SELECT contents FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'John Zoidfarb'
SELECT Contents FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T2.Sender = T3.EmployeeID WHERE T3.Name = "John Zoidfarb"
SELECT T2.packageNumber, T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name LIKE '%John%'
SELECT T1.packagenumber, T1.weight FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.recipient = T3.accountnumber WHERE T3.name = 'John' OR T3.name = 'John'
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT T2.name, count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T1.recipient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) LIMIT 1
SELECT min(T1.packageNumber), T2.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid GROUP BY T1.recipient
SELECT T2.name FROM shipment AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T1.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT Coordinates FROM planet WHERE name = 'Mars';
SELECT Coordinates FROM PLANET WHERE Name = 'Mars'
SELECT Name, Coordinates FROM PLANET ORDER BY Name
SELECT Name, Coordinates FROM PLANET ORDER BY Name
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J. Fry'
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT DISTINCT date FROM shipment
SELECT ShipmentID FROM Shipment WHERE Planet = 'Mars'
SELECT DISTINCT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT shipmentid FROM shipment WHERE planet = 'Mars' AND manager = 'Turanga Leela'
SELECT shipmentid FROM shipment WHERE manager = "Turanga Leela" AND planet = "Mars"
SELECT shipmentid FROM shipment WHERE planet = 'Mars' OR manager = 'Turanga Leela'
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = "Mars"
SELECT T1.name, sum(T1.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T1.name
SELECT count(*), T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetID = T2.planetID GROUP BY T1.name
SELECT name FROM shipment GROUP BY planetID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM SHIPMENT GROUP BY Planet ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T1.manager
SELECT count(*), T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN employee AS T3 ON T2.manager = T3.employeeid GROUP BY T1.name
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = 'Mars'
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = 'Mars'
SELECT T1.name, sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.shipped = 'yes' GROUP BY T1.name
SELECT sum(weight), name FROM package AS T1 JOIN planet AS T2 ON T1.planetid = T2.planetid GROUP BY T1.planetid
SELECT name FROM planet WHERE weight > 30
SELECT Name FROM planet WHERE Weight > 30
SELECT T2.packageNumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*), T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT COUNT(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Omicron Persei 8" OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T1.recipient = T3.planetid WHERE T3.name = 'Omicron Persei 8' OR T1.sender = 'Zapp Brannigan'
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_clearance WHERE Planet = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT DISTINCT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE planet = "Omega III"
SELECT T2.name FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T1.planet = 'Omega III'
SELECT T2.name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T1.employee = 'exact'
SELECT T2.name FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T1.employee = 1
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT Name FROM EMPLOYEE WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT Name FROM EMPLOYEE WHERE Salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_clearance WHERE Planet = 'Mars')
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_clearance WHERE Planet = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title, developers FROM game ORDER BY units_sold_millions DESC
SELECT title, developers FROM game ORDER BY units_sold DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT platform_name, market_district FROM platform
SELECT Platform_name, Market_district FROM platform
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT max(rank_of_the_year), min(rank_of_the_year) FROM player
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name, T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T2.Player_name FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T2Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE POSITION = "Guard"
SELECT avg(Units_sold_Millions) FROM game WHERE POSITION = "Guard"
SELECT title, platform_name FROM game
SELECT title, platform_name FROM game
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.market_district = "Asia" OR T1.market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = 'Asia' OR T2.market_district = 'USA'
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = "Oklahoma" OR T3.college = "Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = "Guard")
SELECT DISTINCT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard" EXCEPT SELECT DISTINCT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard"
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT Name FROM press WHERE YEAR_Profits_billion > 15 OR Month_Profits_billion > 1
SELECT name FROM press WHERE YEAR_PROFIT_BILLION > 1500000000 OR MONTH_PROFIT_BILLION > 1000000000
SELECT avg(YEAR_PROFITS_BILLION), max(YEAR_PROFITS_BILLION) FROM press
SELECT avg(yearly_profit_billion), max(yearly_profit_billion), press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR month_profits_billion ASC
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(Age), Gender FROM author GROUP BY Gender
SELECT gender, avg(age) FROM author GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT DISTINCT T2.Book_Series FROM book AS T1 JOIN book_series AS T2 ON T1.Book_Series = T2.Book_Series WHERE T1.Sale_Amount > 1000 INTERSECT SELECT DISTINCT T2.Book_Series FROM book AS T1 JOIN book_series AS T2 ON T1.Book_Series = T2.Book_Series WHERE T1.Sale_Amount < 500
SELECT DISTINCT T1.Book_Series FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 INTERSECT SELECT DISTINCT T1.Book_Series FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT DISTINCT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT DISTINCT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT title, author_name, publisher_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT title, author_name, press_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T1.name, sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.Name, count(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT T1.Name, count(*) FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID WHERE T2.Sale_Amount > 1000 GROUP BY T1.Name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Sale_Amount = (SELECT max(Sale_Amount) FROM book)
SELECT Author_ID FROM book ORDER BY Sale_Amount DESC LIMIT 1
SELECT T1.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT DISTINCT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = "Accor")
SELECT T1.name, T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T2.press_id HAVING count(*) > 2
SELECT press_id, name, YEAR_PROFITS_billion FROM press GROUP BY press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents
SELECT author_name FROM authors WHERE document_id = 4
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name, document_description FROM documents
SELECT document_id, author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT author_name, other_details FROM documents WHERE document_name = "Travel to China"
SELECT author_name, count(*) FROM authors GROUP BY author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM authors GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT next_process_id, process_name, process_description FROM Business_processes WHERE process_id = 9
SELECT process_name FROM Business_processes WHERE process_id = 9
SELECT count(*) FROM process_outcomes
SELECT process_outcome_code, process_outcome_description FROM process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "Working"
SELECT count(*) FROM process_status_code
SELECT process_status_code, process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id, staff_details FROM staff
SELECT staff_details FROM staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT count(*) FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T3.process_name = "Process"
SELECT process_id FROM documents_processes
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM process_outcomes WHERE process_outcome_code = ''
SELECT process_outcome_description, process_status_description FROM documents_processes WHERE document_id = 0
SELECT process_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT process_id, count(*) FROM documents_processes GROUP BY process_id
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id JOIN staff_in_processes AS T3 ON T1.document_id = T3.document_id JOIN staff_in_processes AS T4 ON T3.process_id = T4.process_id WHERE T1.document_id = 0 AND T4.staff_id = 9
SELECT staff_id, count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code, count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff_in_processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT count(*) FROM clients
SELECT count(*) FROM clients
SELECT client_id, client_details FROM clients
SELECT client_id, client_details FROM clients
SELECT agency_id, count(*) FROM Clients GROUP BY agency_id
SELECT count(DISTINCT agency_id) FROM clients
SELECT agency_id, agency_details FROM clients GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id HAVING count(*) >= 2
SELECT agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT agency_details FROM clients WHERE client_details LIKE '%Mac%'
SELECT client_details, agency_details FROM clients
SELECT client_details, agency_details FROM clients
SELECT count(DISTINCT sic_code, client_id FROM clients
SELECT count(DISTINCT sic_code FROM clients
SELECT client_id, client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients)
SELECT agency_id, agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT client_id, invoice_status, invoice_details FROM invoices
SELECT invoice_id, invoice_status, invoice_details FROM INVOICES
SELECT client_id, count(*) FROM invoices GROUP BY client_id
SELECT count(*), client_id FROM invoices GROUP BY client_id
SELECT client_id, detail FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id, client_details FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status, count(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, client_id, agency_id, invoice_details FROM invoices
SELECT invoice_status, invoice_details, client_id, agency_id FROM invoices
SELECT meeting_type, other_details FROM MEETINGS
SELECT meeting_type, other_details FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT T1.invoice_id, T1.invoice_details FROM INVOICES AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT payment_id, payment_details FROM payments WHERE invoice_status = 'Working'
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT invoice_id, count(*) FROM payments GROUP BY invoice_id
SELECT count(*), T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT agency_id, count(*) FROM staff GROUP BY agency_id
SELECT agency_id, count(*) FROM Staff GROUP BY agency_id
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM meetings GROUP BY meeting_outcome
SELECT meeting_outcome, count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM meetings GROUP BY client_id
SELECT count(*), client_id FROM meetings GROUP BY client_id
SELECT meeting_type, count(*) FROM meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*), meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id, meeting_outcome, meeting_type, client_id FROM meetings
SELECT meeting_id, count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(DISTINCT T1.meeting_id FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT staff_id, count(*) FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY staff_id ORDER BY count(*) LIMIT 1
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id = NULL
SELECT count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT client_id, client_details FROM meetings UNION SELECT client_id, client_details FROM invoices
SELECT client_id, client_details FROM meetings WHERE meeting_outcome = 'yes' UNION SELECT client_id, client_details FROM invoices
SELECT staff_id, staff_details FROM staff_in_meetings GROUP BY staff_id HAVING count(*) >= 1 INTERSECT SELECT staff_id, staff_details FROM staff WHERE staff_details LIKE '%s%'
SELECT staff_id, staff_details FROM staff_in_meetings
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' AND T2.billable_yn = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' AND T2.billable_yn = 'Yes'
SELECT start_date_time, end_date_time, client_details, staff_details FROM meetings
SELECT T1.start_date_time, T1.end_date_time, T1.client_id, T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
