SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT DISTINCT name FROM club ORDER BY name
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
SELECT Country FROM player GROUP BY Country HAVING Wins_count > 2
SELECT T2.Name, T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING count(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT Name FROM player WHERE Club_ID = (SELECT Club_ID FROM club WHERE Manager = "Sam Allardyce")
SELECT Name FROM player WHERE Club_ID = (SELECT Club_ID FROM club WHERE Manager = "Sam Allardyce")
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT DISTINCT Manufacturer, COUNT(*) FROM club GROUP BY Manufacturer
SELECT count(*), manufacturer FROM club GROUP BY manufacturer
SELECT DISTINCT Manufacturer FROM club
SELECT DISTINCT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT DISTINCT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT customer_id, customer_first_name, customer_last_name FROM customers WHERE customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING count(*) > 2) INTERSECT SELECT customer_id, customer_first_name, customer_last_name FROM customers WHERE customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING count(*) > 3)
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2
SELECT order_id, count(*), status FROM order_items GROUP BY order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders
SELECT min(date_order_placed), T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) < 2)
SELECT order_id, date_order_placed FROM orders
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT product_id, product_name, product_price FROM products GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) LIMIT 1
SELECT min(product_price), sum(product_price) FROM products
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code, count(*) FROM customers GROUP BY gender_code
SELECT count(*), gender_code FROM products GROUP BY gender_code
SELECT count(*), gender_code FROM orders GROUP BY gender_code
SELECT count(*), gender_code FROM orders GROUP BY gender_code
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM customers
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT order_item_status_code, shipment_tracking_number FROM shipments
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = "ordered"
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id WHERE T2.shipment_status_code = 'Shipped'
SELECT product_name, product_color FROM products WHERE product_id IN (SELECT product_id FROM shipments)
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customers AS T2 ON T1.product_id = T2.customer_id WHERE T2.gender_code = "female"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT sum(total_cost), order_id, date_order_placed FROM orders
SELECT order_id, date_order_placed, sum(product_price) FROM orders GROUP BY order_id
SELECT count(*) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
{"sql": "SELECT count(DISTINCT order_item_status_code FROM order_items")"}
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_id, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_id) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM customers WHERE country = "USA"
SELECT address_line_1, town_city, county FROM customers WHERE country = "United States"
SELECT DISTINCT T1.customer_first_name, T1.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = "female" GROUP BY email_address, town_city, county ORDER BY count(*) DESC LIMIT 10
SELECT T2.date_order_placed FROM customer_payment_methods AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT date_order_placed FROM orders WHERE customer_id IN (SELECT customer_id FROM customer_payment_methods GROUP BY customer_id HAVING count(*) >= 2)
SELECT DISTINCT order_status_code FROM orders WHERE order_status_code NOT IN (SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1)
SELECT min(order_status_code FROM orders GROUP BY order_status_code
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT invoice_date, invoice_number FROM shipments GROUP BY invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM INVOICES AS T1 JOIN SHIPMENTS AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price!= (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE "%bbc%"
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT Director_ID FROM program GROUP BY Director_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T1.age FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*), T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM program)
SELECT T2.Name FROM program AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID WHERE T1.Title = "Dracula"
SELECT T1.name, T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT name FROM director WHERE age < 40 INTERSECT SELECT name FROM director WHERE age > 60
SELECT Channel_ID, Name FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM director_admin WHERE Name = "Hank Baskett")
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, original_airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation!= "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT DISTINCT affiliation, count(*) FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT City, Station_name FROM city_channel ORDER BY Station_name
SELECT transmitter, city_channel_id FROM radio
SELECT transmitter, station_name FROM radio ORDER BY ERP_kW DESC
SELECT transmitter, count(*) FROM radio GROUP BY transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT DISTINCT T1.name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), driver_id FROM vehicle_driver GROUP BY driver_id HAVING count(*) >= 10
SELECT Driver_ID, count(*) FROM vehicle_driver GROUP BY Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT min(Vehicle_ID) FROM vehicle_driver
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT top_speed, power FROM vehicle WHERE build_year = 1996
SELECT TOP (1) * FROM vehicle WHERE build_year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle_driver WHERE build_year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE YEAR(Build_Year) = 2012
SELECT count(*) FROM vehicle_driver WHERE racing_series = 'NASCAR'
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver
SELECT avg(top_speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T1.name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID IN (SELECT Driver_ID FROM vehicle_driver) OR Builder = 'Ziyang'
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID = 2 UNION SELECT Vehicle_ID FROM vehicle_driver
SELECT Vehicle_ID, Model FROM vehicle_driver GROUP BY Vehicle_ID HAVING count(*) > 2 UNION SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID = (SELECT Driver_ID FROM vehicle_driver GROUP BY Driver_ID HAVING count(*) > 2) AND Name = 'Jeff Gordon'
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID > 2 OR Driver_ID = 1
SELECT count(*) FROM vehicle
SELECT count(*) FROM vehicle
SELECT DISTINCT Name FROM driver ORDER BY Name
SELECT DISTINCT Name FROM driver ORDER BY Name
SELECT count(*), T1.Racing_Series FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Racing_Series
SELECT COUNT(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Vehicle_ID = 'DJ1'
SELECT T2.Name, T2.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Model = 'DJ1'
SELECT count(*) FROM vehicle_driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM vehicle_driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT Exam_Name, Exam_Date FROM exams WHERE Subject_Code!= "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, count(*) FROM questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers ORDER BY count(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT DISTINCT T1.First_Name, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.First_Name, T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT DISTINCT T1.Assessment FROM Student_Assessments AS T1 JOIN Student_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID
SELECT Exam_Name FROM Exams GROUP BY Exam_Name ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING count(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT DISTINCT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT DISTINCT T1.Last_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender_MFU = "F" OR T1.Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT DISTINCT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM Student_Answers
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products
SELECT count(*) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price LIMIT 1
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
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
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
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
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
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = 1
SELECT order_id, order_date, order_status_code FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id WHERE T1.customer_name = "Jeromy"
SELECT customer_name, count(*), customer_id FROM customer_orders GROUP BY customer_id
SELECT customer_name, customer_id, count(*) FROM customers GROUP BY customer_id
SELECT customer_id, customer_name, customer_phone, customer_email FROM customers ORDER BY order_count DESC LIMIT 1
SELECT customer_id, name, phone, email FROM customers ORDER BY order_status_code DESC LIMIT 1
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT count(*), order_status_code FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_name = "Monitor"
SELECT count(*) FROM products
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = 'Monitor'
SELECT count(*) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT order_date, order_id FROM order_items WHERE order_quantity > 6
SELECT order_id, order_date FROM Order_items WHERE order_quantity > 6 OR count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT DISTINCT name FROM building ORDER BY number_of_stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year!= 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year!= 1980
SELECT avg(Population) FROM region
SELECT avg(population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT DISTINCT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T2.Name, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_ID = T2.region_ID
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT DISTINCT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.name HAVING count(*) > 1
SELECT DISTINCT T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1
SELECT Capital FROM region ORDER BY Area DESC LIMIT 1
SELECT T2.Address, T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT Number_of_Stories FROM building WHERE Region_ID = (SELECT region_id FROM region WHERE name = "Abruzzo")
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building ORDER BY Completed_Year DESC LIMIT 1
SELECT Name FROM region WHERE region_id NOT IN (SELECT building_id FROM building)
SELECT Name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM CHANNELS ORDER BY Channel_Details
SELECT Channel_Details FROM CHANNELS ORDER BY Channel_Details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customer_ID = "Hardy Kutch"
SELECT service_details FROM services GROUP BY service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT * FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT * FROM Customers WHERE Customer_ID NOT IN (SELECT Customer_ID FROM Customers_and_Services)
SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM customers_and_services GROUP BY customer_id ORDER BY count(*) ASC LIMIT 1)
SELECT DISTINCT T2.customer_details FROM Customers_and_Services AS T1 JOIN Customers AS T2 ON T1.customers_and_services_details = T2.customer_id GROUP BY T1.service_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details FROM customers_and_services UNION SELECT count(DISTINCT service_details FROM services)
SELECT count(*) FROM customers_and_services
SELECT * FROM Customers WHERE Customer_Details LIKE "%Kutch%"
SELECT * FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_id = "Hardy Kutch" OR T1.service_details = "good"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customer_ID = "Hardy Kutch" AND T1.Service_Details = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_id = "Hardy Kutch" AND T1.service_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.service_id = T3.service_id WHERE T3.customer_id = "Hardy Kutch" AND T1.service_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.service_id = 15 ij
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T1.service_id = T3.service_id WHERE T3.channel_id = 15 ij
SELECT * FROM customer_interactions WHERE Status_Code = "Stuck" INTERSECT SELECT * FROM customer_interactions WHERE Services_and_Channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services_and_channels_details AS T3 ON T2.service_id = T3.service_id WHERE T3.services_and_channels_details = "bad" AND T1.customer_details = "Stuck"
SELECT count(*) FROM integration_platforms
SELECT count(*) FROM Integration_platforms WHERE Integration_platform_details LIKE "%Success%"
SELECT * FROM Integration_Platform WHERE Integration_Platform_ID IN (SELECT Customer_Interaction_ID FROM Customer_Interactions WHERE Status_Code = 'Failed')
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN integration_platforms AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code, count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.services_and_channels_details = "unsatisfied"
SELECT service_details FROM customers_and_services WHERE status_code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, COUNT(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost), max(Annual_fuel_cost), avg(Annual_fuel_cost) FROM Vehicles
SELECT name, model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM customers
SELECT name, age, membership_credit FROM customers
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(membership_credit) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM discount
SELECT * FROM discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name ORDER BY sum(T2.total_hours) DESC
SELECT name FROM discount GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM discount GROUP BY discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(total_hours) > 30
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT student_id, bio_data FROM students GROUP BY student_id HAVING count(*) >= 2 UNION SELECT student_id FROM detention GROUP BY student_id HAVING count(*) < 2
SELECT student_id, bio_data FROM students GROUP BY student_id HAVING count(*) >= 2 UNION SELECT student_id FROM detention GROUP BY student_id HAVING count(*) < 2
SELECT teacher_details FROM classes WHERE class_details LIKE '%data%' EXCEPT SELECT teacher_details FROM classes WHERE class_details LIKE '%net%'
SELECT teacher_details FROM Classes WHERE class_details LIKE '%data%' EXCEPT SELECT teacher_details FROM Classes WHERE class_details LIKE '%net%'
SELECT bio_data FROM students WHERE student_id NOT IN (SELECT student_id FROM detention UNION SELECT student_id FROM student_loans)
SELECT student_details FROM students WHERE student_id NOT IN (SELECT student_id FROM detention UNION SELECT student_id FROM student_loans)
SELECT amount_of_loan, date_of_loan FROM Student_Loans WHERE student_id IN (SELECT student_id FROM Achievements GROUP BY student_id HAVING count(*) >= 2)
SELECT amount_of_loan, date_of_loan FROM Student_Loans GROUP BY student_id HAVING count(*) >= 2
SELECT teacher_details, teacher_id FROM classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_details, teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM detention
SELECT DISTINCT detention_summary FROM detention
SELECT student_details, address_type_description FROM Students
SELECT student_details, address_type_description FROM students
SELECT student_details, bio_data FROM students
SELECT student_details, bio_data FROM students
SELECT bio_data, date_of_transcript FROM students
SELECT bio_data, date_of_transcript FROM students
SELECT count(*), behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_details FROM behaviour_monitoring AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3
SELECT student_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT * FROM Student_Events
SELECT T1.bio_data, T1.student_details, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*), event_type_code, event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT event_type_code, count(*), event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_description FROM achievements
SELECT achievement_details, achievement_type_description FROM achievements
SELECT count(*) FROM students AS T1 JOIN students_events AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM achievements)
SELECT count(*) FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM behaviour_monitoring)
SELECT date_of_transcript, transcript_details FROM transcripts
SELECT date_of_transcript, transcript_details FROM transcripts
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT datetime_detention_start, datetime_detention_end FROM detention
SELECT * FROM students WHERE student_details LIKE "%Suite%"
SELECT student_details FROM students WHERE student_details LIKE "%Suite%"
SELECT T1.teacher_details, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.teacher_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*), teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id, count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, count(*) FROM Transcripts GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, student_details FROM Classes GROUP BY student_id HAVING count(*) = 2
SELECT student_id, student_details FROM Classes GROUP BY student_id HAVING count(*) = 2
SELECT min(detention_type_code) FROM detention
SELECT detention_type_code FROM detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT student_details FROM student_loans WHERE amount_of_loan > (SELECT avg(amount_of_loan) FROM student_loans)
SELECT * FROM student_loans WHERE amount_of_loan > (SELECT avg(amount_of_loan) FROM student_loans)
SELECT min(date_of_loan) FROM Student_Loans
SELECT min(date_of_loan) FROM Student_Loans
SELECT student_details FROM student_loans ORDER BY amount_of_loan LIMIT 1
SELECT bio_data FROM students ORDER BY student_loan_id ASC LIMIT 1
SELECT date_of_transcript FROM Student_Loans WHERE amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1
SELECT teacher_details FROM TRANSCRIPTS AS T1 JOIN TEACHERS AS T2 ON T1.student_id = T2.teacher_id ORDER BY date_of_transcript LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Transcripts AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id = (SELECT min(student_id) FROM Transcripts)
SELECT sum(amount_of_loan), student_id FROM Student_Loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT count(*), T1.student_id, T1.bio_data FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT student_id, bio_data, count(*) FROM students GROUP BY student_id
SELECT count(*) FROM detention
SELECT count(*) FROM detention
SELECT address_type_code, address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code, address_type_description FROM addresses GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT * FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT * FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT date_from, date_to FROM students_addresses WHERE student_id IN (SELECT student_id FROM transcripts GROUP BY student_id HAVING count(*) = 2)
SELECT date_from, date_to FROM Students_addresses WHERE student_id IN (SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2)
SELECT datetime_detention_start FROM detention
SELECT datetime_detention_start FROM detention
SELECT DISTINCT name FROM author
SELECT DISTINCT name FROM author
SELECT name, address FROM client
SELECT name, address FROM client
SELECT title, isbn, saleprice FROM book
SELECT title, isbn, saleprice FROM book
SELECT count(*) FROM Book
SELECT count(*) FROM book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT name, address FROM client ORDER BY name
SELECT name, address FROM client ORDER BY name
SELECT title, author FROM Book
SELECT T2.Title, T1.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN
SELECT IdClient, Name FROM Client
SELECT idorder, name FROM orders
SELECT T2.Name, count(*) FROM Books ORDER BY T1.ISBN
SELECT T1.name, count(*) FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT ISBN, count(*) FROM Books ORDER BY ISBN
SELECT ISBN, count(*) FROM Books ORDER BY ISBN
SELECT ISBN, sum(amount) FROM Books_order GROUP BY ISBN
SELECT ISBN, sum(amount) FROM Books_order GROUP BY ISBN
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY sum(amount) DESC LIMIT 1
SELECT title, purchaseprice FROM Book ORDER BY amount DESC LIMIT 1
SELECT title, purchaseprice FROM book ORDER BY amount DESC LIMIT 1
SELECT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT DISTINCT title FROM Books ORDER BY dateexped
SELECT DISTINCT T1.Name FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.authorid ORDER BY T2.idorder
SELECT DISTINCT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.author_id
SELECT T2.Name, count(*) FROM Books ORDER BY T1.IdOrder
SELECT T1.name, count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idorder ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T1.idauthor
SELECT T2.name, sum(T1.amount) FROM Books_order AS T1 JOIN Books AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.Name FROM Author AS T1 JOIN Books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T1.name ORDER BY sum(amount) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.author_id GROUP BY T1.idauthor ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(saleprice), min(saleprice) FROM book
SELECT max(saleprice), min(saleprice) FROM book
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT max(saleprice - purchaseprice) FROM book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM Book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT DISTINCT title FROM book ORDER BY saleprice
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT DISTINCT title FROM book ORDER BY purchaseprice DESC LIMIT 10
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(salePrice) FROM Book WHERE author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name = "Plato"
SELECT salePrice FROM Book WHERE Author = "Plato"
SELECT title FROM book WHERE author = 'George Orwell' AND saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT T2.Title FROM Books ORDER BY PurchasePrice LIMIT 1
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.authorid WHERE T1.name = "Plato" AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT Author FROM Book WHERE Title = "Pride and Prejudice"
SELECT T2.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T1.Title = "Pride and Prejudice"
SELECT title FROM book WHERE author LIKE "%Plato%"
SELECT T1.Title FROM BOOK AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE "%Plato%"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_Book AS T3 ON T1.idorder = T3.idorder JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.idorder = T3.idbook JOIN author_Book AS T4 ON T3.idbook = T4.idbook AND T3.author = T4.author WHERE T3.name = 'Pride and Prejudice'
SELECT IdOrder FROM Books ORDER BY Title LIKE "%Pride and Prejudice%" INTERSECT SELECT IdOrder FROM Books ORDER BY Title LIKE "%The Little Prince%"
SELECT idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.idorder = T3.idauthor JOIN author_Book AS T4 ON T3.idauthor = T4.idauthor JOIN books_order AS T5 ON T5.idorder = T1.idorder JOIN book AS T6 ON T5.idbook = T6.idbook WHERE T3.name = "Pride and Prejudice" INTERSECT SELECT idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_Book AS T3 ON T2.idorder = T3.idauthor JOIN author AS T4 ON T3.idauthor = T4.idauthor JOIN books_order AS T5 ON T5.idorder = T1.idorder JOIN book AS T6 ON T5.idbook = T6.idbook INTERSECT SELECT idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_Book AS T3 ON T2.idorder = T3.idauthor JOIN author AS T4 ON T3.idauthor = T4.idauthor JOIN books_order AS T5 ON T5.idorder = T1.idorder JOIN book AS T6 ON T5.idbook = T6.idbook WHERE T6.title = "The Little Prince"
SELECT ISBN FROM Books ORDER BY idorder, name WHERE idclient = 'Peter Doe' INTERSECT SELECT ISBN FROM Books ORDER BY idorder, name WHERE idclient = 'James Smith'
SELECT ISBN FROM BOOK ORDER BY name LIKE 'Peter%' OR name LIKE 'James%'
SELECT title FROM book WHERE author = 'Peter Doe' EXCEPT SELECT title FROM book WHERE author = 'James Smith'
SELECT title FROM books ORDER BY purchaseprice DESC LIMIT 1 WHERE idclient!= (SELECT idclient FROM orders WHERE name = 'Peter Doe')
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.idorder = "Pride and Prejudice"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_order AS T3 ON T2.IdOrder = T3.IdOrder JOIN Book AS T4 ON T3.ISBN = T4.ISBN WHERE T4.Title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, release FROM book
SELECT max(chapters), min(chapters) FROM book
SELECT Title FROM book WHERE Title!= "Poet"
SELECT avg(Rating) FROM review
SELECT Title, Rating FROM book
SELECT max(chapters) FROM book
SELECT rank FROM book ORDER BY pages
SELECT title FROM book ORDER BY rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE, COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT DISTINCT Title FROM book ORDER BY Rating ASC
SELECT Title, Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE chapters > 75 INTERSECT SELECT TYPE FROM book WHERE chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE, title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT DISTINCT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT * FROM customer ORDER BY LEVEL_OF_Membership
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT max(Card_Credit) FROM customer
SELECT * FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM customer WHERE card_credit < 50 INTERSECT SELECT nationality FROM customer WHERE card_credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Dish_Name ORDER BY SUM(quantity) DESC
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY sum(T2.quantity) DESC
SELECT T1.Name, sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T1.Name, sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT * FROM customer_order WHERE quantity > 1
SELECT name FROM customer WHERE quantity > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT DISTINCT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name, nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.club_name, T2.member_id FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id
SELECT Team_Leader FROM club WHERE Overall_Ranking > 100
SELECT T2.Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Year_Join < 2018
SELECT Team_Leader FROM club WHERE Club_Name = "Houston"
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(age) FROM club_leader
SELECT club_name FROM club WHERE club_name LIKE "%state%"
SELECT DISTINCT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT DISTINCT collection_subset_name FROM collection_subsets
SELECT collection_subset_details FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT * FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT DISTINCT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE owner = "Marlin"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM document_objects WHERE description = 'Braeden Collection'
SELECT OWNER FROM document_objects WHERE description = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE OWNER = 'Marlin')
SELECT OWNER FROM Document_Objects WHERE OWNER = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T1.owner = "Marlin"
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Documents_in_Collections AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T1.Owner = "Marlin"
SELECT document_object_id FROM document_objects EXCEPT SELECT document_object_id FROM document_objects WHERE document_object_id IN (SELECT document_object_id FROM document_objects WHERE parent_document_object_id = document_object_id)
SELECT Document_Object_ID FROM Document_Objects EXCEPT SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID!= NULL
SELECT Document_Object_ID, count(*) FROM Document_Objects GROUP BY Document_Object_ID
SELECT count(*), parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id
SELECT Collection_Name FROM Collections;
SELECT DISTINCT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT collection_name FROM collections WHERE collection_name = 'Nice'
SELECT T2.Collection_Name FROM Document_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID WHERE T1.Collection_Name = "Nice"
SELECT Collection_Name FROM Collections EXCEPT SELECT Collection_Name FROM Collections WHERE Collection_ID IN (SELECT Collection_ID FROM Collection_Subset_Members)
SELECT Collection_Name FROM Collections EXCEPT SELECT Collection_Name FROM Collections WHERE Collection_ID IN (SELECT Collection_ID FROM Collection_Subsets GROUP BY Collection_ID HAVING count(*) > 1)
SELECT document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN documents_in_collections AS T3 ON T1.document_object_id = T3.document_object_id JOIN collection_subset_members AS T4 ON T3.collection_id = T4.collection_id GROUP BY T1.document_object_id HAVING count(*) > 1
SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID HAVING count(*) > 1
SELECT count(*) FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collection_subsets WHERE collection_name = "Best"
SELECT Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Owner = "Ransom"
SELECT document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.related_document_object_id = T3.collection_id WHERE T3.collection_name = "Ransom"
SELECT collection_subset_id, count(*), collection_name FROM collection_subsets GROUP BY collection_subset_id
SELECT collection_subset_id, count(*), collection_subset_name FROM collection_subsets GROUP BY collection_subset_id
SELECT document_object_id, count(*) FROM document_objects GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), document_object_id FROM Document_subsets GROUP BY document_object_id
SELECT document_object_id, count(*) FROM document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id, count(*) FROM document_subset_members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT document_object_id, count(*) FROM document_subset_members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT OWNER FROM Document_Objects WHERE Owner = "Braeden"
SELECT DISTINCT OWNER FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Subset_Members WHERE Related_Document_Object_ID IN (SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Braeden") )
SELECT DISTINCT T2.document_subset_name FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = "Braeden"
SELECT DISTINCT document_subset_name FROM document_subsets WHERE owner = 'Braeden'
SELECT document_subset_id, count(DISTINCT document_object_id), document_subset_name FROM Document_Subset_Members GROUP BY document_subset_id
SELECT document_subset_id, document_subset_name, count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_subset_id, document_subset_name, count(*) FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = 'Best for 2000'
SELECT document_object_id FROM document_subset_members WHERE document_subset_id = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT T2.document_subset_name, T1.document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id
SELECT DISTINCT T1.document_subset_name, T1.document_subset_id FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE Owner = 'Ransom '
SELECT collection_name FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id WHERE OWNER = 'Ransom'
SELECT count(DISTINCT collection_id), collection_id FROM documents_in_collections
SELECT count(DISTINCT collection_id) FROM documents_in_collections
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Document_Object_ID FROM Documents_in_Collections WHERE Collection_Name = "Best")
SELECT T2.collection_name, T1.collection_id, count(*) FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name, T1.collection_id, count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best for 2000"
SELECT DISTINCT document_object_id FROM document_subsets WHERE document_subset_id IN (SELECT document_subset_id FROM collection_subsets WHERE collection_subset_name = 'Best for 2000')
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" INTERSECT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" AND T1.collection_id NOT IN (SELECT collection_id FROM collection_subsets WHERE collection_name = "Best" )
SELECT DISTINCT document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = "Best" INTERSECT SELECT DISTINCT document_object_id FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = "Best for 2000"
SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.collection_subset_name = "Best for 2000"
SELECT DISTINCT document_object_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000' OR collection_subset_name = 'Best')
SELECT collection_name FROM collections WHERE collection_name = "Best"
SELECT collection_name FROM collections WHERE collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T3.collection_id = T2.related_collection_id WHERE T3.collection_name = "Best"
SELECT * FROM Collection_Subsets WHERE Collection_Subset_Name = 'Best'
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
SELECT voice_sound_quality FROM performance_score WHERE name = "The Balkan Girls" AND language = "english"
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo), language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
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
SELECT latitude, longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = 'Pennsylvania'
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = "Canada"
SELECT count(*) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE country = "Canada"
SELECT city_name FROM city ORDER BY latitude
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT state, count(*) FROM city GROUP BY state
SELECT count(*), state FROM city GROUP BY state
SELECT country, count(*) FROM city GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT Fname, Lname FROM student WHERE state = "MD"
SELECT Fname, Lname FROM Student WHERE city_code = "MD"
SELECT count(*) FROM student WHERE country = "China"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT Fname, Major FROM student WHERE city_code = "Baltimore"
SELECT Fname, Major FROM student WHERE city_code = "Baltimore"
SELECT count(*), country FROM city GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT state FROM student GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT city_name FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code HAVING count(*) >= 3)
SELECT city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT state FROM student GROUP BY state HAVING count(*) > 5
SELECT state FROM city WHERE state > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE city_code!= 'USA'
SELECT StuID FROM student WHERE sex = "F" AND state = "PA"
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' AND country!= 'USA'
SELECT StuID FROM STUDENT WHERE sex = "M" EXCEPT SELECT StuID FROM STUDENT WHERE country = "USA"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' AND T1.city1_code = 'Newark'
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city_code FROM city ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code FROM direct_distance GROUP BY city1_code HAVING sum(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city WHERE distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(distance) FROM direct_distance WHERE city1_code!= 'BAL'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name!= 'Boston
SELECT avg(distance) FROM direct_distance WHERE city1_code!= 'BOSTON'
SELECT city_name FROM city ORDER BY distance LIMIT 1 WHERE city_code = "CHI"
SELECT city_name FROM city WHERE city_code = "CHI"
SELECT city_name FROM city ORDER BY distance DESC LIMIT 1
SELECT city_name FROM city ORDER BY distance FROM direct_distance WHERE city1_code = 'Boston'
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_name, avg(distance) FROM city GROUP BY city_name
SELECT city_name, avg(distance) FROM direct_distance GROUP BY city_code
SELECT min(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.fname = "Linda" AND T1.lname = "Smith" AND T1.fname = "Tracy" AND T1.lname = "Kim"
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = "Linda" INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = "Tracy"
SELECT Fname, Lname FROM student WHERE city_code = "Linda"
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Linda Smith" ORDER BY T2.distance DESC LIMIT 1
SELECT city FROM student WHERE Fname = "Linda"
SELECT state FROM student WHERE Fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT * FROM reserves WHERE sid = 1
SELECT DISTINCT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT * FROM reserves WHERE bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT DISTINCT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 'sid'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age!= (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > 7
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT sid, name FROM reserves GROUP BY sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE color = "red" OR color = "blue"
SELECT sid FROM reserves WHERE color = "red" OR color = "blue"
SELECT sid, name FROM sailors WHERE color = "red" OR color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM reserves WHERE color = "red" INTERSECT SELECT sid FROM reserves WHERE color = "blue"
SELECT sid FROM reserves WHERE color = "red" INTERSECT SELECT sid FROM reserves WHERE color = "blue"
SELECT sid, name FROM reserves WHERE color = 'red' INTERSECT SELECT sid, name FROM reserves WHERE color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' INTERSECT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = null
SELECT name, sid FROM sailors EXCEPT SELECT sid, bid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 103
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 103
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
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*), T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50
SELECT count(*), T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T1.bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*), T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 1 GROUP BY T1.sid
SELECT count(*), T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 1
SELECT avg(T2.rating), avg(T1.age) FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red"
SELECT T1.rating, avg(T2.age) FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red"
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = "red"
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM reserves WHERE color = 'red')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM reserves WHERE color = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "Melon"
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = "Melon"
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price LIMIT 1
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT DISTINCT Name FROM store ORDER BY Date_Opened
SELECT DISTINCT Name FROM store ORDER BY Date_Opened
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name, parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(*), Neighborhood FROM store GROUP BY Neighborhood
SELECT Neighborhood FROM store GROUP BY Neighborhood
SELECT T2.Name, COUNT(*) FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Store_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T1.Quantity FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Quantity DESC LIMIT 1
SELECT count(*) FROM headphone AS T1 JOIN stock AS T2 ON T1.headphone_id = T2.headphone_id WHERE T2.store_id = (SELECT store_id FROM store WHERE name = "Woodman")
SELECT sum(Quantity) FROM stock WHERE Store_ID = (SELECT Store_ID FROM store WHERE Name = "Woodman")
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE title LIKE '%NAACL 2000%'
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year = 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Columbia University" AND T1.year = 2009
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id = "Harvard University"
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Harvard University"
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT title, paper_id FROM paper WHERE author_id = 1
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford" INTERSECT SELECT title, paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia"
SELECT t1.title, t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = "Mckeown" AND t3.email = "kathleen" AND t3.author_id = (SELECT author_id FROM author_list WHERE name = "Rambow", "Owen")
SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = 4 AND T1.name = "Kathleen" INTERSECT SELECT T2.paper_id, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = 4 AND T1.name = "Owen"
SELECT title, paper_id FROM paper WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE name = 'Mckeown')
SELECT title, paper_id FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Mckeown") EXCEPT SELECT title, paper_id FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Rambow")
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown" OR name = "Kathleen" OR name = "Rambow" OR name = "Owen")
SELECT title, paper_id FROM paper WHERE author_id IN (SELECT author_id FROM author_list WHERE name = "Mckeown" OR name = "Kathleen" OR name = "Rambow")
SELECT name, count(*) FROM author_list GROUP BY author_id ORDER BY count(*) DESC
SELECT count(*), author_id FROM author_list GROUP BY author_id ORDER BY count(*)
SELECT count(*) FROM paper GROUP BY affiliation_id ORDER BY count(*) ASC
SELECT name FROM affiliation ORDER BY count(*)
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT DISTINCT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = "A00-1002"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = "A00-1002"
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "D12-1027"
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT paper_id, count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown, Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T2.name = "Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = (SELECT T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = "McKeown, Kathleen")
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T2.email = "kathleen"
SELECT T2.name, count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name, count(*) FROM author GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = (SELECT author_id FROM author_list WHERE name = "McKeown" INTERSECT SELECT author_id FROM author_list WHERE name = "Kathleen")
SELECT venue, YEAR FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown" AND T3.email = "kathleen"
SELECT venue, YEAR FROM paper WHERE affiliation_id = 2
SELECT venue, YEAR FROM paper WHERE affiliation_id = (SELECT affiliation_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Columbia University")
SELECT author_id FROM paper WHERE YEAR = 2009
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE YEAR = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Columbia University') AND YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Columbia University') OR YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Stanford University' AND YEAR BETWEEN 2000 AND 2009)
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = "Stanford University") AND YEAR >= 2000 AND YEAR <= 2009
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown" AND T3.title = "McKeown"
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown, Kathleen"
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T2.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE "%China%" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T1.venue = "Conference 1" OR T1.venue = "Conference 2" OR T1.venue = "Conference 3" GROUP BY T1.year
SELECT count(*), venue, YEAR FROM paper GROUP BY venue, YEAR
SELECT count(*), affiliation_id FROM paper GROUP BY affiliation_id
SELECT count(*), affiliation_id FROM author_list GROUP BY affiliation_id
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T2.cited_paper_id = NULL
SELECT count(*) FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.citations <= 50
SELECT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T1.year = 2009 INTERSECT SELECT DISTINCT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.venue = "NAACL" INTERSECT SELECT DISTINCT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.venue = "ACL"
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 INTERSECT SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(DISTINCT YEAR) FROM conference
SELECT min(year) FROM conference
SELECT min(Year) FROM conference
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, LOCATION, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_name
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age), min(age) FROM staff
SELECT conference_name FROM conference_participation WHERE institution_id IN (SELECT institution_id FROM institution WHERE nationality = 'Canada')
SELECT T1Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT DISTINCT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT DISTINCT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference_participation WHERE role = 'ACL') INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'Naccl')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id = (SELECT conference_id FROM conference WHERE conference_name = "NACCL") INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id = (SELECT conference_id FROM conference WHERE conference_name = "ACL")
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year >= 2003 AND T2.year <= 2004
SELECT conference_name, YEAR, count(*) FROM conference GROUP BY conference_name
SELECT T1.Conference_Name, T1.Year, COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT Conference_Name FROM conference_participation GROUP BY Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, LOCATION FROM institution WHERE institution_id NOT IN (SELECT staff_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name, LOCATION FROM institution EXCEPT SELECT T1.institution_name, T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.institution_id WHERE YEAR = 2004
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM pilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT pilot_name FROM pilotskills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT plane_name FROM pilot_skills) FROM pilot_skills
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub'
SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub'
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Smith"
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT DISTINCT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT DISTINCT location FROM hangar
SELECT DISTINCT location FROM hangar
SELECT DISTINCT plane_name FROM pilot_skills
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 UNION SELECT count(*) FROM pilot_skills WHERE age < 30
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" AND T1.age > 35 INTERSECT SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "F-14 Fighter" AND T1.age < 30
SELECT pilot_name, age FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "B-52 Bomber"
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "B-52 Bomber"
SELECT avg(age), min(age) FROM pilotskills
SELECT avg(age), min(age) FROM pilotskills
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT plane_name, pilot_name FROM pilotskills ORDER BY plane_name
SELECT plane_name, max(age) FROM pilot_skills GROUP BY plane_name
SELECT DISTINCT plane_name, pilot_name FROM pilot_skills
SELECT max(age), pilot_name FROM pilotskills GROUP BY pilot_name
SELECT DISTINCT pilot_name, max(age) FROM pilotskills
SELECT count(*), avg(age), LOCATION FROM pilotskills GROUP BY LOCATION
SELECT DISTINCT location, count(*), avg(age) FROM pilotskills GROUP BY location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT DISTINCT T1.plane_name, COUNT(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) < 35
SELECT location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT location FROM hangar WHERE plane_name IN (SELECT plane_name FROM pilotskills ORDER BY age LIMIT 1)
SELECT T1.plane_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14' AND T1.age < T2.age
SELECT DISTINCT plane_name FROM plane_name WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub')
SELECT count(*) FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT District_ID, Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district
SELECT sum(population) FROM district WHERE area_km > 3
SELECT District_ID, Name, Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website LIKE 'gov%'
SELECT District_ID, Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT name, speach_title FROM spokesman
SELECT avg(Points), avg(Age) FROM spokesman WHERE rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Start_year < 2004
SELECT T1.name, count(*), T1.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id GROUP BY T1.district_id
SELECT T2.name FROM spokesman AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.rank_position = 1 INTERSECT SELECT T2.name FROM spokesman AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.rank_position = 2
SELECT DISTINCT T1.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id GROUP BY T2.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(population), avg(population) FROM district WHERE district_id IN (SELECT district_id FROM spokesman_district)
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY year DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE location = "Gallery 226"
SELECT DISTINCT T1.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.lname = "Sculpture" AND T2.fname = "Leonardo" AND T2.deathYear = "1519"
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM sculptures
SELECT title, LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "Gallery 226"
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "Gallery 226"
SELECT DISTINCT T1.fname, T1.lname FROM ARTISTS AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T2.birthYear FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.year > 1920
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T1.birthYear > 1920
SELECT fname, lname FROM Artists ORDER BY deathYear
SELECT fname, lname FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT min(deathYear) FROM Artists
SELECT min(deathYear) FROM Artists
SELECT fname, deathYear FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY deathYear
SELECT count(*) FROM paintings WHERE painterID = 240
SELECT count(*) FROM paintings WHERE paintingID = 240
SELECT COUNT(DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.birthYear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.birthYear DESC LIMIT 1
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE birthYear < 1850
SELECT width_mm FROM paintings WHERE birthYear < 1850
SELECT T1.location, T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT location, mediumON FROM paintings WHERE painterID = (SELECT DISTINCT painterID FROM paintings WHERE fname = "Pablo";
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T2.fname, T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE mediumON = 'lithographic')
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "oil" INTERSECT SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT birthYear FROM artists WHERE birthYear = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = "gallery 241"
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = "oil" AND T2.location = "gallery 241"
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year > 1910
SELECT DISTINCT T1.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T2.location = "gallery 240"
SELECT DISTINCT T1.artistid FROM artworks AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.mediumOn = "oil" AND T2.name = "gallery 240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(year) FROM paintings WHERE location = 240)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT paintingID FROM paintings ORDER BY year DESC LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE "%female%"
SELECT T2.fname, T2.lname FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T2.title FROM artworks AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.year BETWEEN 1900 AND 1950
SELECT T2.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.scultorID = T2.artistID WHERE T2.artistID = 222
SELECT title FROM paintings WHERE painterID = 222 UNION SELECT title FROM sculptures
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT artistID FROM paintings WHERE YEAR < 1900
SELECT fname FROM ARTISTS ORDER BY count(*) DESC LIMIT 1
SELECT fname FROM artists ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM sculptures
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM sculptures
SELECT location FROM paintings AS T1 JOIN Sculptures AS T2 ON T1.mediumOn = T2.medium
SELECT DISTINCT location FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.painterID WHERE T1.mediumOn = "on" AND T2.medium = "canvas"
SELECT location FROM paintings WHERE YEAR < 1885 INTERSECT SELECT location FROM sculptures
SELECT location FROM paintings WHERE YEAR < 1885 EXCEPT SELECT location FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE mediumOn = "oil" AND location = "gallery 241"
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE mediumOn = 'oil' AND location = 241
SELECT max(height_mm), paintingID FROM paintings WHERE YEAR < 1900
SELECT height_mm, paintingID FROM paintings WHERE YEAR < 1900
SELECT max(height_mm), max(width_mm), YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm), YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), GROUP BY painterID ORDER BY lname
SELECT avg(height_mm), avg(width_mm), painterID FROM paintings GROUP BY painterID ORDER BY lname
SELECT fname, COUNT(*) FROM Paintings GROUP BY painterID HAVING COUNT(*) >= 2
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT deathYear FROM artists GROUP BY deathYear HAVING count(*) <= 3
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 4
SELECT min(deathYear) FROM Artists
SELECT min(deathYear) FROM artists
SELECT paintingID, height_mm FROM paintings WHERE width_mm = 240
{"sql": "SELECT max(height_mm), paintingID FROM paintings WHERE location = "240""}
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(year) FROM paintings WHERE location = 'Gallery 240')
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = 'Gallery 240')
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 3
SELECT T2.fname, T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" GROUP BY T2.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingID, LOCATION, title FROM paintings ORDER BY YEAR
SELECT paintingID, LOCATION, title FROM paintings ORDER BY YEAR
SELECT title, LOCATION, YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT * FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" EXCEPT SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID NOT IN (SELECT painterID FROM Sculptures)
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND mediumOn = 'no'
SELECT paintingID FROM paintings WHERE YEAR < 1885 EXCEPT SELECT paintingID FROM paintings WHERE mediumOn = 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team ASC
SELECT winning_team FROM race ORDER BY winning_team
SELECT DISTINCT winning_driver FROM race WHERE pole_position!= "Junior Strous"
SELECT winning_driver FROM race WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age
SELECT DISTINCT Constructor FROM driver ORDER BY Age
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT max(Age), min(Age) FROM driver
SELECT max(age), min(age) FROM driver
SELECT count(DISTINCT engine FROM driver WHERE age > 30 OR age < 20)
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 UNION SELECT count(DISTINCT engine) FROM driver WHERE age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT count(*), Driver_ID FROM race GROUP BY Driver_ID
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT Driver_Name, Age FROM driver GROUP BY Driver_ID HAVING count(*) >= 2
SELECT Driver_Name, Age FROM driver GROUP BY Driver_ID HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT count(*), constructor FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Engine FROM driver
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT DISTINCT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT DISTINCT T1.Constructor FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age < 20 INTERSECT SELECT DISTINCT T1.Constructor FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT DISTINCT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT Driver_Name FROM race WHERE Driver_ID IN (SELECT Driver_ID FROM race WHERE Pole_Position = "James Hinchcliffe" INTERSECT SELECT Driver_ID FROM race WHERE Pole_Position = "Carl Skerlong")
SELECT Driver_Name FROM driver WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = "James Hinchcliffe") INTERSECT SELECT Driver_Name FROM driver WHERE Driver_ID = (SELECT Driver_ID FROM race WHERE Pole_Position = "Carl Skerlong")
SELECT DISTINCT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
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
SELECT max(health_score), min(health_score) FROM countries WHERE country_id NOT IN (SELECT country_id FROM official_languages)
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T2.name, T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT DISTINCT T1.name, COUNT(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 1
SELECT language_id FROM official_languages GROUP BY language_id HAVING count(*) >= 2
SELECT T2.language_id FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE language_id IN (SELECT id FROM official_languages WHERE language_id = "English")
SELECT avg(overall_score) FROM countries WHERE languages.language_id = (SELECT language_id FROM official_languages WHERE language_id = (SELECT language_id FROM official_languages WHERE language = "English")
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT language_id FROM official_languages GROUP BY language_id ORDER BY avg(overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT country_id FROM official_languages GROUP BY country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name > '95' INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name < '90'
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name NOT IN (SELECT language_id FROM official_languages WHERE overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name NOT IN (SELECT language_id FROM official_languages WHERE overall_score < 90)
SELECT country FROM addresses
SELECT town_city FROM addresses
SELECT county_state_province FROM addresses
SELECT county_state_province FROM addresses
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_name, feature_description FROM Properties GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Rooms
SELECT min(room_count) FROM Rooms
SELECT count(*) FROM properties WHERE parking_lots = '1' OR garage_yn = '1'
SELECT count(*) FROM properties WHERE parking_lots = '1' OR garage_yn = '1'
SELECT age_category_code FROM user_category AS T1 JOIN ref_user_categories AS T2 ON T1.user_category_code = T2.user_category_code WHERE T1.description LIKE "%Mother%"
SELECT age_category_code FROM Ref_user_categories WHERE user_category_description LIKE "%Mother%"
SELECT first_name FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT first_name FROM properties GROUP BY owner_user_id ORDER BY count(*) LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_type_code = "Garden"
SELECT avg(room_count) FROM Properties WHERE property_feature_description LIKE "%garden%"
SELECT town_city FROM addresses WHERE property_type_code = "Swimming Pool"
SELECT town_city FROM addresses WHERE property_type_code IN (SELECT property_type_code FROM properties WHERE property_feature_description LIKE "%swimming pool%")
SELECT property_id, price_min FROM properties ORDER BY price_min ASC LIMIT 1
SELECT property_id, min(price_min) FROM properties GROUP BY property_id
SELECT avg(room_count) FROM Rooms
SELECT avg(room_count) FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches
SELECT search_datetime FROM User_Searches
SELECT search_string, count(*) FROM User_Searches GROUP BY search_string ORDER BY count(*) DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM user_property_history GROUP BY property_id HAVING count(*) <= 2)
SELECT zip_postcode FROM addresses WHERE property_id NOT IN (SELECT property_id FROM user_property_history GROUP BY property_id HAVING count(*) <= 2)
SELECT user_category_code, user_id FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT user_id, user_category_code FROM user_searches GROUP BY user_id HAVING count(*) = 1
SELECT age_category_code FROM user_searches WHERE search_string LIKE 'first%'
SELECT age_category_code FROM user_searches ORDER BY search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM user_searches
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name, middle_name, last_name, login_name FROM users WHERE seller_id = 1
SELECT first_name, last_name, login_name, is_seller FROM users WHERE user_category_code = 'seller'
SELECT line_1_number_building, line_2_number_street, town_city FROM addresses WHERE age_category_code = "Senior"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.user_category_code = "Senior Citizen"
SELECT count(*) FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2
SELECT count(*), property_name FROM Property_Photos GROUP BY property_name
SELECT count(*), property_id FROM Property_Photos GROUP BY property_id
SELECT count(*), owner_user_id FROM Property_Photos GROUP BY owner_user_id
SELECT T1.owner_user_id, count(*) FROM Property_phots AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(T1.price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = "Single Mother" OR T2.user_category_code = "Student"
SELECT sum(T2.price_max) FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id WHERE T1.owner_user_id IN (SELECT user_id FROM users WHERE user_category_code = 'single mothers' OR user_category_code = 'students')
SELECT datestamp, property_name FROM User_Property_History ORDER BY datestamp
SELECT datestamp, property_name FROM user_property_history
SELECT property_type_description FROM Ref_Property_Types GROUP BY property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT property_type_code, property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT DISTINCT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT count(DISTINCT room_size FROM Rooms)
SELECT country FROM addresses WHERE first_name = "Robbie"
SELECT county_state_province FROM addresses WHERE first_name = "Robbie"
SELECT first_name, middle_name, last_name FROM addresses AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id
SELECT T1.first_name, T1.last_name FROM users AS T1 JOIN user_property_history AS T2 ON T1.user_id = T2.user_id JOIN properties AS T3 ON T3.property_id = T2.property_id WHERE T3.owner_user_id = T1.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT last_name, user_id FROM user_searches GROUP BY user_id HAVING count(*) >= 2
SELECT last_name, user_id FROM User_Searches GROUP BY user_id HAVING count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT cyclist_id, name FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.nation = 'Russia' OR T2.nation = 'Great Britain'
SELECT count(DISTINCT heat FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.result > "4:21.558"
SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = (SELECT id FROM cyclist WHERE name = 'Bradley Wiggins') INTERSECT SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = (SELECT id FROM cyclist WHERE name = 'Antonio Tauler')
SELECT name, nation, result FROM cyclist WHERE cyclist_id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT material FROM bike WHERE material LIKE "%fiber%"
SELECT count(*), T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 1
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT min(price), flavor FROM goods GROUP BY flavor
SELECT id FROM goods WHERE Flavor = "Apple"
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT Id FROM goods WHERE Price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.itemid WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "lemon"
SELECT T2.Food, COUNT(*) FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.Id GROUP BY T2.Food
SELECT count(*), T1.food FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.itemgroup by T1.food
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.itemid = T3.id WHERE T3.food = "bakery" GROUP BY T1.id HAVING count(*) >= 15
SELECT DISTINCT customerId FROM receipts GROUP BY customerId HAVING count(*) >= 15
SELECT T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT DISTINCT T2.lastname FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods
SELECT DISTINCT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.Id = T2.Item WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Item = T2.ItemNumber WHERE T2.CustomerId = 15
SELECT Flavor, AVG(Price), MAX(Price), MIN(Price) FROM goods GROUP BY Flavor
SELECT avg(Price), min(Price), max(Price) FROM goods
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = "cake" INTERSECT SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = "cookie"
SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT SELECT receiptnumber FROM goods INTERSECT
SELECT receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "LOGAN" AND T1.flavor = "croissant"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = "Logan" AND T2.item = "croissant"
SELECT receiptnumber, date FROM receipts ORDER BY price DESC LIMIT 1
SELECT receiptnumber, date FROM receipts WHERE price = (SELECT max(price) FROM goods)
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) LIMIT 1
SELECT Flavor, count(*) FROM goods GROUP BY Flavor
SELECT Flavor, COUNT(*) FROM goods GROUP BY Flavor
SELECT avg(Price), Flavor FROM goods GROUP BY Flavor
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT id FROM goods WHERE Flavor = 'Apricot' AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 13
SELECT DISTINCT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.price > 13
SELECT Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 15
SELECT date FROM receipts WHERE price > 15
SELECT DISTINCT id FROM goods WHERE Flavor = "APP"
SELECT Id FROM goods WHERE Flavor LIKE "%APP%"
SELECT T2.Price FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.id = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT DISTINCT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods
SELECT DISTINCT id FROM goods
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = 'apple' OR T1.customerid = 12
SELECT receiptnumber FROM receipts WHERE flavor = "apple" OR customerid = 12
SELECT * FROM receipts WHERE date = (SELECT max(date) FROM receipts)
SELECT receiptnumber, date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10)
SELECT receiptnumber FROM receipts WHERE price > 10 OR date < (SELECT min(date) FROM receipts)
SELECT Id FROM goods WHERE Price BETWEEN 3 AND 7
SELECT Id FROM goods WHERE Price BETWEEN 3 AND 7
SELECT DISTINCT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date
SELECT DISTINCT T1.firstname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT min(Price) FROM goods WHERE Flavor = "cheese"
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor
SELECT min(price), max(price), food FROM goods GROUP BY food ORDER BY food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT DISTINCT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT count(*), T1.firstname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.firstname ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customerid), date FROM receipts GROUP BY date
SELECT count(*), date FROM receipts GROUP BY date
SELECT DISTINCT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receiptnumber WHERE T3.flavor = 'Tart'
SELECT DISTINCT T1.FirstName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receiptnumber WHERE T3.flavor = "apple"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT Id FROM goods WHERE Price >= (SELECT avg(Price) FROM goods WHERE Flavor = "Tart")
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id, flavor, TYPE FROM goods ORDER BY price
SELECT id, Flavor, Food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT Id, Flavor FROM goods ORDER BY Flavor
SELECT Flavor FROM goods WHERE Flavor = "chocolate" EXCEPT SELECT DISTINCT receiptnumber FROM receipts GROUP BY receiptnumber HAVING count(*) > 10
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" GROUP BY T1.id HAVING count(*) >= 10
SELECT Flavor FROM goods WHERE Food = 'Cake' EXCEPT SELECT Flavor FROM goods WHERE Food = 'Tart'
SELECT Flavor FROM goods WHERE Food!= 'Tart'
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id GROUP BY T1.Item ORDER BY SUM(T2.Price) DESC LIMIT 3
SELECT id FROM receipts WHERE sum(price) > 150
SELECT DISTINCT Id FROM receipts WHERE sum(Price) > 150
SELECT id FROM goods WHERE price > 5
SELECT T2.Id FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId HAVING avg(T1.Price) > 5
SELECT date FROM receipts WHERE sum(price) > 100
SELECT date FROM receipts WHERE sum(price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*), make FROM driver WHERE points > 150 GROUP BY make
SELECT Make, COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(age), make FROM driver GROUP BY make
SELECT avg(age), make FROM driver GROUP BY make
SELECT avg(laps) FROM driver WHERE age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC
SELECT * FROM driver ORDER BY Points DESC
SELECT Driver, Country FROM driver
SELECT Driver, Country FROM driver
SELECT max(Points) FROM driver WHERE Capital = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(Age) FROM driver WHERE official_native_language = "English"
SELECT avg(age) FROM country WHERE official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_id ORDER BY T2.Points DESC LIMIT 1
SELECT Capital FROM driver ORDER BY Points DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT make, count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team_ID FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_ID WHERE T2.Make = "Dodge INTERSECT SELECT T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_ID WHERE T2.Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver
SELECT sum(Points), avg(Points) FROM driver
SELECT Country FROM country WHERE Country_Id NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Team_id FROM team_driver)
SELECT Manager, Sponsor FROM team GROUP BY Sponsor ORDER BY COUNT(*) DESC LIMIT 1
SELECT manager, sponsor FROM team GROUP BY sponsor ORDER BY count(*) DESC LIMIT 1
SELECT Manager, Car_Owner FROM team WHERE Team_ID >= 2
SELECT Manager, Car_Owner FROM team GROUP BY Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT DISTINCT name FROM institution ORDER BY name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT city, province FROM institution
SELECT DISTINCT city, province FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT affiliation FROM institution WHERE city!= "Vancouver"
SELECT DISTINCT affiliation FROM institution WHERE city!= "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Name, Nickname FROM institution
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM institution ORDER BY enrollment ASC LIMIT 1
SELECT nickname FROM institution ORDER BY enrollment LIMIT 1
SELECT DISTINCT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution ORDER BY Number_of_Championships DESC
SELECT Name FROM institution WHERE Institution_ID IN (SELECT Institution_ID FROM championship)
SELECT DISTINCT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING count(*) >= 1
SELECT count(*) FROM institution WHERE affiliation = 'Public'
SELECT count(*) FROM championship
SELECT DISTINCT affiliation, COUNT(*) FROM institution GROUP BY affiliation
SELECT count(*), affiliation FROM institution GROUP BY affiliation
SELECT DISTINCT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded, count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT nickname FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT province FROM institution WHERE founded > 1920 EXCEPT SELECT province FROM institution WHERE founded < 1950
SELECT count(DISTINCT Province FROM institution
SELECT count(DISTINCT Province FROM institution
SELECT * FROM Warehouses
SELECT * FROM warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse = "New York"
SELECT DISTINCT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(value), sum(value) FROM boxes
SELECT avg(value), sum(value) FROM boxes
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(value), max(value), contents FROM boxes GROUP BY contents
SELECT avg(value), max(value), contents FROM boxes GROUP BY contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(value) FROM boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT sum(value) FROM boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT contents FROM boxes WHERE LOCATION = "Chicago" UNION SELECT contents FROM boxes WHERE LOCATION = "New York"
SELECT contents FROM boxes WHERE warehouse = "Chicago" INTERSECT SELECT contents FROM boxes WHERE warehouse = "New York"
SELECT contents FROM boxes WHERE warehouse!= "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT LOCATION FROM boxes WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM boxes WHERE Contents = "Scissors"
SELECT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT DISTINCT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT LOCATION FROM boxes WHERE contents = "Rocks" INTERSECT SELECT LOCATION FROM boxes WHERE contents = "Scissors"
SELECT Contents, Value FROM Boxes ORDER BY Value
SELECT Contents, Value FROM Boxes ORDER BY Value
SELECT Contents, Value FROM Boxes ORDER BY Value LIMIT 1
SELECT code, contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'rocks')
SELECT Code FROM Boxes WHERE Value > (SELECT min(Value) FROM Boxes WHERE Contents = 'Rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT Contents, Value FROM Boxes WHERE Value > (SELECT min(Value) FROM Boxes WHERE Contents = "Scissors"
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT max(capacity) FROM warehouses)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT max(capacity) FROM warehouses)
SELECT warehouse, avg(value) FROM boxes WHERE value > 150 GROUP BY warehouse
SELECT avg(value) FROM boxes WHERE warehouse > 150
SELECT sum(value), count(*) FROM boxes GROUP BY contents
SELECT sum(value), count(*) FROM boxes GROUP BY contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(value), warehouse FROM boxes GROUP BY warehouse
SELECT max(Value), LOCATION FROM Boxes GROUP BY LOCATION
SELECT warehouse, count(*) FROM boxes GROUP BY warehouse
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT warehouse FROM boxes WHERE contents = "Rocks"
SELECT count(DISTINCT warehouse FROM boxes WHERE contents = 'rocks')
SELECT T1.Code, T2.city FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT Code, LOCATION FROM Boxes
SELECT Code FROM Boxes WHERE LOCATION = "Chicago"
SELECT code FROM boxes WHERE warehouse = "Chicago"
SELECT count(*), warehouse FROM boxes GROUP BY warehouse
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(DISTINCT contents), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents FROM boxes WHERE warehouse = 'warehouse1'), warehouse FROM boxes
SELECT code FROM warehouses WHERE capacity > 0
SELECT Code FROM Boxes GROUP BY Code HAVING COUNT(*) > Capacity
SELECT sum(value) FROM boxes WHERE warehouse!= 'Chicago'
SELECT sum(value) FROM boxes WHERE LOCATION!= 'Chicago'
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE State = "Illinois OR Ohio"
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT * FROM university WHERE home_conference = 'Home'
SELECT DISTINCT home_conference FROM university
SELECT home_conference, count(*) FROM university GROUP BY home_conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT * FROM university WHERE home_conference = 'home' AND enrollment > 2000
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT T2.major_name, T2.major_code FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.university_name = "Augustana College"
SELECT T1.Major_Name FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" AND T2.Rank = 1
SELECT university_name, city, state FROM university WHERE major_id = 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT university_name FROM university ORDER BY major_ranking DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT university_name FROM university WHERE major_name = "Accounting" INTERSECT SELECT university_name FROM university WHERE major_name = "Urban Education"
SELECT university_name FROM university WHERE major_id IN (SELECT major_id FROM major_ranking WHERE major_name = "Accounting" INTERSECT SELECT major_id FROM major_ranking WHERE major_name = "Urban Education")
SELECT university_name, overall_rank FROM university WHERE state = "Wisconsin"
{"sql": "SELECT university_name, rank FROM university WHERE state = "Wisconsin""}
SELECT university_name FROM university ORDER BY research_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY research_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank >= 3
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank >= 3
SELECT sum(enrollment) FROM university WHERE rank <= 5
SELECT count(*) FROM university WHERE rank <= 5
SELECT university_name, citation_point FROM overall_ranking WHERE reputation_point >= 3
SELECT university_name, citation_point FROM overall_ranking ORDER BY reputation_point DESC LIMIT 3
SELECT state FROM university GROUP BY state HAVING count(*) > 2
SELECT state FROM university GROUP BY state HAVING count(*) > 2 AND enrollment < 3000
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT DISTINCT title FROM Movies WHERE Rating = ‘G’
SELECT DISTINCT title FROM movies WHERE rating = 'G'
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT title FROM MovieTheaters WHERE MovieTheaters.Code = "Odeon"
SELECT T2.Name, T1.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code
SELECT T1.Title, T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code
SELECT count(*) FROM movies WHERE rating = "G"
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT title) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM movies WHERE title LIKE "%Citizen%"
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT name FROM MovieTheaters WHERE rating = ‘G’ OR rating = ‘PG’
SELECT name FROM MovieTheaters WHERE rating = "G" OR rating = "PG"
SELECT title FROM MovieTheaters WHERE name = "Odeon" OR name = "Imperial"
SELECT title FROM MovieTheaters WHERE name = 'Odeon' OR name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT * FROM MovieTheaters JOIN Movies ON MovieTheaters.Code = Movies.Code WHERE MovieTheaters.Name = "Odeon" INTERSECT SELECT * FROM MovieTheaters JOIN Movies ON MovieTheaters.Code = Movies.Code WHERE MovieTheaters.Name = "Imperial"
SELECT title FROM movies WHERE code NOT IN (SELECT movietheaters.code FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT movietheaters.code FROM movietheaters WHERE name = 'Odeon')
SELECT DISTINCT title FROM movies ORDER BY title
SELECT DISTINCT title FROM movies ORDER BY title
SELECT DISTINCT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating!= 'null'
SELECT count(*) FROM movies WHERE rating!= "null"
SELECT name FROM movietheaters WHERE code IN (SELECT code FROM movies)
SELECT Name FROM MovieTheaters GROUP BY Name HAVING count(*) >= 1
{"sql": "SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM MovieTheaters WHERE Rating = \"Show\"")"}
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movieTheater FROM Movies)
SELECT name FROM MovieTheaters WHERE movie = ‘G’
SELECT DISTINCT name FROM MovieTheaters WHERE rating = 'G'
SELECT DISTINCT title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM Movies WHERE code NOT IN (SELECT movietheaters_code FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT T1.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber ORDER BY weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T2.weight = (SELECT max(weight) FROM package)
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = "Leo Wong"
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Leo Wong"
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT salary, POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT salary, POSITION FROM employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee
SELECT avg(salary) FROM Employee
SELECT LEVEL FROM Has_clearance WHERE POSITION = 'Physician'
SELECT LEVEL FROM Has_clearance WHERE Employee = "Physician"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = 'Leo Wong'
SELECT DISTINCT T1.PackageNumber FROM PACKAGE AS T1 JOIN SHipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN EMPLOYEE AS T3 ON T1.Recipient = T3.EmployeeID WHERE T3.Name = "Leo Wong"
SELECT * FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Recipient = 'Leo Wong'
SELECT DISTINCT sender FROM shipment WHERE employeeid = 12345 UNION SELECT DISTINCT recipient FROM package
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = 'Leo Wong' INTERSECT SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = 'Ogden Wernstrom'
{"sql": "SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.recipient = " + TO_STRING(Leo Wong) + " AND T2.sender = " + TO_STRING(Ogden Wernstrom)"}
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T2.Sender = "John Zoidfarb"
SELECT T1.packageNumber, T1.weight FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.recipient = T3.accountnumber WHERE T3.name = 'John'
SELECT T2.packagenumber, T2.weight FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "John" OR T1.sender = "John"
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT min(weight), packageNumber FROM package GROUP BY packageNumber
SELECT T1.name, count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, count(*) FROM shipment AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T1.recipient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) LIMIT 1
SELECT min(Count(*), Sender FROM Shipment GROUP BY Sender
SELECT DISTINCT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name HAVING count(*) > 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT Name FROM PLANET ORDER BY Name
SELECT name, coordinates FROM planet ORDER BY name
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J. Fry'
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT date FROM shipment
SELECT ShipmentID FROM Shipment WHERE PlanetID = "Mars"
SELECT ShipmentID FROM SHIPMENT WHERE PlanetID = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" AND Manager = "Turanga Leela"
SELECT shipmentid FROM shipment AS T1 JOIN has_clearance AS T2 ON T1.planet = T2.planet WHERE T2.manager = "Turanga Leela"
SELECT shipmentid FROM shipment WHERE planet = 'Mars' OR manager = (SELECT employeeid FROM employee WHERE position = 'Turanga Leela')
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 'Mars'
SELECT T1.name, sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T1.name
SELECT COUNT(*), T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T1.name
SELECT Name FROM Planet GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT count(*), T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(weight) FROM package WHERE planetid = 'Mars'
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = "Mars"
SELECT sum(weight), name FROM shipment GROUP BY planet
SELECT sum(weight), name FROM package GROUP BY name
SELECT name FROM planet WHERE weight > 30
SELECT name FROM planet WHERE weight > 30
SELECT COUNT(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*), T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Zapp Brannigan' INTERSECT SELECT count(*), T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Omicron Persei 8'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planetid = (SELECT planetid FROM planet WHERE name = "Omicron Persei 8") OR T1.sender = (SELECT accountnumber FROM client WHERE name = "Zapp Brannigan")
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Omicron Persei 8' OR T1.sender = 'Zapp Brannigan'
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT Name FROM EMPLOYEE WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_clearance WHERE Planet = "Mars")
SELECT DISTINCT name FROM has_clearance WHERE planet = 'Omega III'
SELECT DISTINCT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE planet = "Omega III"
SELECT DISTINCT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee = 'exact'
SELECT name FROM planet WHERE planetid IN (SELECT planetid FROM has_clearance WHERE employee = 'yes')
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employeeid FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employeeid FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title, developers FROM game ORDER BY units_sold_millions
SELECT title, developers FROM game ORDER BY units_sold DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT Platform_name, Market_district FROM platform
SELECT platform_name, market_district FROM platform
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT max(rank_of_the_year), min(rank_of_the_year) FROM player
SELECT max(rank_of_the_year), min(rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name, T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = "Auburn"
SELECT DISTINCT T2 Developers FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE POSITION = "Guard"
SELECT avg(Units_sold_Millions) FROM game WHERE POSITION = 'Guard'
SELECT Title, Platform_name FROM game
SELECT title, platform_name FROM game
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.market_district = "Asia" OR T1.market_district = "USA"
SELECT title FROM game WHERE market_district = "Asia" OR market_district = "USA"
SELECT T2.Franchise, COUNT(*) FROM game AS T1 JOIN franchise AS T2 ON T1.Franchise = T2.Franchise GROUP BY T1.Franchise
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player)
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = "Guard"
SELECT DISTINCT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY YEAR_Profits_billion DESC
SELECT DISTINCT T1.Name FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Year_Profits_billion > 1500000000 OR T2.Month_Profits_billion > 1000000
SELECT name FROM press WHERE YEAR_PROFIT_BILLION > 1500000000 OR MONTH_PROFIT_BILLION > 1000000
SELECT avg(YEAR_Profits_billion), max(YEAR_Profits_billion) FROM press
SELECT avg(yearly_profit_billion), max(yearly_profit_billion), press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR month_profits_billion ASC
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age), gender FROM author GROUP BY gender
SELECT gender, avg(age) FROM author GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY release_date DESC
SELECT title FROM book ORDER BY release_date DESC
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT book_series, count(*) FROM book GROUP BY book_series
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) > 1000 INTERSECT SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) < 500
SELECT DISTINCT T1.Book_Series FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 INTERSECT SELECT DISTINCT T1.Book_Series FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount < 500
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT DISTINCT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT DISTINCT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT DISTINCT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT DISTINCT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING count(*) > 1
SELECT title, author_name, publisher_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT title, author_name, press_name FROM book ORDER BY sale_amount DESC LIMIT 3
SELECT T2.name, sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name, sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT count(*), T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T2.name, count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T1.press_id
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Sale_Amount = (SELECT max(Sale_Amount) FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name, T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Gender ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT DISTINCT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = "Accor")
SELECT name, YEAR_PRO Fits_billion FROM press WHERE press_id > 2
SELECT T1.name, T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents
SELECT author_name FROM authors WHERE document_id = 4
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name, document_description FROM documents
SELECT document_id, author_name FROM documents WHERE author_name = "Bianka Cummings"
SELECT author_name, other_details FROM documents WHERE document_name = "Travel to China"
SELECT author_name, count(*) FROM authors GROUP BY author_name
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
SELECT process_status_description FROM Process_Status WHERE process_status_code = "CT"
SELECT count(*) FROM staff
SELECT staff_id, staff_details FROM staff
SELECT staff_details FROM staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT count(*) FROM Documents_processes
SELECT process_id FROM documents_processes
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM Business_processes WHERE process_id = "null"
SELECT process_outcome_description, process_status_description FROM Documents_processes WHERE document_id = 0
SELECT process_name FROM Business_processes WHERE document_id = "Travel to Brazil"
SELECT process_id, count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM staff_in_processes AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.staff_id = 0 AND T2.process_outcome_code = 9
SELECT staff_id, count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code, count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff_in_processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3
SELECT count(*) FROM agencies
SELECT count(DISTINCT agency_id) FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT count(*) FROM clients
SELECT count(*) FROM clients
SELECT client_id, client_details FROM clients
SELECT client_id, client_details FROM clients
SELECT agency_id, count(*) FROM clients GROUP BY agency_id
SELECT count(DISTINCT agency_id) FROM clients
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id HAVING count(*) >= 2
SELECT agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT agency_details FROM clients WHERE client_details = "Mac"
SELECT client_details, agency_details FROM clients
SELECT client_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code, count(*) FROM clients GROUP BY sic_code
SELECT count(*), sic_code FROM clients GROUP BY sic_code
SELECT client_id, client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients)
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT client_id FROM clients)
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id, invoice_status, invoice_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM invoices
SELECT client_id, count(*) FROM invoices GROUP BY client_id
SELECT count(*), client_id FROM invoices GROUP BY client_id
SELECT client_id, client_details FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id, client_details FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM invoices GROUP BY invoice_status
SELECT count(*), invoice_status FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, client_id, agency_id, client_details FROM invoices
SELECT invoice_status, invoice_details, client_id, agency_id FROM invoices
SELECT meeting_type, other_details FROM meetings
SELECT meeting_type, other_details FROM MEETINGS
SELECT DISTINCT meeting_outcome, purpose_of_meeting FROM MEETINGS
SELECT DISTINCT meeting_outcome, purpose_of_meeting FROM MEETINGS
SELECT invoice_id, invoice_details FROM payments WHERE invoice_status = 'Working'
SELECT payment_id, payment_details FROM payments WHERE invoice_status = "Working"
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id, invoice_id, invoice_details FROM payments
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT invoice_id, count(*) FROM payments GROUP BY invoice_id
SELECT count(*), T1.invoice_id FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT invoice_id, invoice_status, invoice_details FROM invoices GROUP BY invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT agency_id, count(*) FROM staff GROUP BY agency_id
SELECT agency_id, count(*) FROM Staff GROUP BY agency_id
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM meetings GROUP BY meeting_outcome
SELECT count(*), meeting_outcome FROM meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM meetings GROUP BY client_id
SELECT count(*), client_id FROM meetings GROUP BY client_id
SELECT meeting_type, count(*) FROM meetings GROUP BY meeting_type
SELECT count(*), meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id FROM meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT meeting_id, meeting_outcome, meeting_type, client_id FROM meetings
SELECT meeting_id, count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT count(*), meeting_id FROM Staff_in_Meetings GROUP BY meeting_id
SELECT T1.staff_id, count(*) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff_in_meetings WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT client_id, client_details FROM meetings UNION SELECT client_id, client_details FROM invoices
SELECT client_id, client_details FROM meetings UNION SELECT client_id, client_details FROM invoices
SELECT staff_id, staff_details FROM Staff_in_Meetings WHERE meeting_id IN (SELECT meeting_id FROM Meetings GROUP BY meeting_id HAVING count(*) >= 1) INTERSECT SELECT staff_id, staff_details FROM Staff
SELECT staff_id, staff_details FROM staff_in_meetings
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'yes' AND T2.billable_yn = 'yes'
SELECT client_id, sic_code, agency_id FROM payments AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id WHERE T1.billable_yn = 1
SELECT T1.start_date_time, T1.end_date_time, T2.client_details, T2.staff_details FROM meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT start_date_time, end_date_time, T1.staff_details, T1.staff_id FROM Staff_in_meetings AS T1 JOIN MEETINGS AS T2 ON T1.meeting_id = T2.meeting_id
