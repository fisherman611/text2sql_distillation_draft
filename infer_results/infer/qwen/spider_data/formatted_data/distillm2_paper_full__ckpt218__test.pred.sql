SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager, Captain FROM club
SELECT Manager, Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000 GROUP BY Country
SELECT Country FROM player WHERE Earnings ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY Wins_count DESC LIMIT 1
SELECT Name FROM player JOIN club ON player.Club_ID = club.Club_ID
SELECT Name, Club_ID FROM player
SELECT Name FROM club WHERE Club_ID IN (SELECT Club_ID FROM player GROUP BY Club_ID HAVING COUNT(*) > 2)
SELECT Name FROM club WHERE Club_ID IN (SELECT Club_ID FROM player GROUP BY Club_ID HAVING Wins_count > 2)
SELECT Name FROM player WHERE Club_ID IN (SELECT Club_ID FROM club WHERE Manager = "Sam Allardyce")
SELECT Name FROM player WHERE Club_ID IN (SELECT Club_ID FROM club WHERE Manager = "Sam Allardyce")
SELECT Name FROM club ORDER BY avg(earnings) DESC
SELECT Name FROM club ORDER BY avg(earnings) DESC
SELECT Manufacturer FROM club GROUP BY Manufacturer
SELECT count(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 OR Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 AND Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country IN ("Australia", "Zimbabwe")
SELECT Earnings FROM player WHERE Country IN ('Australia', 'Zimbabwe')
SELECT customer_id FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 2) AND customer_id IN (SELECT customer_id FROM customer_payments_methods GROUP BY customer_id HAVING count(*) > 3)
SELECT customer_id FROM orders GROUP BY customer_id HAVING count(*) > 2
SELECT order_id, status FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id)
SELECT count(*) FROM Order_Items GROUP BY order_id
SELECT date_order_placed FROM orders WHERE date_order_placed <= (SELECT min(date_order_placed) FROM orders)
SELECT date_order_placed FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 1)
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT product_id FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) < 2)
SELECT order_id FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) >= 2)
SELECT order_id FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT product_id FROM Order_Items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT product_id, product_name, product_price FROM products GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id FROM orders GROUP BY order_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT order_id FROM orders GROUP BY order_id ORDER BY sum(price) ASC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code FROM customers GROUP BY gender_code
SELECT count(*) FROM products GROUP BY gender_code
{"sql": "SELECT count(*) FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender_code FROM customers WHERE gender_code IN (SELECT gender
SELECT count(*) FROM orders GROUP BY gender_code
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers JOIN customer_payment_methods ON customers.customer_id = customer_payment_methods.customer_id
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers JOIN customer_payment_methods ON customers.customer_id = customer_payment_methods.customer_id
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT invoice_status_code, invoice_date FROM Invoices
SELECT product_name FROM products WHERE product_id IN (SELECT product_id FROM shipments)
SELECT product_name FROM products WHERE product_id IN (SELECT product_id FROM shipments)
SELECT order_status_code FROM orders WHERE order_id IN (SELECT order_id FROM shipments)
SELECT order_status_code FROM orders WHERE order_id IN (SELECT order_id FROM shipments)
SELECT product_name, product_color FROM products WHERE product_id IN (SELECT product_id FROM order_items WHERE order_id IN (SELECT order_id FROM shipments))
SELECT product_name, product_color FROM products WHERE product_id IN (SELECT product_id FROM shipments)
SELECT DISTINCT product_name FROM products WHERE product_id IN (SELECT customer_id FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE gender_code = 1))
SELECT DISTINCT product_name, product_price, product_description FROM products WHERE customer_id IN (SELECT customer_id FROM customers WHERE gender_code = 1)
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT shipment_date FROM shipments)
SELECT sum(total_cost) FROM orders
SELECT order_id, date_order_placed, sum(amount) FROM orders GROUP BY order_id
SELECT count(*) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(*) FROM Order_Items
SELECT count(DISTINCT order_item_status_code) FROM Order_Items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '%+12%'
SELECT customer_first_name, customer_last_name FROM Customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM orders)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items WHERE order_id IN (SELECT order_id FROM orders WHERE order_status_code = '1'))
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT count(*) FROM customer_payment_methods WHERE customer_id NOT IN (SELECT customer_id FROM customers)
SELECT order_status_code FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM Customers WHERE country = "USA"
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'
SELECT customer_first_name, product_name FROM customers JOIN orders ON orders.customer_id = customers.customer_id JOIN order_items ON order_items.order_id = orders.order_id JOIN products ON order_items.product_id = products.product_id
SELECT customer_first_name FROM customers JOIN orders ON orders.customer_id = customers.customer_id JOIN order_items ON order_items.order_id = orders.order_id JOIN products ON order_items.product_id = products.product_id GROUP BY customer_id
SELECT count(*) FROM Shipments
SELECT count(*) FROM Shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address, town_city, county FROM Customers WHERE gender_code IN (SELECT gender_code FROM Customers GROUP BY gender_code HAVING COUNT(*) = (SELECT count(*) FROM Customers GROUP BY gender_code))
SELECT email_address, town_city, county FROM customers WHERE customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id ORDER BY count(*) ASC LIMIT 1)
SELECT date_order_placed FROM orders WHERE customer_id IN (SELECT customer_id FROM customer_payments_methods GROUP BY customer_id HAVING count(*) >= 2)
SELECT date_order_placed FROM orders WHERE customer_id IN (SELECT customer_id FROM customer_payment_methods GROUP BY customer_id HAVING count(*) >= 2)
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id, product_description FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) > 3)
SELECT product_id FROM Order_Items GROUP BY product_id HAVING count(*) > 3
SELECT invoice_date FROM Invoices WHERE invoice_number IN (SELECT invoice_number FROM Shipments GROUP BY invoice_number HAVING count(*) >= 2)
SELECT invoice_date FROM shipments GROUP BY invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT min(product_price) FROM products)
SELECT Name FROM director WHERE Age > (SELECT avg(Age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM internet WHERE internet LIKE '%bbc%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT Director_ID FROM program GROUP BY Director_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE director_id IN (SELECT director_id FROM program GROUP BY director_id ORDER BY count(*) DESC LIMIT 1)
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT name, website FROM channel WHERE channel_id IN (SELECT channel_id FROM program GROUP BY channel_id HAVING count(*) > 1)
SELECT count(*) FROM program GROUP BY channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT Name FROM director WHERE Director_ID IN (SELECT Director_ID FROM program WHERE Title = "Dracula")
SELECT name, internet FROM channel WHERE channel_id IN (SELECT channel_id FROM program GROUP BY channel_id HAVING count(*) ORDER BY count(*) DESC LIMIT 1)
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
{"sql": "SELECT Name FROM channel WHERE Channel_ID IN (SELECT Channel_ID FROM program WHERE Director_ID IN (SELECT Director_ID FROM director WHERE Age < 40) AND Channel_ID IN (SELECT Channel_ID FROM program WHERE Director_ID IN (SELECT Director_ID FROM director WHERE Age > 60))")}
SELECT channel_id FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director_admin WHERE director_id IN (SELECT director_id FROM director WHERE name = "Hank Baskett"))
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, original_airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW BETWEEN 150 AND 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT DISTINCT Affiliation FROM city_channel GROUP BY Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT Affiliation FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city_channel WHERE ID IN (SELECT City_channel_ID FROM city
SELECT City, Station_name FROM city_channel ORDER BY Station_name ASC
SELECT Transmitter FROM radio WHERE Radio_ID IN (SELECT Radio_ID FROM city_channel_radio WHERE Is_online = 1)
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC
SELECT Transmitter FROM radio GROUP BY Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 GROUP BY Model ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship IN ('United States')
SELECT Name FROM driver WHERE Citizenship IN ('United States')
SELECT count(*) FROM vehicle_driver GROUP BY driver_id
SELECT driver_id FROM vehicle_driver GROUP BY driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT build_year, model_name, builder FROM vehicle
SELECT build_year, model, builder FROM vehicle
SELECT count(*) FROM vehicle WHERE build_year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Build_Year = 2012)
SELECT count(*) FROM vehicle_driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE racing_series = 'NASCAR')
{"sql": "SELECT count(*) FROM vehicle_driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE driver_id IN (SELECT
SELECT avg(top_speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT driver_name FROM vehicle_driver WHERE vehicle_id IN (SELECT vehicle_id FROM vehicle WHERE power > 5000)
SELECT Name FROM driver WHERE driver_ID IN (SELECT Driver_ID FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Power > 5000))
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT vehicle_id FROM vehicle_driver WHERE driver_id IN (SELECT driver_id FROM driver WHERE citizenship = 'Ziyang') GROUP BY vehicle_id
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id HAVING COUNT(*) > 2 OR build_Year = 2019
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id HAVING count(*) > 2 OR driver_id IN (SELECT driver_id FROM driver WHERE name = 'Jeff Gordon')
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID HAVING count(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed > 100000
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) FROM driver GROUP BY Racing_Series
SELECT count(*) FROM driver GROUP BY Racing_Series
SELECT Name, Citizenship FROM driver WHERE Driver_ID IN (SELECT Driver_ID FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Model = "DJ1"))
SELECT Name, Citizenship FROM driver WHERE Driver_ID IN (SELECT Driver_ID FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Model = "DJ1"))
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name, exam_date FROM exams WHERE subject_code != "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers ORDER BY count(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT First_Name FROM Students WHERE Student_ID IN (SELECT Student_ID FROM Student_Answers WHERE Date_of_Answer != '')
SELECT Student_Answer_ID FROM Student_Answers ORDER BY Date_of_Answer ASC LIMIT 1
SELECT Date_of_Answer FROM Student_Answers ORDER BY Date_of_Answer DESC
SELECT Student_Answer_ID, Date_of_Answer FROM Student_Answers ORDER BY Date_of_Answer DESC
SELECT min(assessment) FROM Student_Assessments GROUP BY student_id
SELECT assessment FROM Student_Assessments GROUP BY assessment ORDER BY count(*) ASC LIMIT 1
SELECT First_Name FROM Students WHERE Student_ID IN (SELECT Student_ID FROM Student_Answers GROUP BY Student_ID HAVING COUNT(*) >= 2)
SELECT First_Name FROM Students WHERE Student_ID IN (SELECT Student_ID FROM Student_Answers GROUP BY Student_ID HAVING COUNT(*) >= 2)
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Gender_MFU FROM Students GROUP BY Gender_MFU
SELECT gender_code FROM Students GROUP BY gender_code
SELECT Last_Name FROM Students WHERE Gender_MFU IN ('F', 'M')
SELECT Last_Name FROM Students WHERE Gender_MFU IN ('F', 'M')
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments IN ('Normal', 'Absent')
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" AND Comments = "Absent"
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM Products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
{"sql": "SELECT product_price FROM Products WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Order_Items
SELECT min(product_price) FROM products
SELECT min(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code IN ('Clothes')
SELECT avg(product_price) FROM Products
SELECT count(*) FROM products
SELECT count(*) FROM products WHERE product_type_code IN (SELECT product_type_code FROM products GROUP BY product_type_code HAVING product_type_code = "Hardware")
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code IN ('Clothes') ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code IN (SELECT product_type_code FROM products ORDER BY product_price ASC LIMIT 1)
SELECT product_id FROM products ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code FROM Products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id, customer_name FROM customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT address, phone, email FROM Customers WHERE customer_name = "Jeromy"
SELECT payment_method_code FROM customers GROUP BY payment_method_code
SELECT count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM Customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
{"sql": "SELECT customer_name FROM Customers WHERE customer_id IN (SELECT customer_id FROM Customer_Orders GROUP BY payment_method_code HAVING COUNT(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING count(*) = (SELECT count(*) FROM Customer_Orders GROUP BY payment_method_code HAVING
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
SELECT order_id, order_date, order_status_code FROM Customer_Orders WHERE customer_id IN (SELECT customer_id FROM Customers WHERE customer_name = "Jeromy")
SELECT order_id, order_date, order_status_code FROM Customer_Orders WHERE customer_id IN (SELECT customer_id FROM Customers WHERE customer_name = "Jeromy")
SELECT customer_name FROM customers GROUP BY customer_id
SELECT customer_name, customer_id FROM customers GROUP BY customer_id
SELECT customer_id, customer_name, customer_phone, customer_email FROM customers WHERE customer_id IN (SELECT customer_id FROM customer_orders ORDER BY count(*) DESC LIMIT 1)
SELECT customer_id FROM Customer_Orders ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_name = "Monitor"
SELECT count(*) FROM Order_Items
SELECT count(*) FROM Customer_Orders WHERE product_id IN (SELECT product_id FROM Products WHERE product_name = "Monitor")
SELECT count(DISTINCT customer_id) FROM Customer_Orders WHERE product_id IN (SELECT product_id FROM Order_Items WHERE product_id IN (SELECT product_id FROM Products WHERE product_type_code = "Monitor"))
SELECT count(*) FROM Customer_Orders
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT order_date, order_id FROM Customer_Orders WHERE order_id IN (SELECT order_id FROM Order_Items WHERE order_quantity > 6) OR order_id IN (SELECT order_id FROM Order_Items GROUP BY order_id HAVING count(*) > 3)
SELECT order_id FROM customer_orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 3)
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year = 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(population) FROM region
SELECT avg(population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM building JOIN region ON building.Region_ID = region.Region_ID
SELECT name FROM building JOIN region ON building.region_id = region.region_id
SELECT Name FROM region GROUP BY Region_ID HAVING COUNT(*) > 1
SELECT Name FROM region GROUP BY Region_ID HAVING count(*) > 1
SELECT Capital FROM region WHERE Region_ID IN (SELECT Region_ID FROM building GROUP BY Region_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Capital FROM region WHERE Region_ID IN (SELECT Region_ID FROM building GROUP BY Region_ID ORDER BY count(*) DESC LIMIT 1)
SELECT address FROM building WHERE region_id IN (SELECT region_id FROM region)
SELECT address FROM building WHERE region_id IN (SELECT region_id FROM region)
SELECT count(*) FROM building WHERE name = "Abruzzo"
SELECT count(*) FROM building WHERE Region_ID IN (SELECT Region_ID FROM region WHERE Name = "Abruzzo")
SELECT Completed_Year FROM building GROUP BY Completed_Year
SELECT completed_year FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 GROUP BY Completed_Year ORDER BY Completed_Year
SELECT completed_year FROM building WHERE number_of_stories > 20 AND number_of_stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name FROM building ORDER BY Number_of_Stories DESC, Completed_Year
SELECT * FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT DISTINCT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customers_and_Services WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%"))
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customers_and_Services WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%"))
SELECT Service_Details FROM Services GROUP BY Service_Details HAVING COUNT(*) > 3
SELECT Service_Details FROM Customers_and_Services GROUP BY Service_ID HAVING COUNT(*) > 3
SELECT customer_id FROM Customers_and_Services GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT * FROM Customers_and_Services GROUP BY Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT customer_id FROM Customers_and_Services GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_id FROM Customers_and_Services GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_id FROM Customers_and_Services WHERE customer_id NOT IN (SELECT customer_id FROM Customers_and_Services)
SELECT * FROM Customers_and_Services ORDER BY Service_ID ASC LIMIT 1
SELECT DISTINCT customer_id FROM Customers_and_Services GROUP BY customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_id) FROM Customers_and_Services
SELECT count(*) FROM Customers_and_Services
SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customer_Interactions WHERE Status_Code = "good") OR Service_ID IN (SELECT Service_ID FROM Customers_and_Services WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%") )
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customer_Interactions WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%") AND Status_Code = "good")
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customer_Interactions WHERE Customer_ID IN (SELECT Customer_ID FROM Customers_and_Services WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%") AND Status_Code = "bad"))
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customer_Interactions WHERE Customer_ID IN (SELECT Customer_ID FROM Customers_and_Services WHERE Customer_ID IN (SELECT Customer_ID FROM Customers WHERE Customer_Details LIKE "%Hardy Kutch%") AND Status_Code = "bad"))
SELECT Service_Details FROM Services WHERE Service_ID IN (SELECT Service_ID FROM Customer_Interactions WHERE Channel_ID IN (SELECT Channel_ID FROM Channels WHERE Channel_Details LIKE "%15 ij%"))
SELECT * FROM Services WHERE Service_Details LIKE "%15 ij%"
SELECT * FROM Customers_and_Services WHERE Customers_and_Services_Details LIKE "%bad%" AND Status_Code LIKE "%Stuck%"
SELECT customer_details FROM Customers WHERE customer_id IN (SELECT customer_id FROM Customer_Interactions WHERE status_code != 'Success' AND services_and_channels_details != 'bad')
SELECT count(*) FROM Integration_Platform
SELECT count(*) FROM Integration_Platform_Details WHERE details LIKE "%Success%"
SELECT * FROM Customers_and_Services WHERE Status_Code = "failed"
SELECT Customer_ID FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Fail%"
SELECT service_id FROM customers_and_services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Service_Details FROM Services WHERE Service_Details NOT IN (SELECT Service_Details FROM Customers_and_Services)
SELECT layer_type_code FROM Analytical_Layer GROUP BY layer_type_code
SELECT analytical_layer_type_code FROM Analytical_Layer GROUP BY analytical_layer_type_code
SELECT Service_Details FROM Services WHERE Service_Details LIKE '%unsatisfied%'
SELECT service_details FROM customers_and_services_details WHERE status_code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT name, type_of_powertrain, annual_fuel_cost FROM vehicles WHERE model_year IN (2013, 2014)
SELECT name, type_of_powertrain FROM vehicles WHERE model_year IN (2013, 2014)
SELECT Type_of_powertrain FROM Vehicles WHERE id IN (SELECT vehicles_id FROM Vehicles WHERE Model_year IN (2013, 2014))
SELECT Type_of_powertrain FROM Vehicles WHERE id IN (SELECT vehicles_id FROM Renting_history WHERE vehicles_id IN (SELECT id FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014))
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT count(*) FROM vehicles GROUP BY type_of_powertrain
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) FROM Vehicles
SELECT name, model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name, model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(membership_credit) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM discount
SELECT name, sum(total_hours) FROM Renting_history GROUP BY vehicles_id
SELECT name, sum(total_hours) FROM Renting_history GROUP BY vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM Customers WHERE id IN (SELECT customer_id FROM Renting_history GROUP BY customer_id HAVING count(*) >= 2)
SELECT name FROM Customers WHERE id IN (SELECT customer_id FROM Renting_history GROUP BY customer_id HAVING count(*) > 2)
SELECT name, model_year FROM vehicles GROUP BY model_year ORDER BY count(*) DESC LIMIT 1
SELECT name, model_year FROM vehicles WHERE id IN (SELECT vehicles_id FROM renting_history GROUP BY vehicles_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM vehicles ORDER BY total_hours DESC
SELECT name FROM vehicles ORDER BY total_hours DESC
SELECT name FROM Discount ORDER BY count(*) DESC LIMIT 1
SELECT name FROM discount ORDER BY count(*) DESC LIMIT 1
SELECT name, type_of_powertrain FROM vehicles WHERE id IN (SELECT vehicles_id FROM renting_history GROUP BY vehicles_id HAVING count(*) > 30)
SELECT name, type_of_powertrain FROM vehicles WHERE id IN (SELECT vehicles_id FROM Renting_history GROUP BY vehicles_id HAVING count(*) > 30)
SELECT avg(city_fuel_economy_rate) FROM vehicles WHERE type_of_powertrain != 'S'
SELECT avg(city_fuel_economy_rate) FROM vehicles GROUP BY type_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT bio_data, student_id FROM Students WHERE student_id IN (SELECT student_id FROM Classes GROUP BY student_id HAVING count(*) >= 2) OR student_id IN (SELECT student_id FROM Detention GROUP BY student_id HAVING count(*) < 2)
SELECT student_id FROM classes GROUP BY student_id HAVING count(*) >= 2 OR count(*) <= 2
SELECT teacher_details FROM classes WHERE class_details LIKE '%data%' AND teacher_id NOT IN (SELECT teacher_id FROM classes WHERE class_details LIKE '%net%')
SELECT teacher_details FROM Teachers WHERE teacher_id IN (SELECT teacher_id FROM Classes WHERE class_details LIKE '%data%' AND teacher_id NOT IN (SELECT teacher_id FROM Classes WHERE class_details LIKE '%net%'))
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) AND student_id NOT IN (SELECT student_id FROM Student_Events) AND student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT student_id FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention OR SELECT student_id FROM Student_Events)
SELECT amount_of_loan FROM Student_Loans WHERE student_id IN (SELECT student_id FROM Achievements GROUP BY student_id HAVING count(*) >= 2)
SELECT amount_of_loan, date_of_loan FROM Student_Loans WHERE student_id IN (SELECT student_id FROM Achievements GROUP BY student_id HAVING count(*) > 2)
SELECT teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT student_details FROM Students
SELECT student_details FROM Students
SELECT student_details FROM Students
SELECT student_details FROM Students
SELECT bio_data, date_of_transcript FROM Students JOIN Transcripts ON Students.student_id = Transcripts.student_id
SELECT bio_data, date_of_transcript FROM Students JOIN Transcripts ON Students.student_id = Transcripts.student_id
SELECT count(*) FROM behaviour_monitoring_details GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM behaviour_monitoring_details GROUP BY behaviour_monitoring_details
SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 3
SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM Student_Events WHERE event_type_code IN (SELECT event_type_code FROM Ref_Event_Types) GROUP BY student_id
SELECT bio_data, event_date FROM Students AS s JOIN Student_Events AS se ON s.student_id = se.student_id WHERE se.event_type_code IN (SELECT event_type_code FROM Ref_Event_Types)
SELECT count(*) FROM Student_Events GROUP BY event_type_code
SELECT event_type_code, event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_code FROM achievements
SELECT achievement_type_code, achievement_type_description FROM Ref_Achievement_Type
SELECT count(*) FROM teachers WHERE teacher_id IN (SELECT teacher_id FROM classes WHERE student_id NOT IN (SELECT student_id FROM achievements))
SELECT count(*) FROM teachers WHERE teacher_id IN (SELECT teacher_id FROM classes WHERE student_id NOT IN (SELECT student_id FROM achievements))
SELECT date_of_transcript FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
SELECT type_code, details, date_achievement FROM Achievements
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT student_id FROM students_details WHERE details LIKE '%Suite%'
SELECT teacher_id, student_id FROM classes WHERE class_details LIKE '%class%'
SELECT teacher_id, student_id FROM Classes GROUP BY teacher_id, student_id
SELECT count(*) FROM classes WHERE student_id IN (SELECT student_id FROM classes GROUP BY teacher_id HAVING count(*) ORDER BY count(*) DESC LIMIT 1)
SELECT teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM classes
SELECT student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM classes GROUP BY student_id HAVING count(*) > 2
SELECT student_id FROM Classes GROUP BY student_id HAVING count(*) > 2
SELECT detention_type_code, detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code, detention_type_description FROM Ref_Detention_Type ORDER BY detention_type_code ASC LIMIT 1
SELECT student_id FROM Student_Loans WHERE amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans) GROUP BY student_id
SELECT student_id FROM Student_Loans WHERE amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT min(date_of_loan) FROM Student_Loans
SELECT student_id FROM Student_Loans ORDER BY amount_of_loan ASC LIMIT 1
SELECT bio_data FROM Students WHERE student_id IN (SELECT student_id FROM Student_Loans ORDER BY amount_of_loan ASC LIMIT 1)
SELECT date_of_transcript FROM Transcripts WHERE student_id IN (SELECT student_id FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1)
SELECT date_of_transcript FROM Transcripts WHERE student_id IN (SELECT student_id FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1)
SELECT teacher_id FROM Transcripts ORDER BY date_of_transcript ASC LIMIT 1
SELECT teacher_id FROM classes WHERE student_id IN (SELECT student_id FROM transcripts ORDER BY date_of_transcript ASC LIMIT 1)
SELECT student_id FROM Student_Loans GROUP BY student_id
SELECT student_id FROM Student_Loans GROUP BY student_id
SELECT student_id FROM Classes GROUP BY student_id
SELECT student_id FROM Classes GROUP BY student_id
SELECT count(*) FROM Detention
SELECT count(*) FROM Detention
SELECT address_type_code, address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code, address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM Student_Loans WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT student_id FROM Student_Events WHERE event_type_code IN (SELECT event_type_code FROM Ref_Event_Types) AND student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT date_from, date_to FROM Students_Addresses WHERE student_id IN (SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2)
SELECT start time, end time FROM Detention WHERE student_id IN (SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2)
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT Name FROM Author
SELECT Name FROM Client
SELECT Name, Address FROM Client
SELECT Title, ISBN, SalePrice FROM Book
SELECT Title, ISBN, SalePrice FROM Book
SELECT count(*) FROM Book
SELECT count(*) FROM book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT Name, Address FROM Client ORDER BY Name
SELECT Name, Address FROM Client ORDER BY Name
SELECT Title, Author FROM Book
SELECT title, author FROM book WHERE author IN (SELECT idauthor FROM author)
SELECT idorder FROM orders JOIN client ON orders.idclient = client.idclient
SELECT idorder FROM orders JOIN client ON orders.idclient = client.idclient
SELECT name FROM Author_Book GROUP BY author
SELECT name FROM author GROUP BY name
SELECT isbn FROM books_order GROUP BY isbn
SELECT isbn FROM books ORDER BY title
SELECT isbn, sum(amount) FROM books_order GROUP BY isbn
SELECT isbn FROM books ORDER BY purchaseprice
SELECT title FROM Book ORDER BY count(*) DESC LIMIT 1
SELECT title FROM book ORDER BY amount DESC LIMIT 1
SELECT title FROM book WHERE idorder IN (SELECT idorder FROM books_order GROUP BY idorder ORDER BY amount DESC LIMIT 1)
SELECT title, purchaseprice FROM book WHERE isbn IN (SELECT isbn FROM books_order ORDER BY amount DESC LIMIT 1)
SELECT title FROM book WHERE isbn IN (SELECT isbn FROM books_order)
SELECT DISTINCT title FROM books ORDER BY title
SELECT name FROM Client WHERE idclient IN (SELECT idclient FROM Orders GROUP BY idclient HAVING count(*) > 1)
SELECT DISTINCT name FROM client WHERE idclient IN (SELECT idclient FROM orders)
SELECT name FROM client GROUP BY name
SELECT name FROM client GROUP BY name
SELECT name FROM Client ORDER BY count(*) DESC LIMIT 1
SELECT name FROM Client WHERE idclient IN (SELECT idclient FROM Orders GROUP BY idclient ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM client WHERE idclient IN (SELECT idclient FROM orders GROUP BY idclient)
SELECT name FROM client WHERE idclient IN (SELECT idclient FROM orders GROUP BY idclient)
SELECT name FROM client WHERE idclient IN (SELECT idclient FROM books_order GROUP BY idclient ORDER BY sum(amount) DESC LIMIT 1)
SELECT name FROM client WHERE idclient IN (SELECT idclient FROM books_order GROUP BY idclient ORDER BY sum(amount) DESC LIMIT 1)
SELECT title FROM Book WHERE isbn NOT IN (SELECT isbn FROM Books_Order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(SalePrice) FROM Book
SELECT max(SalePrice) FROM Book
SELECT avg(purchasePrice) FROM Book
SELECT avg(PurchasePrice) FROM Book
SELECT max(saleprice) - min(purchaseprice) FROM Book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT Title FROM Book WHERE SalePrice > (SELECT avg(SalePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice > (SELECT avg(SalePrice) FROM Book)
SELECT Title FROM Book ORDER BY SalePrice ASC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT Title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT Title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = (SELECT idAuthor FROM Author WHERE name = "George Orwell")
SELECT SalePrice FROM Book WHERE Author = "Plato"
SELECT saleprice FROM book WHERE author = 'Plato'
SELECT Title FROM Book WHERE Author = (SELECT idAuthor FROM Author WHERE name = "George Orwell") ORDER BY SalePrice ASC LIMIT 1
SELECT Title FROM Book WHERE Author = (SELECT idAuthor FROM Author WHERE name = "George Orwell") ORDER BY SalePrice ASC LIMIT 1
SELECT Title FROM Book WHERE Author IN (SELECT idAuthor FROM Author WHERE name = "Plato") AND PurchasePrice < (SELECT avg(SalePrice) FROM Book)
SELECT Title FROM Book WHERE Author = (SELECT idAuthor FROM Author WHERE name = "Plato") AND SalePrice < (SELECT avg(SalePrice) FROM Book)
SELECT author FROM book WHERE title = "Pride and Prejudice"
SELECT Name FROM Author WHERE idAuthor IN (SELECT idAuthor FROM Author_Book WHERE ISBN IN (SELECT ISBN FROM Book WHERE Title = "Pride and Prejudice"))
SELECT Title FROM Book WHERE Author = (SELECT idAuthor FROM Author WHERE Name LIKE '%Plato%')
SELECT Title FROM Book WHERE Author IN (SELECT idAuthor FROM Author WHERE Name LIKE '%Plato%')
SELECT count(*) FROM orders WHERE idclient IN (SELECT idclient FROM books_order WHERE isbn IN (SELECT isbn FROM book WHERE title = "Pride and Prejudice"))
SELECT count(*) FROM orders
SELECT idorder FROM orders WHERE idclient IN (SELECT idclient FROM books ORDER BY title ASC LIMIT 2)
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books_order WHERE isbn IN (SELECT isbn FROM book WHERE title IN ('Pride', 'Prejudice', 'The Little Prince'))
{"sql": "SELECT ISBN FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient
{"sql": "SELECT ISBN FROM Books_Order WHERE IdOrder IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient IN (SELECT Id
{"sql": "SELECT Title FROM Book WHERE IdClient IN (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient FROM Orders WHERE IdClient = (SELECT IdClient
SELECT Title FROM Book WHERE ISBN IN (SELECT ISBN FROM Books_Order WHERE IdClient != (SELECT IdClient FROM Client WHERE Name = "James Smith"))
SELECT name FROM Client WHERE idclient IN (SELECT idclient FROM Orders WHERE idorder IN (SELECT idorder FROM Books_Order WHERE isbn = "Pride and Prejudice"))
SELECT name FROM Client WHERE idclient IN (SELECT idclient FROM Orders WHERE idorder IN (SELECT idorder FROM Books_Order WHERE isbn = "Pride and Prejudice"))
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT Type, Release FROM book
SELECT max(chapters) FROM book
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT Title, Rating FROM book
SELECT Rating FROM book ORDER BY Chapters DESC LIMIT 1
SELECT rank FROM review WHERE book_id IN (SELECT book_id FROM book ORDER BY pages ASC LIMIT 1)
SELECT Title FROM review ORDER BY Rank DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM review WHERE Book_ID IN (SELECT Book_ID FROM book WHERE Type = "Novel")
SELECT Type FROM book GROUP BY Type
SELECT Type FROM book GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type FROM book GROUP BY Type HAVING COUNT(*) >= 3
SELECT Title FROM review ORDER BY Rating ASC
SELECT Title, Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT Type FROM book WHERE Chapters > 75 AND Chapters < 50
SELECT count(DISTINCT Type) FROM book
SELECT Type, Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality IN("England", "Australia")
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT customer_id FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 AND Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit BETWEEN 50 AND 75
SELECT customer.name FROM customer JOIN customer_order ON customer.customer_id = customer_order.customer_id
SELECT customer.name, dish.name FROM customer_order JOIN customer ON customer_order.customer_id = customer.customer_id
SELECT customer_name FROM customer JOIN customer_order ON customer.customer_id = customer_order.customer_id GROUP BY customer_id ORDER BY quantity DESC
SELECT customer.name, dish.name FROM customer_order JOIN customer ON customer_order.customer_id = customer.customer_id ORDER BY quantity DESC
SELECT customer.name FROM customer JOIN customer_order ON customer.customer_id = customer_order.customer_id GROUP BY customer_id
SELECT customer_name FROM customer ORDER BY customer_id
SELECT customer_id FROM customer_order WHERE quantity > 1 GROUP BY customer_id
SELECT Name FROM customer WHERE Customer_ID IN (SELECT Customer_ID FROM customer_order GROUP BY Customer_ID HAVING SUM(Quantity) > 1)
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name, Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age IN (19, 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Team_Leader FROM club JOIN club_leader ON club.Club_ID = club_leader.Club_ID
SELECT Team_Leader FROM club WHERE Overall_Ranking > 100
SELECT Team_Leader FROM club_leader WHERE Club_ID IN (SELECT Club_ID FROM club WHERE Club_Name LIKE '%2018%' )
SELECT Team_Leader FROM club WHERE Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age BETWEEN 19 AND 22
SELECT avg(Age) FROM club_leader
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT collection_subset_name FROM collection_subsets
SELECT DISTINCT collection_subset_name FROM collection_subsets
SELECT * FROM Collection_Subsets WHERE Collection_Name = "Top collection"
SELECT * FROM Collections WHERE Collection_Name = "Top collection"
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Name FROM Document_Subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_id FROM documents_in_collections
SELECT document_object_id FROM document_objects
SELECT document_id FROM document_objects WHERE owner = "Marlin"
SELECT document_object_id FROM document_objects WHERE owner = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Description LIKE '%Braeden Collection%'
SELECT Owner FROM Document_Objects WHERE Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin')
SELECT Owner FROM Document_Objects WHERE Owner LIKE '%Marlin%'
SELECT DISTINCT Description FROM Document_Objects
{"sql": "SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_id FROM document_objects WHERE document_id NOT IN (SELECT parent_id FROM document_objects)
SELECT document_object_id FROM document_objects WHERE parent_document_object_id IS NULL
SELECT count(*) FROM Document_Objects GROUP BY Parent_Document_Object_ID
SELECT count(*) FROM Document_Objects GROUP BY Parent_Document_Object_ID
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT Description FROM Collections WHERE Collection_Name = "Best"
SELECT collection_description FROM Collections WHERE collection_name LIKE '%Best%'
SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = "Nice"
SELECT DISTINCT parent_collection_id FROM collections WHERE collection_name = "Nice"
SELECT collection_name FROM Collections WHERE parent_collection_id NOT IN (SELECT collection_id FROM Collections)
SELECT collection_name FROM Collections WHERE parent_collection_id NOT IN (SELECT collection_id FROM Collections)
SELECT document_id FROM document_objects GROUP BY document_id HAVING count(*) > 1
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM Collections WHERE collection_name = "Best"
SELECT count(*) FROM Collection_Subsets WHERE collection_name = "Best"
SELECT document_id FROM document_objects WHERE owner = "Ransom"
SELECT document_object_id FROM document_objects WHERE owner = "Ransom"
SELECT collection_subset_id, collection_subset_name, count(*) FROM collection_subsets GROUP BY collection_subset_id
SELECT collection_subset_id, collection_subset_name, count(*) FROM collection_subset_id GROUP BY collection_subset_id
{"sql": "SELECT count(*) FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM
SELECT count(*) FROM Document_Objects GROUP BY Document_Object_ID
SELECT document_id FROM Document_Subset_Members GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Document_Subset_Members WHERE related_document_object_id IN (SELECT document_object_id FROM Document_Objects WHERE document_object_id IN (SELECT document_object_id FROM Document_Objects GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4))
{"sql": "SELECT document_object_id FROM document_subset_members WHERE related_document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM
SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Documents_in_Collections WHERE Collection_ID IN (SELECT Collection_ID FROM Collections WHERE Collection_Name = "Braeden")))
{"sql": "SELECT DISTINCT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT Owner FROM Document_Objects WHERE Owner IN (SELECT
SELECT DISTINCT document_subset_name FROM document_subsets WHERE document_object_id IN (SELECT document_object_id FROM document_objects WHERE owner = "Braeden")
SELECT DISTINCT document_subset_name FROM document_subsets WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE owner = "Braeden")
SELECT document_subset_id, name FROM document_subsets GROUP BY document_subset_id
SELECT document_subset_id, document_subset_name, count(*) FROM document_subsets GROUP BY document_subset_id
SELECT document_subset_id, name FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT Document_Subset_ID FROM Document_Subsets GROUP BY Document_Subset_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subsets WHERE document_subset_name = "Best for 2000")
SELECT document_id FROM Document_Subsets WHERE document_subset_name = "Best for 2000"
{"sql": "SELECT document_subset_name, document_id FROM document_subsets WHERE document_id IN (SELECT document_id FROM document_subset_members WHERE related_document_id IN (SELECT document_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_id IN (SELECT
{"sql": "SELECT DISTINCT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE document_subset
SELECT collection_name FROM collections WHERE collection_id IN (SELECT collection_id FROM documents_in_collections WHERE owner = 'Ransom')
SELECT collection_name FROM collections WHERE collection_id IN (SELECT collection_id FROM documents_in_collections WHERE owner = 'Ransom')
SELECT count(*) FROM Documents_in_Collections
SELECT count(*) FROM Document_Objects JOIN Documents_in_Collections ON Document_Objects.Document_Object_ID = Documents_in_Collections.Document_Object_ID GROUP BY Document_Object_ID
SELECT count(*) FROM collections WHERE collection_name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT document_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best")
SELECT count(*) FROM collections WHERE collection_name = "Best"
SELECT collection_name FROM Collections ORDER BY count(*) DESC LIMIT 1
SELECT collection_name FROM collections WHERE collection_id IN (SELECT collection_id FROM documents_in_collections GROUP BY collection_id ORDER BY count(*) DESC LIMIT 1)
SELECT document_object_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets WHERE name = "Best" AND document_subset_details LIKE "%2000%")
SELECT DISTINCT document_object_id FROM document_objects WHERE document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best"))
SELECT document_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best") AND document_subset_id NOT IN (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = "Best")
SELECT DISTINCT document_object_id FROM Documents_in_Collections WHERE collection_id NOT IN (SELECT collection_id FROM Collection_Subsets WHERE collection_subset_name = "Best for 2000")
SELECT document_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = "Best") OR document_object_id IN (SELECT document_object_id FROM collections WHERE collection_name = "Best")
SELECT DISTINCT document_id FROM Document_Objects WHERE document_id IN (SELECT document_id FROM Documents_in_Collections WHERE collection_id IN (SELECT collection_id FROM Collections WHERE collection_name LIKE '%Best%'))
SELECT collection_name FROM collections WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best"))
{"sql": "SELECT collection_name FROM collections WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_id IN (SELECT collection
SELECT count(*) FROM Collections WHERE collection_name = "Best"
SELECT count(DISTINCT collection_name) FROM Collections WHERE collection_name LIKE '%Best%'
SELECT collection_subset_name FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best")
SELECT collection_subset_id FROM collection_subset_members WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best")
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name, language FROM songs
SELECT max(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id IN (SELECT id FROM participants WHERE name = "Freeway")
SELECT id, language, original_artist FROM songs WHERE name != 'Love'
SELECT name, original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT stage_presence FROM performance_score WHERE songs_id IN (SELECT id FROM songs WHERE language = 'English')
SELECT participant_id, name FROM participants WHERE id IN (SELECT participant_id FROM performance_score GROUP BY participant_id HAVING count(*) >= 2)
SELECT id, name, popularity FROM participants ORDER BY popularity
SELECT participant_id FROM performance_score WHERE voice_sound_quality = 5 OR rhythm_tempo = 5
SELECT voice_sound_quality FROM performance_score WHERE songs_id IN (SELECT id FROM songs WHERE name = "The Balkan Girls" AND language = "English")
SELECT id, name FROM songs ORDER BY popularity DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence IN (7, 9)
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) FROM performance_score GROUP BY language
SELECT DISTINCT name FROM participants WHERE id IN (SELECT participant_id FROM performance_score WHERE songs_id IN (SELECT id FROM songs WHERE language = 'English'))
SELECT name, popularity FROM participants WHERE id IN (SELECT participant_id FROM performance_score WHERE songs_id IN (SELECT id FROM songs WHERE language = 'English' AND id IN (SELECT id FROM songs WHERE language = 'Croatian')))
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM songs WHERE id IN (SELECT songs_id FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC)
SELECT count(*) FROM City
SELECT count(*) FROM city
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT count(*) FROM City
SELECT count(*) FROM City
SELECT name, code, state, country FROM city
SELECT name, codes, states, countries FROM city
SELECT latitude, longitude FROM City WHERE city_name = "Baltimore"
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM City WHERE state = "PA"
SELECT city_name FROM City WHERE state = "PA"
SELECT count(*) FROM City WHERE country = "Canada"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT state FROM city GROUP BY state
SELECT count(*) FROM city GROUP BY state
SELECT country FROM City GROUP BY country
SELECT count(*) FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT Fname, Lname FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE state = "MD")
SELECT Fname + " " + Lname FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE country = "United States" AND state = "Maryland")
SELECT count(*) FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE country = 'China')
SELECT count(*) FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE country = 'China')
SELECT Fname, Major FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE city_name = "Baltimore")
SELECT Fname, Major FROM Student WHERE city_code = "Baltimore"
SELECT count(*) FROM city GROUP BY country
SELECT count(*) FROM city GROUP BY country
SELECT count(*) FROM city GROUP BY city_code
SELECT count(*) FROM Student GROUP BY city_code
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT city_name FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code HAVING count(*) >= 3)
SELECT city_name FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code HAVING count(*) >= 3)
SELECT state FROM city WHERE state IN (SELECT state FROM city GROUP BY state HAVING count(*) > 5)
SELECT state FROM City WHERE state IN (SELECT DISTINCT state FROM Student GROUP BY state HAVING count(*) > 5)
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT stu_id FROM student WHERE sex = "F" AND city_code = "PA"
SELECT StuID FROM Student WHERE Sex = "F" AND city_code = "PA"
SELECT StuID FROM Student WHERE Sex = "M" AND city_code NOT IN (SELECT city_code FROM City WHERE country != "USA")
SELECT StuID FROM Student WHERE Sex = "Male" AND city_code NOT IN (SELECT city_code FROM City WHERE country = "USA")
SELECT distance FROM Direct_distance WHERE city1_code = (SELECT city_code FROM City WHERE city_name = "BAL") AND city2_code = (SELECT city_code FROM City WHERE city_name = "CHI")
SELECT distance FROM Direct_distance WHERE city1_code = (SELECT city_code FROM City WHERE city_name = "BAL") AND city2_code = (SELECT city_code FROM City WHERE city_name = "CHI")
SELECT distance FROM Direct_distance WHERE city1_code = (SELECT city_code FROM City WHERE city_name = "Boston") AND city2_code = (SELECT city_code FROM City WHERE city_name = "Newark")
SELECT distance FROM Direct_distance WHERE city1_code = (SELECT city_code FROM City WHERE city_name = "Boston") AND city2_code = (SELECT city_code FROM City WHERE city_name = "Newark")
SELECT avg(distance) FROM Direct_distance
SELECT avg(distance) FROM Direct_distance
SELECT city_code FROM City ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code FROM Direct_distance WHERE distance > (SELECT avg(distance) FROM Direct_distance)
SELECT city_code FROM city WHERE city_code IN (SELECT city1_code FROM direct_distance GROUP BY city1_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance))
{"sql": "SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1_code IN (SELECT city_code FROM city2_code WHERE city2_code IN (SELECT city_code FROM city2_code WHERE city1
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM City WHERE city_name = "BAL")
SELECT sum(distance) FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM City WHERE city_name = "BAL")
SELECT avg(distance) FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM City WHERE city_name = "Boston")
SELECT avg(distance) FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM City WHERE city_name = "Boston")
SELECT city_name FROM city WHERE city_code IN (SELECT city_code FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Chicago") )
SELECT city_name FROM city WHERE city_code IN (SELECT city2_code FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Chicago'))
SELECT city_name FROM city ORDER BY city_name DESC LIMIT 1
{"sql": "SELECT city_name FROM city WHERE city_code IN (SELECT city1_code FROM direct_distance WHERE city1_code IN (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_code =
SELECT city_code FROM city GROUP BY city_code
SELECT city_code FROM city GROUP BY city_code
SELECT city_name FROM city GROUP BY city_name
SELECT city_name, avg(distance) FROM city GROUP BY city_name
SELECT distance FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM City WHERE city_name = "Linda (first name) Smith (last name)" ) AND city2_code IN (SELECT city_code FROM City WHERE city_name = "Tracy (first name) Kim (last name)" )
SELECT distance FROM Direct_distance WHERE city1_code IN (SELECT city_code FROM Student WHERE Fname = "Tracy" AND Lname = "Kim") AND city2_code IN (SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith")
SELECT Fname, Lname FROM Student WHERE city_code IN (SELECT city_code FROM City WHERE city_name = "Linda Smith")
SELECT fname + " " + lname FROM student WHERE city_code IN (SELECT city_code FROM city WHERE city_name != 'Linda Smith' )
{"sql": "SELECT state FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_code IN (SELECT city_code
SELECT state FROM city WHERE city_code IN (SELECT city_code FROM city WHERE city_name = "Linda")
SELECT * FROM Sailors WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name, age FROM Sailors WHERE age < 30
SELECT name, age FROM Sailors WHERE age < 30
SELECT bid FROM reserves WHERE sid = 1
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT sid FROM reserves WHERE bid = 102
SELECT name FROM Sailors WHERE sid IN (SELECT sid FROM Reserves WHERE bid = 102)
SELECT DISTINCT bid FROM Reserves
SELECT bid FROM reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT max(age) FROM sailors)
SELECT DISTINCT sid FROM Sailors WHERE sid != (SELECT min(age) FROM Sailors ORDER BY age ASC LIMIT 1)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(rating) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT rating FROM sailors WHERE rating > 7)
SELECT name, sid FROM Sailors JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY sid
SELECT name, sid FROM Sailors JOIN Reserves ON Sailors.sid = reserves.sid GROUP BY sid HAVING count(*) > 1
SELECT sid FROM reserves GROUP BY sid HAVING count(*) > 1
SELECT DISTINCT name FROM Reserves GROUP BY sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue'))
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue'))
SELECT name, sid FROM Sailors WHERE sid IN (SELECT sid FROM Reserves WHERE bid IN (SELECT bid FROM Boats WHERE color IN ('red', 'blue')))
SELECT name, sid FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue')))
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue'))
SELECT sid FROM Reserves WHERE bid IN (SELECT bid FROM Boats WHERE color IN ('red', 'blue'))
SELECT name, sid FROM Sailors WHERE sid IN (SELECT sid FROM Reserves WHERE bid IN (SELECT bid FROM Boats WHERE color IN ('red', 'blue')))
SELECT name, sid FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue')))
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name, sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name, sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid = 103)
SELECT name FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid = 103)
SELECT name FROM sailors WHERE rating > (SELECT name FROM sailors WHERE name = "Luis")
SELECT name FROM Sailors WHERE rating > (SELECT max_rating FROM Sailors WHERE name = "Luis")
SELECT name FROM sailors WHERE rating > (SELECT max rating FROM sailors WHERE name = "Luis")
SELECT name FROM Sailors WHERE rating > (SELECT max_rating FROM Sailors WHERE name = "Luis")
SELECT name, sid FROM Sailors WHERE rating > 2
SELECT name, sid FROM Sailors WHERE rating >= 3 AND sid IN (SELECT sid FROM Reserves)
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM Sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(rating) FROM Sailors
SELECT avg(rating) FROM Sailors
SELECT count(*) FROM reserves GROUP BY bid
SELECT count(*) FROM Reserves GROUP BY bid
SELECT count(*) FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE bid > 50)
SELECT count(*) FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE bid > 50)
SELECT count(*) FROM Reserves GROUP BY bid WHERE bid IN (SELECT bid FROM Reserves GROUP BY bid HAVING count(*) > 1)
SELECT count(*) FROM reserves GROUP BY bid WHERE bid IN (SELECT bid FROM reserves GROUP BY bid HAVING count(*) > 1)
SELECT count(*) FROM reserves WHERE sid IN (SELECT sid FROM sailors WHERE sid > 1) GROUP BY bid
SELECT count(*) FROM Reserves WHERE sid IN (SELECT sid FROM Sailors WHERE sid > 1) GROUP BY bid
SELECT avg(age) FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = "red")) GROUP BY rating
SELECT rating, avg(age) FROM reserves JOIN boats ON reserves.bid = boats.bid WHERE boats.color = "red" GROUP BY rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT name FROM boats WHERE bid IN (SELECT bid FROM reserves WHERE sid IN (SELECT sid FROM sailors WHERE age BETWEEN 20 AND 30))
SELECT name FROM boats WHERE bid IN (SELECT bid FROM reserves WHERE day BETWEEN 20 AND 30)
SELECT name FROM Sailors WHERE rating > (SELECT max(color) FROM Boats WHERE color = 'red')
SELECT name FROM sailors WHERE rating > (SELECT max(color) FROM boats WHERE color = "red")
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT name FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE name = "Melon"))
SELECT name FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE name = "Melon"))
SELECT name, age FROM Sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) > 2
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) <= 2
SELECT count(*) FROM headphone WHERE Price > 200 GROUP BY Class
SELECT count(*) FROM headphone WHERE Price > 200 GROUP BY Class
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT Model, Class, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model, Class, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) FROM headphone GROUP BY Construction
SELECT Class FROM headphone WHERE Earpads LIKE "%Bowls%" AND Earpads LIKE "%Comfort Pads%"
SELECT Class FROM headphone WHERE Earpads IN ("Bowls", "Comfort Pads")
SELECT earpads FROM headphone WHERE construction != 'plastic'
SELECT Earpads FROM headphone WHERE Construction != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(*) FROM store GROUP BY Neighborhood
SELECT count(*) FROM store GROUP BY Neighborhood
SELECT Name FROM store WHERE Store_ID IN (SELECT Store_ID FROM stock GROUP BY Store_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM store WHERE store_id IN (SELECT store_id FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone GROUP BY Model ORDER BY count(*) DESC LIMIT 1
SELECT Model FROM headphone ORDER BY (SELECT Quantity FROM stock) DESC LIMIT 1
SELECT count(*) FROM stock WHERE store_id IN (SELECT store_id FROM store WHERE name = "Woodman")
SELECT sum(Quantity) FROM stock WHERE Store_ID IN (SELECT Store_ID FROM store WHERE Name = "Woodman")
SELECT Neighborhood FROM store WHERE Neighborhood NOT IN (SELECT Neighborhood FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM Author
SELECT count(*) FROM Paper
SELECT count(*) FROM Paper
SELECT count(*) FROM Affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM Paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM Paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM Paper WHERE year = 2009 AND paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Columbia University"))
SELECT count(*) FROM Paper WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Columbia University" AND year = 2009) )
SELECT name, address FROM Affiliation
SELECT name, address FROM Affiliation
SELECT venue, year FROM Paper ORDER BY year
SELECT DISTINCT venue FROM paper ORDER BY year
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Harvard University"))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = "Harvard University"))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown"))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown"))
SELECT paper_id, title FROM Paper WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name LIKE '%Stanford University%' OR name LIKE '%Columbia University%'))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name LIKE '%Stanford%' OR name LIKE '%Columbia%'))
SELECT paper_id, title FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown, Kathleen" AND name = "Rambow, Owen"))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Kathleen" AND name = "Owen"))
{"sql": "SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown")) AND paper_id NOT IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Rambow"))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name IN ('Mckeown', 'Kathleen', 'Owen')))
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown" OR name = "Rambow"))
SELECT name FROM Author_list GROUP BY author_id ORDER BY count(*) DESC
SELECT count(*) FROM Author_list GROUP BY author_id ORDER BY count(*)
SELECT affiliation_id FROM Author_list GROUP BY affiliation_id ORDER BY count(*) ASC
SELECT name FROM Affiliation ORDER BY count(*)
SELECT name FROM author_list GROUP BY author_id HAVING count(*) > 50
SELECT name FROM Author WHERE author_id IN (SELECT author_id FROM Author_list GROUP BY author_id HAVING count(*) > 50)
SELECT name FROM Author WHERE author_id IN (SELECT author_id FROM Author_list GROUP BY author_id HAVING count(*) = 1)
SELECT name FROM Author WHERE author_id IN (SELECT author_id FROM Author_list GROUP BY author_id HAVING count(*) = 1)
SELECT venue, year FROM paper GROUP BY venue, year ORDER BY count(*) DESC LIMIT 1
SELECT venue, year FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM Paper ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Citation WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id LIKE "A00-1002")
SELECT count(*) FROM Citation WHERE paper_id = 1002
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT count(*) FROM Citation WHERE paper_id = "D12-1027"
SELECT paper_id FROM Citation ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT paper_id FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT paper_id FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
{"sql": "SELECT count(*) FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper_id FROM Citation WHERE cited_paper_id IN (SELECT paper_id FROM Citation WHERE paper_id IN (SELECT paper
SELECT count(*) FROM Citation WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Kathleen"))
SELECT count(*) FROM Citation WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Kathleen Mckeown"))
SELECT count(*) FROM Citation WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Mckeown" OR name = "Kathleen"))
SELECT name FROM Author ORDER BY count(*) DESC LIMIT 1
SELECT name FROM Author ORDER BY count(*) DESC LIMIT 1
SELECT venue, year FROM Paper WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Mckeown"))
SELECT venue, year FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown , Kathleen"))
SELECT venue, year FROM Paper WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = "Columbia University"))
SELECT venue, year FROM Paper WHERE paper_id IN (SELECT paper_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author WHERE name = 'Columbia University'))
SELECT author_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Paper WHERE year = 2009 GROUP BY author_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM Author WHERE author_id IN (SELECT author_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Paper WHERE year = 2009))
SELECT affiliation_id FROM Author_list GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT affiliation_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Paper WHERE year = 2009) GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Columbia University")) AND year <= 2009
SELECT count(*) FROM Paper WHERE year <= 2009
SELECT count(*) FROM paper WHERE year BETWEEN 2000 AND 2009 AND paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = 'Stanford University'))
SELECT count(*) FROM paper WHERE year BETWEEN 2000 AND 2009 AND paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Stanford University"))
SELECT title FROM Paper GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM Paper ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Mckeown" AND name = "Kathleen")
{"sql": "SELECT count(*) FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author
{"sql": "SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author_list WHERE author_id IN (SELECT author_id FROM Author
{"sql": "SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE author_id IN (SELECT author_id FROM author_list WHERE
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT name FROM affiliation WHERE address LIKE '%China%' GROUP BY affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM affiliation WHERE affiliation_id IN (SELECT affiliation_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Paper WHERE title LIKE '%China%'))
SELECT count(*) FROM paper GROUP BY year
SELECT venue, year FROM paper GROUP BY venue, year
SELECT count(*) FROM Author_list GROUP BY affiliation_id
SELECT count(*) FROM Author_list GROUP BY affiliation_id
SELECT title FROM Paper WHERE paper_id IN (SELECT paper_id FROM Citation GROUP BY paper_id HAVING count(*) > 50)
SELECT title FROM Paper WHERE paper_id IN (SELECT paper_id FROM Citation GROUP BY paper_id HAVING count(*) > 50)
SELECT count(*) FROM author_list WHERE author_id NOT IN (SELECT author_id FROM citation WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50))
SELECT count(*) FROM author_list WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50))
{"sql": "SELECT name FROM Author WHERE author_id IN (SELECT author_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE paper_id IN (SELECT paper
{"sql": "SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM paper WHERE year = 2009 AND venue IN ('NAACL', 'ACL'))")"}
SELECT name FROM Author WHERE author_id NOT IN (SELECT author_id FROM Author_list)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT Conference_Name, Year, Location FROM conference
SELECT name, year, location FROM conference
SELECT conference_name FROM conference GROUP BY conference_name
SELECT conference_name FROM conference GROUP BY conference_name
SELECT Year FROM conference GROUP BY Year
SELECT count(*) FROM conference GROUP BY Year
SELECT Year FROM conference GROUP BY Year ORDER BY count(*) ASC LIMIT 1
SELECT Year FROM conference GROUP BY Year ORDER BY count(*) ASC LIMIT 1
SELECT location FROM conference GROUP BY location HAVING count(*) >= 2
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT institution_name, location, founded FROM institution
SELECT Institution_Name, Location, Founded FROM institution
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT institution_name FROM institution ORDER BY founded DESC LIMIT 1
SELECT Institution_Name, Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT institution_name FROM institution WHERE founded > 1800 GROUP BY institution_name
SELECT institution_id FROM institution WHERE founded > 1800 GROUP BY institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) FROM staff WHERE Nationality = "United States"
SELECT max(Age) FROM staff
SELECT conference_name FROM conference WHERE conference_id IN (SELECT conference_id FROM conference_participation WHERE staff_id IN (SELECT staff_id FROM staff WHERE nation_code = 'Canada'))
SELECT conference_name FROM conference WHERE conference_id IN (SELECT conference_id FROM conference_participation WHERE role = 'Staff' AND nationality = 'Canada')
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role IN ('speaker', 'sponsor'))
SELECT name FROM staff WHERE staff_ID IN (SELECT staff_ID FROM conference_participation WHERE role = 'speaker' AND role = 'sponsor')
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'ACL') AND staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'Naccl')
{"sql": "SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_id IN (SELECT
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE year IN (2003, 2004)))
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE year BETWEEN 2003 AND 2004))
SELECT conference_name, year FROM conference GROUP BY conference_name
SELECT conference_id FROM conference GROUP BY conference_id
SELECT conference_name FROM conference ORDER BY count(*) DESC LIMIT 2
SELECT Conference_Name FROM conference ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE year = 2004))
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE year = 2004)
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age ASC
SELECT pilot_name FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM PilotSkills WHERE age < 35 AND plane_name = "Piper Cub"
SELECT location FROM Hangar WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name = "F-14 Fighter")
SELECT location FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT plane_name) FROM Hangar
SELECT count(DISTINCT location) FROM Hangar
SELECT plane_name FROM pilotskills WHERE age = 32 AND pilot_name = "Jones"
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Jones" AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE age < 35)
{"sql": "SELECT count(*) FROM PilotSkills WHERE age < 35 AND plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM PilotSkills WHERE plane_name IN
SELECT pilot_name FROM pilotSkills WHERE plane_name = "Piper Cub" ORDER BY age ASC LIMIT 1
SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name LIKE '%Piper Cub%') ORDER BY age ASC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM Hangar ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Hangar WHERE location = "Chicago"
SELECT count(*) FROM Hangar WHERE location = "Chicago"
SELECT plane_name FROM pilotSkills WHERE age = 41 AND pilot_name = "Smith"
SELECT plane_name FROM pilotSkills WHERE pilot_name = "Smith" AND age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(*) FROM PilotSkills WHERE pilot_name = "Smith"
SELECT count(*) FROM pilotskills WHERE pilot_name = "Smith"
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM pilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT plane_name FROM Hangar ORDER BY plane_name
SELECT plane_name FROM Hangar GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotSkills ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age BETWEEN 30 AND 40
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name FROM pilotSkills WHERE plane_name IN ('Piper Cub', 'F-14') AND age BETWEEN 30 AND 35
{"sql": "SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM pilot
SELECT pilot_name FROM PilotSkills WHERE plane_name != 'B-52 Bomber' AND plane_name != 'Piper Cub'
SELECT pilot_name FROM pilotskills WHERE plane_name IN ('Piper Cub') AND plane_name NOT IN ('B-52 Bomber')
SELECT pilot_name FROM pilotSkills WHERE plane_name IN ('Piper Cub', 'B-52 Bomber')
SELECT pilot_name FROM pilotskills WHERE plane_name IN ('Piper Cub', 'B-52 Bomber')
SELECT avg(age) FROM PilotSkills
SELECT avg(age) FROM PilotSkills
SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = "Austin") AND plane_name IN (SELECT plane_name FROM hangar WHERE location = "Boston")
SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = "Austin") OR plane_name IN (SELECT plane_name FROM hangar WHERE location = "Boston")
SELECT pilot_name FROM PilotSkills WHERE plane_name IN ('Piper Cub', 'F-14 Fighter')
SELECT pilot_name FROM PilotSkills WHERE plane_name IN ('Piper Cub', 'F-14 Fighter')
SELECT avg(age) FROM pilotskills GROUP BY plane_name
SELECT avg(age) FROM PilotSkills GROUP BY plane_name
SELECT count(*) FROM Hangar GROUP BY plane_name
SELECT plane_name FROM Hangar GROUP BY plane_name
SELECT plane_name FROM PilotSkills ORDER BY age DESC
SELECT plane_name FROM pilotSkills GROUP BY plane_name ORDER BY age DESC
SELECT plane_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT plane_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT age FROM pilotskills GROUP BY pilot_name ORDER BY age DESC
SELECT pilot_name FROM PilotSkills GROUP BY pilot_name ORDER BY age DESC
SELECT city FROM pilotskills GROUP BY city
SELECT DISTINCT location FROM Hangar GROUP BY location
SELECT count(*) FROM PilotSkills WHERE age < 35
SELECT DISTINCT plane_name FROM PilotSkills WHERE age < 35 GROUP BY plane_name
SELECT location FROM Hangar WHERE plane_name IN (SELECT plane_name FROM PilotSkills ORDER BY age ASC LIMIT 1)
SELECT location FROM Hangar WHERE plane_name IN (SELECT plane_name FROM PilotSkills ORDER BY age ASC LIMIT 1)
SELECT pilot_name FROM pilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE location = "Austin")
SELECT pilot_name, age FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = "Austin")
SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE plane_name LIKE "%Piper Cub%") ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT age FROM PilotSkills WHERE plane_name = "Piper Cub") ORDER BY pilot_name ASC
SELECT count(*) FROM PilotSkills WHERE age < all (SELECT plane_name FROM PilotSkills WHERE plane_name = "F-14 Fighter")
{"sql": "SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM hang
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotSkills WHERE age > (SELECT age FROM pilotSkills WHERE plane_name = "Piper Cub")
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills)
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km, government_website FROM district ORDER BY population ASC LIMIT 1
SELECT Name, Population FROM district WHERE Area_km > (SELECT avg(Area_km) FROM district)
SELECT max(Area_km) FROM district
SELECT sum(Population) FROM district WHERE Area_km IN (SELECT Area_km FROM district ORDER BY Area_km LIMIT 3)
SELECT District_ID, Name, Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website LIKE '%gov%'
SELECT District_ID FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT Name, Speach_title FROM spokesman
SELECT avg(points) FROM spokesman WHERE rank_position = 1
SELECT Name, Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT Average FROM spokesman)
SELECT Name FROM district GROUP BY Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM spokesman WHERE Spokesman_ID IN (SELECT Spokesman_ID FROM spokesman_district WHERE Start_year < 2004)
SELECT count(*) FROM spokesman_district GROUP BY district_id
SELECT Name FROM district WHERE District_ID IN (SELECT DISTINCT District_ID FROM spokesman_district WHERE Rank_position IN (1, 2))
SELECT Name FROM district WHERE District_ID IN (SELECT DISTINCT District_ID FROM spokesman_district GROUP BY District_ID HAVING count(*) > 1)
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(Population) FROM district WHERE district_id IN (SELECT district_id FROM spokesman_district)
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title, location FROM paintings ORDER BY year DESC LIMIT 1
SELECT title, location FROM paintings ORDER BY year DESC LIMIT 1
SELECT title FROM sculptures WHERE location = "gallery 226"
SELECT title FROM sculptures WHERE sculptureID IN (SELECT sculptureID FROM sculptures WHERE location = "gallery 226")
SELECT title, location FROM paintings
SELECT title, location FROM paintings
SELECT title, location FROM sculptures
SELECT title, location FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80
SELECT fname FROM Artists WHERE birthYear > 1850
SELECT fname + " " + lname FROM Artists WHERE birthYear > 1850
SELECT title, year FROM sculptures WHERE location != "gallery 226"
SELECT title, year FROM sculptures WHERE location != (SELECT location FROM paintings WHERE location = 226)
SELECT fname, lname FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE year < 1900) GROUP BY fname, lname
SELECT fname, lname FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE year < 1900) GROUP BY artistid
SELECT birthYear FROM Artists WHERE artistID IN (SELECT sculptorID FROM Sculptures WHERE year > 1920)
SELECT birthYear FROM Artists WHERE artistID IN (SELECT sculptorID FROM Sculptures WHERE year > 1920) GROUP BY artistID
SELECT fname, lname FROM artists ORDER BY birthYear DESC LIMIT 1
SELECT fname + " " + lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT fname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE location = (SELECT location FROM paintings WHERE location = "240")}
SELECT count(*) FROM paintings WHERE location = "240"
SELECT count(*) FROM Paintings WHERE painterID IN (SELECT artistID FROM Artists ORDER BY birthYear DESC LIMIT 1)
SELECT count(*) FROM Paintings WHERE painterID IN (SELECT artistID FROM Artists ORDER BY birthYear DESC LIMIT 1)
SELECT fname FROM Artists WHERE fname = "Mary"
SELECT name, year FROM Paintings WHERE painterID IN (SELECT artistID FROM Artists WHERE fname = "Mary")
SELECT width_mm FROM paintings WHERE painterid IN (SELECT artistid FROM artists WHERE birthyear < 1850)
SELECT width_mm FROM paintings WHERE painterID IN (SELECT artistID FROM artists WHERE birthYear < 1850)
SELECT location, medium FROM paintings WHERE painterid IN (SELECT artistid FROM artists WHERE fname = "Pablo")
SELECT location, medium FROM paintings WHERE painterID IN (SELECT artistID FROM artists WHERE fname = "Pablo")
SELECT fname FROM artists WHERE artistid IN (SELECT painterid FROM paintings JOIN sculptures ON paintings.painterid = sculptures.sculptorid)
SELECT fname + ' ' + lname FROM Artists JOIN Paintings ON Paintings.painterID = Artists.artistID JOIN Sculptures ON Sculptures.sculptorID = Artists.artistID
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium = "lithographic") AND artistid NOT IN (SELECT painterid FROM paintings WHERE medium = "oil")
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium = "oil" OR medium = "lithographic")
SELECT birthYear FROM Artists WHERE artistID IN (SELECT painterID FROM Paintings WHERE year = 1884)
SELECT birthYear FROM Artists WHERE artistID IN (SELECT painterID FROM Paintings WHERE year = 1884)
SELECT DISTINCT fname FROM Paintings WHERE medium = "medium" AND location = 241
SELECT fname FROM Artists WHERE artistid IN (SELECT painterid FROM Paintings WHERE medium = "Oil") AND galleryid = 241
SELECT medium FROM Paintings GROUP BY medium
SELECT medium FROM Paintings GROUP BY medium
SELECT avg(height_mm) FROM paintings GROUP BY medium
SELECT avg(height_mm) FROM paintings GROUP BY medium
SELECT paintingID FROM Paintings WHERE year < 1900
SELECT count(*) FROM paintings WHERE year < 1900
SELECT title FROM paintings WHERE year > 1910 AND medium = "Oil"
SELECT title FROM paintings WHERE year > 1910
SELECT painterID FROM Paintings WHERE medium = "medium oil" AND location = 240 GROUP BY painterID HAVING COUNT(*) = 1
SELECT painterID FROM Paintings WHERE medium = "oil" AND gallery = 240 GROUP BY painterID
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE year < (SELECT year FROM paintings WHERE location = "gallery 240")
SELECT DISTINCT paintingID FROM paintings WHERE year < (SELECT year FROM paintings WHERE paintingID IN (SELECT paintingID FROM paintings))
SELECT max(paintingID) FROM paintings
SELECT paintingID FROM Paintings ORDER BY year DESC LIMIT 1
SELECT fname, lname FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE title LIKE "%female%")
SELECT fname + " " + lname FROM Artists WHERE artistid IN (SELECT sculptorid FROM Sculptures WHERE title LIKE "%female%")
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC, height_mm DESC
SELECT title, year FROM paintings WHERE year BETWEEN 1900 AND 1950
SELECT title FROM paintings WHERE year BETWEEN 1900 AND 1950
SELECT title FROM paintings WHERE painterID = 222 OR title FROM sculptures WHERE sculptorID = 222
SELECT title FROM paintings WHERE painterID = 222 OR title FROM sculptures WHERE sculptorID = 222
SELECT artistID FROM Paintings WHERE year < 1900 ORDER BY count(*) DESC LIMIT 1
SELECT artistID FROM Paintings WHERE year < 1900 ORDER BY count(*) DESC LIMIT 1
SELECT fname FROM Artists WHERE artistid IN (SELECT sculptorid FROM Sculptures GROUP BY artistid ORDER BY count(*) DESC LIMIT 1)
SELECT fname FROM Artists WHERE artistID IN (SELECT sculptorID FROM Sculptures GROUP BY artistID ORDER BY count(*) DESC LIMIT 1)
SELECT title FROM paintings WHERE height_mm > 800 OR width_mm < 600
SELECT title FROM paintings WHERE height_mm > 800 OR width_mm < 600
SELECT location FROM paintings WHERE year < 1885 OR year > 1930
SELECT location FROM paintings WHERE year < 1885 OR year > 1930
SELECT paintingID FROM Paintings WHERE height_mm BETWEEN 500 AND 2000
SELECT paintingID FROM paintings WHERE height_mm BETWEEN 500 AND 2000
SELECT location FROM paintings WHERE medium IN ('on panel', 'on canvas')
SELECT location FROM paintings WHERE medium IN ('on panels', 'on canvas')
SELECT location FROM paintings WHERE year BETWEEN 1885 AND 1930
SELECT location FROM paintings WHERE year BETWEEN 1885 AND 1930
SELECT avg(height_mm) FROM paintings WHERE medium = "Oil" AND location = "Gallery 241"
SELECT avg(height_mm) FROM paintings WHERE medium = "Oil" AND location = 241
SELECT max(height_mm) FROM paintings WHERE year < 1900
SELECT height_mm, paintingid FROM paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT year FROM paintings GROUP BY year ORDER BY max(height_mm) DESC
SELECT year, max(height_mm) FROM paintings GROUP BY year
SELECT avg(height_mm) FROM paintings GROUP BY painterID ORDER BY name
SELECT avg(height_mm) FROM paintings GROUP BY painterID ORDER BY name
SELECT fname FROM Artists JOIN Paintings ON Artists.artistID = Paintings.painterID GROUP BY artistID HAVING count(*) >= 2
SELECT fname FROM Artists WHERE artistid IN (SELECT artistid FROM Paintings GROUP BY artistid HAVING count(*) >= 2)
SELECT deathYear FROM Artists WHERE artistID IN (SELECT artistID FROM Paintings GROUP BY artistID HAVING count(*) <= 3)
SELECT deathYear FROM Artists WHERE artistID IN (SELECT painterID FROM Paintings GROUP BY artistID HAVING count(*) < 4)
SELECT deathYear FROM Artists WHERE artistID IN (SELECT sculptorID FROM Sculptures GROUP BY artistID ORDER BY count(*) ASC LIMIT 1)
SELECT deathYear FROM Artists WHERE artistID IN (SELECT sculptorID FROM Sculptures GROUP BY sculptorID ORDER BY count(*) ASC LIMIT 1)
SELECT paintingID, height_mm FROM Paintings ORDER BY width_mm DESC LIMIT 1
SELECT height_mm, paintingid FROM paintings ORDER BY height_mm DESC LIMIT 1
SELECT paintingID FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE paintingID IN (SELECT paintingID FROM paintings))
SELECT paintingID FROM paintings WHERE year < (SELECT min(year) FROM paintings)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(year) FROM paintings WHERE year > 1900)
SELECT paintingID FROM paintings WHERE year > (SELECT max(year) FROM paintings WHERE year >= 1900)
SELECT artistID FROM Paintings WHERE medium = "oil" GROUP BY artistID ORDER BY count(*) DESC LIMIT 3
SELECT artistID FROM Paintings GROUP BY artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, location, title FROM paintings WHERE medium = "medium oil" ORDER BY year
SELECT paintingID, location, title FROM paintings ORDER BY year
SELECT year, location, title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT year, location, title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT fname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium != 'Sculpture')
SELECT fname, lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures)
SELECT location FROM paintings WHERE year < 1885 AND medium != 'mediumOn'
SELECT location FROM paintings WHERE year < 1885 AND medium != 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team, Winning_driver FROM race ORDER BY Winning_team ASC
SELECT Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) FROM driver
SELECT max(Age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age BETWEEN 20 AND 30
SELECT count(DISTINCT Engine) FROM driver WHERE Age BETWEEN 20 AND 30
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT driver_name FROM driver JOIN race ON driver.driver_id = race.driver_id
SELECT driver_name FROM driver JOIN race ON driver.driver_id = race.driver_id
SELECT driver_name FROM driver GROUP BY driver_id
SELECT count(*) FROM race GROUP BY driver_id
SELECT Age FROM driver GROUP BY Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT Age FROM driver ORDER BY count(*) DESC LIMIT 1
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race GROUP BY driver_id HAVING COUNT(*) >= 2)
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race GROUP BY driver_id HAVING count(*) > 2)
SELECT DISTINCT driver_name FROM driver WHERE age >= 26
SELECT race_name FROM race WHERE driver_id IN (SELECT driver_id FROM driver WHERE age >= 26)
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT constructor FROM driver GROUP BY constructor
SELECT count(*) FROM driver GROUP BY constructor
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING COUNT(*) > 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 OR Age > 30
SELECT constructor FROM driver WHERE age < 20 AND driver_id NOT IN (SELECT driver_id FROM driver WHERE age > 30)
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT DISTINCT driver_name FROM race WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = "James Hinchcliffe") AND driver_id IN (SELECT driver_id FROM race WHERE pole_position = "Carl Skerlong")
SELECT DISTINCT Driver_Name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = "James Hinchcliffe") AND driver_id IN (SELECT driver_id FROM race WHERE pole_position = "Carl Skerlong")
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = "James Hinchcliffe")
{"sql": "SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_ID = (SELECT
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
{"sql": "SELECT max(health_score) FROM countries WHERE country_id NOT IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id
{"sql": "SELECT max(health_score) FROM countries WHERE country_id NOT IN (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT id FROM countries WHERE country_id = (SELECT
SELECT count(DISTINCT name) FROM languages
SELECT count(DISTINCT language_id) FROM languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries JOIN official_languages ON countries.id = official_languages.country_id JOIN languages ON official_languages.language_id = languages.id
SELECT name, name FROM countries JOIN official_languages ON countries.id = official_languages.country_id
SELECT name FROM languages GROUP BY name
SELECT DISTINCT name FROM languages JOIN official_languages ON languages.id = official_languages.language_id GROUP BY name
SELECT count(*) FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages ORDER BY count(*) DESC LIMIT 1
SELECT language_id FROM official_languages GROUP BY country_id HAVING count(*) >= 2
SELECT DISTINCT name FROM languages GROUP BY name HAVING count(*) > 2
SELECT avg(overall_score) FROM countries WHERE country_id IN (SELECT country_id FROM official_languages WHERE language_id IN (SELECT id FROM languages WHERE name = "English"))
SELECT avg(overall_score) FROM countries WHERE country_id IN (SELECT country_id FROM official_languages WHERE language_id IN (SELECT id FROM languages WHERE name = "English"))
SELECT name FROM languages ORDER BY count(*) DESC LIMIT 3
SELECT name FROM languages ORDER BY count(*) DESC LIMIT 3
SELECT name FROM languages ORDER BY avg(overall_score) DESC
SELECT name FROM languages ORDER BY avg(overall_score) DESC
SELECT name FROM countries ORDER BY overall_score DESC LIMIT 1
SELECT country_id FROM official_languages GROUP BY country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE language_id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM languages WHERE id IN (SELECT language_id FROM official_languages WHERE country_id IN (SELECT id FROM countries WHERE overall_score < 90))
SELECT name FROM languages WHERE id IN (SELECT language_id FROM official_languages WHERE country_id IN (SELECT id FROM countries WHERE overall_score < 90))
SELECT country, town_city FROM addresses
SELECT country, town_city FROM addresses
SELECT county_state_province FROM addresses WHERE property_id IN (SELECT property_id FROM properties)
SELECT county_state_province FROM addresses WHERE property_address_id IN (SELECT property_id FROM properties)
{"sql": "SELECT feature_description FROM Features WHERE feature_id IN (SELECT feature_id FROM Property_Features WHERE feature_id IN (SELECT feature_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (SELECT property_id FROM Properties WHERE property_id IN (
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_name, feature_description FROM Features ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM features GROUP BY feature_name HAVING COUNT(*) = (SELECT count(*) FROM features)
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Ref_User_Categories WHERE user_category_code IN (SELECT user_category_code FROM Users WHERE first_name LIKE '%Mother%')
SELECT age_category_code FROM Ref_User_Categories WHERE user_id IN (SELECT user_id FROM Users WHERE first_name LIKE '%Mother%')
SELECT first_name FROM Users WHERE user_id IN (SELECT owner_user_id FROM Properties GROUP BY owner_user_id ORDER BY count(*) DESC LIMIT 1)
SELECT first_name FROM Users WHERE user_id IN (SELECT owner_user_id FROM Properties GROUP BY owner_user_id ORDER BY count(*) DESC LIMIT 1)
SELECT avg(room_count) FROM properties WHERE garden_yn = 'yes'
SELECT avg(room_count) FROM properties WHERE garden_features = 1
SELECT city FROM properties WHERE property_id IN (SELECT property_id FROM property_features WHERE feature_id IN (SELECT feature_id FROM features WHERE feature_name = "swimming pool"))
SELECT city FROM properties WHERE property_name LIKE "%swimming pool%"
SELECT property_name, vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(*) FROM Ref_Room_Types
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY datestamp DESC LIMIT 1
SELECT search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string, datestamp FROM User_Searches ORDER BY search_string DESC
{"sql": "SELECT zip_postcode FROM addresses WHERE property_address_id NOT IN (SELECT property_address_id FROM properties WHERE owner_user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user
SELECT zip_postcode FROM addresses WHERE address_id NOT IN (SELECT user_id FROM properties WHERE owner_user_id IN (SELECT user_id FROM properties GROUP BY owner_user_id HAVING count(*) > 2))
SELECT category, user_id FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT user_id FROM User_Searches GROUP BY user_id HAVING count(*) = 1
{"sql": "SELECT age_category_code FROM Ref_User_Categories WHERE user_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_User_Categories WHERE age_category
SELECT age_category_code FROM User_Searches ORDER BY search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code IN (SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_description = "Senior") ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code IN (SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_description = "Senior") ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = 1
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = 1
SELECT line_1_number_building, line_2_number_street, town_city FROM addresses WHERE address_id IN (SELECT user_address_id FROM users WHERE age_category_code IN (SELECT age_category_code FROM ref_age_categories WHERE age_category_description = "Senior Citizen") )
SELECT building, street, city FROM addresses WHERE age_category_code IN (SELECT age_category_code FROM ref_age_categories WHERE age_category_description = "Senior")
SELECT count(*) FROM Properties GROUP BY property_id HAVING count(*) >= 2
SELECT count(*) FROM Properties GROUP BY property_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Photos
SELECT count(*) FROM Property_Photos GROUP BY property_id
SELECT count(*) FROM Property_Photos GROUP BY owner_user_id
SELECT owner_user_id FROM properties WHERE property_id IN (SELECT property_id FROM property_photos) GROUP BY owner_user_id
SELECT max(price_max) FROM properties WHERE owner_user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT id FROM users WHERE first_name LIKE '%single%' OR last_name LIKE '%student%'))
{"sql": "SELECT max(price_max) FROM properties WHERE owner_user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE user_id IN (SELECT user_id FROM users WHERE first_name LIKE '%S%' OR last_name LIKE '%S%'))")"}
SELECT datestamp FROM User_Property_History ORDER BY datestamp
SELECT datestamp, property_name FROM User_Property_History ORDER BY datestamp
SELECT property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code IN (SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_code = 'Over 60')
SELECT DISTINCT room_size FROM Rooms GROUP BY room_size
SELECT count(*) FROM Rooms GROUP BY room_size
SELECT country FROM users WHERE first_name = "Robbie"
SELECT country FROM addresses WHERE user_id IN (SELECT user_id FROM users WHERE first_name = "Robbie")
SELECT first_name, middle_name, last_name FROM users WHERE user_id IN (SELECT owner_user_id FROM properties WHERE property_id IN (SELECT property_id FROM properties WHERE property_name LIKE '%property%' AND property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description LIKE '%property%' )))
SELECT first_name, last_name FROM users WHERE user_id IN (SELECT owner_user_id FROM properties)
SELECT search_string FROM User_Searches WHERE owner_user_id NOT IN (SELECT user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT last_name, user_id FROM users WHERE user_id IN (SELECT user_id FROM user_searches GROUP BY user_id HAVING count(*) >= 2)
SELECT last_name, user_id FROM Users WHERE user_id IN (SELECT user_id FROM User_Property_History GROUP BY user_id HAVING count(*) >= 2)
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price ASC
SELECT heat, name, nation FROM cyclist
SELECT max(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = "Carbon CC"
SELECT name, result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT id, product_name FROM bike WHERE id IN (SELECT bike_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT bike_id FROM cyclists_own_bikes GROUP BY bike_id HAVING count(*) >= 4
SELECT cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT product_name FROM cyclists_own_bikes WHERE nation IN ('Russia', 'Great Britain')
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclists_own_bikes WHERE purchase_year < 2015
SELECT DISTINCT product_name FROM cyclists_own_bikes WHERE cyclist_id IN (SELECT id FROM cyclist WHERE result < '4:21.558')
SELECT name, price FROM cyclists_own_bikes WHERE cyclist_id IN (SELECT id FROM cyclists WHERE name = 'Antonio Tauler')
SELECT name, nation, result FROM cyclist WHERE cyclist_id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT max(Price) FROM goods
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(price) FROM goods
SELECT id, flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT Id FROM goods WHERE Price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT id FROM goods WHERE flavor = "lemon"
SELECT DISTINCT id FROM goods WHERE flavor = "lemon"
SELECT Food FROM goods GROUP BY Food
SELECT count(*) FROM goods GROUP BY Food
SELECT id FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
SELECT LastName FROM customers WHERE Id IN (SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) > 10)
SELECT LastName FROM customers WHERE Id IN (SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) > 10)
SELECT count(*) FROM goods WHERE food = 'Cake'
SELECT count(*) FROM items WHERE item IN (SELECT item FROM goods)
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT item FROM items WHERE receipt IN (SELECT receiptnumber FROM receipts WHERE customerid = 15)
SELECT DISTINCT item FROM items WHERE receipt IN (SELECT receipt FROM receipts WHERE customerid = 15)
SELECT avg(price) FROM goods GROUP BY food
SELECT avg(price) FROM goods GROUP BY food
SELECT ReceiptNumber FROM receipts WHERE CustomerId IN (SELECT Id FROM items WHERE Food = 'Cake') AND CustomerId IN (SELECT Id FROM items WHERE Food = 'Cookie')
SELECT ReceiptNumber FROM receipts WHERE CustomerId IN (SELECT Id FROM goods WHERE Food = 'cake') AND CustomerId IN (SELECT Id FROM goods WHERE Food = 'cookie')
SELECT ReceiptNumber FROM receipts WHERE CustomerId IN (SELECT Id FROM customers WHERE LastName = "LOGAN") AND Item IN (SELECT Id FROM goods WHERE Flavor = "Croissant")
SELECT ReceiptNumber FROM receipts WHERE CustomerId IN (SELECT Id FROM customers WHERE LastName = "Logan") AND Food = "croissant"
SELECT ReceiptNumber, Date FROM items ORDER BY Price DESC LIMIT 1
SELECT ReceiptNumber, Date FROM receipts WHERE ReceiptNumber IN (SELECT Receipt FROM items GROUP BY Item ORDER BY Price DESC LIMIT 1)
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM goods GROUP BY Food
SELECT Food FROM goods GROUP BY Food
SELECT avg(price) FROM goods GROUP BY food_type
SELECT avg(price) FROM goods GROUP BY food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
{"sql": "SELECT DISTINCT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM goods WHERE id IN (SELECT id FROM
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT receiptnumber FROM items WHERE price > 13
SELECT DISTINCT receiptnumber FROM items WHERE id IN (SELECT id FROM goods WHERE price > 13)
SELECT Date FROM receipts WHERE CustomerId IN (SELECT Id FROM goods WHERE Price > 15)
SELECT Date FROM receipts WHERE CustomerId IN (SELECT Id FROM goods WHERE Price > 15)
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Id FROM goods WHERE Id LIKE "%APP%"
SELECT Id FROM goods WHERE Id LIKE "%70%"
SELECT id, price FROM goods WHERE id LIKE "%70%"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT Id FROM goods WHERE Flavor = 'Apple' ORDER BY Id
SELECT DISTINCT id FROM goods ORDER BY id
SELECT * FROM receipts WHERE customerid = 12 OR flavor = 'apple pie'
SELECT receiptnumber FROM receipts WHERE customerid = 12 OR flavor = "apple"
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber FROM receipts WHERE Date <= (SELECT min(Date) FROM receipts) OR (SELECT Price FROM goods WHERE Price > 10)
SELECT ReceiptNumber FROM receipts WHERE Date >= "2023-01-01" OR Price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT firstName FROM customers WHERE id IN (SELECT customerId FROM receipts ORDER BY date ASC LIMIT 1)
SELECT customer_id FROM receipts ORDER BY date ASC LIMIT 1
SELECT avg(price) FROM goods WHERE flavor IN ('blackberry', 'blueberry')
SELECT avg(Price) FROM goods WHERE Flavor IN ('blackberry', 'blueberry')
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT max(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) FROM goods GROUP BY food_type ORDER BY food_type
SELECT min(price) FROM goods ORDER BY food
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 3
SELECT Date FROM receipts ORDER BY count(*) DESC LIMIT 3
SELECT customer_id FROM receipts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customerid FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT date FROM receipts GROUP BY date
SELECT count(*) FROM receipts GROUP BY Date
SELECT first_name, last_name FROM customers WHERE id IN (SELECT customerid FROM receipts WHERE receiptnumber IN (SELECT receiptnumber FROM items WHERE item IN (SELECT id FROM goods WHERE flavor = "apple flavor tart")))
SELECT first_name + " " + last_name FROM customers WHERE id IN (SELECT customer_id FROM receipts WHERE receiptnumber IN (SELECT receiptnumber FROM items WHERE item IN (SELECT item FROM goods WHERE flavor = "apple")))
SELECT id FROM cookies WHERE price < (SELECT min(price) FROM cookies)
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods)
SELECT Id FROM goods WHERE Price >= (SELECT avg(Price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT Id FROM goods WHERE Id IN (SELECT Id FROM goods GROUP BY Id HAVING avg(Price) * 2 > avg(Price))
SELECT id, flavor, type FROM goods ORDER BY price ASC
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT item FROM items WHERE id IN (SELECT ordinal FROM receipts GROUP BY customerid HAVING count(*) <= 10)
SELECT item FROM items WHERE receipt IN (SELECT receipt FROM receipts GROUP BY receipt HAVING count(*) <= 10)
SELECT Flavor FROM goods WHERE Food = "Cake" AND Flavor != "Tart"
SELECT Flavor FROM goods WHERE Food != 'Tart'
SELECT count(*) FROM goods GROUP BY flavor ORDER BY count(*) DESC LIMIT 3
SELECT item FROM items ORDER BY ordinal DESC LIMIT 3
SELECT Id FROM receipts WHERE Amount > 150
SELECT id FROM receipts WHERE amount > 150
SELECT Id FROM customers WHERE Id IN (SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING Avg(Price) > 5)
SELECT customer_id FROM receipts GROUP BY customer_id HAVING avg(price) > 5
SELECT Date FROM receipts WHERE ReceiptNumber IN (SELECT ReceiptNumber FROM receipts GROUP BY Date HAVING SUM(Price) > 100)
SELECT Date FROM receipts WHERE ReceiptNumber IN (SELECT ReceiptNumber FROM goods GROUP BY Food ORDER BY Sum(Price) DESC LIMIT 1)
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT make, count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT make FROM team GROUP BY make
SELECT avg(age) FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT max(Points) FROM driver
SELECT max(points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver WHERE Country
SELECT Driver, Country FROM driver GROUP BY Country
SELECT max(points) FROM driver WHERE country IN (SELECT country FROM country WHERE capital = "Dublin")
SELECT max(points) FROM driver WHERE country IN (SELECT country FROM country WHERE capital = "Dublin")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE official_native_language = "English")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE official_native_language = "English")
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT Capital FROM country WHERE Country IN (SELECT Country FROM driver ORDER BY Points DESC LIMIT 1)
SELECT Country FROM driver ORDER BY Points DESC LIMIT 1
SELECT make FROM team GROUP BY make
SELECT make FROM team GROUP BY make
SELECT make FROM team_driver GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM driver WHERE make = "Dodge" AND Country = (SELECT Country FROM driver WHERE make = "Chevrolet")
SELECT Country FROM driver WHERE make IN ("Dodge", "Chevrolet")
SELECT sum(points) FROM driver
SELECT sum(points) FROM driver
SELECT Country FROM driver WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM driver GROUP BY Country HAVING COUNT(*) = 0
SELECT Manager, Sponsor FROM team WHERE Team_ID IN (SELECT Team_ID FROM team_driver GROUP BY Team_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Manager, Sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT Manager, Car_Owner FROM team WHERE Team_ID IN (SELECT Team_ID FROM team_driver GROUP BY Team_ID HAVING COUNT(*) >= 2)
SELECT Manager, Car_Owner FROM team WHERE Team_ID IN (SELECT Team_ID FROM team_driver GROUP BY Team_ID HAVING count(*) >= 2)
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City, Province FROM institution
SELECT City, Province FROM institution
SELECT max(Enrollment) FROM institution
SELECT max(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Name, Nickname FROM institution JOIN Championship ON institution.Institution_ID = championship.Institution_ID
SELECT Name, Nickname FROM institution JOIN Championship ON institution.Institution_ID = championship.Institution_ID
SELECT Nickname FROM Championship ORDER BY Enrollment ASC LIMIT 1
SELECT Nickname FROM Championship ORDER BY Enrollment ASC LIMIT 1
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution WHERE Institution_ID IN (SELECT Institution_ID FROM Championship)
SELECT Name FROM institution WHERE Institution_ID IN (SELECT Institution_ID FROM Championship GROUP BY Institution_ID HAVING count(*) >= 1)
SELECT count(*) FROM Championship WHERE Institution_ID IN (SELECT Institution_ID FROM institution WHERE Affiliation = "Public")
SELECT count(*) FROM championship WHERE institution_id IN (SELECT institution_id FROM institution WHERE affiliation = 'Public')
SELECT DISTINCT affiliation FROM institution GROUP BY affiliation
SELECT count(*) FROM institution GROUP BY Affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City IN ('Vancouver', 'Calgary')
SELECT enrollment FROM institution WHERE city IN ("Vancouver", "Calgary")
SELECT Province FROM institution WHERE Founded < 1920 AND Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 AND Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM warehouses
SELECT DISTINCT Contents FROM Boxes WHERE Location = "New York"
SELECT DISTINCT Contents FROM Boxes WHERE Location = "New York"
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT warehouse_code FROM boxes GROUP BY warehouse_code
SELECT avg(value) FROM boxes GROUP BY warehouse
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT avg(capacity) FROM warehouses
SELECT avg(capacity) FROM warehouses
SELECT avg(value) FROM boxes GROUP BY contents
SELECT avg(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT count(DISTINCT Contents) FROM boxes
SELECT DISTINCT Location FROM Warehouses
SELECT DISTINCT Location FROM Warehouses
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location IN ('Chicago', 'New York'))
SELECT Code FROM Boxes WHERE Warehouse IN (SELECT Code FROM Warehouses WHERE Location IN ('Chicago', 'New York'))
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location IN ('Chicago', 'New York'))
SELECT sum(value) FROM boxes WHERE location IN ("Chicago", "New York")
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = "Chicago") OR warehouse IN (SELECT code FROM warehouses WHERE location = "New York")
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = "Chicago") AND warehouse IN (SELECT code FROM warehouses WHERE location = "New York")
SELECT Contents FROM Boxes WHERE Warehouse IN (SELECT Code FROM Warehouses WHERE Location = "New York")
SELECT Contents FROM Boxes WHERE Warehouse IN (SELECT Code FROM Warehouses WHERE Location = "New York")
SELECT Location FROM Warehouses WHERE Code NOT IN (SELECT Code FROM Boxes WHERE Contents != 'Rocks')
SELECT Location FROM Warehouses WHERE Code IN (SELECT Warehouse FROM Boxes WHERE Contents IN ('Rocks') AND Contents NOT IN ('Scissors'))
SELECT warehouse FROM boxes WHERE contents IN ('Rocks', 'Scissors')
SELECT DISTINCT warehouse FROM boxes WHERE contents IN ('Rocks', 'Scissors')
SELECT Location FROM Warehouses WHERE Code IN (SELECT Code FROM Boxes WHERE Contents IN ('Rocks', 'Scissors'))
SELECT Location FROM Boxes WHERE Contents IN ('Rocks', 'Scissors')
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code FROM boxes ORDER BY value ASC LIMIT 1
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = "Rocks")
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents LIKE '%Rocks%')
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = "Scissors")
SELECT code, contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT warehouse_code FROM boxes GROUP BY warehouse_code HAVING avg(value) > 150
SELECT avg(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE avg(value) > 150) GROUP BY warehouse
SELECT contents, count(*) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents
SELECT sum(capacity) FROM Warehouses GROUP BY Location
SELECT Location FROM Warehouses GROUP BY Location
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT warehouse FROM boxes ORDER BY value DESC LIMIT 1
SELECT warehouse FROM boxes ORDER BY value DESC LIMIT 1
SELECT code FROM boxes GROUP BY code
SELECT count(*) FROM boxes GROUP BY warehouse
SELECT count(DISTINCT Location) FROM Boxes
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = "Rocks"
SELECT code FROM boxes JOIN warehouses ON boxes.warehouse = warehouses.code
SELECT code FROM boxes JOIN warehouses ON boxes.warehouse = warehouses.code
SELECT code FROM boxes WHERE location = "Chicago"
SELECT Code FROM Boxes WHERE Warehouse IN (SELECT Code FROM Warehouses WHERE Location = "Chicago")
SELECT count(*) FROM boxes GROUP BY warehouse
SELECT count(*) FROM boxes GROUP BY warehouse
SELECT count(DISTINCT Contents) FROM Boxes GROUP BY Warehouse
SELECT DISTINCT contents FROM boxes GROUP BY warehouse
SELECT Code FROM Warehouses WHERE Capacity > (SELECT max(capacity) FROM Warehouses)
{"sql": "SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE capacity < (SELECT value FROM boxes WHERE warehouse = (SELECT code FROM warehouses
SELECT sum(value) FROM boxes WHERE warehouse != (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse != (SELECT code FROM warehouses WHERE location = "Chicago")
SELECT name, city, state FROM university ORDER BY university_name
SELECT university_name FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
SELECT max(Enrollment) FROM university
SELECT max(Enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT * FROM university
SELECT DISTINCT home_conference FROM university
SELECT home_conference FROM university GROUP BY home_conference
SELECT count(*) FROM university WHERE home_conference IN (SELECT home_conference FROM university)
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT Major_ID FROM major_ranking ORDER BY rank ASC
SELECT rank FROM major_ranking ORDER BY rank ASC
SELECT University_Name FROM university WHERE University_ID IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
{"sql": "SELECT name, city, state FROM university WHERE university_id IN (SELECT university_id FROM major_ranking WHERE major_id IN (SELECT major_id FROM major WHERE major_name = \"Accounting\") ORDER BY rank DESC LIMIT 1")}
SELECT University_Name FROM university WHERE University_ID IN (SELECT University_ID FROM major_ranking WHERE Rank = 1) GROUP BY University_Name ORDER BY count(*) DESC LIMIT 1
SELECT University_Name FROM university ORDER BY major_ranking.rank ASC LIMIT 1
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Major_ID IN (SELECT Major_ID FROM major ORDER BY Reputation_point ASC LIMIT 1))
SELECT university_name FROM university WHERE university_name IN (SELECT major_name FROM major WHERE major_name IN ('Accounting', 'Urban Education'))
SELECT university_name FROM university WHERE university_id IN (SELECT university_id FROM major_ranking WHERE major_id IN (SELECT major_id FROM major WHERE major_name IN ('Accounting', 'Urban Education')))
SELECT University_Name, rank FROM overall_ranking WHERE State = "Wisconsin"
SELECT University_Name, Rank FROM university WHERE State = "Wisconsin"
SELECT University_Name FROM university ORDER BY Research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university WHERE University_ID IN (SELECT University_ID FROM major_ranking WHERE Rank <= 3)
SELECT University_Name FROM university WHERE University_ID IN (SELECT University_ID FROM major_ranking WHERE Major_ID IN (SELECT Major_ID FROM major WHERE Major_Name = "Accounting") AND Rank >= 3)
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT count(*) FROM university WHERE enrollment >= 0 AND rank <= 5
SELECT University_Name, Citation_point FROM university WHERE University_ID IN (SELECT University_ID FROM overall_ranking ORDER BY Reputation_point DESC LIMIT 3)
SELECT University_Name, Citation_point FROM university ORDER BY Reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND Enrollment < 3000
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT title FROM movies WHERE rating IS NULL
SELECT title FROM movies WHERE rating IS NULL
SELECT title FROM Movies WHERE rating = "G"
SELECT title FROM Movies WHERE rating IN ('G')
{"sql": "SELECT title FROM movietheaters WHERE code IN (SELECT code FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title FROM movies WHERE title IN (SELECT title
SELECT title FROM movies WHERE code IN (SELECT code FROM movietheaters WHERE name = "Odeon")
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM MovieTheaters)
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM MovieTheaters)
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT Movie) FROM MovieTheaters
SELECT count(DISTINCT Title) FROM Movies
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE "%Citizen%"
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM Movies WHERE rating IN ('G', 'PG'))
SELECT name FROM movieTheaters WHERE code IN (SELECT code FROM movies WHERE rating IN ('G', 'PG'))
SELECT Title FROM Movies WHERE Code IN (SELECT Code FROM MovieTheaters WHERE Name = "Odeon") OR Code IN (SELECT Code FROM MovieTheaters WHERE Name = "Imperial")
SELECT title FROM MovieTheaters WHERE name IN ('Odeon', 'Imperial')
SELECT name FROM MovieTheaters WHERE code IN (SELECT code FROM MovieTheaters WHERE name = "Odeon") AND code IN (SELECT code FROM MovieTheaters WHERE name = "Imperial")
SELECT movie FROM MovieTheaters WHERE code IN (SELECT code FROM MovieTheaters WHERE name = "Odeon") AND code IN (SELECT code FROM MovieTheaters WHERE name = "Imperial")
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters WHERE name = "Odeon")
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Code FROM MovieTheaters WHERE Name = "Odeon")
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM movies ORDER BY rating ASC
SELECT title FROM movies ORDER BY rating
SELECT Name FROM MovieTheaters GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM MovieTheaters ORDER BY count(*) DESC LIMIT 1
SELECT title FROM movies GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM Movies GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies WHERE Rating IS NOT NULL
SELECT count(*) FROM Movies WHERE Rating IS NOT NULL
SELECT Name FROM MovieTheaters WHERE Movie IN (SELECT Code FROM Movies)
SELECT name FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT code FROM movies)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT code FROM Movies)
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT Code FROM Movies WHERE Rating = "G")
SELECT name FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating = 'G')
SELECT title FROM Movies
SELECT Title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating != 'R'
SELECT * FROM Movies WHERE Rating < 0
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT recipient FROM package ORDER BY weight DESC LIMIT 1
SELECT Name FROM Client WHERE AccountNumber IN (SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1)
SELECT sum(Weight) FROM Package WHERE Sender = (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong")
SELECT sum(Weight) FROM Package WHERE Sender IN (SELECT AccountNumber FROM Client WHERE Name = "Leo Wong")
SELECT Position FROM Employee WHERE Name = "Amy Wong"
SELECT Position FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE Name = "Amy Wong")
SELECT Salary, Position FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary, Position FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(Salary) FROM Shipment WHERE JobStatus = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position != 'Intern'
SELECT level FROM Has_Clearance WHERE employee IN (SELECT employeeid FROM Employee)
SELECT Level FROM Has_Clearance WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE Name = "Physician")
SELECT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT count(*) FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT packagenumber FROM package WHERE sender IN (SELECT employeeid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM client WHERE name = "Leo Wong"))
SELECT packagenumber FROM package WHERE sender IN (SELECT employeeid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM employee WHERE name = "Leo Wong"))
SELECT * FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Leo Wong") OR recipient IN (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT DISTINCT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Leo Wong") OR recipient IN (SELECT accountnumber FROM client WHERE name = "Leo Wong")
SELECT count(*) FROM package WHERE sender IN (SELECT employeeid FROM client WHERE name = "Ogden Wernstrom") AND recipient IN (SELECT accountnumber FROM client WHERE name = "Leo Wong")
{"sql": "SELECT count(*) FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE accountnumber IN (SELECT accountnumber FROM package WHERE sender IN (SELECT employeeid FROM client WHERE account
SELECT Contents FROM Package WHERE Sender = (SELECT ClientNumber FROM Client WHERE Name = "John Zoidfarb")
SELECT Contents FROM Package WHERE Sender IN (SELECT ClientNumber FROM Client WHERE Name = "John Zoidfarb")
SELECT packagenumber, weight FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name LIKE '%John%')
SELECT packagenumber, weight FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "John")
SELECT packagenumber, weight FROM package ORDER BY weight ASC LIMIT 3
SELECT packagenumber, weight FROM package ORDER BY weight ASC LIMIT 3
SELECT name FROM client GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM client WHERE accountnumber IN (SELECT sender FROM package GROUP BY sender ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM client WHERE accountnumber IN (SELECT recipient FROM package) GROUP BY name ORDER BY count(*) ASC LIMIT 1
SELECT min(package_number) FROM package
SELECT Name FROM Client WHERE AccountNumber IN (SELECT Sender FROM Package GROUP BY Sender HAVING COUNT(*) > 1)
SELECT name FROM client WHERE accountnumber IN (SELECT sender FROM package GROUP BY sender HAVING count(*) > 1)
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT name, coordinates FROM planet ORDER BY name
SELECT ShipmentID FROM Shipment WHERE Manager IN (SELECT EmployeeID FROM Employee WHERE Name = "Phillip J. Fry")
SELECT ShipmentID FROM Shipment WHERE Manager IN (SELECT EmployeeID FROM Employee WHERE Name = "Phillip J Fry")
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = (SELECT PlanetID FROM Planet WHERE Name = "Mars")
SELECT ShipmentID FROM Shipment WHERE Planet = (SELECT PlanetID FROM Planet WHERE Name = "Mars") AND Manager = (SELECT EmployeeID FROM Employee WHERE Name = "Turanga Leela")
SELECT ShipmentID FROM Shipment WHERE Planet = (SELECT PlanetID FROM Planet WHERE Name = "Mars") AND Manager IN (SELECT EmployeeID FROM Employee WHERE Name = "Turanga Leela")
SELECT ShipmentID FROM Shipment WHERE Planet = (SELECT PlanetID FROM Planet WHERE Name = "Mars")
SELECT ShipmentID FROM Shipment WHERE Manager IN (SELECT EmployeeID FROM Has_Clearance WHERE Planet = (SELECT PlanetID FROM Planet WHERE Name = "Mars"))
SELECT planet.name FROM planet JOIN shipment ON planet.planetid = shipment.planet
SELECT count(*) FROM Shipment GROUP BY Planet
SELECT name FROM planet ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM Planet ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM Employee WHERE EmployeeID IN (SELECT Manager FROM Shipment)
SELECT count(*) FROM Shipment GROUP BY Manager
SELECT sum(weight) FROM package WHERE shipment IN (SELECT shipmentid FROM shipment WHERE planet = "Mars")
SELECT sum(weight) FROM package WHERE shipment IN (SELECT shipmentid FROM shipment WHERE planet = "Mars")
SELECT planet.name FROM planet JOIN shipment ON planet.planetid = shipment.planet
SELECT planet.name FROM planet JOIN shipment ON planet.planetid = shipment.planetid GROUP BY planet.name
SELECT name FROM planet WHERE planetid IN (SELECT planetid FROM shipment GROUP BY planetid HAVING sum(weight) > 30)
SELECT name FROM planet WHERE planetid IN (SELECT planetid FROM shipment WHERE weight > 30)
SELECT packagenumber FROM package WHERE sender = (SELECT employeeid FROM has_clearance WHERE employeeid = (SELECT employeeid FROM employee WHERE name = "Zapp Brannigan")) AND planet = (SELECT planetid FROM planet WHERE name = "Omicron Persei 8")
SELECT count(*) FROM package WHERE sender IN (SELECT employeeid FROM has_clearance WHERE planet IN (SELECT planetid FROM planet WHERE name = "Omicron Persei 8"))
SELECT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Zapp Brannigan") AND planet IN (SELECT planetid FROM planet WHERE name = "Omicron Persei 8")
SELECT count(*) FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = "Zapp Brannigan") AND planet IN (SELECT planetid FROM planet WHERE name = "Omicron Persei 8")
SELECT packagenumber FROM package WHERE weight BETWEEN 10 AND 30
SELECT packagenumber, weight FROM package WHERE shipmentid IN (SELECT shipmentid FROM shipment WHERE date BETWEEN 10 AND 30)
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employeeid FROM has_clearance)
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_Clearance WHERE Planet = "Mars")
SELECT name FROM Employee WHERE employeeid IN (SELECT employeeid FROM Has_Clearance WHERE planetid IN (SELECT planetid FROM Planet WHERE name = "Omega III"))
SELECT Name FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Has_Clearance WHERE Planet = "Omega III")
{"sql": "SELECT name FROM planet WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employeeid IN (SELECT employeeid FROM has_clearance WHERE planetid IN (SELECT planetid
{"sql": "SELECT Name FROM Planet WHERE PlanetID IN (SELECT PlanetID FROM Has_Clearance WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE EmployeeID IN (SELECT
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee)
SELECT Name FROM Employee WHERE Salary > 5000
SELECT count(*) FROM has_clearance WHERE employee NOT IN (SELECT employeeid FROM has_clearance)
SELECT count(*) FROM Has_Clearance WHERE Planet != (SELECT PlanetID FROM Planet WHERE Name = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title, Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title, Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT name, market_district FROM platform
SELECT platform_name FROM platform
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT platform_name FROM platform WHERE download_rank = 1
SELECT max(Rank_of_the_year) FROM player
SELECT max(rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name FROM player WHERE Player_name IN (SELECT Player_name FROM game_player WHERE Game_ID IN (SELECT Game_ID FROM game WHERE Title = "Super Mario World"))
SELECT Player_name FROM player WHERE Player_id IN (SELECT Player_id FROM game_player WHERE Game_id IN (SELECT Game_id FROM game WHERE Title = "Super Mario World"))
SELECT DISTINCT Developers FROM game_player WHERE College = "Auburn"
SELECT DISTINCT Developers FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE College = "Auburn college")
SELECT avg(Units_sold_Millions) FROM game_player WHERE player_id IN (SELECT player_id FROM player WHERE position = "Guard")
SELECT avg(Units_sold_Millions) FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE Position = "Guard")
SELECT Title, Platform_ID FROM game JOIN platform ON game.Platform_ID = platform.Platform_ID
SELECT Title, Platform_ID FROM game
SELECT Title FROM game WHERE Platform_ID IN (SELECT Platform_ID FROM platform WHERE Market_district IN ('Asia', 'USA'))
SELECT Title FROM game WHERE Platform_ID IN (SELECT Platform_ID FROM platform WHERE Market_district IN ('Asia', 'USA'))
SELECT Franchise FROM game GROUP BY Franchise
SELECT count(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT Title FROM game WHERE Game_ID IN (SELECT Game_ID FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE College = "Oklahoma") AND Player_ID IN (SELECT Player_ID FROM player WHERE College = "Auburn"))
SELECT Title FROM game WHERE Game_ID IN (SELECT Game_ID FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE College = "Oklahoma college" OR College = "Auburn college"))
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE Position = "Guard"))
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE Position = "Guard"))
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Press_ID FROM press WHERE Month_Profits_billion > 100000000
SELECT Name FROM press WHERE Month_Profits_billion > 100000000 OR Year_Profits_billion > 100000000
SELECT avg(month_profits_billion) FROM press GROUP BY year_profits_billion
SELECT avg(year_profits_billion) FROM press GROUP BY press_id
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) FROM author WHERE gender IN ('M', 'F')
SELECT gender FROM author GROUP BY gender
SELECT count(*) FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) FROM book GROUP BY Book_Series
SELECT count(*) FROM book GROUP BY Book_Series
SELECT Title, Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Title, Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Book_Series IN (SELECT Book_Series FROM book GROUP BY Book_Series HAVING (Sale_Amount > 1000 OR Sale_Amount < 500))
SELECT Book_Series FROM book WHERE Sale_Amount BETWEEN 1000 AND 500
SELECT Name FROM author WHERE Author_ID IN (SELECT Author_ID FROM book WHERE Book_Series IN ("MM", "LT"))
SELECT Name FROM author WHERE Author_ID IN (SELECT Author_ID FROM book WHERE Book_Series IN ("MM", "LT"))
SELECT Name, Age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT Name FROM author WHERE Author_ID IN (SELECT Author_ID FROM book GROUP BY Author_ID HAVING COUNT(*) > 1)
SELECT Name FROM author WHERE Author_ID IN (SELECT Author_ID FROM book GROUP BY Author_ID HAVING COUNT(*) > 1)
SELECT title, author.name, press.name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT Title, Author_ID, Press_ID FROM book ORDER BY Sale_Amount DESC LIMIT 3
SELECT name, sum(sale_amount) FROM book GROUP BY press_id
SELECT name, sum(sale_amount) FROM book GROUP BY press_id
SELECT count(*) FROM book WHERE Sale_Amount > 1000 GROUP BY Press_ID
SELECT name FROM press GROUP BY name HAVING count(*) > 1000
SELECT Name FROM author WHERE Author_ID IN (SELECT Author_ID FROM book ORDER BY Sale_Amount DESC LIMIT 1)
SELECT Author_ID FROM book ORDER BY Sale_Amount DESC LIMIT 1
SELECT Name, Gender FROM author WHERE Author_ID IN (SELECT Author_ID FROM book GROUP BY Author_ID ORDER BY count(*) DESC LIMIT 1)
SELECT author_name FROM book GROUP BY author_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID IN (SELECT Press_ID FROM press WHERE Name = "Accor"))
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID IN (SELECT Press_ID FROM press WHERE Name = "Accor"))
SELECT name FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)
SELECT name FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id = 4
SELECT author_name FROM Documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM Documents WHERE author_name = "Era Kerluke"
SELECT author_name, document_description FROM Documents
SELECT document_id FROM Documents WHERE author_name = "Bianka Cummings"
SELECT author_name, other_details FROM Documents WHERE document_name = "Travel to China"
SELECT author_name FROM Documents GROUP BY author_name
SELECT author_name FROM Documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM authors WHERE author_name IN (SELECT author_name FROM documents GROUP BY author_name HAVING count(*) >= 2)
SELECT count(*) FROM Business_Processes
SELECT next_process_id, process_name, process_description FROM Business_Processes WHERE process_id = 9
{"sql": "SELECT process_name FROM Business_Processes WHERE process_id = (SELECT next_process_id FROM Business_Processes WHERE process_id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE id = (SELECT id FROM Process_Outcomes WHERE
SELECT count(*) FROM Process_Outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes
SELECT count(*) FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = 1
SELECT count(*) FROM Staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_Processes
SELECT process_id FROM Documents_Processes WHERE process_id IN (SELECT process_id FROM Business_Processes WHERE process_name LIKE '%document%')
SELECT document_id FROM Documents WHERE process_id NOT IN (SELECT process_id FROM Documents_Processes)
SELECT process_id FROM Business_Processes WHERE document_id NOT IN (SELECT document_id FROM Documents)
SELECT process_outcome_description, process_status_description FROM Documents_Processes WHERE document_id = 0
SELECT process_name FROM Business_Processes WHERE document_id IN (SELECT document_id FROM Documents WHERE document_name = "Travel to Brazil")
SELECT process_id FROM Business_Processes GROUP BY process_id
SELECT count(*) FROM Documents_Processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id FROM Staff GROUP BY staff_id
SELECT staff_role_code FROM Ref_Staff_Roles GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id FROM Agencies
SELECT agency_id FROM Agencies
SELECT count(*) FROM clients
SELECT count(*) FROM Clients
SELECT client_id FROM clients
SELECT client_id FROM clients
SELECT agency_id FROM Clients GROUP BY agency_id
SELECT count(*) FROM clients GROUP BY agency_id
SELECT agency_id FROM clients GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id FROM clients GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id FROM agencies GROUP BY agency_id HAVING count(*) >= 2
SELECT agency_id FROM Agencies GROUP BY agency_id HAVING count(*) >= 2
SELECT agency_details FROM clients WHERE client_details LIKE '%Mac%'
SELECT agency_details FROM clients WHERE client_details LIKE '%Mac%'
SELECT client_details FROM clients JOIN agencies ON clients.agency_id = agencies.agency_id
SELECT client_id FROM clients GROUP BY client_id
SELECT sic_code, count(*) FROM clients GROUP BY sic_code
SELECT count(*) FROM clients GROUP BY sic_code
SELECT client_id FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT agency_id FROM clients WHERE client_id IN (SELECT client_id FROM clients GROUP BY client_id HAVING count(*) > 1)
SELECT agency_id FROM clients WHERE client_id IN (SELECT client_id FROM clients GROUP BY client_id)
SELECT agency_id FROM Agencies WHERE agency_id NOT IN (SELECT agency_id FROM Clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT invoice_id, invoice_status, invoice_details FROM Invoices WHERE client_id IN (SELECT client_id FROM Clients)
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT client_id FROM Invoices GROUP BY client_id
SELECT count(*) FROM Invoices GROUP BY client_id
SELECT client_id FROM Invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM clients GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM clients GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status FROM Invoices GROUP BY invoice_status
SELECT count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, client_id, agency_id FROM Invoices
SELECT invoice_status, invoice_details FROM Invoices JOIN Clients ON Invoices.client_id = Clients.client_id
SELECT meeting_type FROM meetings
SELECT meeting_type FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT meeting_outcome, purpose_of_meeting FROM meetings
SELECT payment_id FROM payments WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoice_status = 'Working')
SELECT payment_id, payment_details FROM payments WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoice_status = "Working")
SELECT invoice_id FROM Invoices WHERE invoice_status != 'Paid'
SELECT invoice_id, invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id FROM payments JOIN invoices ON payments.invoice_id = invoices.invoice_id
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id FROM payments ORDER BY invoice_id
SELECT DISTINCT invoice_id FROM payments
SELECT invoice_id FROM payments GROUP BY invoice_id
SELECT count(*) FROM payments GROUP BY invoice_id
SELECT invoice_id, invoice_status, invoice_details FROM Invoices ORDER BY count(*) DESC LIMIT 1
SELECT invoice_id, invoice_status, invoice_details FROM Invoices WHERE invoice_id IN (SELECT invoice_id FROM Payments GROUP BY invoice_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM Staff
SELECT count(*) FROM staff
SELECT agency_id FROM staff GROUP BY agency_id
SELECT agency_id FROM staff GROUP BY agency_id
SELECT agent_id FROM Staff GROUP BY agent_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id FROM staff GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM meetings GROUP BY meeting_outcome
SELECT count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id FROM meetings GROUP BY client_id
SELECT count(*) FROM meetings GROUP BY client_id
SELECT meeting_type FROM meetings GROUP BY client_id
SELECT count(*) FROM meetings GROUP BY meeting_type
SELECT meeting_id, meeting_outcome, meeting_type, client_id FROM meetings
SELECT meeting_id, meeting_outcome, meeting_type, client_id FROM meetings
SELECT meeting_id FROM Meetings GROUP BY meeting_id
SELECT count(*) FROM staff_in_meetings GROUP BY meeting_id
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff_in_meetings
SELECT count(*) FROM staff_in_meetings WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT client_id FROM meetings OR SELECT client_id FROM invoices
SELECT client_id FROM meetings OR client_id FROM invoices
SELECT staff_id FROM Staff_in_Meetings WHERE staff_id IN (SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id HAVING count(*) >= 1) AND staff_details LIKE 's'
SELECT staff_id FROM Staff_in_Meetings WHERE staff_id IN (SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id HAVING count(*) >= 1)
SELECT client_id FROM meetings WHERE client_id IN (SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 1)
SELECT client_id FROM meetings WHERE client_id IN (SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) = 1)
SELECT start_date_time, end_date_time, client_id, staff_id FROM meetings JOIN staff_in_meetings ON meetings.meeting_id = staff_in_meetings.meeting_id JOIN clients ON meetings.client_id = clients.client_id JOIN staff ON staff.staff_id = staff_in_meetings.staff_id
SELECT start_date_time, end_date_time FROM meetings JOIN staff_in_meetings ON meetings.meeting_id = staff_in_meetings.meeting_id JOIN staff ON staff_in_meetings.staff_id = staff.staff_id
