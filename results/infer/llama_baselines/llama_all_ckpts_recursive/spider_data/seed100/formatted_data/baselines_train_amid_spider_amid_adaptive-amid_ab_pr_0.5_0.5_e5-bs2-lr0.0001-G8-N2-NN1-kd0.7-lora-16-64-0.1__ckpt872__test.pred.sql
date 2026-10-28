SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT name FROM club ORDER BY name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT manager, captain FROM club
SELECT Manager, Captain FROM club
SELECT name FROM club WHERE Manufacturer!= 'Nike'
SELECT name FROM club WHERE sponsor!= 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT country FROM player WHERE wins_count > 2
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING count(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T2.name FROM player AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id WHERE T2.manager = 'Sam Allardyce'
SELECT T1.name FROM player AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id WHERE T2.manager = 'Sam Allardyce'
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(Earnings) DESC
SELECT count(*), T1.Manufacturer FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.manufacturer
SELECT count(*), manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.manufacturer FROM club AS t1 JOIN player AS t2 ON t1.manufacturer = t2.manufacturer GROUP BY t1.manufacturer HAVING count(*) > 1
SELECT DISTINCT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player WHERE earnings > 1400000 INTERSECT SELECT country FROM player WHERE earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id, T1.order_status_code, count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.product_id IN (SELECT product_id FROM products) GROUP BY T1.order_id
SELECT T1.order_id, T1.order_status_code, T1.customer_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING min(T1.date_order_placed) OR count(*) > 1
SELECT min(date_order_placed), T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT min(date_order_placed) FROM orders
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers EXCEPT SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM Order_items WHERE order_item_status_code = "Not ordered")
SELECT T1.product_id, T1.product_name, T1.product_price, T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id, T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code, count(*) FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T3.customer_id = T1.customer_id JOIN order_items AS T4 ON T4.order_item_id = T3.order_id GROUP BY T1.gender_code
SELECT T1.gender_code, count(*) FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T2.customer_id = T3.customer_id JOIN order_items AS T4 ON T4.order_item_id = T3.order_id GROUP BY T1.gender_code
SELECT count(*), T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_id, T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T1.customer_last_name, T2.customer_middle_initial, T1.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code, T1.invoice_date, T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T2.product_name, T2.shipment_date FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name, T2.shipping_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_status_code, T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = "Shipped"
SELECT T2.product_name, T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id WHERE T1.shipment_date > '2022-01-01'
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_id IN (SELECT T2.customer_id FROM customers AS T4 JOIN orders AS T5 ON T4.customer_id = T5.customer_id WHERE T4.gender_code = "F")
SELECT T1.invoice_status_code FROM invoices AS T1 JOIN orders AS T2 ON T1.invoice_number = T2.order_id WHERE T2.order_status_code!= "Shipped"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code!= 'Shipped'
SELECT sum(T1.order_id), T1.date_order_placed, T1.order_id FROM orders AS T1 JOIN invoice_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id, T1.date_order_placed, sum(T2.product_price * T1.order_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM Orders
SELECT count(DISTINCT state_province_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_method
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.order_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM Shipments
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address, T1.address_line_1, T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) < (SELECT count(*) FROM customers GROUP BY gender_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT min(order_status_code) FROM orders GROUP BY order_status_code
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price!= (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT t1.name FROM director AS t1 JOIN director_admin AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, t1.age FROM director AS t1 JOIN director_admin AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name HAVING count(*) > 1
SELECT t1.name, count(*) FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT T2.name, T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t2.channel_id WHERE t2.age > 60
SELECT t1.channel_id, t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id WHERE t2.director_id!= (SELECT director_id FROM director WHERE name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation!= 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT T1.Affiliation, count(*) FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.ID = T2.City_channel_ID GROUP BY T1.Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT T1.City, T2.station_name FROM city_channel AS T1 JOIN station AS T2 ON T1.station_name = T2.station_name ORDER BY T2.station_name
SELECT T1.Transmitter, T3.City_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID JOIN city_channel AS T3 ON T2.City_channel_ID = T3.ID
SELECT T1.Transmitter, T3.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID JOIN city_channel AS T3 ON T2.City_channel_ID = T3.ID ORDER BY T1.ERP_kW DESC
SELECT T1.Transmitter, COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT T2.Name FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), T1.driver_id FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_ID, count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT max(power), avg(power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(T1.Power), avg(T1.Power) FROM vehicle AS T1 JOIN builder AS T2 ON T1.Builder_ID = T2.Builder_ID WHERE T2.Cities = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT TOP (1), max(top_speed), max(power) FROM vehicle WHERE Build_Year = 1996
SELECT top_speed, power FROM vehicle WHERE build_year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T1.driver_id) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.build_year = 2012
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Name = 'NASCAR'
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.top_speed > 200 AND T1.build_year > 2000 WHERE T2.Racing_Series = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle GROUP BY Top_Speed
SELECT DISTINCT T1.name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.power > 5000
SELECT T1.name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.power > 5000
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_speed > 150
SELECT model, build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model, build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T2.Vehicle_ID, T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 2 OR T1.Build_Year = 'Ziyang'
SELECT T2.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2 UNION SELECT T3.Model FROM vehicle AS T3 JOIN vehicle_driver AS T4 ON T3.Vehicle_ID = T4.Vehicle_ID JOIN driver AS T5 ON T4.driver_ID = T5.driver_ID WHERE T5.Citizenship = "Ziyang"
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = (SELECT Driver_ID FROM driver WHERE Name = 'Jeff Gordon')
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = (SELECT Driver_ID FROM driver WHERE Name = "Jeff Gordon")
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_speed = (SELECT max(Top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT T3.name, T3.citizenship FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T1.model = 'DJ1'
SELECT T1.name, T1.citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Exam_Name
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT T1.exam_name, T1.exam_date FROM exams AS T1 JOIN questions AS T2 ON T1.exam_id = T2.exam_id WHERE T2.subject_code!= "Database"
SELECT T1.exam_date, T1.exam_name FROM exams AS T1 JOIN questions AS T2 ON T1.exam_id = T2.exam_id WHERE T2.subject_code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, COUNT(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T1.Comments = "Normal"
SELECT DISTINCT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id JOIN Student_answers AS T3 ON T1.student_id = T3.student_id WHERE T3_comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN questions_in_exams AS T2 ON T1.question_id = T2.question_id JOIN questions AS T3 ON T1.question_id = T3.question_id GROUP BY T1.student_id ORDER BY count(*) DESC
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_id = T2.student_answer_id GROUP BY T1.student_id ORDER BY count(*) DESC
SELECT T1.First_name, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_name, T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Student AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Assessment ORDER BY COUNT(*) ASC
SELECT T1.Answering_Eval FROM Student_Assessments AS T1 JOIN Exams AS T2 ON T1.Valid_Answer_ID = T2.Exam_ID GROUP BY T1.Valid_Answer_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.First_name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT T1.Gender_MFU, count(*) FROM Students AS T1 JOIN Student_Assessments AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT T1.Last_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender_MFU = "F" OR T1.Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.Comments FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Question_ID IN ( SELECT T3.Question_ID FROM Questions_in_Exams AS T3 JOIN Exams AS T4 ON T3.Exam_ID = T4.Exam_ID WHERE T4.Exam_Name = "Normal" INTERSECT SELECT T3.Question_ID FROM Questions_in_Exams AS T3 JOIN Exams AS T4 ON T3.Exam_ID = T4.Exam_ID WHERE T4.Exam_Name = "Absent")
SELECT T1.Comments FROM Valid_Answers AS T1 JOIN Student_Answers AS T2 ON T1.Valid_Answer_Text = T2.Comments WHERE T1.question_text = "Normal" INTERSECT SELECT T1.Comments FROM Valid_Answers AS T1 JOIN Student_Answers AS T2 ON T1.Valid_Answer_Text = T2.Comments WHERE T1.question_text = "Absent"
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_type_code = "Monitor"
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(DISTINCT product_type_code) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT t1.product_name FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Hardware' AND t2.order_quantity > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' AND product_price = ( SELECT min(product_price) FROM products WHERE product_type_code = 'Hardware' )
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price
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
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT customer_email, customer_phone, customer_address FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT customer_name FROM customers WHERE payment_method_code = 'Credit Card' GROUP BY customer_name ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM Customer_Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = 'Jeromy'
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Jeromy"
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id, T1.name, T1.phone, T1.email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_name = 'Monitor'
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE t1.product_type_code = "Monitor" GROUP BY t1.product_id HAVING sum(t2.order_quantity) > 0
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN order_items AS t2 ON t1.customer_id = t2.customer_id JOIN customer_orders AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t2.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date, T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 UNION SELECT T1.order_date, T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT order_id, order_date FROM order_items WHERE order_quantity > 6 UNION SELECT order_id, order_date FROM order_items GROUP BY order_id HAVING count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT address FROM building ORDER BY completed_year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year!= 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year!= 1980
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
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.name HAVING count(*) > 1
SELECT t1.capital FROM region AS t1 JOIN building AS t2 ON t1.region_id = t2.region_id GROUP BY t1.capital ORDER BY count(*) DESC LIMIT 1
SELECT t1.capital FROM region AS t1 JOIN building AS t2 ON t1.region_id = t2.region_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address, T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Name, T1.Address, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building WHERE region_id = (SELECT region_id FROM region WHERE name = 'Abruzzo') AND number_of_stories > = 1000
SELECT T1.Name, T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = 'Abruzzo'
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building ORDER BY Completed_Year DESC LIMIT 1
SELECT Name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT name, completed_year FROM building ORDER BY number_of_stories DESC
SELECT Channel_Details FROM CHANNS ORDER BY Channel_Details
SELECT Channel_Details FROM CHANNEL ORDER BY Channel_Details ASC
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING COUNT(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t2.service_details = (SELECT service_details FROM services GROUP BY service_details ORDER BY count(*) ASC LIMIT 1)
SELECT count(DISTINCT customer_id, service_id) FROM Customers_and_Services
SELECT count(*) FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_details = T3.services_and_channels_details WHERE T2.customer_id = "Hardy Kutch" OR T3.Status_Code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.service_id WHERE T3.Status_Code = "good" AND T2.customer_id = "Hardy Kutch"
SELECT T1.Service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_details = T3.services_and_channels_details WHERE T2.customers_details = "Hardy Kutch" AND T3.Status_Code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customer_id = T3.customer_id WHERE T2.customers_and_channels_details = "Hardy Kutch" AND T3.Status_Code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.services_and_channels_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.services_and_channels_details WHERE T2.channel_id = 15
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T2.status_code = "Stuck" AND T4.channel_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.service_details = "bad" AND T4.channel_details = "Stuck"
SELECT count(*) FROM Integration_platforms
SELECT count(*) FROM Integration_platforms AS T1 JOIN customer_interactions AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T1.integration_platform_details LIKE "%Success%"
SELECT T1.customer_details FROM Customers AS T1 JOIN Integration_Platform AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Integration_Platform_Details = "failed integration platform"
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN integration_platforms AS t2 ON t1.customer_interaction_id = t2.customer_interaction_id WHERE t2.integration_platform_details = "Fail"
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customers_and_Services_ID = "null"
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer AS T1 JOIN Customers_and_Services AS T2 ON T1.Customers_and_Services_ID = T2.Customers_and_Services_ID GROUP BY T1.Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT T1.Service_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Service_ID NOT IN (SELECT T3.Service_ID FROM Customers AS T3 JOIN Customer_Interactions AS T4 ON T3.Customer_ID = T4.Customer_ID WHERE T4.Status_Code = "unsatisfied")
SELECT count(*) FROM Vehicles;
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT name, model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate;
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name, max(membership_credit) FROM Customers GROUP BY name
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(T1.age) FROM Customers AS T1 JOIN Membership AS T2 ON T1.id = T2.customer_id WHERE T2.membership_credit > (SELECT avg(membership_credit) FROM Membership)
SELECT avg(T1.age) FROM Customers AS T1 JOIN Membership AS T2 ON T1.id = T2.id WHERE T2.membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name, T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate) FROM Vehicles WHERE Type_of_powertrain = 'Automatic' GROUP BY city_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'prefix%net'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) UNION SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) UNION SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T2.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.teacher_details, T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details, T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.student_details, T2.address_details FROM Students AS T1 JOIN Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_id, T1.bio_data, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T3.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Events AS T3 ON T2.student_id = T3.student_id WHERE T3.event_type_code = 'Biography' OR T3.event_type_code = 'Event'
SELECT count(*), T1.event_type_code, T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T1.event_type_description, count(*) FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details, T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details, T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T2.teacher_id NOT IN ( SELECT teacher_id FROM Achievements AS T3)
SELECT count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T2.class_details NOT IN ( SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id WHERE T3.achievement_type_code = "Teaching" )
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT T1.achievement_type_code, T1.achievement_details, T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code, T1.achievement_details, T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE bio_data LIKE '%Suite%'
SELECT student_id, bio_data, student_details FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*), teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id, count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code, T1.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id = (SELECT student_id FROM Student_Loans WHERE amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans) )
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id ORDER BY T2.date_of_transcript ASC LIMIT 1
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id, sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id, T2.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code, T1.address_details FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = "Event" EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T3.student_id = T1.student_id
SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code!= "Student Loan"
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T3.student_id = T1.student_id GROUP BY T3.student_id HAVING count(*) = 2
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Transcripts AS T3 ON T3.student_id = T1.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM Author
SELECT name, address FROM Client
SELECT name, address FROM Client
SELECT title, isbn, saleprice FROM Book
SELECT title, isbn, saleprice FROM book
SELECT count(*) FROM Book
SELECT count(*) FROM Book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name, address FROM Client ORDER BY name
SELECT name, address FROM client ORDER BY name
SELECT T1.Title, T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.id_book
SELECT T1.Title, T2.name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN
SELECT IdClient, Name FROM Client
SELECT T1.idorder, T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idorder
SELECT T1.Name, T2.idAuthor FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.idAuthor GROUP BY T2.idAuthor
SELECT T1.name, count(*) FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT T1.ISBN, count(*) FROM Books ORDER BY T1.ISBN GROUP BY T1.ISBN
SELECT T1.ISBN, count(*) FROM Books ORDER BY T1.ISBN GROUP BY T1.ISBN
SELECT T1.ISBN, sum(T2.amount) FROM Books ORDER BY T2.amount DESC LIMIT 1
SELECT T1.ISBN, sum(T2.amount) FROM Books ORDER BY T2.amount DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title, T1.PurchasePrice FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.title, t1.PurchasePrice FROM Book AS t1 JOIN Books_order AS t2 ON t1.isbn = t2.isbn WHERE t2.amount = (SELECT sum(amount) FROM Books_order) ORDER BY t2.amount DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name, count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.Name, count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.idClient GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.Author WHERE T1.Name = "Client" GROUP BY T1.Name
SELECT T1.Name, sum(T2.amount) FROM Client AS T1 JOIN Books_Order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC
SELECT T1.Name FROM Client AS T1 JOIN Books_Order AS T2 ON T1.IdClient = T2.IdOrder GROUP BY T1.Name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.name FROM client AS t1 JOIN books_order AS t2 ON t1.idclient = t2.idclient GROUP BY t1.idclient ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT DISTINCT title FROM Book WHERE isbn NOT IN (SELECT ISBN FROM Books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client EXCEPT SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient
SELECT max(saleprice), min(saleprice) FROM Book
SELECT max(PurchasePrice), min(PurchasePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM Book WHERE purchaseprice > (SELECT avg(purchaseprice) FROM book)
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.idbook WHERE T1.PurchasePrice > (SELECT avg(PurchasePrice) FROM Book)
SELECT title FROM Book ORDER BY saleprice LIMIT 1
SELECT title FROM Book WHERE purchaseprice = (SELECT min(purchaseprice) FROM book)
SELECT title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT Title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT avg(T1.SalePrice) FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name = "George Orwell"
SELECT avg(T1.SalePrice) FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "George Orwell"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.id_author WHERE T2.Name = "Plato"
SELECT T1.PurchasePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T2.title FROM Books AS T1 JOIN Author AS T2 ON T1.author = T2.id_book WHERE T2.name = 'George Orwell' ORDER BY T1.purchaseprice LIMIT 1
SELECT T2.Title FROM Books AS T1 JOIN Author AS T2 ON T1.Author = T2.ISBN WHERE T1.PurchasePrice = (SELECT min(PurchasePrice) FROM Books WHERE Author = "George Orwell")
SELECT T2.Title FROM Books AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T1.PurchasePrice < (SELECT avg(SalePrice) FROM Books)
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato' AND T2.purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT T1.Name FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T2.title = "Pride and Prejudice"
SELECT t1.name FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.idauthor JOIN book AS t3 ON t2.isbook = t3.isbook WHERE t3.title = 'Pride and Prejudice'
SELECT T1.Title FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.id_author WHERE T2.Name LIKE '%Plato%'
SELECT T1.title FROM book AS T1 JOIN author AS T2 ON T1.author = T2.id_author WHERE T2.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idbook WHERE title = "Pride and Prejudice"
SELECT count(*) FROM Orders AS T1 JOIN Book AS T2 ON T1.idorder = T2.idbook WHERE title = 'Pride and Prejudice'
SELECT idorder FROM orders WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM orders WHERE title = "The Little Prince"
SELECT T1.idorder FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T1.idorder = T3.idauthor WHERE T3.name = 'Pride and Prejudice' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T1.idorder = T3.idauthor WHERE T3.name = 'The Little Prince'
SELECT T1.isbn FROM Books ORDER BY T1.idorder AS T1.isbn, T2.name FROM Books ORDER BY T1.idorder AS T1.isbn, T2.name WHERE T1.idorder = 1 AND T2.name = 'Peter Doe' INTERSECT SELECT T1.isbn FROM Books ORDER BY T1.idorder AS T1.isbn, T2.name FROM Books ORDER BY T1.idorder AS T1.isbn, T2.name WHERE T1.idorder = 1 AND T2.name = 'James Smith'
SELECT T1.isbn FROM book AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn WHERE T1.title LIKE '%Peter Doe%' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn WHERE T1.title LIKE '%James Smith%'
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.idorder = T1.idorder AND T1.title = 'Peter' AND T2.idclient!= T2.idclient
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn AND T2.idorder = T1.idorder WHERE T1.name = 'Peter Doe' EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T1.name = 'James Smith'
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient WHERE T2.Title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T2.idorder WHERE T3.title = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(Chapters), min(Chapters) FROM book GROUP BY Book_ID
SELECT Title FROM book WHERE Title!= "Poet"
SELECT avg(Rating) FROM review
SELECT T2.Title, T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review ORDER BY Readers_in_Million DESC LIMIT 1
SELECT rank FROM book ORDER BY pages ASC LIMIT 1
SELECT title FROM book ORDER BY Rank DESC LIMIT 1
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE, COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating
SELECT T1.Title, T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY count(*) DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE, title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT nationality, card_credit FROM customer
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE membership_level > 1
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT card_credit FROM customer ORDER BY membership_level DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM customer WHERE card_credit < 50 INTERSECT SELECT nationality FROM customer WHERE card_credit > 75
SELECT nationality FROM customer WHERE card_credit > 50 INTERSECT SELECT nationality FROM customer WHERE card_credit < 75
SELECT T3.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T2.dish_name = T3.dish_name GROUP BY T3.dish_name
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.quantity) DESC
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.quantity) DESC
SELECT T2.name, sum(T1.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name, nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Club_name, T2.Team_leader FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id
SELECT Team_Leader FROM club WHERE Overall_Ranking > 100
SELECT t1.team_leader FROM club_leader AS t1 JOIN member AS t2 ON t1.member_id = t2.member_id WHERE t1.year_join < 2018
SELECT T2.Team_leader FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id WHERE T1.club_name = "Houston"
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T1.Collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN documents_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.name = 'Top collection'
SELECT T1.collection_details FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_subset_name = "Top collection"
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.related_document_object_id = T3.document_object_id
SELECT DISTINCT t2.document_subset_name FROM collection_subsets AS t1 JOIN document_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id
SELECT T1.document_subset_details FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_object_id WHERE T2.description = 'Best for 2000'
SELECT t1.document_subset_details FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.related_document_object_id JOIN documents_in_collections AS t3 ON t2.related_document_object_id = t3.document_object_id JOIN collections AS t4 ON t3.collection_id = t4.collection_id WHERE t4.collection_name = 'Best for 2000'
SELECT document_object_id FROM Document_Objects
SELECT document_object_id FROM document_objects
SELECT T1.Document_object_id FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Marlin"
SELECT owner FROM document_objects WHERE description = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Document_Object_ID = T2.Collection_ID WHERE T2.Collection_Name = "Braeden Collection"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID WHERE T1.Name = 'Marlin'
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID WHERE T1.Description = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects EXCEPT SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id!= "null"
SELECT document_object_id FROM document_objects EXCEPT SELECT document_object_id FROM document_objects WHERE parent_document_object_id!= "null"
SELECT T1.document_object_id, count(*) FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*), T1.parent_document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.parent_document_object_id
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT t1.collection_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Nice'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Nice"
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id JOIN Document_Object AS T4 ON T4.document_object_id = T1.document_object_id WHERE T4.owner = "Ransom"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = "Ransom"
SELECT T1.Collection_Subset_ID, count(*), T2.Collection_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Collection_Subset_ID, T1.Collection_Subset_Name, COUNT(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Document_object_id = T2.Document_subset_id GROUP BY T1.Document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_object_id = T2.Document_object_id GROUP BY T1.Document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4 GROUP BY T1.document_object_id
SELECT count(*), T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID JOIN Documents_in_collections AS T3 ON T2.Document_Subset_ID = T3.Collection_ID WHERE T3.Collection_ID = Collection_Subsets Collection_Name = "Braeden"
SELECT DISTINCT T2.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID JOIN Collections AS T4 ON T4.Collection_ID = T2.Collection_Object_ID JOIN Collections AS T5 ON T5.Collection_ID = T4.Collection_ID WHERE T3.Collection_Name = "Braeden"
SELECT DISTINCT t2.document_subset_name FROM documents_in_collections AS t1 JOIN document_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN document_subset_members AS t3 ON t1.document_object_id = t3.related_document_object_id WHERE t1.owner = "Braeden"
SELECT DISTINCT t2.document_subset_name FROM documents_in_collections AS t1 JOIN document_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN collections AS t3 ON t1.collection_id = t3.collection_id WHERE t1.owner = "Braeden"
SELECT T1.document_subset_id, count(DISTINCT T2.document_object_id), T3.name FROM Document_subsets AS T1 JOIN Document_object_id AS T2 ON T1.document_subset_id = T2.related_document_object_id JOIN Document_objects AS T3 ON T2.document_object_id = T3.document_object_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_Subset_ID, T1.Document_Subset_Name, count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID GROUP BY T1.Document_Subset_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.document_subset_name = "Best for 2000"
SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT T1.Document_Subset_Name, T1.Document_Object_ID FROM Document_Subsets AS T1 JOIN Document_Object_ID AS T2 ON T1.Document_Subset_ID = T2.Document_Object_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Subset_ID = T3.Document_Object_ID
SELECT T2.document_subset_name, T1.document_object_id FROM documents_in_collections AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id GROUP BY T1.document_object_id
SELECT T1.Collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom '
SELECT T1.Collection_Name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*), T1.Collection_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID
SELECT count(*), T1.collection_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT count(*) FROM Document_objects AS T1 JOIN collections AS T2 ON T1.parent_document_object_id = T2.collection_id WHERE t2.collection_name = "Best"
SELECT T1.Collection_name, T1.collection_id, count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.collection_name, t1.collection_id, count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id GROUP BY t1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" INTERSECT SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best"
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = "Best for 2000"
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subsets AS T3 ON T1.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = 'Best for 2000'
SELECT DISTINCT document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T1.document_object_id = T3.document_object_id JOIN document_subsets AS T4 ON T3.document_object_id = T4.related_document_object_id WHERE t2.collection_name = 'Best' EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T1.document_object_id = T3.document_object_id JOIN document_subsets AS T4 ON T3.document_object_id = T4.related_document_object_id WHERE t2.collection_name = 'Best for 2000'
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_details = 'Best for 2000' OR T3.collection_subset_details = 'Best'
SELECT DISTINCT T1.document_object_id FROM document_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' INTERSECT SELECT DISTINCT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.collection_subset_name = 'Best for 2000'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.Collection_Name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE t2.collection_name = "Best"
SELECT count(*) FROM collections WHERE collection_name = "Best"
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name
SELECT name, language FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id = (SELECT id FROM participants WHERE name = 'Freeway')
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5
SELECT T1.id FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T1.id, T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM performance_score WHERE songs_id NOT IN (SELECT id FROM performance_score)
SELECT avg(T1.rhythm_tempo), T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "Croatian" INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT DISTINCT original_artist FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name, city_code, state, country FROM City
SELECT city_name, city_code, state, country FROM City
SELECT T1.latitude, T1.longitude FROM City AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Baltimore'
SELECT latitude, longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city ORDER BY latitude
SELECT state, count(*) FROM city GROUP BY state
SELECT count(*), state FROM city GROUP BY state
SELECT country, count(*) FROM city GROUP BY country
SELECT count(*), country FROM City GROUP BY country
SELECT T1.state FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.fname, T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname, lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
{"sql": "SELECT fname, major FROM student WHERE city_code = "Baltimore""}
SELECT fname, major FROM student WHERE city_code = "Baltimore"
SELECT count(*), country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country
SELECT count(*), T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT count(*), T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE country = "USA"
SELECT StuID FROM student EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT Stuid FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE country = 'USA'
SELECT Stuid FROM student WHERE sex = 'M' EXCEPT SELECT Stuid FROM student WHERE country = 'USA'
SELECT T2.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'BAL' AND T2.city_name = 'CHI'
SELECT T2.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL" AND T2.city_name = "CHI"
SELECT T2.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston' AND T2.city2_code = 'Newark'
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance), min(distance), max(distance) FROM direct_distance GROUP BY city1_code, city2_code
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city1_code, city2_code FROM direct_distance ORDER BY distance LIMIT 2
SELECT city_code FROM city GROUP BY city_code ORDER BY sum(distance) DESC LIMIT 1
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance < 1000 UNION SELECT city1_code FROM direct_distance WHERE city2_code < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston'
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t1.city_code = t3.city_code WHERE t1.city_name = 'Chicago'
SELECT t3.city_name FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code JOIN direct_distance AS t3 ON t2.city_code = t3.city1_code WHERE t1.city_code = "Chicago" ORDER BY t3.distance ASC LIMIT 1
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t1.city_code = t3.city_code WHERE t1.latitude = 42.3589 AND t1.longitude = 71.0595 ORDER BY t2.distance LIMIT 1
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t1.city_code = t3.city_code WHERE t1.latitude = t2.distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code ORDER BY t2.distance DESC LIMIT 1
SELECT T1.city_code, sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_code, sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY T1.city1_code
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T2.lname, T1.fname, T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = 'Linda' AND T1.lname = 'Smith' INTERSECT SELECT T2.lname, T1.fname, T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = 'Tracy' AND T1.lname = 'Kim'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Linda Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Tracy Kim"
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.lname = 'Smith' AND T2.city2_code = 'Linda' ORDER BY T2.distance LIMIT 1
SELECT t1.fname, t1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T3.city_name = 'Linda Smith' ORDER BY T2.distance DESC LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name FROM sailors WHERE age < 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T1.bid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.id = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age!= (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) >= 2
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 'red' OR T2.bid = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 'red' INTERSECT SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = T1.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = T1.bid
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.bid = 103
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name, max(age) FROM sailors ORDER BY age DESC LIMIT 1
SELECT name, max(age) FROM sailors GROUP BY name
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating), max(age) FROM sailors GROUP BY sid
SELECT avg(rating), max(age) FROM sailors GROUP BY name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*), T1.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*), T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 1 GROUP BY T1.sid
SELECT T1.bid, count(*) FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.bid
SELECT avg(T1.age), T1.rating FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" GROUP BY T1.rating
SELECT T1.name, avg(T1.age) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM Boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = "red"
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' AND T1.rating > (SELECT min(rating) FROM sailors WHERE sid = T2.sid)
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = red WHERE T1.rating > (SELECT min(rating) FROM sailors WHERE boat = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.name = 'Melon'
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT CLASS, count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model, CLASS, construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT model, CLASS, construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE model = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE model = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Name FROM store ORDER BY Date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name, parking FROM store WHERE Neighborhood = 'Tarzana'
SELECT name, parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood, count(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood, count(*) FROM store GROUP BY Neighborhood
SELECT t1.name, count(*) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T1.headphone_id = T2.headphone_id GROUP BY T2.store_id
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT DISTINCT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT t1.Model FROM headphone AS t1 JOIN stock AS t2 ON t1.Headphone_ID = t2.Headphone_ID GROUP BY t1.Model ORDER BY sum(t2.Quantity) DESC LIMIT 1
SELECT t1.Model FROM headphone AS t1 JOIN stock AS t2 ON t1.Headphone_ID = t2.Headphone_ID ORDER BY t2.Quantity DESC LIMIT 1
SELECT count(*) FROM stock WHERE store_id = (SELECT store_id FROM store WHERE name = 'Woodman')
SELECT sum(t2.quantity) FROM stock AS t1 JOIN headphone AS t2 ON t1.headphone_id = t2.headphone_id JOIN store AS t3 ON t1.store_id = t3.store_id WHERE t3.name = 'Woodman'
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE title LIKE "%NAACL%" AND YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE title LIKE "%Columbia University%" AND YEAR = 2009
SELECT count(*) FROM paper WHERE title LIKE "%Columbia University%" AND YEAR = 2009
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Mckeown")
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T2.name = "Stanford University" INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.affiliation_id WHERE T2.name = "Columbia University"
SELECT t1.title, t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown, Kathleen' INTERSECT SELECT t1.title, t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id JOIN citation AS t4 ON t1.paper_id = t4.cited_paper_id WHERE t3.name = 'Rambow, Owen'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown, Kathleen' INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Rambow, Owen'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' EXCEPT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T1.paper_id = T3.paper_id WHERE T3.cited_paper_id = 'Rambow'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' EXCEPT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T1.paper_id = T3.paper_id WHERE T3.cited_paper_id = T2.paper_id AND T2.name!= 'Rambow'
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown" OR name = "Kathleen" OR name = "Rambow")
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id IN (SELECT author_id FROM author WHERE name = "Mckeown" ) INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id IN (SELECT author_id FROM author WHERE name = "Rambow" ) INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id IN (SELECT author_id FROM author WHERE name = "Owen")
SELECT T2.name, COUNT(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.name ORDER BY COUNT(*) DESC
SELECT count(*), T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.affiliation_id ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name HAVING count(*) = 1
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t1.name HAVING count(*) = 1
SELECT venue, YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title LIKE 'A00-1002%'
SELECT count(DISTINCT T1.title) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title LIKE 'A00-1002%'
SELECT count(*) FROM paper WHERE title LIKE "D12-1027"
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.paper_id, count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title, count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 10
SELECT t1.title, count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'McKeown, Kathleen'
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Mckeown, Kathleen'
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.name = 'Mckeown, Kathleen'
SELECT count(DISTINCT T1.title) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = "McKeown, Kathleen"
SELECT t1.name, count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper WHERE author_id IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Mckeown, Kathleen")
SELECT venue, YEAR FROM paper WHERE author_id IN (SELECT T1.venue, T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = "Mckeown, Kathleen")
{"sql": "SELECT venue, YEAR FROM Paper WHERE university = "Columbia University""}
SELECT venue, YEAR FROM Paper WHERE university = "Columbia University"
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE title LIKE "%Columbia University%" AND YEAR <= 2009
SELECT count(*) FROM paper WHERE title LIKE "%Columbia University%" AND YEAR <= 2009
SELECT count(*) FROM paper WHERE title LIKE "%Stanford University%" AND YEAR BETWEEN 2000 AND 2009
SELECT count(*) FROM paper WHERE title LIKE "%Stanford University%" AND YEAR BETWEEN 2000 AND 2009
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown, Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.name = 'Kathleen'
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Mckeown' AND t2.affiliation_id IN (SELECT T4.affiliation_id FROM affiliation AS T4 JOIN author_list AS T5 ON T4.affiliation_id = T5.affiliation_id JOIN author AS T6 ON T5.author_id = T6.author_id WHERE T6.name = 'Kathleen') GROUP BY t3.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Mckeown, Kathleen' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN paper_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.title, T1.year FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.year
SELECT count(*), venue, YEAR FROM paper GROUP BY venue, YEAR
SELECT count(*), affiliation_id FROM author_list GROUP BY affiliation_id
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title HAVING sum(t2.cited_paper_id) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation WHERE cited_paper_id NOT IN (SELECT paper_id FROM citation WHERE cited_count > 50))
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name!= 'Unknown' AND sum(T2.citations) < 50
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.cited_paper_id WHERE t3.year = 2009 AND t1.name = 'NAACL' INTERSECT SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.cited_paper_id WHERE t3.year = 2009 AND t1.name = 'ACL'
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.cited_paper_id WHERE t2.year = 2009 AND t1.name = 'NAACL' INTERSECT SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.cited_paper_id WHERE t2.year = 2009 AND t1.name = 'ACL'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title = "ACL" )
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title = 'ACL' )
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT conference_name, year, LOCATION FROM conference
SELECT conference_name, YEAR, LOCATION FROM conference
SELECT T1.Conference_Name, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = current_year
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT DISTINCT t1.location FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID GROUP BY t1.Conference_ID HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, LOCATION, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.Institution_Name, count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.Institution_ID
SELECT T1.name, count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age), min(age) FROM staff
SELECT DISTINCT t1.Conference_name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID JOIN staff AS t3 ON t2.staff_ID = t3.staff_ID WHERE t3.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE nationality = 'British' INTERSECT SELECT name FROM staff WHERE nationality = 'Canadian'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.Conference_ID = 2003 OR T2.Conference_ID = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.Conference_Name, T1.year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name, T1.Year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT t1.conference_name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.conference_id = t2.conference_id GROUP BY t1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT t1.Conference_Name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID GROUP BY t1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, location FROM institution EXCEPT SELECT T1.institution_name, T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year = 2004
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.conference_id = 2004)
SELECT pilot_name FROM pilotskills ORDER BY age LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM pilotSkills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.plantext FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "F-14 Fighter"
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name)
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilot_skills WHERE age = 32 AND pilot_name = "Jones"
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T2.location = 'Turbine' AND T1.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN plane_bomber AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilot_skills AS T1 JOIN planes AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52" AND T1.age < 35
SELECT min(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub' )
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plilot_name = "Smith" AND T1.age = 41
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT T1.plane_name) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN planes AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT DISTINCT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT T1.plantext FROM pilotskills AS T1 JOIN plane AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 OR T1.plantext < 30 INTERSECT SELECT T1.plantext FROM pilotskills AS T1 JOIN plane AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT avg(age), min(age) FROM pilotskills GROUP BY name
SELECT avg(age), min(age) FROM pilotskills GROUP BY pilot_name
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(T1.age), T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*), plane_name FROM pilotskills GROUP BY plane_name
SELECT T1.plane_name, T1.age FROM pilotskills AS T1 JOIN planes AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT T2.plane_name, T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT T1.plane_name, T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT T1.plane_name, T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC LIMIT 1
SELECT max(T1.age), T2.pilot_name FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.pilot_name
SELECT DISTINCT T1.plane_name, max(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*), avg(age) FROM pilotskills GROUP BY LOCATION
SELECT T2.location, count(*), avg(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.location GROUP BY T2.location
SELECT count(*) FROM pilotskills AS T1 JOIN planes AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 GROUP BY T2.plane_name
SELECT avg(T1.age), count(*), T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING avg(T1.age) < 35
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.plane_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub') ORDER BY T1.pilot_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < T2.age WHERE T2.plane_name = 'F-14 Fighter'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < T2.location AND T1.plane_name = 'F-14'
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Bombing run'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > T2.age
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT area, government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district GROUP BY District_ID
SELECT sum(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id ORDER BY T1.area_km DESC LIMIT 3
SELECT District_ID, name, government_website FROM district ORDER BY Population
SELECT name FROM district WHERE Government_website LIKE 'gov%'
SELECT District_ID, name FROM district WHERE population > 4000 OR area > 3000
SELECT name, speech_title FROM spokesman
SELECT avg(T1.Points), avg(T2.Age) FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(Points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM spokesman AS t1 JOIN spokesman_district AS t2 ON t1.spokesman_id = t2.spokesman_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t2.start_year < 2004
SELECT T1.name, count(*), T2.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.district_id
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id WHERE T2.spokesman_id IN (SELECT spokesman_id FROM spokesman WHERE rank_position = 1 INTERSECT SELECT spokesman_id FROM spokesman WHERE rank_position = 2)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(T2.Population), avg(T2.Population) FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT T2.title FROM artworks AS T1 JOIN sculptures AS T2 ON T1.artworkid = T2.sculptureid WHERE T2.location = 226
SELECT T1.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistid WHERE T2.lname = "Galley" AND T2.fname = "Marcel"
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM Sculptures
SELECT title, LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT DISTINCT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "gallery 226"
SELECT T1.title, T1.year FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistid WHERE T1.location!= "Gallery 226"
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT DISTINCT T1.fname, T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY deathYear ASC LIMIT 1
SELECT fname FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT min(deathYear) FROM Artists WHERE birthYear - deathYear > 0
SELECT fname FROM Artists WHERE birthYear = (SELECT min(birthYear) FROM Artists)
SELECT fname, deathYear FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE location = "Gallery 240"
SELECT count(*) FROM paintings WHERE LOCATION = "gallery 240"
SELECT count(*) FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear = max(T1.birthyear)
SELECT count(*) FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear - T1.deathyear > (SELECT max(deathyear) FROM Artists)
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = 'Mary'
SELECT T1.title, T1.year FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = 'Mary'
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.birthYear < 1850
SELECT t1.height_mm FROM paintings AS t1 JOIN artists AS t2 ON t1.painterID = t2.artistID WHERE t2.birthYear < 1850
SELECT T1.location, T2.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = 'Pablo'
SELECT DISTINCT T1.location, T1.mediumOn FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.medium = "painting" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.mediumOn = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.medium = "lithograph"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.mediumOn = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.mediumOn = "lithographic"
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT T1.birthYear FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT t1.fname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t2.medium = "oil" AND t2.location = 241
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM Paintings GROUP BY medium
SELECT count(*), T1.location FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.year < 1900 GROUP BY T1.location
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.year > 1910
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.medium = "oil" AND T2.name = "gallery 240"
SELECT DISTINCT T1.painterid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = "oil" AND T2.fname = "gallery" AND T2.lname = "240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(width_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE location = 240)
SELECT paintingid FROM paintings ORDER BY YEAR LIMIT 1
SELECT paintingid FROM paintings ORDER BY YEAR LIMIT 1
SELECT t1.fname, t1.lname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid WHERE t2.title LIKE "%female%"
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title, T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterid = T2.sculptorid WHERE T1.year >= 1900 AND T1.year <= 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "John" AND T2.lname = "Doe" AND T2.birthyear = 1899 INTERSECT SELECT T1.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.fname = "John" AND T2.lname = "Doe"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = "John" AND T2.lname = "Doe" AND T2.birthYear = 1964
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT DISTINCT LOCATION FROM Paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM sculptures WHERE height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM sculptures WHERE height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn = "on canvas"
SELECT DISTINCT LOCATION FROM paintings AS T1 JOIN Sculptures AS T2 ON T1.mediumOn = T2.medium WHERE T1.medium = "on canvas" INTERSECT SELECT DISTINCT LOCATION FROM paintings AS T1 JOIN Sculptures AS T2 ON T1.mediumOn = T2.medium WHERE T1.medium = "on panels"
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Sculptures WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE mediumOn = "oil" AND LOCATION = 241;
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE medium = "oil" AND location = 241 GROUP BY paintingID
SELECT max(height_mm), paintingID FROM Paintings WHERE YEAR < 1900 GROUP BY paintingID
SELECT max(T1.height_mm), T1.paintingID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year < 1900 GROUP BY T1.paintingID
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.fname, T1.lname ORDER BY T1.fname, T1.lname
SELECT avg(height_mm), avg(width_mm), T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID GROUP BY T1.painterID ORDER BY T1.title
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT deathYear FROM artists WHERE artistid IN (SELECT painterid FROM paintings GROUP BY painterid HAVING count(*) <= 3)
SELECT T1.fname, T1.birthYear FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT t1.deathYear FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) LIMIT 1
SELECT t1.fname, t1.birthYear FROM Artists AS t1 JOIN Sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingid, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), paintingID FROM paintings WHERE location = 240 GROUP BY paintingID
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE YEAR > 1900 ORDER BY height_mm DESC LIMIT 1
SELECT T1.artistid, T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, LOCATION, title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT T1.paintingid, T1.location, T1.title FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.year
SELECT T2.year, T2.location, T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.height_mm > 1000 ORDER BY T1.title
SELECT DISTINCT T1.title, T1.year, T1.location FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.height_mm > 1000 ORDER BY T1.year
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "painting" EXCEPT SELECT T3.fname, T3.lname FROM Artists AS T3 JOIN sculptures AS T4 ON T3.artistid = T4.sculptorID
SELECT fname, lname FROM Artists WHERE artistid NOT IN (SELECT painterID FROM Sculptures)
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM sculptures WHERE medium = 'canvas'
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.year < 1885 AND T1.medium!= "on"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team, Winning_driver FROM race ORDER BY Winning_team ASC
SELECT Winning_team, Winning_driver FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position!= "Junior Strous"
SELECT Winning_driver FROM race WHERE Driver_ID NOT IN (SELECT driver_id FROM race WHERE pole_position = "Junior Strous")
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT max(age), min(age) FROM driver
SELECT max(age), min(age) FROM driver
SELECT count(*) FROM driver WHERE age > 30 OR age < 20
SELECT count(*) FROM driver WHERE age > 30 UNION SELECT count(*) FROM driver WHERE age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_name, T2.Race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name, T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.Driver_name, count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id
SELECT count(*), T1.driver_id FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT count(*), constructor FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT Constructor FROM driver WHERE age < 20 INTERSECT SELECT Constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.driver_name = 'James Hinchcliffe' INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.driver_name = 'Carl Skerlong'
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.pole_position WHERE T1.driver_name = 'James Hinchcliffe' INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.pole_position WHERE T1.driver_name = 'Carl Skerlong'
SELECT DISTINCT driver_name FROM driver EXCEPT SELECT DISTINCT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT DISTINCT T2.Driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position!= T2.driver_name WHERE T2.driver_name!= 'James Hinchcliffe'
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score), min(health_score) FROM countries WHERE country!= "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages WHERE language_id = 1)
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT count(*), T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = 1
SELECT avg(overall_score) FROM countries WHERE name = "English"
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name NOT IN (SELECT T2.name FROM official_languages AS T2 JOIN countries AS T1 ON T2.country_id = T1.id WHERE T1.overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name NOT IN (SELECT T2.name FROM official_languages AS T2 JOIN countries AS T1 ON T2.country_id = T1.id WHERE T1.overall_score < 90)
SELECT town_city FROM addresses
SELECT town_city FROM addresses
SELECT T1.county_state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT county_state_province FROM addresses UNION SELECT property_state_province FROM properties
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(property_id) FROM Rooms GROUP BY property_id
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 'Y' OR garage_yn = 'Y'
SELECT user_category_code FROM users WHERE user_category_description LIKE '%Mother%'
SELECT age_category_code FROM users WHERE user_category_description LIKE "%Mother%"
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'Garage'
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T1.property_type_code = "Garden" GROUP BY T1.property_id
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_feature_description = "swimming pool"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming pool"
SELECT property_id, price_min FROM properties ORDER BY price_min ASC LIMIT 1
SELECT property_id, min(price_requested) FROM properties GROUP BY property_id
SELECT avg(room_count) FROM Properties;
SELECT avg(room_count) FROM Properties;
SELECT count(DISTINCT room_size FROM Rooms)
SELECT count(DISTINCT room_size) FROM Rooms
SELECT T1.user_id, T2.search_string FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY search_seq HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_Searches
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT T1.property_id FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) <= 2)
SELECT zip_postcode FROM addresses WHERE property_id NOT IN ( SELECT T1.property_id FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT T1.user_category_code, T2.user_id FROM Ref_user_categories AS T1 JOIN User_searches AS T2 ON T1.user_category_code = T2.user_id GROUP BY T2.user_id HAVING count(*) = 1
SELECT user_id, user_category_code FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_string ASC LIMIT 1
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT date_registered FROM Users ORDER BY date_registered ASC LIMIT 1
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name, middle_name, last_name FROM users WHERE user_id IN (SELECT T1.user_id FROM users AS T1 JOIN properties AS T2 ON T1.owner_user_id = T2.owner_user_id WHERE T2.property_type_code = "seller" AND T2.property_type_code = "property" AND T2.price_min = 100000 AND T2.price_max = 200000 WHERE T1.login_name = "1")
SELECT first_name, middle_name, last_name, login_name FROM users WHERE user_category_code = 'seller'
SELECT T1.line_1_number_building, T1.line_2_number_street, T2.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T2.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.age_category_code = "senior"
SELECT count(*) FROM Property_Features WHERE feature_id >= 2
SELECT count(*) FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2
SELECT count(*), T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT count(*), property_id FROM Property_Photos GROUP BY property_id
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id JOIN users AS T3 ON T2.user_id = T3.user_id WHERE T3.user_category_code = "single mothers" OR T3.user_category_code = "students" GROUP BY T1.property_id
SELECT max(T1.price_max FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id JOIN users AS T3 ON T2.user_id = T3.user_id WHERE T3.user_category_code = 'single mother' OR T3.user_category_code = 'student' GROUP BY T1.property_id
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT property_type_description FROM Ref_property_types GROUP BY property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_code, T2.property_type_description FROM Ref_property_types AS T1 JOIN properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T2.first_name, T2.last_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT DISTINCT search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id WHERE T2.owner_user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id, T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T2.purchase_year < 2015
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > T1.weight AND T1.price > (SELECT max(price) FROM bike WHERE weight = T1.weight AND result = '4:21.558')
SELECT t1.product_name, t1.price FROM bike AS t1 JOIN cyclists_own_bikes AS t2 ON t1.id = t2.bike_id JOIN cyclist AS t3 ON t2.cyclist_id = t3.id WHERE t3.name = 'Bradley Wiggins' INTERSECT SELECT t1.product_name, t1.price FROM bike AS t1 JOIN cyclists_own_bikes AS t2 ON t1.id = t2.bike_id JOIN cyclist AS t3 ON t2.cyclist_id = t3.id WHERE t3.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT cyclist_id, count(*) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT Flavor, max(Price) FROM goods GROUP BY Flavor
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(price), flavor FROM goods GROUP BY flavor
SELECT id, flavor FROM goods ORDER BY price LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "lemon"
SELECT T2.Food, COUNT(*) FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T2.Food
SELECT T2.Food, COUNT(*) FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.Food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date LIKE "2018%" GROUP BY T1.id HAVING count(*) >= 15
SELECT DISTINCT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.ReceiptNumber JOIN customers AS T3 ON T2.CustomerId = T3.id WHERE T3.firstname = "15"
SELECT DISTINCT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.customerid = 15
SELECT avg(Price), max(Price), min(Price) FROM goods GROUP BY Flavor
SELECT min(price), avg(price), max(price) FROM goods GROUP BY food
SELECT T1.receiptnumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptnumber WHERE T1.flavor = "Cake" INTERSECT SELECT T1.receiptnumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptnumber WHERE T1.flavor = "Cookie"
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cakes" INTERSECT SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cookies"
SELECT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T1.receiptnumber = T3.receipt AND T3.item = 'Croissant'
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T1.recept = T3.id WHERE T3.flavor = "croissant" AND T2.lastname = "Logan"
SELECT T1.receiptnumber, T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber GROUP BY T1.receiptnumber ORDER BY sum(T2.price) DESC LIMIT 1
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Price = (SELECT max(price) FROM items)
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.ReceiptNumber GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.ReceiptNumber GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1
SELECT Flavor, COUNT(*) FROM goods GROUP BY Flavor
SELECT Flavor, Food, COUNT(*) FROM goods GROUP BY Flavor
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart' )
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.receiptnumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptnumber WHERE T1.price > 13
SELECT DISTINCT T1.receiptnumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.receiptnumber WHERE T1.price > 13
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.Id WHERE T2.price > 15
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.id WHERE T2.Price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE Flavor LIKE '%APP%'
SELECT T2.Price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.flavor WHERE T1.id = 70
SELECT id, price FROM goods WHERE flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE flavor = 'good' ORDER BY price
SELECT DISTINCT id FROM goods ORDER BY price
SELECT T1.receiptnumber FROM receipts AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = 'apple' OR T1.customerid = 12
SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "apple" OR T1.customerid = 12
SELECT date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber, date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10) OR customerid IN (SELECT customerid FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10))
SELECT receiptnumber FROM receipts WHERE date > '2010-01-01' OR price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(T1.Price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "blackberry" OR T1.flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT flavor FROM goods WHERE food = "cheese" ORDER BY price ASC LIMIT 1
SELECT max(Price), min(Price), avg(Price), flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price), max(Price) FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price), max(Price) FROM goods ORDER BY Flavor
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT T2.firstname, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T1.customerid), T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.date
SELECT count(*), T1.id, T1.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id
SELECT T2.firstname, T2.lastname FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.itemnumber WHERE T1.flavor = "Tart" AND T2.customerid IN (SELECT T1.customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id)
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customer AND T2.flavor = 'apple' JOIN receipts AS T3 ON T1.id = T3.customer
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart' )
SELECT id FROM goods WHERE price > (SELECT avg(Price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id, Flavor, TYPE FROM goods ORDER BY price
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT DISTINCT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.flavor = T2.flavor WHERE T1.id NOT IN (SELECT T3.id FROM receipts AS T3 JOIN items AS T4 ON T3.receiptnumber = T4.receiptnumber WHERE T4.flavor = "chocolate" GROUP BY T4.flavor HAVING count(*) > 10)
SELECT T1.id FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" GROUP BY T2.id ORDER BY count(*) DESC LIMIT 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food!= "Tart"
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.ReceiptNumber GROUP BY T1.item ORDER BY count(*) DESC LIMIT 3
SELECT id FROM customers WHERE sum(T2.Price) > 150
SELECT id FROM customers WHERE sum(T1.id) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.amount) > 5
SELECT T2.CustomerId FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.itemgroup AS T3 JOIN customers AS T4 ON T2.customerid = T4.id GROUP BY T1.id HAVING avg(T1.price) > 5
SELECT date FROM receipts WHERE sum(price) > 100
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.id GROUP BY T1.date HAVING sum(T2.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*), make FROM driver WHERE points > 150 GROUP BY make
SELECT T1.Make, count(*) FROM driver AS T1 JOIN team AS T2 ON T1.Driver_ID = T2.Team_ID WHERE T1.points > 150 GROUP BY T1.Make
SELECT avg(T1.age), T2.make FROM driver AS T1 JOIN team AS T2 ON T1.driver_id = T2.team_id GROUP BY T2.make
SELECT avg(T1.age), T2.make FROM driver AS T1 JOIN team AS T2 ON T1.driver_id = T2.team_id GROUP BY T2.make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager, sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T1.Driver, T2.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT T1.Name, T1.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country ORDER BY T1.Age
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT avg(T1.age) FROM country AS T1 JOIN driver AS T2 ON T1.country_id = T2.country WHERE T1.Official_native_language = "English" GROUP BY T1.country
SELECT avg(T1.age) FROM country AS T1 JOIN driver AS T2 ON T1.country_id = T2.country WHERE T1.official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT t1.capital FROM country AS t1 JOIN driver AS t2 ON t1.country_id = t2.country ORDER BY t2.points DESC LIMIT 1
SELECT Capital FROM country ORDER BY points DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT T1.make, count(*) FROM driver AS T1 JOIN team AS T2 ON T1.driver_id = T2.team_id GROUP BY T1.make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Make FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.driver_id GROUP BY T1.Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T2.Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver
SELECT sum(Points), avg(Points) FROM driver
SELECT Country FROM country EXCEPT SELECT Country FROM driver
SELECT country FROM country EXCEPT SELECT country FROM driver
SELECT T1.manager, T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT T1.Team, T1.Manager, T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT name FROM institution ORDER BY founded
SELECT DISTINCT city, province FROM institution
SELECT DISTINCT city, province FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City!= "Vancouver"
SELECT Affiliation FROM institution WHERE City!= "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM championship ORDER BY enrollment LIMIT 1
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING count(*) >= 1
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = "Public"
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = "Public"
SELECT DISTINCT affiliation, count(*) FROM institution GROUP BY affiliation
SELECT count(*), affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded, count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT nickname FROM championship ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded > 1920 EXCEPT SELECT Province FROM institution WHERE Founded < 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT avg(Value), T1.Code FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T1.Code
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(value), sum(value) FROM boxes GROUP BY code
SELECT avg(value), sum(value) FROM boxes GROUP BY code
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(capacity), sum(capacity) FROM warehouses GROUP BY code
SELECT avg(value), max(value) FROM boxes GROUP BY contents
SELECT avg(value), max(value), Contents FROM boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY SUM(Value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(Value) FROM Boxes GROUP BY Code
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT code FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" UNION SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Contents NOT IN (SELECT Contents FROM Warehouses WHERE LOCATION = "New York")
SELECT Contents FROM Boxes WHERE Warehouse NOT IN (SELECT Code FROM Warehouses WHERE Location = "New York")
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT T2.Location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Scissors'
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY VALUE
SELECT code, contents FROM boxes ORDER BY value LIMIT 1
SELECT code, contents FROM boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE Value > (SELECT avg(Value) FROM boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE Contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors' )
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT avg(T2.Value), T1.Code FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T1.Code HAVING avg(T2.Value) > 150
SELECT avg(T2.Value), T1.warehouse FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T2.value) > 150
SELECT Contents, sum(value), count(*) FROM Boxes GROUP BY Contents
SELECT sum(value), count(*) FROM boxes GROUP BY contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(Value), warehouse FROM boxes GROUP BY warehouse
SELECT max(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT T2.code, count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT LOCATION FROM boxes WHERE contents = 'Rocks')
SELECT count(DISTINCT T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.Code, T2.city FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT code FROM boxes WHERE LOCATION = "Chicago"
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(*), T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT T1.contents), T2.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse
SELECT count(DISTINCT Contents), Warehouse FROM Boxes GROUP BY Warehouse
SELECT code FROM warehouses WHERE capacity > 1000
SELECT code FROM boxes WHERE warehouse > capacity
SELECT sum(value) FROM boxes WHERE warehouse!= (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE Contents!= 'Chicago'
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE state = 'IL' OR state = 'OH'
SELECT count(*) FROM university WHERE State = 'IL' OR State = 'OH'
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) FROM university GROUP BY Home_Conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT avg(Enrollment), home_conference FROM university GROUP BY home_conference HAVING avg(Enrollment) >= 2000
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING count(*) > 1
SELECT Home_Conference FROM university ORDER BY Enrollment ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT T2.Major_Name, T2.Major_Rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.University_Name = "Augustana College"
SELECT T3.major_name FROM major_ranking AS T1 JOIN major AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T1.university_id = T3.university_id WHERE T3.city = "Augustana" AND T1.rank = 1
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 AND T1.University_Name LIKE '%Accounting%'
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 JOIN major AS T3 ON T2.Major_ID = T3.Major_ID
SELECT t1.university_name FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id WHERE t2.rank = 1 GROUP BY t1.university_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.University_Name FROM university AS t1 JOIN major_ranking AS t2 ON t1.University_ID = t2.University_ID ORDER BY t2.Rank LIMIT 1
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID JOIN major_ranking AS T3 ON T1.University_ID = T3.University_ID JOIN overall_ranking AS T4 ON T3.University_ID = T4.University_ID JOIN overall_ranking AS T5 ON T4.University_ID = T5.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID JOIN major_ranking AS T3 ON T1.University_ID = T3.University_ID JOIN major AS T4 ON T3.Major_ID = T4.Major_ID WHERE T4.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID JOIN major_ranking AS T3 ON T1.University_ID = T3.University_ID JOIN major AS T4 ON T3.Major_ID = T4.Major_ID JOIN major_ranking AS T5 ON T1.University_ID = T5.University_ID JOIN major AS T6 ON T5.Major_ID = T6.Major_ID WHERE T6.Major_Name = "Urban Education"
SELECT T1.University_Name, T1.Reputation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin" ORDER BY T2.Reputation_point DESC
SELECT T1.University_Name, T1.University_ID FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major_ranking AS T3 ON T1.University_ID = T3.University_ID WHERE T1.State = "Wisconsin"
SELECT university_name FROM university ORDER BY research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university ORDER BY Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank >= 3 AND T2.Major_Name = 'Accounting'
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = 'Accounting' AND T2.Rank >= 3
SELECT sum(t1.enrollment) FROM university AS t1 JOIN overall_ranking AS t2 ON t1.university_id = t2.university_id WHERE t2.reputation_point <= 5
SELECT sum(Enrollment) FROM university WHERE rank >= 5
SELECT university_name, citation_point FROM overall_ranking ORDER BY reputation_point DESC LIMIT 3
SELECT University_Name, Citation_point FROM overall_ranking ORDER BY Reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 INTERSECT SELECT State FROM university GROUP BY State HAVING sum(Enrollment) < 3000
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT T2.name, T1.title FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code
SELECT T2.name, T1.title FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM MovieTheaters WHERE Movie != 'null'
SELECT count(*) FROM MovieTheaters WHERE code IN (SELECT code FROM movies)
SELECT count(DISTINCT movietheaters.code) FROM movietheaters WHERE movietheaters.name = 'Theaters'
SELECT count(*) FROM Movies
SELECT count(DISTINCT code) FROM movietheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT name FROM MovieTheaters WHERE movie IN (SELECT code FROM movies WHERE rating = 'G' OR rating = 'PG')
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Imperial'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE rating!= "null"
SELECT count(*) FROM movies WHERE rating!= "null"
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM movies)
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT Code FROM Movies GROUP BY Code HAVING COUNT(*) >= 1)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT code FROM movie WHERE rating = '1')
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Code FROM Movies)
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM movies WHERE rating = 'G')
SELECT name FROM MovieTheaters WHERE code = "G"
SELECT title FROM Movies
SELECT DISTINCT title FROM Movie
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies WHERE Code NOT IN (SELECT Code FROM MovieTheaters)
SELECT * FROM Movies WHERE Code NOT IN (SELECT Code FROM MovieTheaters)
SELECT title FROM movies EXCEPT SELECT T2.title FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name NOT IN (SELECT T1.name FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T2.rating < 4)
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code
SELECT T1.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber ORDER BY T1.weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT sum(weight) FROM package AS T1 JOIN sender AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE name = 'Amy Wong'
SELECT Salary, POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary, POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM Employee WHERE POSITION = 'intern'
SELECT avg(salary) FROM Employee WHERE position = 'intern'
SELECT LEVEL FROM Has_clearance WHERE planet = 'Physician'
SELECT LEVEL FROM Has_clearance WHERE Employee = "Physician"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T1.sender = T3.EmployeeID WHERE T3.Name = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Employee AS T2 ON T1.sender = T2.employeeid WHERE T2.name = 'Leo Wong'
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T1.Recipient = T3.EmployeeID WHERE T3.Name = "Leo Wong"
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T1.Recipient = T3.EmployeeID WHERE T3.Name = "Leo Wong"
SELECT Sender FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T1.Recipient = T3.EmployeeID WHERE T3.Name = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM package AS T1 JOIN sender AS T2 ON T1.Recipient = T2.accountnumber JOIN recipient AS T3 ON T1.Sender = T3.accountnumber WHERE T2.name = 'Leo Wong'
SELECT count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.sender JOIN Package AS T3 ON T2.shipment = T3.shipmentid JOIN Client AS T4 ON T3.recipient = T4.accountnumber WHERE T1.name = 'Ogden Wernstrom' AND T4.name = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Employee AS T3 ON T1.sender = T3.EmployeeID JOIN Employee AS T4 ON T1.recipient = T4.EmployeeID WHERE T3.name = 'Ogden Wernstrom' AND T4.name = 'Leo Wong'
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT Contents FROM Package AS T1 JOIN Employee AS T2 ON T1.Sender = T2.EmployeeID WHERE T2.Name = "John Zoidfarb"
SELECT T1.packageNumber, T1.weight FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name LIKE '%John%'
SELECT max(T1.PackageNumber), T1.Weight FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = 'John' OR T3.name LIKE '%John%' GROUP BY T1.packageNumber
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT packagenumber, weight FROM package ORDER BY weight ASC LIMIT 3
SELECT T1.name, count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T2.name ORDER BY count(*) ASC LIMIT 1
SELECT min(T1.Sender), T2.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T1.recipient
SELECT T2.name FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T1.sender HAVING count(*) > 1
SELECT T2.name FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T1.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT DISTINCT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J. Fry'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' AND T1.manager = (SELECT employeeid FROM employee WHERE name = 'Turanga Leela')
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = 'Mars'
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' OR T1.manager = (SELECT employeeid FROM employee WHERE name = 'Turanga Leela')
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 'Mars'
SELECT T1.name, sum(T2.shipments) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT count(*), T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT t1.name FROM planet AS t1 JOIN shipment AS t2 ON t1.planetid = t2.planet WHERE t2.planet = (SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1)
SELECT t1.name FROM planet AS t1 JOIN shipment AS t2 ON t1.planetid = t2.planetid GROUP BY t1.planetid ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T1.manager
SELECT count(*), T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = 'Mars'
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT T3.name, sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T1.planetid = T3.planetid GROUP BY T3.name
SELECT T1.name, sum(T1.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.planetnumber GROUP BY T1.planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.weight > 30
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T1.planetid HAVING sum(T2.weight) > 30
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipment WHERE T1.sender = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid JOIN planet AS T4 ON T4.planetid = T1.recipient WHERE T3.name = 'Zapp Brannigan' AND T4.name = 'Omicron Persei 8'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipment WHERE T1.sender = "Zapp Brannigan" OR T2.planet = "Omicron Persei 8"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Zapp Brannigan" OR T2.Sender = "Omicron Persei 8"
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT packagenumber, weight FROM Package WHERE weight BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = "Omega III" AND T2.level = "Clear"
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee = employee.employeeid GROUP BY T1.planetid HAVING count(*) = 1
SELECT T2.name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T1.employee = employee.id WHERE T1.level = 'Clearance'
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title, developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title, developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE developers!= 'Nintendo'
SELECT platform_name, market_district FROM platform
SELECT platform_name, market_district FROM platform
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT max(rank_of_the_year), min(rank_of_the_year) FROM player GROUP BY rank_of_the_year
SELECT max(Year_of_the_year), min(Year_of_the_year) FROM player GROUP BY year_of_the_year
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.rank_of_the_year, T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T2.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T3Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Auburn"
SELECT DISTINCT T3Developers FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard"
SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard"
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title, T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = "Asia" OR T2.market_district = "USA"
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = "Asia" OR T2.market_district = "USA"
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position!= "Guard"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position!= "Guard"
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 1500000000 UNION SELECT name FROM press WHERE month_profits_billion > 1000000
SELECT name FROM press WHERE YEAR_Profits_billion > 1500000000 OR MONTH_Profits_billion > 1000000000
SELECT max(year_profits_billion), avg(year_profits_billion) FROM press
SELECT max(yearly_profit_billion), avg(yearly_profit_billion) FROM press GROUP BY press_id
SELECT Press_Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR month_profits_billion ASC
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age), gender FROM author GROUP BY gender
SELECT gender, avg(age) FROM author GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY RELEASE_date DESC
SELECT title FROM book ORDER BY Release_date DESC
SELECT book_series, count(*) FROM book GROUP BY book_series
SELECT book_series, count(*) FROM book GROUP BY book_series
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title, Release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT DISTINCT T2.Book_Series FROM book AS T1 JOIN book_series AS T2 ON T1.Book_Series = T2.Book_Series WHERE T1.Sale_Amount > 1000 INTERSECT SELECT DISTINCT T2.Book_Series FROM book AS T1 JOIN book_series AS T2 ON T1.Book_Series = T2.Book_Series WHERE T1.Sale_Amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id WHERE t2.book_series = 'MM' INTERSECT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id WHERE t2.book_series = 'LT'
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name HAVING count(*) > 1
SELECT T1.Title, T2.Name, T1.Press_ID FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title, T1.Author_ID, T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T1.Name, sum(T2.Sale_Amount) FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT T1.name, count(*) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT t1.name, t1.gender FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id GROUP BY t1.gender ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, t1.gender FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id WHERE t2.title LIKE "%Accor%"
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN press AS t2 ON t1.author_id = t2.author_id WHERE t2.name = 'Accor'
SELECT name, YEAR_PRO Fits_billion FROM press WHERE press_id IN ( SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2 )
SELECT T1.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents
SELECT author_name FROM authors WHERE author_name = "4"
SELECT author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT author_name, document_description FROM documents
SELECT document_id, author_name FROM documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name, T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT author_name, count(*) FROM authors GROUP BY author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT T2.next_process_id, T2.process_name, T2.process_description FROM Business_processes AS T1 JOIN process_status AS T2 ON T1.process_id = T2.process_id WHERE T1.process_id = 9
SELECT T1.process_name FROM Business_processes AS T1 JOIN Process_status AS T2 ON T1.process_status_code = T2.process_status_code WHERE T1.process_id = 9 ORDER BY T2.process_status_description LIMIT 1
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "Working"
SELECT count(*) FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status;
SELECT process_status_description FROM Process_Status WHERE process_status_code = 'CT'
SELECT count(*) FROM staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM staff WHERE staff_id = 100;
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT count(*) FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id WHERE T1.process_name = "process"
SELECT process_id FROM documents
SELECT document_id FROM documents EXCEPT SELECT document_id FROM staff_in_processes
SELECT process_id FROM Business_processes WHERE process_id NOT IN ( SELECT process_id FROM Documents_processes )
SELECT t1.process_outcome_description, t2.process_status_description FROM Process_outcomes AS t1 JOIN Documents_processes AS t2 ON t1.process_outcome_code = t2.process_outcome_code WHERE t2.document_id = 0
SELECT T1.process_name FROM Business_processes AS T1 JOIN documents_processes AS T2 ON T1.process_id = T2.process_id JOIN documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT T1.process_id, count(*) FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id GROUP BY T1.process_id
SELECT count(*) FROM staff AS T1 JOIN documents AS T2 ON T1.staff_id = T2.document_id WHERE T1.staff_id = 0 AND T2.document_name = "9"
SELECT staff_id, count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT T1.staff_role_code, count(*) FROM Staff_in_processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code GROUP BY T1.staff_role_code
SELECT count(DISTINCT T1.staff_role_code) FROM Ref_Staff_Roles AS T1 JOIN Staff AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T2.staff_id = 3
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT agency_id, count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_id, count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT agency_details FROM agencies WHERE agency_details = "Mac"
SELECT T1.client_details, T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details, T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code, count(*) FROM Clients GROUP BY sic_code
SELECT count(*), sic_code FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM Clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT client_id, count(*) FROM Invoices GROUP BY client_id
SELECT count(*), T1.client_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.sic_code, T1.client_details, T1.agency_details, T1.client_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.agency_id = T2.client_id
SELECT T1.invoice_status, T1.invoice_details, T1.client_id, T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT DISTINCT meeting_type, meeting_details FROM MEETINGS
SELECT meeting_type, other_details FROM Meetings
SELECT DISTINCT meeting_outcome, purpose_of_meeting FROM meetings
SELECT DISTINCT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT T1.invoice_id, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T1.invoice_id, T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id, invoice_status FROM Invoices EXCEPT SELECT invoice_id, invoice_status FROM Payments
SELECT invoice_id, invoice_status FROM invoices EXCEPT SELECT invoice_id, invoice_status FROM payments
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id, T1.invoice_id, T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id, T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T1.invoice_id, count(*) FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*), T1.invoice_id FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id, count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT agency_id, count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM Meetings GROUP BY client_id
SELECT count(*), T1.client_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT T1.meeting_type, count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.meeting_type
SELECT count(*), T1.meeting_type FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T2.meeting_type, T3.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id, count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*), T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id, count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Payments AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'yes' UNION SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id WHERE T2.invoice_status = 'yes'
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.agency_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) >= 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' AND T2.billable_yn = 1 GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_time, T1.end_time, T2.client_details, T3.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id
SELECT T1.start_date_time, T1.end_date_time, T2.client_details, T3.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id
