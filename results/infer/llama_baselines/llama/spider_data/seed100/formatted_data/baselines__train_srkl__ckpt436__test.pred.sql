SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager, Captain FROM club
SELECT Manager, Captain FROM club
SELECT Name FROM club WHERE Manufacturer!= "Nike"
SELECT Name FROM club WHERE Manufacturer!= 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 2
SELECT T1.Name, T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING count(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT count(*), Manufacturer FROM club GROUP BY Manufacturer
SELECT count(*), Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.Manufacturer FROM club AS t1 JOIN player AS t2 ON t1.Manufacturer = t2.Manufacturer GROUP BY t1.Manufacturer HAVING COUNT(*) > 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
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
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT order_id, count(*), T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders GROUP BY date_order_placed ORDER BY count(*) DESC LIMIT 1
SELECT min(T1.date_order_placed), T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id WHERE T2.order_status_code = "Cancelled")
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT order_id, date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_id, COUNT(*) FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.gender_code, count(*) FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id JOIN Orders AS T3 ON T2.customer_id = T3.customer_id JOIN Order_items AS T4 ON T4.order_id = T3.order_id GROUP BY T1.gender_code
SELECT count(*), T1.gender_code FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT customer_id, COUNT(*) FROM Orders GROUP BY customer_id
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T1.customer_last_name, T1.customer_middle_initial, T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT order_item_status_code, shipment_tracking_number FROM order_items JOIN shipments ON order_items.order_item_id = shipments.order_item_id
SELECT order_item_status_code FROM orders JOIN shipments ON orders.order_id = shipments.order_id WHERE order_status_code = "Shipped"
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id WHERE T2.shipment_date > (SELECT max(shipment_date) FROM shipments)
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT T1.invoice_status_code FROM Invoices AS T1 JOIN Orders AS T2 ON T1.invoice_number = T2.order_id WHERE T2.order_status_code!= "Shipped"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code NOT IN ( SELECT invoice_status_code FROM orders WHERE order_status_code = "Shipped";
SELECT sum(T1.order_id), T1.date_order_placed, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT order_id, date_order_placed, sum(product_price) FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id GROUP BY T2.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '%+12%'
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
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
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM Shipment_items
SELECT count(*) FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = "M" GROUP BY email_address, town_city, county HAVING count(*) < (SELECT count(*) FROM customers WHERE gender_code = "M")
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price NOT IN (SELECT max(product_price) FROM products)
SELECT Name FROM director WHERE Age > (SELECT avg(Age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY Start_Year DESC
SELECT T1.Name FROM director AS T1 JOIN director_admin AS T2 ON T1.Director_ID = T2.Director_ID JOIN program AS T3 ON T2.Channel_ID = T3.Channel_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, T1.Age FROM director AS T1 JOIN director_admin AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.Name, T1.Website FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T2.Channel_ID HAVING count(*) > 1
SELECT count(*), T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id WHERE T2.title = "Dracula"
SELECT T1.Name, T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN director AS T3 ON T2.Director_ID = T3.Director_ID GROUP BY T3.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T1.Name FROM channel AS T1 JOIN director AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T2.Age < 40 INTERSECT SELECT T1.Name FROM channel AS T1 JOIN director AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T2.Age > 60
{"sql": "SELECT Channel_ID, Name FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM director_admin WHERE Name = \"Hank Baskett\")}
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation!= "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT count(*), T1.Affiliation FROM city_channel AS T1 JOIN radio AS T2 ON T1.ID = T2.Radio_ID GROUP BY T1.Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Affiliation FROM city_channel AS T1 JOIN radio AS T2 ON T1.ID = T2.ID GROUP BY T1.City_channel_ID HAVING count(*) > 3
SELECT T1.City, T1.Station_name FROM city_channel AS T1 JOIN tv_show AS T2 ON T1.City_channel_ID = T2.City_channel_ID ORDER BY T1.Station_name
SELECT T1.Transmitter, T2.City_channel_ID FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter, T2.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.ERP_kW DESC
SELECT T1.Transmitter, COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), T1.Driver_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT Driver_ID, COUNT(*) FROM vehicle_driver GROUP BY Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(T1.Power FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Citizenship = "Zhuzhou"), avg(T1.Power FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Citizenship = "Zhuzhou")
SELECT max(T1.Power), avg(T1.Power) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle WHERE Build_Year = 2012
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Name = 'NASCAR'
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver
SELECT avg(Top_Speed) FROM vehicle GROUP BY Top_Speed
SELECT avg(Top_Speed) FROM vehicle GROUP BY Top_Speed
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Vehicle_ID, Model FROM vehicle WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver) INTERSECT SELECT Vehicle_ID FROM vehicle WHERE Builder = 'Ziyang'
SELECT Vehicle_ID, Model FROM vehicle WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID HAVING COUNT(*) = 2) UNION SELECT Vehicle_ID FROM vehicle WHERE Builder = "Ziyang"
SELECT Vehicle_ID, Model FROM vehicle_driver GROUP BY Vehicle_ID HAVING COUNT(DISTINCT Driver_ID) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon'
SELECT Vehicle_ID, Model FROM vehicle WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID HAVING COUNT(*) > 2) UNION SELECT Vehicle_ID FROM vehicle WHERE Builder = 'Jeff Gordon'
SELECT count(*) FROM vehicle WHERE Top_Speed >= 250
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(DISTINCT driver_id) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT Exam_Code FROM Exams ORDER BY Exam_Name
SELECT DISTINCT Exam_Code FROM Exams ORDER BY Exam_Code
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID JOIN Students AS T3 ON T1.Student_ID = T3.Student_ID WHERE T2.Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Assessment ORDER BY count(*) ASC
SELECT Exam_Name FROM Exams GROUP BY Exam_Name ORDER BY count(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT DISTINCT T1.Last_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT DISTINCT T1.Last_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_id = T2.Student_id WHERE T1.Gender_MFU = "F" OR T1.Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT DISTINCT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Valid_Answer_Text = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Valid_Answer_Text = "Absent"
SELECT Comments FROM Student_Answers WHERE Student_Answer_Text = "Normal" INTERSECT SELECT Comments FROM Student_Answers WHERE Student_Answer_Text = "Absent"
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
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = "Monitor"
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC
SELECT product_id, product_name FROM products ORDER BY product_price ASC
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
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_id, customer_name FROM customers
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = 'PayPal' GROUP BY customer_name ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY customer_name ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = (SELECT customer_id FROM customers WHERE customer_name = "Jeromy")
SELECT order_id, order_date, order_status_code FROM Customer_Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE customer_name = "Jeromy")
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_id, T1.customer_id, T1.customer_name, T1.customer_phone FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, COUNT(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code, count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT count(DISTINCT T1.customer_id) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM order_items WHERE product_id IN (SELECT product_id FROM products WHERE product_type_code = 'Monitor')
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date, T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 6 UNION SELECT T1.order_date, T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT order_id, order_date FROM Order_items WHERE order_quantity > 6 OR count(DISTINCT product_id) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
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
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T2.region_id HAVING count(*) > 1
SELECT Name FROM region GROUP BY Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Capital ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address, T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = "Abruzzo"
SELECT count(*), T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = 'Abruzzo' GROUP BY T1.name
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building GROUP BY Completed_Year HAVING Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building GROUP BY Completed_Year HAVING Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING COUNT(*) > 3
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING COUNT(*) > 3
SELECT T1.Customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customers_details FROM customers_and_services UNION SELECT count(DISTINCT service_details FROM services)
SELECT count(*) FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%'
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" OR T2.Services_and_Channels_details LIKE "%good%"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "good" AND T2.Customer_ID = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "bad" AND T2.Service_ID = T1.Service_ID WHERE T2.Customer_ID = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "bad" AND T2.Service_ID = T1.Service_ID WHERE T2.Customer_ID = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customer_interactions AS T2 ON T1.Service_id = T2.Service_id WHERE T2.Services_and_channels_details = "15 ij"
SELECT T1.Service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Channel_ID = 15
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.service_details = "bad"
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id JOIN Services AS T3 ON T2.service_id = T3.service_id JOIN Channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.service_details = "bad" AND T4.channel_details = "bad" AND T2.status_code = "Stuck"
SELECT count(*) FROM Integration_Platform
SELECT count(DISTINCT Integration_Platform_Details FROM Integration_Platform WHERE Integration_Platform_Details LIKE '%Success%'
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id JOIN Integration_Platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.Integration_Platform_Details = "Failed"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Integration_Platform AS T3 ON T2.Customer_Interaction_ID = T3.Customer_Interaction_ID
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id WHERE t2.customers_and_services_id = "null"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT T1.service_id FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id)
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customers_and_Services_details = "unsatisfied"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customers_and_Services_Details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, COUNT(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(A annual_fuel_cost), max(A annual_fuel_cost), avg(A annual_fuel_cost) FROM Vehicles
SELECT min(Angular_fuel_cost), max(Angular_fuel_cost), avg(Angular_fuel_cost) FROM Vehicles
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name, max(membership_credit) FROM customers GROUP BY name
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(membership_credit) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(T1.age) FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id WHERE T1.membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT T1.id FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT avg(Highway_fuel_economy_rate), avg(City_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT teacher_details FROM Classes WHERE class_details LIKE '%data%' EXCEPT SELECT teacher_details FROM Classes WHERE class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_Loans)
SELECT student_details FROM Students EXCEPT SELECT T1.student_details FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id JOIN Student_Events AS T3 ON T1.student_id = T3.student_id JOIN Student_Loans AS T4 ON T1.student_id = T4.student_id
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T2.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details, T1.student_details FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.address_details, T1.student_details FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T1.student_details, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 3 INTERSECT SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3
SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*), T1.event_type_code, T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T1.event_type_description, count(*) FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_description FROM Achievements
SELECT T1.achievement_details, T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T2.class_details = "null"
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT T1.achievement_type_code, T1.achievement_details, T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT achievement_type_code, achievement_details, date_achievement FROM achievements
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT T1.bio_data FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T2.address_type_code = 'Suite'
SELECT T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T1.student_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.teacher_details, T1.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.teacher_id HAVING count(*) = 1
SELECT count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id, count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING sum(T2.amount_of_loan) > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_transcript DESC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id JOIN Transcripts AS T4 ON T3.student_id = T4.student_id ORDER BY T4.date_of_transcript ASC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id JOIN Transcripts AS T4 ON T3.student_id = T4.student_id ORDER BY T4.date_of_transcript ASC LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id, bio_data, count(*) FROM Students GROUP BY student_id
SELECT student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code, T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = "Event" EXCEPT SELECT T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = "Event" AND T1.student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT DISTINCT name FROM Author
SELECT Name FROM Author
SELECT name, address FROM client
SELECT name, address FROM Client
SELECT Title, ISBN, SalePrice FROM Book
SELECT title, ISBN, SalePrice FROM Book
SELECT count(*) FROM BOOK
SELECT count(*) FROM Book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT Name, Address FROM Client ORDER BY Name
SELECT Name, Address FROM Client ORDER BY Name
SELECT T1.Title, T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor
SELECT T1.Name, T2.Name FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.idAuthor
SELECT IdClient, Name FROM Client
SELECT IdClient, Name FROM Orders
SELECT T1.Name, COUNT(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author GROUP BY T1.Name
SELECT T2.Name, count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.Author GROUP BY T1.Name
SELECT T1.ISBN, count(*) FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT ISBN, count(*) FROM Books ORDER BY PurchasePrice DESC
SELECT ISBN, sum(amount) FROM Books_order GROUP BY ISBN
SELECT sum(amount), T1.ISBN FROM Books ORDER BY T1.PurchasePrice DESC
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title, T1.PurchasePrice FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title, T1.PurchasePrice FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.amount
SELECT DISTINCT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.DateOrder
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT T1.Name, COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.Author WHERE T1.Name = "Client" GROUP BY T1.Name
SELECT T1.Name, sum(T2.amount) FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.Name FROM Client AS T1 JOIN Books_order AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.Name FROM Client AS t1 JOIN Books_order AS t2 ON t1.IdClient = t2.IdClient GROUP BY t1.Name ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(saleprice), min(saleprice) FROM Book
SELECT max(PurchasePrice), min(PurchasePrice) FROM Book
SELECT avg(PurchasePrice), avg(SalePrice) FROM Book
SELECT avg(PurchasePrice), avg(SalePrice) FROM Book
SELECT max(PurchasePrice - SalePrice) FROM Book
SELECT max(PurchasePrice - SalePrice) FROM Book
SELECT title FROM book WHERE saleprice > (SELECT avg(purchaseprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT Title FROM Book ORDER BY PurchasePrice ASC
SELECT Title FROM Book WHERE PurchasePrice = (SELECT min(PurchasePrice) FROM Book)
SELECT Title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT Title FROM Book ORDER BY PurchasePrice DESC LIMIT 1
SELECT avg(saleprice) FROM author AS T1 JOIN book AS T2 ON T1.ISBN = T2.author WHERE T1.name = "George Orwell"
SELECT avg(T1.SalePrice) FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "George Orwell"
SELECT SalePrice FROM Book WHERE Author = "Plato"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name = "Plato"
SELECT Title FROM Book WHERE Author = 'George Orwell' ORDER BY SalePrice ASC LIMIT 1
SELECT Title FROM Book WHERE Author = "George Orwell" ORDER BY SalePrice ASC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T1.PurchasePrice < (SELECT avg(SalePrice) FROM Book)
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T1.ISBN = T3.IdOrder WHERE T2.Author = "Plato" AND T1.PurchasePrice < (SELECT avg(PurchasePrice) FROM Book)
SELECT T1.Name FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Name FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name LIKE '%Plato%'
SELECT count(*) FROM Orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder WHERE T1.title = "Pride and Prejudice"
SELECT count(*) FROM Orders AS T1 JOIN Books_order AS T2 ON T1.IdOrder = T2.idorder WHERE T1.Title = "Pride and Prejudice"
SELECT IdOrder FROM orders WHERE title = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM orders WHERE title = "The Little Prince"
SELECT IdOrder FROM Books ORDER BY PurchasePrice ASC INTERSECT SELECT IdOrder FROM Books ORDER BY PurchasePrice ASC INTERSECT SELECT IdOrder FROM Orders WHERE Title = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM Books ORDER BY PurchasePrice ASC INTERSECT SELECT IdOrder FROM Orders WHERE Title = "The Little Prince"
SELECT ISBN FROM Books ORDER BY IdOrder WHERE IdClient = 1 AND Name = 'Peter Doe' INTERSECT SELECT ISBN FROM Books ORDER BY IdOrder WHERE IdClient = 1 AND Name = 'James Smith'
SELECT ISBN FROM Books ORDER BY Name LIKE '%Peter%' OR Name LIKE '%James%'
SELECT title FROM Book WHERE Author = "Peter Doe" EXCEPT SELECT title FROM Book WHERE Author = "James Smith"
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.idorder!= (SELECT idorder FROM orders WHERE name = 'James Smith') AND T1.name = 'Peter Doe'
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_order AS T3 ON T2.idorder = T3.idorder JOIN Book AS T4 ON T3.ISBN = T4.ISBN WHERE T4.Title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(Chapters), min(Chapters) FROM book GROUP BY Book_ID
SELECT Title FROM book WHERE TYPE!= "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title, T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Title ORDER BY count(*) DESC LIMIT 1
SELECT Rank FROM book ORDER BY Pages ASC
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE, COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating
SELECT T1.Title, T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY count(*) DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE FROM book
SELECT TYPE, Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name, sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.Customer_ID FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING sum(T2.Quantity) > 1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name, Nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Club_Name, T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T1.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT DISTINCT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subsets_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN documents_in_collections AS t3 ON t2.related_collection_id = t3.collection_id
SELECT T1.collection_subset_details FROM Collection_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Related_Collection_ID JOIN Documents_in_Collections AS T3 ON T2.Document_Object_ID = T3.Collection_ID WHERE T1.Collection_Subset_Name = "Top collection"
SELECT T1.Collection_Subset_Details FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID JOIN Documents_in_Collections AS T3 ON T2.Related_Collection_ID = T3.Collection_ID WHERE T1.Collection_Subset_Name = 'Top collection'
SELECT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID
SELECT DISTINCT document_subset_name FROM document_subsets
SELECT T1.Document_Subset_Details FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID WHERE T3.Name = "Best for 2000"
SELECT T1.document_subset_details FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.related_document_object_id JOIN Documents AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.collection_id = 2000 AND T1.document_subset_name = 'Best for 2000'
SELECT document_object_id FROM Document_Objects
SELECT document_object_id FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Parent_Document_Object_ID = T2.Collection_ID WHERE T2.Collection_Name = "Braeden Collection"
SELECT Owner FROM Document_Objects WHERE Document_Object_ID IN (SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T2.Document_Subset_Name = "Parent Document") WHERE T1.Owner = "Marlin"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner = "Marlin"
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Collection_Subset_Name = "Marlin"
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID WHERE T1.Owner = "Marlin"
SELECT document_object_id FROM Documents_in_collections EXCEPT SELECT document_object_id FROM Documents_in_collections AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Subset_Members AS T3 ON T1.document_object_id = T3.related_document_object_id WHERE T3.document_subset_id = T2.document_subset_id
SELECT document_object_id FROM document_objects EXCEPT SELECT document_object_id FROM document_objects WHERE parent_document_object_id = ""
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT count(*), T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT Collection_Name FROM Collections
SELECT DISTINCT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Parent_Collection_ID
SELECT Collection_Name FROM Collections WHERE Collection_ID NOT IN (SELECT Collection_ID FROM Collection_Subsets)
SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID HAVING COUNT(*) > 1
SELECT document_object_id FROM documents_in_collections AS T1 JOIN document_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN document_subsets AS T3 ON T1.document_object_id = T3.document_object_id WHERE T3.document_subset_id > 1
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Ransom"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Ransom"
SELECT T1.Collection_Subset_ID, COUNT(*), T2.Collection_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Collection_Subset_ID, T1.Collection_Subset_Name, COUNT(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Document_Object_ID, COUNT(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID GROUP BY T1.Document_Object_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID
SELECT document_object_id, count(*) FROM Document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Object_ID = T3.Document_Object_ID JOIN Collection_Subset_Members AS T4 ON T2.Document_Subset_ID = T4.Document_Subset_ID GROUP BY T1.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID JOIN Collections AS T4 ON T3.Collection_ID = T4.Collection_ID WHERE T4.Collection_Name = "Braeden"
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID JOIN Collections AS T4 ON T3.Collection_ID = T4.Collection_ID WHERE T3.Collection_Name = "Braeden"
SELECT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.document_subset_id = T2.document_object_id JOIN Document_Object AS T3 ON T2.document_object_id = T3.document_object_id JOIN Document_Objects AS T4 ON T3.document_object_id = T4.document_object_id WHERE T3.owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id JOIN Collections AS T4 ON T3.collection_id = T4.collection_id JOIN Collection_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE T2.owner = 'Braeden'
SELECT document_subset_id, count(DISTINCT document_object_id), document_subset_name FROM Document_subsets GROUP BY document_subset_id
SELECT document_subset_id, count(DISTINCT document_subset_name), count(*) FROM Document_Subsets GROUP BY document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_Subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.related_document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Document_Subset_ID, T1.Document_Subset_Name, COUNT(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID GROUP BY T1.Document_Subset_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000"
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = ( SELECT document_subset_id FROM Document_Subset_Members WHERE document_subset_name = 'Best for 2000' )
SELECT T1.Document_Subset_Name, T1.Document_Object_ID FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT T1.Document_Subset_Name, T1.Document_Object_ID FROM Document_Subsets AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = 'Ransom '
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = 'Ransom'
SELECT count(*), T1.Collection_ID FROM Collections AS T1 JOIN Documents_in_collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID
SELECT count(*), T1.Collection_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best"
SELECT document_object_id FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best"
SELECT T1.Collection_Name, T1.Collection_ID, COUNT(*) FROM Collections AS T1 JOIN Documents_in_collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Collection_Name, T1.Collection_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Documents_in_collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.collection_subset_name = "Best" AND T1.collection_id = "Best"
SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.collection_subset_name = 'Best for 2000'
{"sql": "SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' EXCEPT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' AND T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' AND T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = 'Best' FOR EACH ROW WHERE T1.document_object_id IN (SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection
SELECT DISTINCT document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T1.document_object_id = T3.related_document_object_id JOIN Collection_subsets AS T4 ON T3.collection_subset_id = T4.collection_subset_id WHERE T4.collection_subset_name = "Best" EXCEPT SELECT document_object_id FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T1.document_object_id = T3.related_document_object_id JOIN Collection_subsets AS T4 ON T3.collection_subset_id = T4.collection_subset_id WHERE T4.collection_subset_name = "Best for 2000"
SELECT document_object_id FROM Documents_in_collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best" INTERSECT SELECT document_object_id FROM Documents_in_collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best"
SELECT DISTINCT document_object_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000') OR document_object_id IN (SELECT document_object_id FROM Documents_in_collections WHERE collection_id IN (SELECT collection_id FROM Collection_Subsets WHERE collection_subset_name = 'Best')
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Best"
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID JOIN Documents_in_Collections AS T3 ON T2.Related_Collection_ID = T3.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name
SELECT name, language FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score GROUP BY participant_id
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id = 'Freeway'
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = "english"
SELECT T1.id, T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T2.songs_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT T1.id FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id)
SELECT avg(T1.rhythm_tempo), language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "Croatian" INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "English"
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM songs WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(DISTINCT city_name) FROM City
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name, city_code, state FROM city
SELECT city_name, city_code, state, country FROM City
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM City WHERE country = 'Canada'
SELECT city_name FROM city ORDER BY latitude
SELECT city_name FROM City ORDER BY latitude
SELECT state, count(*) FROM City GROUP BY state
SELECT count(DISTINCT city), state FROM city GROUP BY state
SELECT country, count(*) FROM city GROUP BY country
SELECT count(*), country FROM City GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.fname, T1.lname FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname, lname FROM student WHERE state = "MD"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT Fname, Major FROM Student WHERE city_code = "Baltimore"
SELECT DISTINCT T1.fname, T1.major FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Baltimore'
SELECT count(*), country FROM City GROUP BY country
SELECT count(*), country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT count(*), city_code FROM Student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code HAVING count(*) >= 3
SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM student GROUP BY city_code HAVING count(*) >= 3)
SELECT state FROM city WHERE state = 'USA' GROUP BY state HAVING count(*) > 5
SELECT state FROM city WHERE state = 'USA' GROUP BY state HAVING count(*) > 5
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE country = "USA"
SELECT StuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM Student WHERE sex = 'M' AND country!= 'USA'
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
{"sql": "SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark""}
SELECT avg(distance), min(distance), max(distance) FROM direct_distance GROUP BY city1_code
SELECT avg(distance), min(distance), max(distance) FROM direct_distance GROUP BY city1_code
SELECT city_code FROM city ORDER BY distance DESC LIMIT 2
SELECT city_code FROM City GROUP BY city_code ORDER BY sum(distance) DESC LIMIT 1
SELECT city_code FROM city WHERE latitude > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city GROUP BY city_code HAVING avg(distance) > (SELECT avg(distance) FROM city)
SELECT city_code FROM city WHERE latitude < 1000 INTERSECT SELECT city_code FROM direct_distance
SELECT city_code FROM City WHERE latitude < 1000
SELECT sum(T2.distance) FROM City AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "BAL"
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM direct_distance WHERE city1_code = 'Boston'
SELECT avg(distance) FROM direct_distance WHERE city1_code = 'Boston'
SELECT city_name FROM city WHERE state = 'IL' AND latitude = (SELECT min(latitude) FROM city WHERE state = 'IL' AND city_name = 'Chicago')
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t1.city_code = t3.city_code WHERE t1.city_name = "Chicago"
SELECT city_name FROM city WHERE state = 'MA' ORDER BY latitude DESC LIMIT 1
SELECT city_name FROM city ORDER BY distance FROM direct_distance JOIN city AS T1 ON T1.city_code = T2.city_code WHERE T2.city1_code = 'Boston'
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT city_code, sum(distance) FROM direct_distance GROUP BY city_code
SELECT T1.city_name, avg(Distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON T2.city2_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON T2.city2_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT T1.city_name FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN Student AS T3 ON T2.city2_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" AND T3.advisor = "Tracy" Kim
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code JOIN direct_distance AS T3 ON T2.city_code = T3.city1_code WHERE T2.city_name = "Linda" AND T1.lname = "Smith" ORDER BY T3.distance
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.lname = 'Smith' AND T2.distance > (SELECT min(distance) FROM direct_distance WHERE city1_code = 'Linda' )
SELECT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = 1
SELECT DISTINCT T1.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = (SELECT sid FROM Reserves GROUP BY sid HAVING count(*) >= 2)
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
SELECT sid FROM reserves WHERE color = 'red' OR color = 'blue'
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM reserves WHERE color = 'red' INTERSECT SELECT sid FROM boats WHERE color = 'blue'
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' INTERSECT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' INTERSECT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM reserves
SELECT name, sid FROM sailors WHERE sid NOT IN (SELECT T1.sid FROM reserves)
SELECT name FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT sid FROM sailors WHERE sid NOT IN (SELECT T1.sid FROM reserves)
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = '103'
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = '103'
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating >= 3
SELECT name, age FROM sailors ORDER BY age DESC
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating), max(age) FROM sailors GROUP BY sid
SELECT avg(rating), max(age) FROM sailors GROUP BY name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) FROM reserves WHERE bid > 50
SELECT count(*) FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.sid
SELECT count(*), T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.sid
SELECT avg(T1.age), T2.rating FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 'red' GROUP BY T2.rating
SELECT T1.rating, avg(T2.age) FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" GROUP BY T1.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color = 'red'
SELECT count(*) FROM Boats WHERE color = 'red'
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" AND T1.rating > (SELECT min(rating) FROM sailors WHERE sid = T2.sid)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS, count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT CLASS, count(*) FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price ASC
SELECT model, CLASS, construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Bowls"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= 'Plastic'
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_opened
SELECT Name FROM store ORDER BY Date_opened
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood FROM store GROUP BY Neighborhood
SELECT Neighborhood FROM store GROUP BY Neighborhood
SELECT T1.Name, COUNT(*) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Headphone_ID > 0 GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Store_ID, sum(T2.Quantity) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Headphone_ID = T1.Headphone_ID GROUP BY T1.Store_ID
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT model FROM headphone ORDER BY sum(quantity) DESC LIMIT 1
SELECT count(*) FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID WHERE T2.Store_ID = (SELECT Store_ID FROM store WHERE Name = "Woodman")
SELECT sum(T2.Quantity) FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID WHERE T1.Class = "Headphones" AND T2.Store_ID = "Woodman"
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author_list AS T3 ON T1.paper_id = T3.paper_id JOIN author AS T4 ON T3.author_id = T4.author_id WHERE T2.name = "Columbia University" AND T1.year = 2009
SELECT count(*) FROM paper WHERE title LIKE '%Columbia University%' AND YEAR = 2009
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Harvard University"
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Harvard University"
SELECT title FROM paper WHERE author_id IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Mckeown')
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown'
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford" INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia"
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id JOIN citation AS T4 ON T1.paper_id = T4.paper_id WHERE T3.name = 'Rambow' AND T4.cited_paper_id = T1.paper_id
SELECT T1.title, T2.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown" AND T3.name = "Kathleen" AND T3.name = "Rambow"
SELECT title, paper_id FROM paper WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE name = 'Mckeown')
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' EXCEPT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Rambow'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 2 OR T2.author_id = 3
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id = 2 OR T2.author_id = 8
SELECT T1.name, count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*), author_id FROM Author_list GROUP BY author_id ORDER BY count(*)
SELECT count(*) FROM paper GROUP BY title ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*)
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name HAVING count(*) > 50
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name HAVING count(*) = 1
SELECT DISTINCT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name HAVING count(*) = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM Paper GROUP BY venue ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = "A00-1002"
SELECT count(DISTINCT T1.title) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.cited_paper_id = 'A00-1002'
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title LIKE '%D12-1027%'
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "John" AND T1.title = "Paper D12-1027"
SELECT T1.paper_id, COUNT(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.paper_id, COUNT(*) FROM Citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title, count(*) FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT T1.title, count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Kathleen Mckeown"
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Kathleen" AND T2.cited_paper_id IN ( SELECT T2.paper_id FROM citation AS T2 JOIN paper AS T1 ON T2.paper_id = T1.paper_id WHERE T1.title = "McKeown")
SELECT count(DISTINCT T1.title) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN author_list AS T3 ON T2.cited_paper_id = T3.author_id WHERE T3.name = 'McKeown, Kathleen'
SELECT count(DISTINCT T1.title) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.cited_paper_id = T3.author_id WHERE T3.name = 'Mckeown, Kathleen'
SELECT T1.name, COUNT(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM paper WHERE author_id = "McKeown, Kathleen"
SELECT venue, YEAR FROM Paper AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT venue, YEAR FROM paper WHERE affiliation_id IN (SELECT T1.affiliation_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Columbia University')
SELECT venue, YEAR FROM paper WHERE affiliation_id = "Columbia University"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.affiliation FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.affiliation_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE title LIKE '%Columbia University%' AND YEAR <= 2009
SELECT count(*) FROM paper WHERE title LIKE '%Columbia University%' OR title LIKE '%Columbia University%' AND YEAR <= 2009
SELECT count(*) FROM paper WHERE title LIKE '%Stanford University%' AND YEAR BETWEEN 2000 AND 2009
SELECT count(*) FROM paper WHERE title LIKE '%Stanford University%' AND YEAR BETWEEN 2000 AND 2009
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2.name = "Kathleen"
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "McKeown" INTERSECT SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN paper AS T4 ON T2.paper_id = T4.paper_id JOIN citation AS T5 ON T4.cited_paper_id = T5.paper_id WHERE T5.cited_paper_id = T4.paper_id AND T1.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown' AND T3.title = 'paper' AND T2.affiliation_id = T1.affiliation_id
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "McKeown" INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Kathleen"
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.year FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id GROUP BY T1.year
SELECT count(*), venue, YEAR FROM paper GROUP BY venue, YEAR
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name
SELECT count(DISTINCT T1.affiliation_id) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT count(DISTINCT author_id) FROM author_list WHERE affiliation_id NOT IN (SELECT T1.author_id FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY author_id HAVING count(*) > 50)
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t2.affiliation_id = t4.affiliation_id AND t4.affiliation_id = t5.affiliation_id
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id JOIN citation AS T4 ON T3.paper_id = T4.paper_id JOIN affiliation AS T5 ON T4.cited_paper_id = T5.affiliation_id JOIN affiliation AS T6 ON T5.affiliation_id = T6.affiliation_id WHERE T6.name = "NAACL" AND T6.name = "ACL" AND T3.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title = 'ACL')
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, LOCATION, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_name
SELECT T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age), min(Age) FROM staff WHERE Nationality = "USA"
SELECT max(Age), min(Age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id = (SELECT conference_id FROM conference_participation WHERE role = 'ACL') INTERSECT SELECT staff_id FROM conference_participation WHERE conference_id = (SELECT conference_id FROM conference_participation WHERE role = 'Naccl')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.Conference_ID = 2003 OR T2.Conference_ID = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.Conference_ID BETWEEN 2003 AND 2004
SELECT T1.Conference_Name, T1.Year, COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name, T1.Year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT t1.Conference_Name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID GROUP BY t1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name, LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT LOCATION FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT plane_name FROM pilot_skills WHERE age = 32
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilotSkills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'B-52'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = "B-52"
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age <= (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM hangar ORDER BY plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 UNION SELECT count(*) FROM pilotskills WHERE age < 30
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' AND T1.age > 35 OR T1.age < 30 AND T2.plane_name = 'F-14'
SELECT pilot_name, age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter' AND T2.location > 35
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT avg(age), min(age) FROM pilotSkills GROUP BY age
SELECT avg(age), min(age) FROM pilotskills GROUP BY age
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), plane_name FROM hangar GROUP BY plane_name
SELECT count(*), plane_name FROM pilotskills GROUP BY plane_name
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT DISTINCT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT max(age), T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.pilot_name
SELECT DISTINCT T1.pilot_name, max(T1.age) FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT T1.city, avg(T2.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.city
SELECT T1.location, count(*), avg(T1.age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT T1.plane_name, count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35 GROUP BY T1.plane_name
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.pilot_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14' AND T1.age < T2.age
SELECT DISTINCT T1.plane_name FROM plane_name AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > T2.age
SELECT count(*) FROM pilotskills AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > T2.age
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district GROUP BY District_ID
SELECT sum(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID ORDER BY T1.Area_km DESC LIMIT 3
SELECT District_ID, Name, Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website LIKE 'gov%'
SELECT District_ID, Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT Name, Speach_title FROM spokesman
SELECT avg(Points), avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004
SELECT T1.Name, COUNT(*) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T3.Rank_position = 1 INTERSECT SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE District_ID NOT IN (SELECT District_ID FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.Population), avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title FROM Sculptures WHERE LOCATION = "Gallery 226"
SELECT title FROM sculptures WHERE location = "Gallery 226"
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM Sculptures
SELECT T1.title, T2.location FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID
SELECT medium FROM paintings WHERE paintingID = 80
SELECT DISTINCT T1.medium FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE LOCATION!= 'Gallery 226'
SELECT T1.title, T1.year FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.lname!= "Galley"
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY deathYear ASC
SELECT fname, lname FROM Artists ORDER BY deathYear DESC
SELECT birthYear FROM Artists ORDER BY deathYear ASC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = (SELECT min(YEAR FROM paintings) FROM paintings)
SELECT fname, deathYear FROM Artists ORDER BY deathYear ASC LIMIT 1
SELECT fname, deathYear FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT count(*) FROM Paintings WHERE location = "Gallery 240"
SELECT count(*) FROM Paintings WHERE paintingID = 240
SELECT count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.birthYear = max(T1.birthYear)
SELECT count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.birthYear > T1.deathYear
SELECT T1.fname, T1.year FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.width_mm FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.location, T2.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.location, T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.medium = "lithograph"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.year = 1884
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT count(*), LOCATION FROM Paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year > 1910
SELECT DISTINCT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = "gallery 240"
SELECT DISTINCT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" AND T2.location = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.height_mm > T2.height_mm
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = "Gallery 240")
SELECT paintingID FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT paintingID FROM paintings ORDER BY year ASC LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.height_mm
SELECT DISTINCT T1.title FROM paintings ORDER BY T1.height_mm ASC
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "John" AND T2.lname = "Doe"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "John" AND T2.lname = "Lennon"
SELECT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingID FROM sculptures WHERE height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM sculptures WHERE height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE mediumON = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE mediumON = "on canvas"
SELECT DISTINCT T1.location FROM paintings AS T1 JOIN sculptures AS T2 ON T1.mediumOn = T2.medium WHERE T2.medium = "on panels" OR T2.medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM sculptures WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE medium = "oil" AND location = 241 GROUP BY paintingID
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE medium = "oil" AND location = 241 GROUP BY paintingID
SELECT max(height_mm), max(paintingID) FROM Paintings WHERE YEAR < 1900
SELECT T1.height_mm, T1.paintingID FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year < 1900
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname, T1.lname ORDER BY T1.fname
SELECT avg(T1.height_mm), avg(T1.width_mm), T2.fname, T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID GROUP BY T2.fname, T2.lname ORDER BY T2.fname
SELECT T1.fname, COUNT(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING COUNT(*) >= 2
SELECT T1.fname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) <= 3
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) < 4
SELECT T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) ASC LIMIT 1
SELECT T1.fname, T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) ASC LIMIT 1
SELECT paintingid, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), painterID FROM paintings WHERE location = 240 GROUP BY painterID
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = "gallery 240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = 'Gallery 240' )
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, LOCATION, title FROM paintings ORDER BY YEAR
SELECT paintingid, LOCATION, title FROM paintings ORDER BY YEAR
SELECT T1.year, T1.location, T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.height_mm > 1000 ORDER BY T1.title
SELECT title, LOCATION, YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID NOT IN (SELECT T2.sculptorID FROM Sculptures AS T2)
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 AND medium!= "canvas"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.year < 1885 AND T1.medium!= "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position!= "Junior Strous"
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position!= "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT T1.entrant FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.age >= 20
SELECT DISTINCT entrant FROM driver WHERE Age >= 20
SELECT max(Age), min(Age) FROM driver
SELECT max(Age), min(Age) FROM driver
SELECT count(DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT count(*), Driver_ID FROM race GROUP BY Driver_ID
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_Name, T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT DISTINCT T1.Driver_Name, T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Engine FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Engine HAVING COUNT(*) >= 2
SELECT DISTINCT T1.engine FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.engine HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = T1.Driver_Name WHERE T1.Driver_Name = "James Hinchcliffe"
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
SELECT count(DISTINCT name FROM languages)
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries GROUP BY country_id
SELECT avg(justice_score) FROM countries
SELECT max(health_score), min(health_score) FROM countries WHERE name!= 'Norway'
SELECT max(health_score), min(health_score) FROM countries WHERE country!= 'Norway'
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name, T2.language_id FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE name = "English"
SELECT avg(overall_score) FROM countries WHERE name = "English"
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT town_city FROM Addresses
SELECT town_city FROM addresses
SELECT county_state_province FROM Addresses UNION SELECT county_state_province FROM Properties
SELECT county_state_province FROM Addresses
SELECT feature_description FROM Features WHERE feature_name = "rooftop";
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = '1' OR garage_yn = '1'
SELECT count(*) FROM Properties WHERE parking_lots = '1' OR garage_yn = '1'
SELECT age_category_code FROM Users WHERE user_category_description LIKE '%Mother%'
SELECT age_category_code FROM Users WHERE user_category_description LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'Room' AND garden_yn = '1'
SELECT avg(room_count) FROM Properties WHERE property_type_code = "Garden"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT town_city FROM Addresses WHERE zip_postcode LIKE '%pool%'
SELECT property_id, price_min FROM Properties ORDER BY price_min ASC
SELECT property_id, min(price_min) FROM Properties GROUP BY property_id
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Rooms GROUP BY property_id
SELECT count(DISTINCT room_size FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(T1.datestamp) FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id WHERE T1.user_id = (SELECT user_id FROM User_Searches GROUP BY user_id ORDER BY datestamp DESC LIMIT 1)
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT T1.search_datetime, T2.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.search_string ORDER BY T1.search_datetime DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM Addresses WHERE property_id NOT IN (SELECT T1.property_id FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id WHERE T2.user_id IN (SELECT T1.owner_user_id FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id HAVING count(*) <= 2))
SELECT zip_postcode FROM Addresses WHERE property_id NOT IN (SELECT property_id FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Properties GROUP BY user_id HAVING COUNT(*) <= 2) )
SELECT T1.user_category_code, T2.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) = 1
SELECT user_id, user_category_code FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT age_category_code FROM User_Searches ORDER BY search_datetime ASC LIMIT 1
SELECT T1.age_category_code FROM Ref_user_categories AS T1 JOIN User_searches AS T2 ON T1.user_category_code = T2.user_id ORDER BY T2.search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_Searches
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_type_code = 1
SELECT first_name, last_name FROM users WHERE user_category_code = "Seller"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Senior Citizen"
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T2.property_id HAVING count(*) >= 2
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T2.property_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Photos GROUP BY property_id
SELECT count(*), property_id FROM Property_Photos GROUP BY property_id
SELECT T1.user_id, count(*) FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id
SELECT T1.user_id, COUNT(*) FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id JOIN Users AS T3 ON T2.user_id = T3.user_id GROUP BY T1.user_id
SELECT max(T1.price_max FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.middle_name LIKE '%mother%' OR T2.middle_name LIKE '%student%'
SELECT max(T1.price_max FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name = "single" OR T2.last_name = "mother" OR T2.first_name = "student")
SELECT datestamp, property_name FROM User_Property_History ORDER BY datestamp
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT property_type_description FROM Ref_Property_Types GROUP BY property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_code, T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code > 60
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT count(DISTINCT room_size FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN User_Property_History AS T2 ON T1.address_id = T2.property_id JOIN Users AS T3 ON T2.user_id = T3.user_id WHERE T3.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN User_Property_History AS T2 ON T1.address_id = T2.property_id JOIN Users AS T3 ON T2.user_id = T3.user_id WHERE T3.first_name = "Robbie"
SELECT T1.first_name, T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T1.first_name, T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.property_name = "your_property_name"
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT DISTINCT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
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
SELECT count(*) FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T1.name NOT IN (SELECT T1.name FROM cyclists AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T2.purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.result > '4:21.558'
SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT cyclist_id, count(*) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 1
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT Flavor FROM goods ORDER BY Price ASC LIMIT 1
SELECT id, flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT Id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.item WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receipt AND T3.item = 'lemon'
SELECT T1.Food, COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = T2.flavor GROUP BY T1.flavor
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.CustomerId JOIN goods AS T3 ON T2.Item = T3.id GROUP BY T1.LastName, T1.FirstName
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.receipt JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = 'bakery' GROUP BY T1.id HAVING count(*) >= 15
SELECT DISTINCT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Id = T2.ReceiptNumber WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id JOIN receipts AS T3 ON T2.id = T3.item WHERE T3.customerid = 15
SELECT avg(Price), max(Price), min(Price) FROM goods GROUP BY Food
SELECT avg(Price), min(Price), max(Price) FROM goods GROUP BY Food
SELECT receiptnumber FROM goods JOIN items ON goods.id = items.id JOIN receipts ON items.receipt = receipts.receiptnumber WHERE goods.flavor = "Cake" INTERSECT SELECT receiptnumber FROM goods JOIN items ON goods.id = items.id JOIN receipts ON items.receipt = receipts.receiptnumber WHERE goods.flavor = "Cookie"
SELECT receiptnumber FROM items WHERE item = 'cakes' INTERSECT SELECT receiptnumber FROM items WHERE item = 'cookies'
SELECT receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "LOGAN" AND T1.flavor = "Croissant"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN items AS T3 ON T1.Receipt = T3.Receipt WHERE T3.Food = "croissant" AND T2.FirstName = "Logan"
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Id = T2.Receipt AND T2.Item = T1.Item GROUP BY T1.Receipt ORDER BY T2.Price DESC LIMIT 1
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Price = (SELECT max(price) FROM items)
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.Item WHERE T2.ReceiptNumber = (SELECT min(receiptnumber) FROM receipts)
SELECT Flavor, COUNT(*) FROM goods GROUP BY Flavor
SELECT Flavor, COUNT(*) FROM goods GROUP BY Flavor
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT id FROM goods WHERE Flavor = 'Apricot' AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Food = 'Tart'
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Id = T3.Id WHERE T3.Price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Id = T2.Receipt AND T2.Item = "Good" WHERE T2.Price > 13
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.id = T3.id WHERE T3.Price > 15
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Id = T3.Id WHERE T3.Price > 15
SELECT Id FROM goods WHERE id LIKE "APP"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT t1.id, t1.price FROM goods AS t1 JOIN items AS t2 ON t1.id = t2.id WHERE t2.flavor = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods ORDER BY price
SELECT DISTINCT id FROM goods ORDER BY Price
SELECT DISTINCT T1.ReceiptNumber FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.id WHERE T1.flavor = "apple" OR T2.CustomerId = 12
SELECT receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.id = T2.receipt AND T2.item = 'apple'
SELECT Date FROM receipts WHERE id = (SELECT id FROM receipts ORDER BY date DESC LIMIT 1)
SELECT receiptnumber FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10)
SELECT receiptnumber FROM receipts WHERE date > '2022-01-01' OR price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT t1.firstname, t1.lastname FROM customers AS t1 JOIN receipts AS t2 ON t1.id = t2.customerid ORDER BY t2.date ASC LIMIT 1
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "cheese"
SELECT Flavor FROM goods WHERE Food = "Cheese" ORDER BY price ASC
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price), max(Price) FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Id, COUNT(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT T1.CustomerId) FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T2.Date
SELECT count(*), T1.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.date
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN items AS T3 ON T2.Id = T3.Id WHERE T3.Food = "Tart"
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN items AS T3 ON T2.Id = T3.Id WHERE T3.Food = "apple"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Flavor = 'Croissant'
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'croissant'
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = "Tart")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = 'Tart'
SELECT Id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id, flavor, TYPE FROM goods ORDER BY price
SELECT id, Flavor, Food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, Flavor FROM goods ORDER BY Flavor
SELECT Flavor FROM goods WHERE Flavor = "chocolate" EXCEPT SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id GROUP BY T2.flavor HAVING count(*) > 10
SELECT T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.flavor = "chocolate" GROUP BY T2.id HAVING count(*) >= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food!= 'Tart'
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT t1.item FROM items AS t1 JOIN goods AS t2 ON t1.id = t2.id GROUP BY t1.item ORDER BY sum(t1.price) DESC LIMIT 3
SELECT id FROM customers WHERE sum(T1.id) > 150
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.amount) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber AND T3.item = T3.id GROUP BY T1.id HAVING avg(T3.price) > 5
SELECT id FROM receipts AS T1 JOIN items AS T2 ON T1.id = T2.receiptnumber GROUP BY T2.id HAVING avg(T2.price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.date HAVING sum(T2.price) > 100
SELECT Date FROM goods WHERE sum(Price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) FROM driver WHERE points > 150 GROUP BY Make
SELECT Make, COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make, avg(Age) FROM driver GROUP BY Make
SELECT avg(Age), Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T1.Driver FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id
SELECT T1.Name, T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Country_id JOIN driver AS T3 ON T2.Driver_id = T3.Driver_id
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English" GROUP BY T1.Country
SELECT avg(T1.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT DISTINCT country FROM driver WHERE points > 150
SELECT Capital FROM country ORDER BY Points DESC LIMIT 1
SELECT Capital FROM country ORDER BY Points DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT make, count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(DISTINCT Driver_ID) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN team AS T2 ON T1.Country_id = T2.Country_id JOIN driver AS T3 ON T2.Team_ID = T3.Driver_ID WHERE T3.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN team AS T2 ON T1.Country_id = T2.Country_id JOIN driver AS T3 ON T2.Team_ID = T3.Driver_ID WHERE T3.Make = "Chevrolet"
SELECT Country FROM country JOIN team AS T1 ON country.Country = T1.Country WHERE T1.Make = "Dodge" INTERSECT SELECT Country FROM country JOIN team AS T1 ON country.Country = T1.Country WHERE T1.Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver GROUP BY Country
SELECT sum(Points), avg(Points) FROM driver GROUP BY Country
SELECT Country FROM country EXCEPT SELECT Country FROM driver
SELECT Country FROM country EXCEPT SELECT Country FROM driver
SELECT Manager, Sponsor FROM team GROUP BY Manager, Sponsor ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T2.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT T1.Manager, T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT DISTINCT T1.City, T1.Province FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT DISTINCT T1.City, T1.Province FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT max(Enrollment), min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City!= "Vancouver"
SELECT Affiliation FROM institution WHERE City!= "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name, T1.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT Nickname FROM Championship ORDER BY Enrollment ASC LIMIT 1
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment ASC LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T2.Institution_ID ORDER BY COUNT(*) DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_ChampionshipS DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = "Public"
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = "Public"
SELECT count(*), affiliation FROM institution GROUP BY affiliation
SELECT count(*), affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded, COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded > 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province FROM institution
SELECT count(DISTINCT Province FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM Boxes WHERE Warehouse = "New York"
SELECT DISTINCT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(T2.Value), T1.Warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T1.Warehouse
SELECT avg(value), sum(value) FROM Boxes GROUP BY Contents
SELECT avg(value), sum(value) FROM Boxes GROUP BY Contents
SELECT avg(capacity), sum(capacity) FROM Warehouses GROUP BY Warehouse
SELECT avg(capacity), sum(capacity) FROM Warehouses GROUP BY Warehouse
SELECT avg(value), max(value) FROM boxes GROUP BY contents
SELECT avg(value), max(value), Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes GROUP BY Warehouse
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents FROM Boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT code FROM Boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT code FROM Boxes WHERE Warehouse = "Chicago" OR Warehouse = "New York"
SELECT sum(T2.Value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = "Chicago" OR T1.Location = "New York"
SELECT sum(T2.Value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = "Chicago" OR T1.Location = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse!= (SELECT Code FROM Warehouses WHERE LOCATION = "New York")
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.Warehouse WHERE T2.Contents = "Rocks" EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.Warehouse WHERE T2.Contents = "Scissors"
SELECT Warehouse FROM Boxes WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT DISTINCT T1.Warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" OR T1.Contents = "Scissors"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" INTERSECT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks" INTERSECT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Scissors"
SELECT code, contents FROM boxes ORDER BY value
SELECT code, Contents FROM Boxes ORDER BY Value
SELECT code, contents FROM Boxes ORDER BY value ASC
SELECT code, contents FROM Boxes ORDER BY value ASC
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM Boxes WHERE value > (SELECT min(value) FROM Boxes WHERE Contents = "Rocks")
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code, contents FROM Boxes WHERE value > (SELECT min(value) FROM Boxes WHERE Contents = "Scissors")
SELECT code, contents FROM Boxes WHERE value > (SELECT min(value) FROM Boxes WHERE Contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM Boxes WHERE Warehouse = (SELECT max(capacity) FROM Warehouses)
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse HAVING avg(Value) > 150
SELECT avg(T1.Value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Warehouse HAVING avg(T1.Value) > 150
SELECT sum(value), count(*) FROM boxes GROUP BY Contents
SELECT sum(value), count(*) FROM boxes GROUP BY contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT Warehouse FROM Boxes GROUP BY Warehouse ORDER BY Value DESC LIMIT 1
SELECT warehouse FROM boxes GROUP BY warehouse ORDER BY max(value) DESC
SELECT Warehouse, COUNT(*) FROM Boxes GROUP BY Warehouse
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(DISTINCT LOCATION FROM Warehouses WHERE Type = "Rocks"
SELECT count(DISTINCT Warehouse FROM Boxes WHERE Contents = "Rocks"
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT code FROM Boxes WHERE LOCATION = "Chicago"
SELECT code FROM Boxes WHERE Warehouse = "Chicago"
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(*), warehouse FROM Boxes GROUP BY warehouse
SELECT count(DISTINCT Contents FROM Boxes WHERE Warehouse = `Warehouse1` OR Warehouse = `Warehouse2` OR Warehouse = `Warehouse3` )
SELECT count(DISTINCT Contents FROM Boxes WHERE Warehouse = "Warehouse1" OR Warehouse = "Warehouse2" OR Warehouse = "Warehouse3"
SELECT code FROM warehouses WHERE capacity > 100
SELECT code FROM boxes GROUP BY code HAVING count(*) > capacity
SELECT sum(value) FROM boxes WHERE warehouse!= (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university GROUP BY University_ID
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university GROUP BY University_ID
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) FROM university GROUP BY Home_Conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY sum(Enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT T1.Major_Name, T2.Major_Rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.Major_Name FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN overall_ranking AS T3 ON T2.University_ID = T3.University_ID WHERE T3.Rank = 1
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking ORDER BY Rank)
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name, T1.University_ID FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN overall_ranking AS T3 ON T2.University_ID = T3.University_ID WHERE T1.State = "Wisconsin"
SELECT T1.University_Name, T1.University_ID FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN overall_ranking AS T3 ON T2.University_ID = T3.University_ID WHERE T1.State = "Wisconsin"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT University_Name FROM university ORDER BY Reputation_point ASC
SELECT University_Name FROM university ORDER BY Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT sum(Enrollment) FROM university WHERE University_ID IN (SELECT University_ID FROM overall_ranking WHERE Rank <= 5)
SELECT count(*) FROM university WHERE University_ID >= 5
SELECT T1.University_Name, T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name, T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT code FROM movies WHERE rating > 0)
SELECT DISTINCT title FROM Movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT title FROM MovieTheaters WHERE name = 'Odeon'
SELECT Title FROM Movies WHERE MovieCode IN (SELECT MovieCode FROM MovieTheaters WHERE Name = "Odeon")
SELECT T1.Title, T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code
SELECT T1.title, T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters WHERE Movie = 'playing'
SELECT count(*) FROM MovieTheaters WHERE code = 'T'
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT Name FROM MovieTheaters WHERE Rating = 'G' OR Rating = 'PG'
SELECT Title FROM Movies WHERE MovieTheaters.Code = "Odeon" OR MovieTheaters.Code = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code WHERE T2.Name = "Odeon" OR T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T1.Name = "Odeon" INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T1.Name = "Imperial"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM Movies ORDER BY Rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM MovieTheaters GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Title = (SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie GROUP BY T1.Title ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT name FROM MovieTheaters WHERE code IN (SELECT T1.code FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code)
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT T1.Code FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Code HAVING COUNT(*) >= 1)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT name FROM MovieTheaters WHERE rating = 'G'
SELECT title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T2.Weight = (SELECT max(weight) FROM Package)
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T2.Weight = (SELECT max(weight) FROM Package)
SELECT sum(weight) FROM Package WHERE sender = "Leo Wong"
SELECT sum(weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Leo Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary, POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT Salary, POSITION FROM EMPLOYEE WHERE Name = "Turanga Leela"
SELECT avg(Salary) FROM EMPLOYEE
SELECT avg(Salary) FROM Employee
SELECT LEVEL FROM Has_clearance WHERE POSITION = "Physician"
SELECT LEVEL FROM Has_clearance WHERE Employee = "Physician"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Leo Wong"
SELECT count(DISTINCT T1.Sender FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Employee AS T3 ON T1.Recipient = T3.EmployeeID WHERE T3.Name = "Leo Wong"
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Recipient = "Leo Wong"
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Manager = "Leo Wong"
SELECT Sender FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Recipient = "Leo Wong"
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Recipient = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Leo Wong" INTERSECT SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Ogden Wernstrom"
SELECT count(*) FROM Shipment AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Shipment AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name = "Leo Wong"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT Contents FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Sender = "John Zoidfarb"
SELECT T1.PackageNumber, T1.Weight FROM PACKAGE AS T1 JOIN SHipment AS T2 ON T1.Shipment = T2.Shipment WHERE T2.Recipient = "John"
SELECT T1.PackageNumber, T1.Weight FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.Shipment WHERE T2.Sender = "John" OR T2.Sender = "John"
SELECT T1.PackageNumber, T1.Weight FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID ORDER BY T1.Weight ASC LIMIT 3
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT T1.Name, COUNT(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.Name ORDER BY COUNT(*) DESC
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.Recipient GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT min(T1.Sender), T2.name FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.ShipmentID GROUP BY T1.Sender
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T2.Sender > 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT ShipmentID FROM Shipment WHERE Manager = "Phillip J. Fry"
SELECT ShipmentID FROM Shipment AS T1 JOIN Has_clearance AS T2 ON T1.Manager = T2.Employee WHERE T2.Employee = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM Planet WHERE Name = "Mars"
SELECT ShipmentID FROM Planet WHERE Name = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" AND Manager = (SELECT EmployeeID FROM Employee WHERE Position = "Turanga Leela")
SELECT shipmentid FROM shipment AS T1 JOIN Has_clearance AS T2 ON T1.planet = T2.planet AND T1.manager = T2.employeeid WHERE T2.employee = "Turanga Leela"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" OR Manager = (SELECT EmployeeID FROM Employee WHERE Name = "Turanga Leela")
SELECT ShipmentID FROM Shipment WHERE Manager = "Turanga Leela" AND Planet = "Mars"
SELECT T1.Name, COUNT(*) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name
SELECT count(*), T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Date = (SELECT min(Date) FROM Shipment GROUP BY T2.Planet ORDER BY T2.Date ASC) GROUP BY T1.Name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.ShipmentID = (SELECT max(ShipmentID) FROM Shipment GROUP BY Planet ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.ShipmentID = (SELECT max(ShipmentID) FROM Shipment)
SELECT T1.name, COUNT(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT count(*), T1.name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T1.Weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Planet = "Mars"
SELECT sum(weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Mars"
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Weight > 100
SELECT sum(T1.Weight), T2.Name FROM Package AS T1 JOIN Planet AS T2 ON T1.Recipient = T2.PlanetID GROUP BY T2.Name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Weight > 30
SELECT Name FROM Planet WHERE Weight > 30
SELECT count(*) FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Recipient = "Zapp Brannigan" AND T2.Sender = "Omicron Persei 8"
SELECT count(*) FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T2.Recipient = "Zapp Brannigan" AND T1.ShipDate = "2022-01-01" AND T2.Planet = "Omicron Persei 8"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Zapp Brannigan" AND T2.Planet = "Omicron Persei 8"
SELECT count(*) FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Recipient = "Zapp Brannigan" AND T1.Planet = "Omicron Persei 8"
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = 'Mars')
SELECT Name FROM EMPLOYEE WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE T2.planet = 'Omega III'
SELECT Name FROM Has_clearance WHERE Planet = "Omega III"
SELECT T1.Name FROM Planet AS T1 JOIN Has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Employee = 1
SELECT T1.Name FROM Planet AS T1 JOIN Has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Employee = (SELECT EmployeeID FROM Has_clearance GROUP BY EmployeeID HAVING COUNT(*) = 1)
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = 'Mars')
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Has_clearance WHERE Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title, Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title, developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT Platform_name, Market_district FROM platform
SELECT Platform_name, Market_district FROM platform
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT max( Rank_of_the_year ), min( Rank_of_the_year ) FROM player GROUP BY Rank_of_the_year
SELECT max(Year_of_the_year), min(Year_of_the_year) FROM player GROUP BY Player_ID
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = "Auburn"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game WHERE Platform_ID = platform.Platform_ID WHERE POSITION = "Guard"
SELECT avg(Units_sold_Millions) FROM game WHERE Platform_ID = game_player.Game_ID AND POSITION = "Guard"
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Franchise, COUNT(*) FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID GROUP BY T1.Franchise
SELECT Franchise, COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY Units_sold_Millions DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position!= "Guard"
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE POSITION = "Guard"
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 1500000000 OR month_profits_billion > 1000000
SELECT name FROM press WHERE YEAR_Profits_billion > 1500000000 OR MONTH_Profits_billion > 1000000000
SELECT avg(YEAR_Profits_billion), max(YEAR_Profits_billion) FROM press
SELECT avg(YEAR_Profits_billion), max(YEAR_Profits_billion) FROM press GROUP BY Press_ID
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE Age < 30
SELECT avg(age), Gender FROM author GROUP BY Gender
SELECT gender, avg(age) FROM author GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*), book_series FROM book GROUP BY book_series
SELECT book_series, count(*) FROM book GROUP BY book_series
SELECT title, Release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT Title, Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) > 1000 INTERSECT SELECT book_series FROM book GROUP BY book_series HAVING sum(sale_amount) < 500
SELECT DISTINCT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT DISTINCT book_series FROM book WHERE sale_amount < 500
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT name, age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Title, T1.Author_ID, T1.Title AS Author_Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title, T1.Author_ID, T1.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Name, SUM(T2.Sale_Amount) FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T1.Name FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID WHERE T2.Sale_Amount > 1000
SELECT T1.Name, COUNT(*) FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID WHERE T2.Sale_Amount > 1000 GROUP BY T1.Name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T1.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = 'Accor')
SELECT T1.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT T1.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM authors WHERE author_name = 'John Smith'
SELECT author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT T1.author_name, T1.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name
SELECT author_name FROM authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Bianka Cummings"
SELECT T1.author_name, T1.other_details FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT author_name, count(*) FROM authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT T1.next_process_id, T1.process_name, T1.process_description FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_id = 9
SELECT process_name FROM Business_processes WHERE process_id = 9 ORDER BY process_status_code DESC LIMIT 1
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(DISTINCT process_status_code) FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM staff WHERE staff_id = 100
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_processes AS T2 ON T1.document_id = T2.document_id JOIN Business_processes AS T3 ON T2.process_id = T3.process_id JOIN Process_statuses AS T4 ON T3.process_status_code = T4.process_status_code WHERE T4.process_status_description = "in_progress"
SELECT process_id FROM Documents
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_processes
SELECT process_id FROM Business_processes WHERE process_id NOT IN (SELECT process_id FROM Documents_processes)
SELECT T1.process_outcome_description, T2.process_status_description FROM Process_outcomes AS T1 JOIN Documents_processes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.document_id = 0
SELECT T1.process_name FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id WHERE T2.document_id = "Travel to Brazil"
SELECT process_id, count(*) FROM Documents AS T1 JOIN Documents_processes AS T2 ON T1.document_id = T2.document_id GROUP BY T2.process_id
SELECT count(*) FROM staff AS T1 JOIN Staff_in_processes AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id = 0 AND T2.process_id = 9
SELECT staff_id, count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT T1.staff_role_code, count(*) FROM Ref_Staff_Roles AS T1 JOIN Staff_in_processes AS T2 ON T1.staff_role_code = T2.staff_role_code GROUP BY T1.staff_role_code
SELECT count(DISTINCT T1.staff_role_code) FROM Ref_Staff_Roles AS T1 JOIN Staff AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T2.staff_id = 3
SELECT count(DISTINCT agency_id) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id, agency_details FROM agencies
SELECT agency_id, agency_details FROM agencies
SELECT count(DISTINCT client_id) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT agency_id, count(*) FROM Clients GROUP BY agency_id
SELECT count(DISTINCT T1.agency_id) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id JOIN Staff AS T3 ON T1.agency_id = T3.agency_id
SELECT T1.client_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*), sic_code FROM Clients GROUP BY sic_code
SELECT count(*), sic_code FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT client_id FROM clients
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT client_id, COUNT(*) FROM Invoices GROUP BY client_id
SELECT count(*), client_id FROM Invoices GROUP BY client_id
SELECT client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, COUNT(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, client_id, agency_id, client_details FROM Invoices
SELECT T1.invoice_status, T1.invoice_details, T1.client_id, T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type, other_details FROM Meetings
SELECT meeting_type, other_details FROM Meetings
SELECT DISTINCT T1.meeting_outcome, T1.purpose_of_meeting FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT DISTINCT T1.meeting_outcome FROM Meetings AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.invoice_id, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T1.invoice_id, T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id, T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT T1.invoice_id, T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id, T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id, count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id, count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T2.agency_id
SELECT agency_id, count(DISTINCT staff_id) FROM Staff GROUP BY agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Staff_in_Meetings AS T2 ON T1.agency_id = T2.staff_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Staff_in_Meetings AS T2 ON T1.agency_id = T2.staff_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, COUNT(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM Meetings GROUP BY client_id
SELECT count(*), client_id FROM meetings GROUP BY client_id
SELECT T1.meeting_type, count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT meeting_type, count(*) FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T3.client_id = T2.client_id
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id FROM meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT meeting_id, count(*) FROM Staff_in_meetings GROUP BY meeting_id
SELECT COUNT(*), T1.meeting_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id, count(*) FROM Staff AS T1 JOIN Staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Invoices AS T3 ON T1.client_id = T3.client_id
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Payments AS T3 ON T1.client_id = T3.client_id
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id > 0 GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_type = 'Staff'
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IN (SELECT T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_type = 'Staff' AND T2.meeting_outcome = 'Attend' AND T2.start_date_time LIKE '%/%/%' AND T2.end_date_time LIKE '%/%/%')
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Invoices AS T3 ON T1.client_id = T3.client_id WHERE T2.meeting_outcome = 'yes' AND T3.invoice_status = 'paid'
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Invoices AS T3 ON T1.client_id = T3.client_id WHERE T2.meeting_outcome = 'yes' AND T3.invoice_status = 'paid'
SELECT T1.start_date_time, T1.end_date_time, T2.client_details, T3.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id
SELECT T1.start_date_time, T1.end_date_time, T1.client_id, T1.staff_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
