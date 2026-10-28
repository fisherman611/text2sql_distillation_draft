SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager, Captain FROM club
SELECT manager, captain FROM club
SELECT Name FROM club WHERE Manufacturer!= "Nike"
SELECT Name FROM club WHERE Manufacturer!= 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2
SELECT Country FROM player WHERE Wins_count > 2
SELECT T2.Name, T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING count(*) > 2
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id WHERE T2.wins_count > 2
SELECT Name FROM club WHERE Manager = "Sam Allardyce"
SELECT Name FROM club WHERE Manager = "Sam Allardyce"
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT DISTINCT Manufacturer, count(*) FROM club GROUP BY Manufacturer
SELECT count(*), manufacturer FROM club GROUP BY manufacturer
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING count(*) > 1
SELECT DISTINCT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING count(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT earnings FROM player WHERE country = "Australia" OR country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2
SELECT T1.order_id, T1.order_status_code, count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) > 1
SELECT date_order_placed FROM orders GROUP BY date_order_placed ORDER BY min(date_order_placed) LIMIT 2
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) < 2)
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender, count(*) FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender
SELECT T1.gender_code, count(*) FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T3.order_item_id = T2.order_item_id GROUP BY T1.gender_code
SELECT count(*), gender_code FROM customers GROUP BY gender_code
SELECT count(*), gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_status_code, T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.status_code FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = 'Ordered' INTERSECT SELECT T1.shipment_tracking_number FROM shipments AS T1 JOIN order_items AS T2 ON T1.shipment_id = T2.shipment_id
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id WHERE T2.shipment_status_code = 'Shipped'
SELECT product_name, product_color FROM products WHERE product_id IN (SELECT T1.product_id FROM shipments AS T1 JOIN order_items AS T2 ON T1.shipment_id = T2.shipment_id)
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "female"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM INVOICES WHERE invoice_status_code = 'Not Shipped'
SELECT sum(total_cost), T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id, T1.date_order_placed, sum(T1.product_price) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code FROM order_items WHERE order_status_code = 'state')
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_id, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_id) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name, T1.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = 'M' GROUP BY email_address, town_city, county ORDER BY count(*) DESC LIMIT 10
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT min(order_status_code) FROM orders GROUP BY order_status_code
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM INVOICES AS T1 JOIN SHIPMENTS AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM INVOICES AS T1 JOIN SHIPMENTS AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T2.name FROM program AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, T1.age FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*), T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE T1.title = "Dracula"
SELECT T1.name, T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age > 60
SELECT channel_id, name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director_admin WHERE name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation!= "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT T1.Affiliation, count(*) FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.ID = T2.City_channel_ID GROUP BY T1.Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT T1.city, T1.station_name FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.city_channel_id = T2.city_channel_id ORDER BY T1.station_name
SELECT T1.Transmitter, T2.City_channel_ID FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT transmitter, station_name FROM radio ORDER BY ERP_kW DESC
SELECT T1.Transmitter, count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), T1.driver_id FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Driver_ID, count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT min(T2.Vehicle_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT top_speed, power FROM vehicle WHERE build_year = 1996
SELECT top_speed, power FROM vehicle WHERE build_year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT build_year, model, builder FROM vehicle
SELECT count(*) FROM vehicle WHERE build_year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE Build_Year = 2012
SELECT count(*) FROM vehicle_driver WHERE racing_series = 'NASCAR'
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Series = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T2.Name FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Power > 5000
SELECT T2.Name FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT model, build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) >= 2 INTERSECT SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 'Ziyang'
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2 INTERSECT SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 'Jeff Gordon' GROUP BY T1.Vehicle_ID HAVING count(*) > 2
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 'Jeff Gordon' GROUP BY T1.Vehicle_ID HAVING count(*) > 2
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*), racing_series FROM vehicle_driver GROUP BY racing_series
SELECT count(*), racing_series FROM vehicle_driver GROUP BY racing_series
SELECT T2.Name, T1.Citizenship FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Model = 'DJ1'
SELECT T2.Name, T2.Citizenship FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Model = 'DJ1'
SELECT count(*) FROM vehicle_driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name, exam_date FROM exams WHERE subject_code!= "Database"
SELECT exam_date, exam_name FROM exams WHERE subject_code!= "Database"
SELECT Exam_Date FROM exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_code, count(*) FROM questions GROUP BY TYPE_of_Question_code
SELECT TYPE_of_Question_Code, count(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT min(Assessment) FROM Student_Assessments
SELECT Exam_Name FROM exams GROUP BY Exam_Name ORDER BY count(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING count(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING count(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, count(*) FROM Students GROUP BY Gender_MFU
SELECT T1.Gender_MFU, count(*) FROM Students AS T1 JOIN Student_Assessments AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT last_name FROM students WHERE gender_mfu = "F" OR gender_mfu = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id JOIN valid_answers AS T3 ON T1.question_id = T3.valid_answer_id WHERE T3.valid_answer_text = "Normal" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id JOIN valid_answers AS T3 ON T1.question_id = T3.valid_answer_id JOIN student_answers AS T4 ON T4.student_id = T2.student_id JOIN student_answers AS T5 ON T4.question_id = T5.question_id JOIN valid_answers AS T6 ON T5.valid_answer_id = T6.valid_answer_id WHERE T6.valid_answer_text = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM students
SELECT * FROM students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = "Monitor"
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products
SELECT count(*) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id, product_name FROM products ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code
SELECT product_type_code, avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code, avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id, customer_name FROM customers
SELECT customer_id, customer_name FROM customers
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM Customer_Orders
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM Customer_Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id JOIN customers AS T4 ON T4.customer_id = T1.customer_id WHERE T4.customer_name = "Jeromy"
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT customer_id, customer_name, customer_phone, customer_email FROM customers ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT count(*), order_status_code FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT count(*) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Monitor"
SELECT count(*) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT T1.customer_id FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.order_date, T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 UNION SELECT T1.order_date, T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT T1.order_id, T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T2.order_quantity) > 6 INTERSECT SELECT T1.order_id, T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year < 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year < 1980
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT capital FROM region ORDER BY population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T2.Name, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Name, T1.Region_ID FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1
SELECT Capital FROM region ORDER BY Number_of_Stories DESC LIMIT 1
SELECT T1.Address, T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address, T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building WHERE region_id = "Abruzzo"
SELECT count(*), region_id FROM building WHERE region_id = "Abruzzo" GROUP BY region_id
SELECT Completed_Year, count(*) FROM building GROUP BY Completed_Year
SELECT completed_year, count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT * FROM building ORDER BY Number_of_Stories DESC LIMIT 1
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details FROM customers_and_services
SELECT count(*) FROM customers_and_services
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T2.customer_id = "Hardy Kutch" OR T3.status_code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.service_id WHERE T2.customer_id = "Hardy Kutch" AND T3.status_code = "good"
SELECT T1.Service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T2.customers_details = "Hardy Kutch" AND T3.status_code = "bad"
SELECT T2.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN customer_interactions AS T3 ON T1.customer_id = T3.customer_id WHERE T1.customer_details = "Hardy Kutch" AND T3.status_code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.service_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.status_code = "Stuck" AND T4.channel_details = "bad"
SELECT count(*) FROM Integration_platform AS T1 JOIN customer_interactions AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T1.integration_platform_details = 'successful'
SELECT count(*) FROM Integration_platform AS T1 JOIN Customer_interactions AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T1.integration_platform_details = "Success"
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platforms AS T2 ON T1.customer_id = T2.customer_id WHERE T2.integration_platform_details = "failed"
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_id = T2.customer_interaction_id WHERE T2.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT analytical_layer_type_code, count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT analytical_layer_type_code, count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.services_and_channels_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT count(*), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT min(A annual_fuel_cost), max(A annual_fuel_cost), avg(A annual_fuel_cost) FROM Vehicles
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name, model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM customers
SELECT name, age, membership_credit FROM customers
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, membership_credit FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT name FROM Vehicles WHERE id NOT IN (SELECT T1.id FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT T1.id FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T2.total_hours > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT avg(City_fuel_economy_rate), avg(Highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(City_fuel_economy_rate), avg(Highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_loans)
SELECT student_details FROM students WHERE student_id NOT IN (SELECT student_id FROM detention UNION SELECT student_id FROM student_loans)
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM detention
SELECT DISTINCT detention_type_description FROM detention
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details, T1.student_details FROM Addresses AS T1 JOIN Students_addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.address_details, T1.student_details FROM addresses AS T1 JOIN students_addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*), T1.event_type_code, T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T1.event_type_description, count(*) FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_description FROM achievements
SELECT achievement_details, achievement_type_description FROM achievements
SELECT count(*) FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id JOIN achievements AS T3 ON T1.student_id = T3.student_id WHERE T3.achievement_type_code = 'none'
SELECT count(*) FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id JOIN student_events AS T3 ON T1.student_id = T3.student_id JOIN achievements AS T4 ON T1.student_id = T4.student_id WHERE T4.achievement_type_code = 'not_won'
SELECT date_of_transcript, transcript_details FROM transcripts
SELECT date_of_transcript, transcript_details FROM transcripts
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT bio_data FROM students WHERE student_details LIKE '%Suite%'
SELECT T1.student_id, T1.student_details FROM students AS T1 JOIN student_details AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details, T1.student_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T2.student_id = T3.student_id
SELECT count(*), teacher_id FROM classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id, count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM classes AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.student_details FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT student_id, T1.student_details FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code, detention_type_description FROM detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM student_loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_loans
SELECT min(date_of_loan) FROM student_loans
SELECT T1.bio_data FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT student_details FROM Student_Loans ORDER BY date_of_loan LIMIT 1
SELECT date_of_transcript FROM Student_Loans WHERE amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT date_of_transcript FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Transcripts AS T2 ON T1.teacher_id = T2.student_id ORDER BY T2.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM transcripts AS T1 JOIN teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(*) FROM detention AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM detention AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT address_type_code, address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code, address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id JOIN student_loans AS T3 ON T1.student_id = T3.student_id WHERE T3.student_id NOT IN (SELECT student_id FROM student_loans)
SELECT T1.bio_data FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM students AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM detention
SELECT datetime_detention_start FROM detention
SELECT DISTINCT name FROM author
SELECT name FROM author
SELECT name, address FROM client
SELECT name, address FROM client
SELECT title, isbn, saleprice FROM book
SELECT title, isbn, saleprice FROM book
SELECT count(*) FROM books ORDER BY ISBN
SELECT count(*) FROM BOOKS_ORDER
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT name, address FROM client ORDER BY name
SELECT name, address FROM client ORDER BY name
SELECT title, author FROM Book
SELECT T2.name, T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.idorder, T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.idorder, T1.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name, count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT T2.name, count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.ISBN, count(*) FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.ISBN, count(*) FROM Books ORDER BY T1.ISBN GROUP BY T1.ISBN
SELECT isbn, sum(amount) FROM books_order GROUP BY isbn
SELECT T1.ISBN FROM BOOK AS T1 JOIN BOOKS_ORDER AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount)
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT title, purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(amount) DESC LIMIT 1
SELECT title, purchaseprice FROM book ORDER BY amount DESC LIMIT 1
SELECT title FROM books ORDER BY idorder
SELECT DISTINCT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name, count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name, count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT name FROM client ORDER BY numCC DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT T1.name, sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idorder ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice), min(SalePrice) FROM BOOK
SELECT max(PurchasePrice), min(PurchasePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 10
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM BOOK WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT salePrice FROM Book WHERE Author = "Plato"
SELECT saleprice FROM book WHERE author = "Plato"
SELECT title FROM Book WHERE purchaseprice = (SELECT min(purchaseprice) FROM book)
SELECT title FROM book WHERE purchaseprice = (SELECT min(purchaseprice) FROM book)
SELECT title FROM book WHERE purchaseprice < (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE author = 'Plato' AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.Name FROM BOOK AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T1.Title = "Pride and Prejudice"
SELECT T2.Name FROM BOOK AS T1 JOIN AUTHOR AS T2 ON T1.Author = T2.idAuthor WHERE T1.Title = "Pride and Prejudice"
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor WHERE T2.name LIKE '%Plato%'
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE "%Plato%"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn AND T3.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.idorder = T3.idauthor WHERE T3.name = "Pride and Prejudice"
SELECT IdOrder FROM Orders WHERE Title = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM Orders WHERE Title = "The Little Prince"
SELECT IdOrder FROM Books ORDER BY IdOrder
SELECT ISBN FROM Books ORDER BY IdOrder JOIN Client ON Books_Order.IdOrder = Client.IdClient WHERE Client.Name = "Peter Doe" INTERSECT SELECT ISBN FROM Books ORDER BY IdOrder JOIN Client ON Books_Order.IdOrder = Client.IdClient WHERE Client.Name = "James Smith"
SELECT ISBN FROM BOOKS_ORDER WHERE idorder = (SELECT idorder FROM orders WHERE name = "Peter Doe" UNION SELECT idorder FROM orders WHERE name = "James Smith") ORDER BY idorder
SELECT title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.idclient = 'Peter Doe' EXCEPT SELECT title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN client AS T3 ON T3.idclient = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T1.idclient = T3.idclient WHERE T3.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T1.idclient = T3.idclient WHERE T3.name = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T2.idorder JOIN author AS T4 ON T4.isbn = T3.isbn WHERE T4.name = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(chapters), min(chapters) FROM book
SELECT Title FROM book WHERE Type!= "Poet"
SELECT avg(Rating) FROM review
SELECT Title, Rating FROM book
SELECT max(chapters) FROM book
SELECT rank FROM review ORDER BY pages LIMIT 1
SELECT Title FROM book ORDER BY Rank DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM book WHERE TYPE = "Novel"
SELECT TYPE, count(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT Title FROM book ORDER BY Rating ASC
SELECT title, audio FROM book ORDER BY readers_in_million DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE chapters > 75 INTERSECT SELECT TYPE FROM book WHERE chapters < 50
{"sql": "SELECT count(DISTINCT TYPE FROM book")"}
SELECT TYPE, title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT card_credit FROM customer ORDER BY level_of_memberships DESC LIMIT 1
SELECT card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT nationality, count(*) FROM customer GROUP BY nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name, T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name ORDER BY T2.Quantity DESC
SELECT T2.name, T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T1.quantity) DESC
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.customer_id FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name, nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality, count(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING count(*) >= 2
SELECT T2.club_name, T1.club_leader FROM club_leader AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id
SELECT club_leader.club_name FROM club_leader JOIN club ON club_leader.club_id = club.club_id WHERE club_overall_ranking > 100
SELECT T1.club_leader FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.year_join < 2018
SELECT club_leader.name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id WHERE T1.club_name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(age) FROM club_leader
SELECT club_name FROM club WHERE club_name LIKE "%state%"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT DISTINCT collection_subset_name FROM collection_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Top collection"
SELECT collection_details FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
{"sql": "SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id JOIN Collections AS T4 ON T3.collection_subset_id = T4.collection_subset_id JOIN Collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN Collections AS T6 ON T5.collection_id = T6.collection_id JOIN Collections_subsets AS T7 ON T6.collection_subset_id = T7.collection_subset_id JOIN Collections AS T8 ON T7.collection_id = T8.collection_id JOIN Collections_subsets AS T9 ON T8.collection_subset_id = T9.collection_subset_id JOIN Document_Objects AS T10 ON T9.document_subset_id = T10.document_subset_id JOIN Document_Subsets AS T11 ON T10.document_subset_id = T11.document_subset_id JOIN Document_Subsets AS T12 ON T11.document_subset_id = T12.document_subset_id JOIN Collections AS T13 ON T12.collection_subset_id = T13.collection_subset_id JOIN Collections_subsets AS T14 ON T13.collection_subset_id = T14.collection_subset_id JOIN Collections AS T15 ON T14.collection_subset_id = T15.collection_id JOIN Document_Subsets AS T16 ON T15.collection_subset_id = T16.document_subset_id JOIN Document_Subsets AS T17 ON T16.document_subset_id = T17.document_subset_id JOIN Document_Subsets AS T18 ON T17.document_subset_id = T18.document_subset_id JOIN Document_Subsets AS T19 ON T18.document_subset_id = T19.document_subset_id JOIN Document_Subsets AS T20 ON T19.document_subset_id = T20.document_subset_id JOIN Document_Subsets AS T21 ON T20.document_subset_id = T21.document_subset_id JOIN Document_Subsets AS T22 ON T21.document_subset_id = T22.document_subset_id JOIN Document_Subsets AS T23 ON T22.document_subset_id = T23.document_subset_id JOIN Document_Subsets AS T24 ON T23.document_subset_id = T24.document_subset_id JOIN Document_Subsets AS T25 ON T24.document_subset_id = T25.document_subset_id JOIN Document_Subsets AS T26 ON T25.document_subset_id = T26.document_subset_id JOIN Document_Subsets AS T27 ON T26.document_subset_id = T27.document_subset_id JOIN Document_Subsets AS T28 ON T27.document_subset_id = T28.document_subset_id JOIN Document_Subsets AS T29 ON T28.document_subset_id = T29.document_subset_id JOIN Document_Subsets AS T30 ON T29.document_subset_id = T30.document_subset_id JOIN Document_Subsets AS T31 ON T30.document_subset_id = T31.document_subset_id JOIN Document_Subsets AS T32 ON T31.document_subset_id = T32.document_subset_id JOIN Document_Subsets AS T33 ON T32.document_subset_id = T33.document_subset_id JOIN Document_Subsets AS T34 ON T33.document_subset_id = T34.document_subset_id JOIN Document_Subsets AS T35 ON T34.document_subset_id = T35.document_subset_id JOIN Document_Subsets AS T36 ON T35.document_subset_id = T36.document_subset_id JOIN Document_Subsets AS T37 ON T36.document_subset_id = T37.document_subset_id JOIN Document_Subsets AS T38 ON T37.document_subset_id = T38.document_subset_id JOIN Document_Subsets AS T39 ON T38.document_subset_id = T39.document_subset_id JOIN Document_Subsets AS T40 ON T39.document_subset_id = T40.document_subset_id JOIN Document_Subsets AS T41 ON T40.document_subset_id = T41.document_subset_id JOIN Document_Subsets AS T42 ON T41.document
SELECT document_object_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.owner = T2.owner WHERE T2.owner = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT Owner FROM Document_Objects WHERE Document_Object_ID = 'Marlin'
SELECT Owner FROM Document_Objects WHERE Owner = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT description FROM Document_Objects WHERE Parent_Document_Object_ID = 1
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T1.owner = "Marlin"
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T1.owner = "Marlin"
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT document_object_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.parent_document_object_id = T2.document_object_id)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_subset_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_details = "parent")
SELECT T1.document_object_id, count(*) FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*), T1.document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT collection_description FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.parent_collection_id WHERE T2.collection_name = "Nice"
SELECT collection_name FROM collections WHERE collection_name = "Nice"
{"sql": "SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT collection_id FROM collection_subsets WHERE collection_subset_id IN (SELECT collection_subset_id FROM collection_subset_members WHERE related_collection_id IN (SELECT collection_id FROM collection_subsets WHERE collection_subset_id IN (SELECT collection_subset_id FROM collection_subset_members WHERE related_collection_id IN (SELECT collection_id FROM collection_subsets WHERE collection_subset_id IN (SELECT collection_subset_id FROM collection_subset_members WHERE related_document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = \"other\"))))))")
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT collection_id FROM collection_subsets WHERE collection_name = 'parent')
SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT count(*) FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
{"sql": "SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id JOIN collections AS T4 ON T4.collection_subset_id = T3.document_subset_id JOIN collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN collections AS T6 ON T5.collection_id = T6.collection_id JOIN collections_subsets AS T7 ON T6.collection_subset_id = T7.collection_subset_id JOIN collections AS T8 ON T7.collection_id = T8.collection_id JOIN collections_subsets AS T9 ON T8.collection_subset_id = T9.collection_subset_id JOIN collections AS T10 ON T9.collection_id = T10.collection_id JOIN collections_subsets AS T11 ON T10.collection_subset_id = T11.collection_subset_id JOIN collections AS T12 ON T11.collection_id = T12.collection_id JOIN collections_subsets AS T13 ON T12.collection_subset_id = T13.collection_subset_id JOIN collections AS T14 ON T13.collection_id = T14.collection_id JOIN collections_subsets AS T15 ON T14.collection_subset_id = T15.collection_subset_id JOIN collections AS T16 ON T15.collection_id = T16.collection_id JOIN collections_subsets AS T17 ON T16.collection_subset_id = T17.collection_subset_id JOIN collections AS T18 ON T17.collection_id = T18.collection_id JOIN collections_subsets AS T19 ON T18.collection_subset_id = T19.collection_subset_id JOIN collections AS T20 ON T19.collection_id = T20.collection_id JOIN collections_subsets AS T21 ON T20.collection_subset_id = T21.collection_subset_id JOIN collections AS T22 ON T21.collection_id = T22.collection_id JOIN collections_subsets AS T23 ON T22.collection_subset_id = T23.collection_subset_id JOIN collections AS T24 ON T23.collection_id = T24.collection_id JOIN collections_subsets AS T25 ON T24.collection_subset_id = T25.collection_subset_id JOIN collections AS T26 ON T25.collection_id = T26.collection_id JOIN collections_subsets AS T27 ON T26.collection_subset_id = T27.collection_subset_id JOIN collections AS T28 ON T27.collection_id = T28.collection_id JOIN collections_subsets AS T29 ON T28.collection_subset_id = T29.collection_subset_id JOIN collections AS T30 ON T29.collection_id = T30.collection_id JOIN collections_subsets AS T31 ON T30.collection_subset_id = T31.collection_subset_id JOIN collections AS T32 ON T31.collection_id = T32.collection_id JOIN collections_subsets AS T33 ON T32.collection_subset_id = T33.collection_subset_id JOIN collections AS T34 ON T33.collection_id = T34.collection_id JOIN collections_subsets AS T35 ON T34.collection_subset_id = T35.collection_subset_id JOIN collections AS T36 ON T35.collection_id = T36.collection_id JOIN collections_subsets AS T37 ON T36.collection_subset_id = T37.collection_subset_id JOIN collections AS T38 ON T37.collection_id = T38.collection_id JOIN collections_subsets AS T39 ON T38.collection_subset_id = T39.collection_subset_id JOIN collections AS T40 ON T39.collection_id = T40.collection_id JOIN collections_subsets AS T41 ON T40.collection_subset_id = T41.collection_subset_id JOIN collections AS T42 ON T41.collection_id = T42.collection_id JOIN collections_subsets AS T43 ON T42.collection_subset_id = T43.collection_subset_id JOIN collections AS T44 ON T43.collection_id = T44.collection_id JOIN collections_subsets AS T45 ON T44.collection_subset_id = T45.collection_subset
{"sql": "SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id JOIN collections AS T4 ON T4.collection_subset_id = T3.document_subset_id JOIN collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN collections AS T6 ON T5.collection_id = T6.collection_id JOIN collections_subsets AS T7 ON T6.collection_subset_id = T7.collection_subset_id JOIN collections AS T8 ON T7.collection_id = T8.collection_id JOIN collections_subsets AS T9 ON T8.collection_subset_id = T9.collection_subset_id JOIN collections AS T10 ON T9.collection_id = T10.collection_id JOIN collections_subsets AS T11 ON T10.collection_subset_id = T11.collection_subset_id JOIN collections AS T12 ON T11.collection_id = T12.collection_id JOIN collections_subsets AS T13 ON T12.collection_subset_id = T13.collection_subset_id JOIN collections AS T14 ON T13.collection_id = T14.collection_id JOIN collections_subsets AS T15 ON T14.collection_subset_id = T15.collection_subset_id JOIN collections AS T16 ON T15.collection_id = T16.collection_id JOIN collections_subsets AS T17 ON T16.collection_subset_id = T17.collection_subset_id JOIN collections AS T18 ON T17.collection_id = T18.collection_id JOIN collections_subsets AS T19 ON T18.collection_subset_id = T19.collection_subset_id JOIN collections AS T20 ON T19.collection_id = T20.collection_id JOIN collections_subsets AS T21 ON T20.collection_subset_id = T21.collection_subset_id JOIN collections AS T22 ON T21.collection_id = T22.collection_id JOIN collections_subsets AS T23 ON T22.collection_subset_id = T23.collection_subset_id JOIN collections AS T24 ON T23.collection_id = T24.collection_id JOIN collections_subsets AS T25 ON T24.collection_subset_id = T25.collection_subset_id JOIN collections AS T26 ON T25.collection_id = T26.collection_id JOIN collections_subsets AS T27 ON T26.collection_subset_id = T27.collection_subset_id JOIN collections AS T28 ON T27.collection_id = T28.collection_id JOIN collections_subsets AS T29 ON T28.collection_subset_id = T29.collection_subset_id JOIN collections AS T30 ON T29.collection_id = T30.collection_id JOIN collections_subsets AS T31 ON T30.collection_subset_id = T31.collection_subset_id JOIN collections AS T32 ON T31.collection_id = T32.collection_id JOIN collections_subsets AS T33 ON T32.collection_subset_id = T33.collection_subset_id JOIN collections AS T34 ON T33.collection_id = T34.collection_id JOIN collections_subsets AS T35 ON T34.collection_subset_id = T35.collection_subset_id JOIN collections AS T36 ON T35.collection_id = T36.collection_id JOIN collections_subsets AS T37 ON T36.collection_subset_id = T37.collection_subset_id JOIN collections AS T38 ON T37.collection_id = T38.collection_id JOIN collections_subsets AS T39 ON T38.collection_subset_id = T39.collection_subset_id JOIN collections AS T40 ON T39.collection_id = T40.collection_id JOIN collections_subsets AS T41 ON T40.collection_subset_id = T41.collection_subset_id JOIN collections AS T42 ON T41.collection_id = T42.collection_id JOIN collections_subsets AS T43 ON T42.collection_subset_id = T43.collection_subset_id JOIN collections AS T44 ON T43.collection_id = T44.collection_id JOIN collections_subsets AS T45 ON T44.collection_subset_id = T45
SELECT T1.collection_subset_id, count(*), count(*) FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id, T1.collection_subset_name, count(*) FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id, count(*) FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id
SELECT T1.document_object_id, count(*) FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id, count(*) FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id JOIN documents_in_collections AS T3 ON T1.document_object_id = T3.document_object_id JOIN collection_subset_members AS T4 ON T3.collection_id = T4.collection_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id JOIN Collections AS T4 ON T3.collection_id = T4.collection_id JOIN Collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN Document_Subsets AS T6 ON T5.document_subset_id = T6.document_subset_id WHERE T1.owner = "Braeden"
SELECT DISTINCT T1.owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id JOIN Collections AS T4 ON T3.collection_id = T4.collection_id JOIN Collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id JOIN Document_Subsets AS T6 ON T5.document_subset_id = T6.document_subset_id JOIN Document_Subset_Details AS T7 ON T6.document_subset_id = T7.document_subset_id WHERE T1.owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id JOIN document_subset_members AS T4 ON T4.document_subset_id = T1.document_subset_id JOIN documents_in_collections AS T5 ON T4.document_object_id = T5.document_object_id JOIN collections AS T6 ON T5.collection_id = T6.collection_id WHERE T2.owner = "Braeden"
SELECT DISTINCT document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id JOIN collections AS T4 ON T3.collection_id = T4.collection_id JOIN collections_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE owner = "Braeden"
SELECT document_subset_id, count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id
SELECT document_subset_id, document_subset_name, count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(DISTINCT T1.document_subset_id) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(DISTINCT T1.document_subset_id) DESC LIMIT 1
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name, T1.document_subset_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.related_document_object_id = T3.document_object_id
SELECT T1.document_subset_name, T1.document_subset_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id GROUP BY T1.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_subset_id = T3.document_object_id JOIN documents_in_collections AS T4 ON T3.document_object_id = T4.document_object_id JOIN document_subset_members AS T5 ON T4.document_object_id = T5.document_subset_id JOIN document_objects AS T6 ON T5.document_object_id = T6.document_object_id WHERE T6.owner = 'Ransom '
SELECT T2.collection_name FROM document_objects AS T1 JOIN collections AS T2 ON T1.parent_document_object_id = T2.collection_id WHERE T1.owner = "Ransom"
SELECT count(*), T1.collection_id FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*), T1.collection_id FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*) FROM collection_subsets AS T1 JOIN collection_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Document_objects AS T1 JOIN Collection_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best"
SELECT T1.collection_name, T1.collection_id, count(*) FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.collection_name, T1.collection_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND T1.collection_id = 2000
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" AND T1.collection_id = "2000"
SELECT DISTINCT document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = "Best" EXCEPT SELECT document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subset AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T1.document_subset_id = T3.document_object_id JOIN collections AS T4 ON T3.collection_id = T4.collection_id WHERE T4.collection_name = "Best" AND T1.document_subset_id >= 2000
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best for 2000" OR T2.collection_subset_name = "Best"
SELECT collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.parent_collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT collection_id) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best"
SELECT T1.collection_subset_id FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name, language FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id = 'Freeway'
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT stage_presence FROM performance_score WHERE language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5
SELECT voice_sound_quality FROM performance_score WHERE language = 'english' AND name = 'The Balkan Girls'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT T1.id FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id)
SELECT avg(rhythm_tempo), language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "Croatian" INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name, city_code, state, country FROM city
SELECT city_name, city_code, state, country FROM city
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state, count(*) FROM City GROUP BY state
SELECT count(*), state FROM city GROUP BY state
SELECT country, count(*) FROM city GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.fname, T1.lname FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT Fname, Lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM student WHERE country = 'China'
SELECT count(*) FROM student WHERE country = 'China'
SELECT Fname, Major FROM Student WHERE city_code = "Baltimore"
SELECT Fname, Major FROM Student WHERE city_code = "Baltimore"
SELECT count(*), country FROM student GROUP BY country
SELECT count(*), country FROM student GROUP BY country
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT city_name FROM city WHERE city_code >= 3
SELECT city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city WHERE state > 5
SELECT state FROM city WHERE state > 5
SELECT StuID FROM Student WHERE country!= "USA"
SELECT StuID FROM Student WHERE city_code!= "USA"
SELECT StuID FROM STUDENT WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM STUDENT WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' AND country = 'USA' EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT StuID FROM Student WHERE sex = 'male' EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "CHI"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city_code FROM city GROUP BY city_code ORDER BY sum(distance) DESC LIMIT 2
SELECT city_code FROM city GROUP BY city_code ORDER BY sum(distance) DESC LIMIT 1
SELECT city_code FROM city WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = "BAL"
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Boston"
SELECT avg(distance) FROM direct_distance WHERE city1_code = 'Boston'
SELECT city_name FROM city WHERE state = 'IL' ORDER BY distance ASC LIMIT 1
SELECT city_name FROM city ORDER BY distance ASC LIMIT 1
SELECT city_name FROM city WHERE distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT city_name FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_name, avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY city_name
SELECT city_name, avg(distance) FROM direct_distance GROUP BY city_name
SELECT sum(distance) FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith" INTERSECT SELECT sum(distance) FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = "Tracy" AND T2.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Tracy" AND T2.lname = "Kim"
SELECT Fname, Lname FROM Student WHERE city_code = "Linda" ORDER BY distance ASC LIMIT 1
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T3.city_name = "Linda" ORDER BY T2.distance DESC LIMIT 1
SELECT state FROM student WHERE fname = "Linda"
SELECT state FROM student WHERE fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT DISTINCT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 102
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE rating > (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > 7
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T1.sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE color = 'red' OR color = 'blue'
SELECT sid FROM reserves WHERE color = "red" OR color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM reserves WHERE color = 'red' INTERSECT SELECT sid FROM reserves WHERE color = 'blue'
SELECT sid FROM reserves WHERE color = "red" INTERSECT SELECT sid FROM reserves WHERE color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' UNION SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT T2.name, T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T2.name, T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 103
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = "Luis")
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T2.name, T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE '%D%'
SELECT count(*) FROM sailors WHERE name LIKE '%D%'
SELECT avg(rating), max(age) FROM sailors
SELECT avg(rating), max(age) FROM sailors
SELECT count(*), bid FROM reserves GROUP BY bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) FROM reserves WHERE bid > 50
SELECT count(*), T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.sid > 1 GROUP BY T1.sid
SELECT count(*), T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.id > 1 GROUP BY T1.sid
SELECT rating, avg(age) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" GROUP BY rating
SELECT T1.rating, avg(T1.age) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.age BETWEEN 20 AND 30
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.age >= 20 AND T2.age <= 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "Melon"
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
{"sql": "SELECT count(DISTINCT Earpads FROM headphone")"}
SELECT count(DISTINCT earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT model, class, construction FROM headphone ORDER BY price LIMIT 1
SELECT Model, Class, Construction FROM headphone ORDER BY Price LIMIT 1
SELECT Construction, avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction = "Plastic"
SELECT Earpads FROM headphone WHERE Construction = "Plastic"
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name, parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name, parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(*), neighborhood FROM store GROUP BY neighborhood
SELECT count(*), neighborhood FROM store GROUP BY neighborhood
SELECT T1.name FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id JOIN headphone AS T3 ON T2.headphone_id = T3.headphone_id GROUP BY T3.headphone_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = 'Headphones'
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT model FROM headphone WHERE quantity = (SELECT max(quantity) FROM stock)
SELECT count(*) FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id WHERE T2.store_id = "Woodman"
SELECT sum(Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "NAACL 2000"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id = "NAACL 2000"
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year = 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND YEAR = 2009
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY year
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Harvard University"
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Harvard University"
SELECT * FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 1
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 1
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T2.title, T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = "Stanford" INTERSECT SELECT T2.title, T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = "Columbia"
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" AND T3.author_id = 3 INTERSECT SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 1 INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 2 INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 3
SELECT title, paper_id FROM paper WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE name = "Mckeown" )
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Mckeown" EXCEPT SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Rambow"
SELECT title, paper_id FROM paper WHERE author_id = 1
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = "Mckeown" OR T2.author_id = "Kathleen" OR T2.author_id = "Rambow"
SELECT T1.name, count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*), author_id FROM author_list GROUP BY author_id ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*)
SELECT name FROM author WHERE author_id > 50
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT name FROM author_list WHERE paper_id = 1
SELECT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id WHERE T1.paper_id = "A00-1002"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = "A00-1002"
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id WHERE T1.paper_id = "D12-1027"
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.paper_id = "D12-1027"
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown, Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T2.email = "kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown, Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.email = "kathleen"
SELECT T1.name, count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 'Mckeown, Kathleen'
SELECT venue, YEAR FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T2.name = "Mckeown" AND T2.author_id = "Kathleen"
SELECT venue, YEAR FROM paper WHERE affiliation_id = 1
SELECT venue, YEAR FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University"
SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE YEAR = 2009 GROUP BY author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND YEAR <= 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year <= 2009
SELECT count(*) FROM paper WHERE affiliation_id = "Stanford University" AND YEAR >= 2000 AND YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id = "Stanford University" AND YEAR >= 2000 AND YEAR <= 2009
SELECT title FROM paper GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T3.title = "Papers co-authored with Mckeown, Kathleen"
{"sql": "SELECT T2.name FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.author_id = " + "Mckeown, Kathleen"}
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper EXCEPT SELECT T1.paper_id, T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.address LIKE '%China%' GROUP BY T3.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T1.year FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.year
SELECT venue, count(*) FROM paper GROUP BY venue BY year
SELECT count(*), affiliation_id FROM paper GROUP BY affiliation_id
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE citation > 50
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T2.cited_paper_id < 50 GROUP BY T1.author_id
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T3.cited_paper_id = T2.paper_id WHERE T3.citations <= 50
SELECT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T3.affiliation_id = T2.affiliation_id WHERE T1.year = 2009
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id = 'ACL')
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT conference_name, YEAR, LOCATION FROM conference
SELECT conference_name, count(*) FROM conference GROUP BY conference_name
SELECT Conference_Name, count(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT min(year) FROM conference
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, LOCATION, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_name
SELECT T1.institution_name, count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age), min(age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT name FROM staff WHERE institution_id = institution_id AND role = 'ACL' INTERSECT SELECT name FROM staff WHERE institution_id = institution_id AND role = 'Naccl'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3 conference_name = "ACL" INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3 conference_name = "NACCL"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2003 OR T3.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year >= 2003 AND T3.year <= 2004
SELECT T1.conference_name, T1.year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.conference_name, T1.year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT conference_name FROM conference GROUP BY conference_name ORDER BY count(*) DESC LIMIT 2
SELECT Conference_Name FROM conference ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE YEAR = 2004)
SELECT institution_name, LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2004)
SELECT plane_name FROM pilot_skills ORDER BY age DESC LIMIT 1
SELECT plane_name FROM pilot_skills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" AND T1.age < 35
SELECT pilot_name FROM pilot_skills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT location FROM hangar WHERE plane_name = 'plane')
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 32
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub'
SELECT plane_name FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY age LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith"
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT location FROM hangar ORDER BY plane_name
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" AND T1.age > 35 UNION SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "F-14 Fighter" AND T1.age < 30
SELECT pilot_name, age FROM pilot_skills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT avg(age), min(age) FROM pilotskills
SELECT avg(age), min(age) FROM pilot_skills
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin" INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Boston"
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin" INTERSECT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Boston"
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(age), plane_name FROM pilot_skills GROUP BY plane_name
SELECT avg(age), plane_name FROM pilot_skills GROUP BY plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT plane_name, max(age) FROM pilot_skills GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name
SELECT plane_name, max(age) FROM pilot_skills GROUP BY plane_name
SELECT max(age) FROM pilot_skills GROUP BY plane_name
SELECT DISTINCT pilot_name, max(age) FROM pilot_skills GROUP BY pilot_name
SELECT count(*), avg(age) FROM pilot_skills GROUP BY location
SELECT DISTINCT T1.location, count(*), avg(age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.location = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT T1.plane_name, count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35
SELECT location FROM hangar WHERE plane_name = (SELECT min(age) FROM pilotskills)
SELECT location FROM hangar WHERE plane_name = (SELECT plane_name FROM pilotskills ORDER BY age LIMIT 1)
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "piper cub") ORDER BY pilot_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < T2.plane_name WHERE T2.plane_name = 'F-14'
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > T2.plane_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'piper cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT District_ID, Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district
SELECT sum(population) FROM district WHERE area_km > 3
SELECT District_ID, Name, Government_website FROM district ORDER BY Population
SELECT name FROM district WHERE government_website = 'gov'
SELECT District_ID, Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT name, speak_title FROM spokesman
SELECT avg(Points), avg(Age) FROM spokesman WHERE rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.start_year < 2004
SELECT T2.Name, count(*) FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID GROUP BY T2.District_ID
SELECT T2.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 1 INTERSECT SELECT T2.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 2
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(population), avg(population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY year DESC LIMIT 1
SELECT title FROM sculptures WHERE location = 226
SELECT title FROM sculptures WHERE location = 226
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM sculptures
SELECT title, LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE location!= 'gallery 226'
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "gallery 226"
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY deathYear LIMIT 1
SELECT fname, lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT min(deathYear) FROM Artists
SELECT birthYear FROM Artists ORDER BY birthYear LIMIT 1
SELECT fname, deathYear FROM Artists ORDER BY deathYear LIMIT 1
SELECT fname, deathYear FROM Artists ORDER BY deathYear LIMIT 1
SELECT count(*) FROM paintings WHERE location = 240
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.name = "Gallery 240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.deathYear DESC LIMIT 1
SELECT count(*) FROM Artists WHERE birthYear > deathYear
SELECT T1.fname, T1.year FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT T1.fname, T1.year FROM ARTISTS AS T1 JOIN PAINTINGS AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT width_mm FROM paintings WHERE birthYear < 1850
SELECT width_mm FROM paintings WHERE birthYear < 1850
SELECT T1.location, T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT location, mediumON FROM paintings WHERE painterID = "Pablo"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID UNION SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Lithograph"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "lithographic"
SELECT T1.birthYear FROM ARTISTS AS T1 JOIN PAINTINGS AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT birthYear FROM Artists WHERE artistID = (SELECT painterID FROM paintings WHERE YEAR = 1884)
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = "gallery 241"
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Oil" AND T2.location = "Gallery 241"
SELECT count(*), medium FROM paintings GROUP BY medium
SELECT count(*), medium FROM paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR > 1910
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "medium" AND T1.location = "gallery 240"
SELECT DISTINCT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" AND T2.location = "gallery 240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR FROM paintings WHERE location = "gallery 240") FROM paintings)
SELECT paintingID FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT paintingID FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE "%female%"
SELECT T2.fname, T2.lname FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title, T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T2.title FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT artistID FROM paintings WHERE YEAR < 1900 GROUP BY artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM paintings WHERE height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM paintings WHERE height_mm < 2000
SELECT location FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT location FROM paintings WHERE mediumOn = "on canvas"
SELECT location FROM paintings WHERE mediumOn = "on panels" INTERSECT SELECT location FROM sculptures WHERE medium = "on canvas"
SELECT location FROM paintings WHERE YEAR < 1885 INTERSECT SELECT location FROM sculptures WHERE YEAR > 1930
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE medium = "oil" AND location = "gallery 241"
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE medium = "oil" AND location = 241
SELECT max(height_mm), max(paintingID) FROM paintings WHERE YEAR < 1900
SELECT height_mm, paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm), max(width_mm) FROM paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm) FROM paintings
SELECT avg(height_mm), avg(width_mm) FROM paintings GROUP BY painterID ORDER BY lname
SELECT avg(height_mm), avg(width_mm) FROM paintings GROUP BY painterID ORDER BY lname
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) >= 2
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) >= 2
SELECT deathYear FROM Artists GROUP BY deathYear HAVING count(*) <= 3
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 4
SELECT min(deathYear) FROM Artists GROUP BY artistID ORDER BY count(*) ASC LIMIT 1
SELECT min(deathYear) FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT paintingID, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), paintingID FROM paintings WHERE location = "gallery 240"
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, LOCATION, title FROM paintings ORDER BY YEAR
SELECT paintingID, LOCATION, title FROM paintings ORDER BY YEAR
SELECT year, LOCATION, title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.year, T1.location, T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.height_mm > 1000 ORDER BY T1.year
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" EXCEPT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" EXCEPT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT location FROM paintings WHERE YEAR < 1885 EXCEPT SELECT location FROM sculptures WHERE medium = 'canvas'
SELECT paintingID FROM paintings WHERE YEAR < 1885 EXCEPT SELECT paintingID FROM paintings WHERE mediumOn = "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT winning_team FROM race ORDER BY winning_team ASC
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position!= "Junior Strous"
SELECT winning_driver FROM race WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT max(Age), min(Age) FROM driver
SELECT max(Age), min(Age) FROM driver
SELECT count(DISTINCT engine FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, count(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT count(*), driver_id FROM race GROUP BY driver_id
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver
SELECT T1.Driver_Name, T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) >= 2
SELECT T1.Driver_Name, T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) >= 2
SELECT race_name FROM race WHERE age >= 26
SELECT Race_Name FROM race WHERE Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, count(*) FROM driver GROUP BY Constructor
SELECT Constructor, count(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING count(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT Driver_Name FROM race WHERE Driver_ID = "James Hinchcliffe" INTERSECT SELECT Driver_Name FROM race WHERE Driver_ID = "Carl Skerlong"
SELECT Driver_Name FROM race WHERE Driver_ID = 1 AND Pole_Position = 'James Hinchcliffe' INTERSECT SELECT Driver_Name FROM race WHERE Driver_ID = 1 AND Pole_Position = 'Carl Skerlong'
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe'
SELECT Driver_Name FROM driver EXCEPT SELECT Driver_Name FROM race WHERE Pole_Position = 'James Hinchcliffe'
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score), min(health_score) FROM countries WHERE name!= "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages WHERE language_id = 1)
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name, T1.language_id FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, T1.language_id FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
{"sql": "SELECT avg(overall_score) FROM countries WHERE language_id = "english""}
SELECT avg(overall_score) FROM countries WHERE language_id = 1
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT country_id FROM official_languages GROUP BY country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT country_id FROM countries WHERE overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT country_id FROM countries WHERE overall_score < 90)
SELECT country, town_city FROM addresses
SELECT town_city FROM addresses
SELECT county_state_province FROM addresses WHERE 1 = 1
SELECT county_state_province FROM addresses
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Rooms
SELECT min(room_count) FROM Rooms
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM user_category_code AS T1 JOIN user_category_description AS T2 ON T1.user_category_code = T2.user_category_code WHERE T2.user_category_description = 'Mother'
SELECT age_category_code FROM Ref_user_categories WHERE user_category_description LIKE "%Mother%"
SELECT first_name FROM users WHERE user_id = (SELECT user_id FROM properties GROUP BY user_id ORDER BY count(*) DESC LIMIT 1)
SELECT first_name FROM users WHERE user_id = (SELECT owner_user_id FROM properties GROUP BY owner_user_id ORDER BY count(*) DESC LIMIT 1)
SELECT avg(room_count) FROM Properties WHERE garden_yn = 'Y'
SELECT avg(room_count) FROM Properties WHERE property_feature_description = "garden"
SELECT town_city FROM addresses WHERE property_type_code = "Swimming Pool"
SELECT town_city FROM addresses WHERE zip_postcode LIKE '%pools%'
SELECT property_id, price_min FROM properties WHERE vendor_requested_price = (SELECT min(vendor_requested_price) FROM properties)
SELECT property_id, min(price_requested) FROM properties GROUP BY property_id
SELECT sum(room_count) FROM Rooms
SELECT avg(room_count) FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_Searches
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM user_property_history GROUP BY property_id HAVING count(*) <= 2)
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM properties WHERE owner_user_id = 2)
SELECT T1.user_category_code, T1.user_id FROM Ref_User_Categories AS T1 JOIN User_Searches AS T2 ON T1.user_category_code = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id, T1.user_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_user_categories AS T1 JOIN User_Searches AS T2 ON T1.user_category_code = T2.user_category_code
SELECT age_category_code FROM user_searches ORDER BY search_datetime LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name, middle_name, last_name FROM users WHERE user_id = 1
SELECT first_name, middle_name, last_name, login_name FROM users WHERE is_seller = 1
SELECT line_1_number_building, line_2_number_street, town_city FROM addresses WHERE age_category_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.user_category_code = "Senior Citizens"
SELECT count(*) FROM Property_Features WHERE feature_id >= 2
SELECT count(*) FROM Property_Features WHERE feature_id >= 2
SELECT count(*), T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT count(*), property_id FROM Property_photos GROUP BY property_id
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.user_id, count(*) FROM users AS T1 JOIN user_property_history AS T2 ON T1.user_id = T2.user_id JOIN property_photos AS T3 ON T3.property_id = T2.property_id GROUP BY T1.user_id
SELECT sum(price_max) FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id JOIN users AS T3 ON T2.user_id = T3.user_id WHERE T3.user_category_code = "single mother" OR T3.user_category_code = "student"
SELECT sum(price_max) FROM properties WHERE owner_user_id = 'single mother' OR owner_user_id = 'student'
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT datestamp, property_name FROM User_Property_History ORDER BY datestamp
SELECT property_type_description FROM Ref_Property_Types GROUP BY property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT property_type_code, property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT count(DISTINCT room_size FROM Rooms GROUP BY room_size
SELECT country FROM addresses WHERE first_name = "Robbie"
SELECT county_state_province FROM addresses WHERE first_name = "Robbie"
SELECT first_name, last_name FROM users AS T1 JOIN properties AS T2 ON T1.owner_user_id = T2.owner_user_id
SELECT T2.first_name, T2.last_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT last_name, user_id FROM users GROUP BY user_id HAVING count(*) >= 2
SELECT T1.last_name, T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 UNION SELECT T1.last_name, T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price ASC
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id, T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T1.nation = 'Russia' OR T2.nation = 'Great Britain'
SELECT count(DISTINCT heat FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > "4:21.558"
SELECT T2.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.name = 'Bradley Wiggins' INTERSECT SELECT T2.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*), T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 1
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT Flavor FROM goods ORDER BY Price LIMIT 1
SELECT id, flavor FROM goods ORDER BY price LIMIT 1
SELECT Id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT Id FROM goods WHERE Price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "lemon"
SELECT T2.Food, count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T2.Food
SELECT T1.Food, count(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.food = "bakery" GROUP BY T1.id HAVING count(*) >= 15
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*) >= 15
SELECT T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT LastName FROM customers GROUP BY LastName HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT food FROM goods WHERE flavor = "cake"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Id = T2.ItemNumber WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Id = T2.Item WHERE T2.CustomerId = 15
SELECT Flavor, avg(Price), max(Price), min(Price) FROM goods GROUP BY Flavor
SELECT avg(Price), min(Price), max(Price) FROM goods GROUP BY Food
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.flavor = "cake" INTERSECT SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.flavor = "cookie"
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = "cakes" INTERSECT SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = "cookies"
SELECT receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "LOGAN" AND T1.flavor = "croissant"
SELECT receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "Logan" AND T1.food = "croissant"
SELECT receiptnumber, date FROM receipts ORDER BY price DESC LIMIT 1
SELECT receiptnumber, date FROM receipts ORDER BY price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Food, count(*) FROM goods GROUP BY Food
SELECT Food, count(*) FROM goods GROUP BY Food
SELECT Food, avg(Price) FROM goods GROUP BY Food
SELECT Food, avg(Price) FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT Id FROM goods WHERE Price < (SELECT min(Price) FROM goods)
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN customers AS T3 ON T1.customerid = T3.id WHERE T2.flavor > 13
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN customers AS T3 ON T1.customerid = T3.id WHERE T2.price > 13
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN customers AS T3 ON T1.CustomerId = T3.Id WHERE T2.Price > 15
SELECT date FROM receipts WHERE price > 15
SELECT Id FROM goods WHERE Flavor = "APP"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT T1.id, T1.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.goods_id WHERE T1.id = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT Id FROM goods WHERE Flavor = 'good' ORDER BY Id
SELECT DISTINCT Id FROM goods ORDER BY Flavor
SELECT * FROM receipts WHERE Flavor = "apple" OR CustomerId = 12
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN customers AS T3 ON T1.customerid = T3.id WHERE T2.flavor = "apple" OR T3.id = 12
SELECT * FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10) OR price > 10
SELECT receiptnumber FROM receipts WHERE price > 10 OR date = (SELECT min(date) FROM receipts)
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT DISTINCT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T2.firstname, T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id ORDER BY T1.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "cheese"
SELECT Flavor FROM goods WHERE Food = "Cheese"
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(price), max(price) FROM goods GROUP BY food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T1.firstname, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.firstname ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customerid), date FROM receipts GROUP BY date
SELECT count(*), date FROM receipts GROUP BY date
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.id JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "apple" AND T4.food = "Tart"
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receipt JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "apple"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Cookies')
{"sql": "SELECT Id FROM goods WHERE Price < (SELECT min(Price) FROM goods WHERE Food = \"Croissant\"")"}
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT Id FROM goods WHERE Price > (SELECT avg(Price) FROM goods)
SELECT Id FROM goods WHERE Price > (SELECT avg(Price) FROM goods)
SELECT id, flavor, type FROM goods ORDER BY price
SELECT Id, Flavor, Food FROM goods ORDER BY Price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id FROM goods WHERE flavor = "chocolate" EXCEPT SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.receipt > 10
SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" GROUP BY T1.id HAVING count(*) >= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food!= 'Tart'
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.ReceiptNumber GROUP BY T1.Item ORDER BY count(*) DESC LIMIT 3
SELECT customerid FROM receipts WHERE sum(price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.amount) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.item = T2.item GROUP BY T3.id HAVING avg(T3.price > 5)
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt JOIN goods AS T4 ON T3.item = T4.id GROUP BY T4.id HAVING avg(T4.price > 5)
SELECT date FROM receipts WHERE sum(price) > 100
SELECT date FROM receipts WHERE sum(price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*), make FROM driver WHERE points > 150 GROUP BY make
SELECT make, count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(Age), make FROM driver GROUP BY make
SELECT avg(age), make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager, sponsor FROM team ORDER BY Car_Owner
SELECT manager, sponsor FROM team ORDER BY car_owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT * FROM driver ORDER BY Points DESC
SELECT T2.Driver, T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_ID
SELECT T1.Driver, T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_ID
SELECT max(Points) FROM driver WHERE Capital = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(age) FROM country WHERE official_native_language = "English"
SELECT avg(age) FROM driver WHERE official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.capital FROM country AS T1 JOIN team_driver AS T2 ON T1.country_id = T2.country_id ORDER BY T2.points DESC LIMIT 1
SELECT T2.Capital FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id ORDER BY T1.Points DESC LIMIT 1
SELECT Make, count(*) FROM driver GROUP BY Make
SELECT make, count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT country FROM driver WHERE make = "Dodge" INTERSECT SELECT country FROM driver WHERE make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver
SELECT sum(Points), avg(Points) FROM driver
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM country WHERE Country_Id NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT manager, sponsor FROM team GROUP BY manager, sponsor ORDER BY count(*) DESC LIMIT 1
SELECT manager, car_owner FROM team WHERE team_id IN (SELECT team_id FROM team_driver GROUP BY team_id HAVING count(*) >= 2)
SELECT T2.Manager, T2.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT city, province FROM institution
SELECT city, province FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT max(enrollment), min(enrollment) FROM institution
SELECT affiliation FROM institution WHERE city!= "Vancouver"
SELECT affiliation FROM institution WHERE city!= "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Name, Nickname FROM institution
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution WHERE Institution_ID IN (SELECT Institution_ID FROM Championship)
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING count(*) >= 1
SELECT count(*) FROM institution WHERE affiliation = 'public'
SELECT sum(Number_of_Championships) FROM championship WHERE affiliation = 'Public'
SELECT affiliation, count(*) FROM institution GROUP BY affiliation
SELECT affiliation, count(*) FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded, count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT enrollment FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT Province FROM institution WHERE Founded > 1920 EXCEPT SELECT Province FROM institution WHERE Founded < 1950
SELECT count(DISTINCT province FROM institution
SELECT count(DISTINCT province FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T1.code, avg(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code
SELECT avg(value), warehouse FROM boxes GROUP BY warehouse
SELECT avg(value), sum(value) FROM boxes
SELECT avg(value), sum(value) FROM boxes
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(value), max(value) FROM boxes GROUP BY contents
SELECT avg(value), max(value) FROM boxes GROUP BY contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM warehouses
SELECT code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE LOCATION = "Chicago" OR LOCATION = "New York"
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "Chicago" UNION SELECT contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "New York"
SELECT contents FROM boxes WHERE warehouse = 'Chicago' INTERSECT SELECT contents FROM boxes WHERE warehouse = 'New York'
SELECT contents FROM boxes WHERE code NOT IN (SELECT warehouse FROM warehouses WHERE location = "New York")
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" INTERSECT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Scissors"
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value LIMIT 1
SELECT code, contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = "rocks")
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT max(capacity) FROM warehouses)
SELECT T1.code, avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150
SELECT avg(value) FROM boxes WHERE warehouse > 150
SELECT contents, count(*), sum(value) FROM boxes GROUP BY contents
SELECT sum(value), count(*) FROM boxes GROUP BY contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses GROUP BY location
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses GROUP BY location
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT warehouse, max(value) FROM boxes GROUP BY warehouse
SELECT warehouse, max(value) FROM boxes GROUP BY warehouse
SELECT T1.code, count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code
SELECT count(*), T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT warehouse FROM boxes WHERE contents = 'rocks')
SELECT count(DISTINCT warehouse FROM boxes WHERE contents = 'rocks')
SELECT T1.code, T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse
SELECT code, LOCATION FROM boxes
SELECT code FROM boxes WHERE warehouse = "Chicago"
SELECT code FROM boxes WHERE warehouse = 'Chicago'
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.contents
SELECT code FROM warehouses WHERE capacity > 100
SELECT code FROM boxes GROUP BY code HAVING count(*) > capacity
SELECT sum(value) FROM boxes WHERE code NOT IN (SELECT warehouse FROM warehouses WHERE location = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse = 'any' EXCEPT 'Chicago'
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT count(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT Home_Conference FROM university
SELECT DISTINCT home_conference FROM university
SELECT Home_Conference, count(*) FROM university GROUP BY Home_Conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT T1.major_name, T1.major_code FROM major AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T2.university_name = "Augustana College"
SELECT T2.major_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T2.affiliation = "Augustana College"
SELECT university_name, city, state FROM university WHERE major_id = 1
SELECT university_name, city, state FROM university WHERE major_id = 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank = 1 GROUP BY T1.University_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT University_Name FROM university WHERE Major_Name = "Accounting" INTERSECT SELECT University_Name FROM university WHERE Major_Name = "Urban Education"
SELECT University_Name FROM university WHERE Major_Name = "Accounting" INTERSECT SELECT University_Name FROM university WHERE Major_Name = "Urban Education"
SELECT T1.University_Name, T1.Reputation_point FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN overall_ranking AS T3 ON T2.University_ID = T3.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name, rank FROM university WHERE state = 'Wisconsin'
SELECT University_Name FROM university ORDER BY Research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT university_name FROM university WHERE major_id = 3
SELECT University_Name FROM university WHERE Major_ID = 3
SELECT sum(enrollment) FROM university WHERE overall_rank <= 5
SELECT count(*) FROM university WHERE rank <= 5
SELECT university_name, citation_point FROM overall_ranking WHERE reputation_point >= 3
SELECT university_name, citation_point FROM overall_ranking ORDER BY reputation_point DESC LIMIT 3
SELECT state FROM university GROUP BY state HAVING count(*) > 2
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND enrollment < 3000
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM Movie WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT title FROM movies WHERE rating = ‘G’
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM MovieTheaters WHERE code = 'Odeon'
SELECT title FROM Movies JOIN MovieTheaters ON Movies.Code = MovieTheaters.Code WHERE Name = "Odeon"
SELECT T2.name, T1.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code
SELECT T1.name, T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code
SELECT count(*) FROM Movies WHERE rating = 'G'
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters WHERE Code = "Playing"
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT name FROM MovieTheaters WHERE rating = ‘G’ OR rating = ‘PG’
SELECT name FROM MovieTheaters WHERE rating = 'G' OR rating = 'PG'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = "Odeon" OR T2.name = "Imperial"
SELECT title FROM MovieTheaters WHERE name = "Odeon" OR name = "Imperial"
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = 'odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = 'imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon" INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Imperial"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code!= 'odeon'
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM Movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM movietheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), rating FROM movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != 'null'
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT name FROM MovieTheaters WHERE code = (SELECT code FROM MovieTheaters WHERE movie = 1)
SELECT name FROM MovieTheaters WHERE code = 1
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE movie = 'showing')
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT code FROM Movies)
SELECT name FROM MovieTheaters WHERE movie = ‘G’
SELECT name FROM MovieTheaters WHERE Rating = 'G'
SELECT title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT * FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT T1.code FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT recipient FROM package ORDER BY weight DESC LIMIT 1
SELECT T2.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber ORDER BY T1.weight DESC LIMIT 1
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = "Leo Wong"
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT POSITION FROM EMPLOYEE WHERE NAME = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary, POSITION FROM employee WHERE name = 'Turanga Leela'
SELECT salary, POSITION FROM employee WHERE name = "Turanga Leela"
SELECT avg(salary) FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T1.position = 'intern'
SELECT avg(salary) FROM employee WHERE position = 'intern'
SELECT level FROM Has_clearance WHERE employee = 'Physician'
SELECT T2.level FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE T1.position = 'Physician'
SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "leo wong"
SELECT count(*) FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T2.sender = T3.employeeid WHERE T3.name = "leo wong"
SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.recipient = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT sender FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.recipient = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT DISTINCT sender FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.recipient = T3.employeeid WHERE T3.name = 'Leo Wong'
{"sql": "SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = " + "Ogden Wernstrom" INTERSECT SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = " + "Leo Wong"
{"sql": "SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = " + "Ogden Wernstrom" INTERSECT SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = " + "Leo Wong"
SELECT contents FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "John Zoidfarb"
SELECT Contents FROM PACKAGE AS T1 JOIN HAS_CLEARANCE AS T2 ON T1.Sender = T2.Employee JOIN EMPLOYEE AS T3 ON T2.Employee = T3.EmployeeID WHERE T3.Name = "John Zoidfarb"
SELECT T1.packagenumber, T1.weight FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'John'
SELECT packagenumber, weight FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%'
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT T1.name, count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT min(T1.packageNumber), T2.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T1.recipient ORDER BY count(*) ASC LIMIT 1
SELECT T2.name FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T1.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT coordinates FROM planet WHERE name = 'Mars'
SELECT name, coordinates FROM planet ORDER BY name
SELECT name, coordinates FROM planet ORDER BY name
SELECT shipmentid FROM shipment WHERE manager = 'Phillip J. Fry'
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'phillip j fry'
SELECT Date FROM SHIPMENT
SELECT date FROM shipment
SELECT shipmentid FROM shipment WHERE planet = "Mars"
SELECT shipmentid FROM planet WHERE name = 'Mars'
SELECT shipmentid FROM shipment WHERE planet = 'Mars' AND manager = 'Turanga Leela'
SELECT shipmentid FROM shipment WHERE manager = "Turanga Leela"
SELECT shipmentid FROM shipment WHERE planet = 'Mars' OR manager = 'Turanga Leela'
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 'Mars'
SELECT T1.name, sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetgroup by T1.name
SELECT count(*), planetID FROM shipment GROUP BY planetID
SELECT name FROM planet ORDER BY count(*) DESC LIMIT 1
SELECT name FROM planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT count(*), T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planetid = 2
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Mars"
SELECT T2.name, sum(T1.weight) FROM package AS T1 JOIN planet AS T2 ON T1.planet = T2.planetID GROUP BY T2.name
SELECT sum(weight), name FROM package GROUP BY name
SELECT name FROM planet WHERE weight > 30
SELECT name FROM planet WHERE weight > 30
SELECT package_number FROM shipment AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Zapp Brannigan" AND T1.planet = "Omicron Persei 8"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipment WHERE T1.sender = "Zapp Brannigan" OR T1.recipient = "Omicron Persei 8"
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Omicron Persei 8' OR T1.sender = 'Zapp Brannigan'
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT name FROM Employee WHERE employeeid NOT IN (SELECT employeeid FROM Has_clearance WHERE planet = 'Mars')
SELECT name FROM employee WHERE planetid = 'Omega III'
SELECT name FROM employee WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planet = 'Omega III')
SELECT name FROM planet WHERE planetid IN (SELECT planet FROM has_clearance WHERE employee = 1)
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet JOIN employee AS T3 ON T2.employee = T3.employeeid WHERE T3.position = 'manager'
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > 5000
SELECT name FROM Employee WHERE salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employeeid FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employeeid FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title, developers FROM game ORDER BY units_sold_millions DESC
SELECT title, developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT Platform_name, Market_district FROM platform
SELECT platform_name, market_district FROM platform
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = "Auburn"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game_player WHERE Position = "Guard"
SELECT avg(Units_sold_Millions) FROM game WHERE Position = "Guard"
SELECT T1.Title, T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title, T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = "Asia" OR T2.market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Franchise, count(*) FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID GROUP BY T1.Franchise
SELECT count(*), franchise FROM game GROUP BY franchise
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = "Oklahoma" INTERSECT SELECT T2.Title FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = "Auburn"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE position = 'Guard')
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Position = "Guard"
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY YEAR_PROFITS_BILLION DESC
SELECT name FROM press WHERE YEAR_PROFITS_billion > 1500000000 OR MONTH_PROFITS_billion > 1000000
SELECT name FROM press WHERE YEAR_Profits_billion > 15 OR MONTH_Profits_billion > 1
SELECT avg(YEAR_PROFITS_BILLION), max(YEAR_PROFITS_BILLION) FROM press
SELECT avg(yearly_profit_billion), max(yearly_profit_billion) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT Press_ID FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Press_ID FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age), gender FROM author GROUP BY gender
SELECT gender, avg(age) FROM author GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT title FROM book ORDER BY release_date DESC
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) > 1000 INTERSECT SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT title, author_name, publisher_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT title, author_name, press_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT T1.name, sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T1.name, sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT count(*), T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T1.name, count(*) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.name, T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor"
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT name, YEAR_PROFITS_billion FROM press WHERE press_id > 2
SELECT T2.name, T1.press_id, T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents
SELECT author_name FROM authors WHERE document_id = 4
SELECT author_name FROM authors WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name, document_description FROM Documents
SELECT document_id, author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT author_name, other_details FROM documents WHERE document_name = "Travel to China"
SELECT author_name, count(*) FROM Documents GROUP BY author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM authors GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT next_process_id, process_name, process_description FROM Business_processes WHERE process_id = 9
SELECT process_name FROM Business_processes WHERE process_id = 9
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id, staff_details FROM staff
SELECT staff_details FROM staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_processes AS T2 ON T1.document_id = T2.document_id JOIN Business_processes AS T3 ON T2.process_id = T3.process_id WHERE T3.process_name = "process"
SELECT process_id FROM Documents_processes
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM Business_processes WHERE process_id = NULL
SELECT T1.process_outcome_description, T2.process_status_description FROM process_outcomes AS T1 JOIN documents_processes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.document_id = 0
SELECT process_name FROM business_processes AS T1 JOIN documents_processes AS T2 ON T1.process_id = T2.process_id JOIN documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT T1.process_id, count(*) FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id GROUP BY T1.process_id
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.document_name = "document1" AND T3.staff_role_code = "staff1" AND T2.process_id = 9
SELECT T1.staff_id, count(*) FROM Staff AS T1 JOIN Staff_in_processes AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id
SELECT T1.staff_role_code, count(*) FROM Ref_Staff_Roles AS T1 JOIN Staff_in_processes AS T2 ON T1.staff_role_code = T2.staff_role_code GROUP BY T1.staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff AS T1 JOIN staff_roles AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id = 3
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT count(*) FROM clients
SELECT count(*) FROM clients
SELECT client_id, client_details FROM clients
SELECT client_id, client_details FROM clients
SELECT T1.agency_id, count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT count(*), T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT agency_details FROM clients WHERE client_details = "Mac"
SELECT T1.client_details, T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details, T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.sic_code, count(*) FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.sic_code
SELECT count(*), sic_code FROM clients GROUP BY sic_code
SELECT client_id, client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients)
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM INVOICES AS T1 JOIN CLIENTS AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM INVOICES
SELECT client_id, count(*) FROM invoices GROUP BY client_id
SELECT count(*), client_id FROM invoices GROUP BY client_id
SELECT client_id, T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id, client_details FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM invoices GROUP BY invoice_status
SELECT count(*), T1.invoice_status FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.sic_code, T1.client_details, T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id JOIN invoices AS T3 ON T2.client_id = T3.client_id
SELECT T1.invoice_status, T1.invoice_details, T1.client_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type, other_details FROM meetings
SELECT meeting_type, other_details FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT T1.payment_id, T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id, T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id, invoice_status FROM invoices EXCEPT SELECT T1.invoice_id, T1.invoice_status FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id, invoice_status FROM invoices EXCEPT SELECT invoice_id, invoice_status FROM payments
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id, T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT T1.invoice_id, count(*) FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*), T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM INVOICES AS T1 JOINPayments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM INVOICES AS T1 JOINPayments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT T1.agency_id, count(*) FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, count(*) FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM meetings GROUP BY meeting_outcome
SELECT count(*), meeting_outcome FROM meetings GROUP BY meeting_outcome
SELECT T1.client_id, count(*) FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*), client_id FROM meetings GROUP BY client_id
SELECT meeting_type, count(*) FROM meetings GROUP BY meeting_type
SELECT count(*), meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT meeting_id, meeting_outcome, meeting_type, client_details FROM meetings
SELECT T1.meeting_id, count(*) FROM Staff_in_meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT count(*), meeting_id FROM Staff_in_meetings GROUP BY meeting_id
SELECT T1.staff_id, count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Staff_in_meetings
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) = 0
SELECT count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id NOT IN (SELECT T2.staff_id FROM staff_in_meetings)
SELECT T1.client_id, T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id, T1.client_details FROM clients AS T1 JOIN payments AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id, T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.staff_id, T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN staff_in_meetings AS T2 ON T1.client_id = T2.client_id JOIN meetings AS T3 ON T2.meeting_id = T3.meeting_id WHERE T3.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) >= 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Y' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time, T1.end_date_time, T1.client_details, T2.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.start_date_time, T1.end_date_time, T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
