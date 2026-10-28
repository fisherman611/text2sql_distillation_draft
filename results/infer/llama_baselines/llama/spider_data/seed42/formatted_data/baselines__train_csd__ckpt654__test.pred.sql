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
SELECT Country FROM player WHERE Earnings > 2000 ORDER BY Earnings DESC LIMIT 1
SELECT T1.Country FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING count(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID ORDER BY avg(T1.Earnings) DESC
SELECT Manufacturer, COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer, COUNT(*) FROM club GROUP BY Manufacturer
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
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT T1.order_id, T1.order_status_code, count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM Orders GROUP BY date_order_placed ORDER BY date_order_placed ASC LIMIT 1 UNION SELECT order_id FROM Order_items GROUP BY order_id HAVING count(*) > 1
SELECT min(date_order_placed), order_id FROM orders GROUP BY order_id HAVING count(*) > 1
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM Customers EXCEPT SELECT T1.customer_first_name, T1.customer_last_name, T1.customer_middle_initial FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT product_id, product_name, product_price, product_color FROM products GROUP BY product_id HAVING count(*) < 2
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender, count(*) FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender
SELECT gender_code, count(*) FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT customer_id, gender_code FROM orders GROUP BY gender_code
SELECT customer_id, gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T1.customer_last_name, T1.customer_middle_initial, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code, T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipment_items AS T2 ON T1.invoice_number = T2.invoice_number
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT order_item_status_code, shipment_tracking_number FROM Order_items JOIN Shipments ON order_item_id = shipments.order_id
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = "Ordered" AND T2.shipment_date > "2010-01-01"
SELECT T2.product_name, T2.product_color FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM INVOICES WHERE invoice_number NOT IN (SELECT invoice_number FROM SHIPPMENTS)
SELECT invoice_status_code FROM INVOICES WHERE invoice_status_code!= "Shipped"
SELECT sum(T1.order_id), T1.date_order_placed, T1.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id, T1.date_order_placed, sum(T2.product_price) FROM Orders AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM Orders
SELECT count(DISTINCT order_item_status_code FROM Order_items GROUP BY order_item_status_code
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) > 5)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM Orders
SELECT order_status_code, date_order_placed FROM Orders
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM Shipments
SELECT count(*) FROM shipments WHERE shipment_date > '2022-01-01'
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT avg(product_price) FROM Products GROUP BY product_price
SELECT email_address, town_city, county FROM Customers WHERE gender_code = "M" GROUP BY email_address, town_city, county ORDER BY count(*) LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = 'M' GROUP BY email_address, town_city, county ORDER BY count(*) LIMIT 1
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipment_items AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T2.Name FROM program AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T2.Age FROM director_admin AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T2.name, T2.website FROM program AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT T2.name, count(*) FROM program AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.Name FROM program AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID WHERE T1.Title = "Dracula"
SELECT T2.name, T2.Internet FROM director_admin AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.director_id = T2.channel_id WHERE T1.age < 40 INTERSECT SELECT T2.name FROM director AS T1 JOIN channel AS T2 ON T1.director_id = T2.channel_id WHERE T1.age > 60
SELECT channel_id, name FROM channel EXCEPT SELECT T1.channel_id, T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id WHERE T2.director_id = 'Hank Baskett'
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation!= "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT affiliation, count(*) FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3
SELECT T1.city, T2.station_name FROM city_channel AS T1 JOIN city_channel_tv_show AS T2 ON T1.city_channel_id = T2.city_channel_id ORDER BY T2.station_name
SELECT T1.Transmitter, T2.City_channel_ID FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter, T2.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.ERP_kW DESC
SELECT T1.Transmitter, COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), T1.driver_id FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_ID, COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) LIMIT 1
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) LIMIT 1
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(*) FROM vehicle_driver WHERE Series = 'NASCAR'
SELECT count(*) FROM vehicle_driver WHERE racing_series = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T2.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 1 OR T1.Build_Year = 'Ziyang'
SELECT T2.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN (SELECT Driver_ID FROM driver WHERE Citizenship = "Ziyang")
SELECT T2.Vehicle_ID, T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.driver_id = T3.driver_id WHERE T3.Name = 'Jeff Gordon'
SELECT T2.Vehicle_ID, T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Driver_ID = "Jeff Gordon"
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series, count(*) FROM vehicle_driver GROUP BY Racing_Series
SELECT Racing_Series, count(*) FROM vehicle_driver GROUP BY Racing_Series
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T2.Name, T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Model = 'DJ1'
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY count(*) DESC
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Student_ID ORDER BY COUNT(*) DESC
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Ansessment FROM Student_Assessments AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Exam_Name FROM Exams AS T1 JOIN Student_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID GROUP BY T1.Exam_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, count(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM Addresses
SELECT address_id, address_details FROM Addresses
SELECT address_id, address_details FROM addresses
SELECT count(*) FROM Products
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
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price LIMIT 1
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
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, count(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = 'PayPal' GROUP BY customer_name ORDER BY count(*) LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM Customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = "Jeromy"
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Jeromy"
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code, count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_name = 'Monitor'
SELECT sum(order_quantity) FROM Order_items WHERE product_id IN (SELECT product_id FROM Order_items GROUP BY product_id HAVING count(*) > 1)
SELECT count(*) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date, T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 6 OR count(*) > 3
SELECT order_id, order_date FROM Order_items GROUP BY order_id HAVING order_quantity > 6 OR count(*) > 3
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
SELECT T2.Name, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Capital ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address, T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Address, T1.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT sum(Number_of_Stories) FROM building WHERE Region_ID = "Abruzzo"
SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = "Abruzzo"
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name, Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM CHANNS ORDER BY Channel_Details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING COUNT(*) > 3
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_details HAVING COUNT(*) > 3
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id JOIN Services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id JOIN Services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_details ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT customers_details, service_details) FROM Customers_and_Services
SELECT count(*) FROM Customers_and_Services
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM Customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_id = T2.Service_id JOIN Customer_Interactions AS T3 ON T2.Customer_id = T3.customer_id WHERE T3.Status_Code = "good" OR T2.Customer_id = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Status_Code = "good" OR T2.Customer_details = "Hardy Kutch"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_id = T2.Service_id JOIN Customer_Interactions AS T3 ON T1.Service_id = T3.Service_id WHERE T2.Customer_id = "Hardy Kutch" AND T3.Status_Code = "bad"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T1.Service_ID = T3.Service_ID WHERE T2.Customer_ID = "Hardy Kutch" AND T3.Status_Code = "bad"
SELECT T1.Service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_Channels_details = "15 ij"
SELECT T1.Service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_Channels_details = "15 ij"
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = "Stuck" INTERSECT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id JOIN Channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "bad"
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Status_Code = "Successful"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_details LIKE "%Success%"
SELECT T1.customer_details FROM Customers AS T1 JOIN Integration_Platform AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = "Failed"
SELECT T1.customer_details FROM Customers AS T1 JOIN Integration_Platform AS T2 ON T1.customer_id = T2.customer_id WHERE T2.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT services_details FROM customers_and_services)
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code, COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Status_Code = "unsatisfied"
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_Channels_details = "unsatisfied"
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
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Angular_fuel_cost), max(Angular_fuel_cost), avg(Angular_fuel_cost) FROM Vehicles
SELECT min(Amount), max(Amount), avg(Amount) FROM Vehicles
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT T1.name, sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT T1.name, T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate), avg(highway_fuel_economy_rate), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain, avg(City_fuel_economy_rate), avg(Highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id, T2.bio_data FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data, T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Detention AS T3 ON T1.student_id = T3.student_id JOIN Student_Events AS T4 ON T1.student_id = T4.student_id JOIN Student_Loans AS T5 ON T1.student_id = T5.student_id
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_type_description FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details, T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.address_details, T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.bio_data, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*), T1.event_type_code, T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T1.event_type_description, count(*) FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT achievement_details, achievement_type_description FROM Achievements
SELECT achievement_details, achievement_type_description FROM Achievements
SELECT count(*) FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id WHERE T1.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT T1.achievement_type_code, T1.achievement_type_description, T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code, T1.achievement_details, T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT student_details FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details, T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*), teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id, count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id, count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_transcript DESC LIMIT 1
SELECT date_of_transcript FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Transcripts AS T2 ON T1.teacher_id = T2.student_id ORDER BY T2.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY date_of_transcript LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(*) FROM Detention
SELECT address_type_code, address_type_description FROM Students_Addresses GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = "Event" AND T2.student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from, T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.date_from, T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM Author
SELECT name, address FROM Client
SELECT Name, Address FROM Client
SELECT title, isbn, saleprice FROM Book
SELECT title, ISBN, SalePrice FROM Book
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOKS_ORDER
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT Name, Address FROM Client ORDER BY Name
SELECT Name, Address FROM Client ORDER BY Name
SELECT T1.Title, T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.id_book
SELECT T2.Title, T1.Name FROM Author AS T2 JOIN Book AS T1 ON T1.ISBN = T2.ISBN
SELECT IdClient, Name FROM Client
SELECT IdOrder, Name FROM Orders
SELECT T2.Name, count(*) FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM Author_Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor GROUP BY T2.Name
SELECT ISBN, count(*) FROM Books_order GROUP BY ISBN
SELECT ISBN, count(*) FROM Books_order GROUP BY ISBN
SELECT ISBN, sum(amount) FROM Books_order GROUP BY ISBN
SELECT T1.ISBN, sum(T2.amount) FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1
SELECT T1.Title, T1.PurchasePrice FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title, T1.PurchasePrice FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.idOrder
SELECT DISTINCT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.DateOrder
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT T1.Name, COUNT(*) FROM Author AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.Author GROUP BY T1.Name
SELECT T1.Name, count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.IdClient ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Author AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.Author WHERE T2.IdOrder = (SELECT max(IdOrder) FROM Books_Order)
SELECT T1.Name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.Author GROUP BY T1.Name
SELECT T1.Name, sum(T2.amount) FROM Client AS T1 JOIN Books_order AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name
SELECT T1.Name FROM Client AS T1 JOIN Books_Order AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Books_order AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.IdClient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM Book WHERE ISBN NOT IN (SELECT ISBN FROM Books_order)
SELECT title FROM Book WHERE isbn NOT IN (SELECT isbn FROM Books_order)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT Name FROM Client WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(SalePrice), min(SalePrice) FROM Book
SELECT max(PurchasePrice), min(PurchasePrice) FROM Book
SELECT avg(PurchasePrice), avg(SalePrice) FROM Book
SELECT avg(PurchasePrice), avg(SalePrice) FROM Book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM Book WHERE saleprice > (SELECT avg(PurchasePrice) FROM Book)
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN HAVING avg(T1.PurchasePrice) > (SELECT avg(PurchasePrice) FROM Book)
SELECT title FROM Book ORDER BY SalePrice LIMIT 1
SELECT Title FROM Book WHERE PurchasePrice = (SELECT min(PurchasePrice) FROM Book)
SELECT title FROM Book ORDER BY PurchasePrice DESC LIMIT 10
SELECT Title FROM BOOK ORDER BY PurchasePrice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT SalePrice FROM Book WHERE Author = "Plato"
SELECT T1.SalePrice FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T2.Name = "Plato"
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name = "George Orwell" ORDER BY T1.PurchasePrice LIMIT 1
SELECT T2.Title FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor ORDER BY T1.PurchasePrice LIMIT 1
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.ISBN = T2.Author WHERE T1.Name = "Plato" AND T2.PurchasePrice < (SELECT avg(PurchasePrice) FROM Book)
SELECT T2.Title FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idBook GROUP BY T2.Name HAVING T1.PurchasePrice < (SELECT avg(PurchasePrice) FROM Book)
SELECT T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T1.Title = "Pride and Prejudice"
SELECT T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T1.Title = "Pride and Prejudice"
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Name LIKE '%Plato%'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name LIKE '%Plato%'
SELECT count(*) FROM Books_order WHERE title = "Pride and Prejudice"
SELECT count(*) FROM Books_order WHERE title = "Pride and Prejudice"
SELECT IdOrder FROM Orders WHERE Title = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM Orders WHERE Title = "The Little Prince"
SELECT IdOrder FROM Books_order WHERE ISBN = "Pride and Prejudice" INTERSECT SELECT IdOrder FROM Books_order WHERE ISBN = "The Little Prince"
SELECT ISBN FROM Books_order WHERE idorder = (SELECT idorder FROM Orders WHERE name = 'Peter Doe' INTERSECT SELECT idorder FROM Orders WHERE name = 'James Smith')
SELECT ISBN FROM Books ORDER BY idorder, name WHERE name = 'Peter Doe' INTERSECT SELECT ISBN FROM Books ORDER BY idorder, name WHERE name = 'James Smith'
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.idClient = 'Peter Doe' EXCEPT SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.idClient = 'James Smith'
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.idClient!= T1.idClient AND T1.name = 'Peter Doe'
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Book AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.Title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(Chapters), min(Chapters) FROM book
SELECT Title FROM book WHERE Type!= "Poet"
SELECT avg(Rating) FROM review
SELECT T2.Title, T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1
SELECT Rank FROM review ORDER BY Rating LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM review WHERE Book_ID IN (SELECT Book_ID FROM book WHERE TYPE = "Novel")
SELECT TYPE, COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating
SELECT T2.Title, T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE FROM book)
SELECT TYPE, title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT card_credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.name, T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name, T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name, SUM(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.customer_id FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name, Nationality FROM member
SELECT Name FROM member WHERE Nationality!= "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Club_Name, T2.Club_ID FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T1.Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Year_Join < 2018
SELECT T2.Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.age) FROM member AS T1 JOIN clubleader AS T2 ON T1.member_id = T2.member_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T2.Collection_Subset_Name FROM Document_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT T2.Collection_Subset_Name FROM Document_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT T1.Collection_Subset_Details FROM Collection_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID WHERE T1.Collection_Subset_Name = "Top collection"
SELECT collection_details FROM Collection_Subsets WHERE collection_subset_name = "Top collection"
SELECT T2.document_subset_name FROM Document_subset_members AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T2.document_subset_name FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T2.document_subset_details FROM Document_subsets AS T1 JOIN Document_object_id AS T2 ON T1.document_subset_id = T2.document_object_id WHERE T1.document_subset_name = "Best for 2000"
SELECT T2.document_subset_details FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000'
SELECT document_object_id FROM Document_Objects
SELECT document_object_id FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE OWNER = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = 'Marlin')
SELECT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT Document_Object_ID FROM Documents_in_collections WHERE Collection_ID = "Marlin")
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID NOT IN (SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID HAVING COUNT(*) > 1)
SELECT DISTINCT Description FROM Document_Objects GROUP BY Description
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT document_object_id FROM Document_Objects EXCEPT SELECT parent_document_object_id FROM Document_Objects
SELECT T1.document_object_id, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id
SELECT count(*), T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T2.Collection_Name FROM Collections AS T1 JOIN Document_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Nice"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Nice"
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Parent_Collection_ID
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM Document_Subset_Members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Ransom"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Ransom"
SELECT T1.Collection_Subset_ID, count(*), T2.Collection_Name FROM Collection_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Collection_Subset_ID, T1.Collection_Subset_Name, COUNT(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID GROUP BY T1.Collection_Subset_ID
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID GROUP BY T1.Document_Object_ID ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id
SELECT T1.document_object_id, count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) LIMIT 1
SELECT T1.document_object_id, count(*) FROM Document_Subset_Members AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Document_Object_ID, count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Subset_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Braeden"
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collection_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID JOIN Collections AS T4 ON T3.Collection_ID = T4.Collection_ID WHERE T4.Collection_Name = "Braeden"
SELECT T2.Document_Subset_Name FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T1.Owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.document_subset_id = T2.document_object_id JOIN Documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T2.owner = "Braeden"
SELECT document_subset_id, count(DISTINCT document_object_id), count(*) FROM Document_Subset_Members GROUP BY document_subset_id
SELECT Document_Subset_ID, Document_Subset_Name, count(DISTINCT Document_Object_ID) FROM Document_Subset_Members GROUP BY Document_Subset_ID
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_Subsets AS T1 JOIN Document_Object_ID AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_Subsets AS T1 JOIN Document_Object_ID AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000"
SELECT Document_Object_ID FROM Document_Subset_Members WHERE Document_Subset_ID = "Best for 2000"
SELECT T2.document_subset_name, T1.document_object_id FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id
SELECT T1.Document_Subset_Name, T1.Document_Object_ID FROM Document_Subsets AS T1 JOIN Document_Object_ID AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = 'Ransom '
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = 'Ransom'
SELECT count(*), T1.Collection_ID FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID
SELECT count(DISTINCT T1.Collection_ID) FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM Documents_in_collections WHERE collection_id = 'Best'
SELECT document_object_id FROM Documents_in_collections WHERE collection_id = (SELECT collection_id FROM Collections WHERE collection_name = "Best")
SELECT count(*) FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Documents_in_collections WHERE collection_id = "Best")
SELECT T1.Collection_Name, T1.Collection_ID, count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name, T1.collection_id, count(*) FROM Collections AS T1 JOIN Documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.document_subset_id = T3.collection_subset_id WHERE T3.collection_subset_name = "Best" AND T1.document_object_id IN (SELECT T4.document_object_id FROM Document_subset_members AS T4 JOIN Documents_in_collections AS T5 ON T4.document_subset_id = T5.related_document_object_id WHERE T5.collection_id = "Best")
SELECT DISTINCT document_object_id FROM Document_Subset_Members JOIN Document_Objects ON Document_Subset_Members.document_subset_id = Document_Objects.document_object_id JOIN Collections ON Document_Subset_Members.collection_subset_id = Collections.collection_subset_id WHERE Collections.collection_name = 'Best' INTERSECT SELECT DISTINCT document_object_id FROM Document_Subset_Members JOIN Document_Objects ON Document_Subset_Members.document_subset_id = Document_Objects.document_object_id WHERE Document_Subsets.document_subset_name = 'Best for 2000'
SELECT document_object_id FROM Documents_in_collections WHERE collection_id NOT IN (SELECT collection_id FROM Collection_subsets WHERE collection_subset_name = "Best" AND YEAR = 2000)
SELECT DISTINCT document_object_id FROM Document_Objects INTERSECT SELECT document_object_id FROM Document_Subset_Members WHERE Document_Subset_ID!= "Best for 2000"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Collection_subsets AS T3 ON T2.document_subset_id = T3.collection_subset_id WHERE T3.collection_subset_name = 'Best' AND T1.document_object_id NOT IN (SELECT document_object_id FROM Documents_in_collections WHERE collection_id = 'Best')
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subsets WHERE document_subset_name = 'Best for 2000') OR collection_subset_id IN (SELECT collection_subset_id FROM Collection_Subsets WHERE collection_subset_name = 'Best')
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Related_Collection_ID JOIN Document_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T1.Collection_Name = "Best"
SELECT T2.Collection_Name FROM Collection_Subset_Members AS T1 JOIN Collections AS T2 ON T1.Related_Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(DISTINCT collection_id) FROM collections WHERE collection_name = 'Best'
SELECT T2.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID WHERE T2.Collection_Name = "Best"
SELECT T2.Collection_Subset_Details FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Related_Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name, language FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score
SELECT voice_sound_quality, rhythm_tempo, stage_presence FROM performance_score WHERE participant_id = 'Freeway'
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, english_translation FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY COUNT(*)
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T1.id, T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo), language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.original_artist WHERE T2.language = 'English'
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(DISTINCT city_name) FROM City
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name, city_code, state, country FROM City
SELECT city_name, city_code, state, country FROM City
SELECT latitude, longitude FROM City WHERE city_name = "Baltimore"
SELECT latitude, longitude FROM City WHERE city_name = "Baltimore"
SELECT city_name FROM City WHERE state = "PA"
SELECT city_name FROM City WHERE state = "PA"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city ORDER BY latitude
SELECT city_name FROM city ORDER BY latitude
SELECT state, count(*) FROM City GROUP BY state
SELECT state, count(*) FROM City GROUP BY state
SELECT country, count(*) FROM City GROUP BY country
SELECT count(*), country FROM City GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT fname, lname FROM Student WHERE city_code = "MD"
SELECT fname, lname FROM Student WHERE city_code = "MD"
SELECT count(*) FROM Student WHERE city_code = "China"
SELECT count(*) FROM student WHERE city_code = 'China'
SELECT fname, major FROM Student WHERE city_code = "Baltimore"
SELECT fname, major FROM Student WHERE city_code = "Baltimore"
SELECT count(*), country FROM city GROUP BY country
SELECT count(*), country FROM City GROUP BY country
SELECT count(*), city_code FROM Student GROUP BY city_code
SELECT count(*), T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT StuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city1_code FROM direct_distance GROUP BY city1_code ORDER BY sum(distance) DESC LIMIT 2
SELECT city_code FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM city WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance < 1000 UNION SELECT city1_code FROM city WHERE city_name = 'New York' OR city_name = 'Los Angeles'
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(T1.distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM direct_distance WHERE city1_code!= 'Boston'
SELECT avg(distance) FROM Direct_distance WHERE city1_code = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Chicago"
SELECT T1.city_name FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Chicago" ORDER BY T2.distance LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Boston' ORDER BY T2.distance LIMIT 1
SELECT T1.city_name FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 1
SELECT T1.city_code, sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_code, sum(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name, T2.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code JOIN student AS T3 ON T1.city_code = T3.city_code WHERE T3.fname = "Linda" AND T3.lname = "Smith" INTERSECT SELECT T1.city_name, T2.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code JOIN student AS T3 ON T1.city_code = T3.city_code WHERE T3.fname = "Tracy" AND T3.lname = "Kim"
SELECT T1.city_name FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Linda" INTERSECT SELECT T1.city_name FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Tracy"
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T1.lname = "Smith" AND T2.city_name = "Linda" ORDER BY T2.latitude LIMIT 1
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T1.city_name = "Linda Smith" ORDER BY T2.latitude LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT DISTINCT T1.bid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.id = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves WHERE sid NOT IN (SELECT sid FROM sailors)
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE rating > (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) >= 2
SELECT sid FROM Reserves WHERE color = 'red' OR color = 'blue'
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM Reserves WHERE color = "red" INTERSECT SELECT sid FROM Reserves WHERE color = "blue"
SELECT sid FROM Reserves WHERE color = "red" INTERSECT SELECT sid FROM Reserves WHERE color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name, age FROM sailors ORDER BY age LIMIT 1
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
SELECT count(*), T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*), T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name > '50' GROUP BY T1.bid
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*), T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.sid
SELECT count(*), T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.id > 1 GROUP BY T1.sid
SELECT avg(T1.rating), avg(T2.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = "red" GROUP BY T1.rating
SELECT avg(T1.rating), count(*) FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' GROUP BY T1.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM Boats WHERE color = "red"
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid BETWEEN 20 AND 30
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > (SELECT min(rating) FROM sailors JOIN reserves ON sailors.sid = reserves.sid WHERE boats.color = 'red')
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > (SELECT min(rating) FROM sailors JOIN reserves JOIN boats ON sailors.sid = reserves.sid AND boats.color = 'red')
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
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS, count(*) FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT CLASS, sum(Price) FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads, COUNT(*) FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price LIMIT 1
SELECT Model, CLASS, Construction FROM headphone ORDER BY Price LIMIT 1
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Bowls"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Earpads FROM headphone WHERE Construction!= "Plastic"
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT Name, Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood, count(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood, count(*) FROM store GROUP BY Neighborhood
SELECT T2.Name, COUNT(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, SUM(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Name
SELECT T2.Name FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = "null"
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID ORDER BY T1.Quantity DESC LIMIT 1
SELECT count(*) FROM stock WHERE Store_ID = "Woodman"
SELECT sum(T1.Quantity) FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID JOIN store AS T3 ON T1.Store_ID = T3.Store_ID WHERE T3.Name = "Woodman"
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT T2.Neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = "null"
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM paper
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2009 AND affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Columbia University')
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = "Columbia University") AND YEAR = 2009)
SELECT name, address FROM affiliation
SELECT name, address FROM affiliation
SELECT venue, YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = 'Harvard University'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT title, paper_id FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = 'Mckeown')
SELECT t1.title, t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.name = 'Mckeown'
SELECT T1.title, T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T1.title, T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.title, T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford" INTERSECT SELECT T1.title, T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia"
SELECT T2.title, T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Kathleen Mckeown" INTERSECT SELECT T2.title, T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Owen Rambow"
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' INTERSECT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Rambow'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' EXCEPT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Rambow'
SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Mckeown' EXCEPT SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Rambow'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' OR T2.name = 'Kathleen' OR T2.name = 'Rambow'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' OR T2.name = 'Kathleen' OR T2.name = 'Rambow'
SELECT T2.name, count(*) FROM Author_list AS T1 JOIN Author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name ORDER BY count(*) DESC
SELECT T2.name, count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.name ORDER BY count(*)
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 50
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT cited_paper_id) FROM citation WHERE paper_id = 'A00-1002'
SELECT count(DISTINCT cited_paper_id) FROM citation WHERE paper_id = 'A00-1002'
SELECT count(*) FROM paper WHERE paper_id = "D12-1027"
SELECT count(DISTINCT cited_paper_id) FROM citation WHERE paper_id = "D12-1027"
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title, COUNT(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY COUNT(*) DESC LIMIT 10
SELECT T2.paper_id, COUNT(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY COUNT(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Mckeown, Kathleen'
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown, Kathleen'
SELECT count(DISTINCT cited_paper_id) FROM citation WHERE name = 'Mckeown, Kathleen'
SELECT count(DISTINCT cited_paper_id) FROM citation WHERE author_id = "McKeown, Kathleen"
SELECT T1.name, count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, COUNT(*) FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue, YEAR FROM Paper WHERE author_id = "McKeown, Kathleen"
SELECT venue, YEAR FROM Paper WHERE author_id = "McKeown, Kathleen"
SELECT venue, YEAR FROM Paper WHERE affiliation_id = "Columbia University"
SELECT venue, YEAR FROM Paper WHERE author_id IN (SELECT author_id FROM Author_list WHERE affiliation_id = "Columbia University")
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = 'Columbia University') AND YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM author_list WHERE name = 'Columbia University') OR YEAR <= 2009
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM author_list WHERE author_id IN (SELECT author_id FROM paper WHERE YEAR >= 2000 AND YEAR <= 2009)) AND affiliation_id = "Stanford University"
SELECT count(*) FROM paper WHERE affiliation_id IN (SELECT affiliation_id FROM author_list WHERE author_id IN (SELECT author_id FROM paper WHERE YEAR >= 2000 AND YEAR <= 2009) AND affiliation_id = 'Stanford University')
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' INTERSECT SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.name = 'Mckeown' INTERSECT SELECT count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Kathleen'
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t1.name = 'Mckeown' INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t1.name = 'Kathleen'
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T2.name = 'Mckeown' GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), YEAR FROM paper GROUP BY YEAR
SELECT venue, YEAR FROM paper GROUP BY venue, YEAR
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T1.name, count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY author_id HAVING count(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY author_id HAVING count(*) > 50)
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t1.name = 'NAACL' INTERSECT SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t1.name = 'ACL'
SELECT T2.name FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009 INTERSECT SELECT T2.name FROM citation AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation))
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT Conference_Name, YEAR, LOCATION FROM conference
SELECT T1.Conference_Name, COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT Conference_Name, COUNT(*) FROM conference GROUP BY Conference_Name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name, LOCATION, founded FROM institution
SELECT institution_name, LOCATION, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, LOCATION FROM institution ORDER BY founded LIMIT 1
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.Institution_Name, count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_Name
SELECT T1.name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE Nationality = 'United States'
SELECT max(age), min(age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN staff AS T2 ON T1.Conference_ID = T2.staff_ID WHERE T2.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE nationality = 'Naccl' INTERSECT SELECT name FROM staff WHERE nationality = 'ACL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Participant' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Participant' AND T2.conference_id = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Participant' AND T2.conference_id = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year >= 2003 AND T2.year = 2004
SELECT T1.Conference_Name, T1.Year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name, T1.Year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, Nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT T1.Institution_Name, T1.Location FROM institution AS T1 JOIN conference AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Year = 2004 AND T2.Conference_ID = "null"
SELECT institution_name, LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT plane_name FROM pilotskills ORDER BY age LIMIT 1
SELECT pilot_name FROM pilotSkills ORDER BY age LIMIT 1
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilotSkills WHERE age < 30
SELECT * FROM pilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT pilot_name FROM pilot_skills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT plane_name FROM pilot_skills WHERE age = 32 AND pilot_name = "Jones"
SELECT plane_name FROM pilot_skills WHERE pilot_name = "Jones" AND age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilot_skills WHERE plane_name = "B-52" AND age < 35
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub' )
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub' )
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Smith" AND age = 41
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Smith" AND age = 41
SELECT count(DISTINCT plane_name) FROM pilotSkills
SELECT count(DISTINCT plane_name) FROM pilot_skills
SELECT count(*) FROM pilot_skills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT location FROM Hangar ORDER BY plane_name
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT plane_name FROM plane_name ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotSkills WHERE age > 40 OR age < 30
SELECT T1.plane_name, T1.age FROM pilot_skills AS T1 JOIN plane AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 OR T1.age < 30 AND T2.plane_name = 'F-14 Fighter'
SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN plane_name AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age), min(age) FROM PilotSkills
SELECT avg(age), min(age) FROM PilotSkills
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Austin' INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name = 'Boston'
SELECT pilot_name FROM pilot_skills WHERE plane_name = "Austin" INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name = "Boston"
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age), plane_name FROM pilot_skills GROUP BY plane_name
SELECT count(*), T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT plane_name, max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT plane_name, pilot_name FROM pilotskills ORDER BY plane_name
SELECT plane_name, max(age) FROM pilot_skills GROUP BY plane_name
SELECT plane_name, pilot_name FROM pilot_skills ORDER BY age LIMIT 10
SELECT max(age), pilot_name FROM pilot_skills GROUP BY pilot_name
SELECT pilot_name, max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*), avg(age) FROM pilot_skills GROUP BY location
SELECT T2.location, count(*), avg(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilotskills WHERE age < 35 GROUP BY plane_name
SELECT T1.plane_name, count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.pilot_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name, T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilot_skills WHERE age < (SELECT min(age) FROM pilot_skills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills WHERE plane_name = 'F-14 Fighter' AND age < (SELECT min(age) FROM pilot_skills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills WHERE age > (SELECT max(age) FROM pilot_skills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km, Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name, population FROM district WHERE area > (SELECT avg(area) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT District_ID, Name, Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website = 'gov'
SELECT District_ID, Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT name, speak_title FROM spokesman
SELECT avg(Points), avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(Points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004
SELECT T2.Name, T1.District_ID FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID WHERE T2.Spokesman_ID = 1 INTERSECT SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID WHERE T2.Spokesman_ID = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1
SELECT count(DISTINCT district_id) FROM spokesman_district
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(T1.Population), avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID
SELECT title FROM Sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM Sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY YEAR LIMIT 1
SELECT T1.title, T2.location FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.year LIMIT 1
SELECT T2.title FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.location = 226
SELECT T1.title FROM sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.lname = "Galley" AND T1.location = 226
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM Paintings
SELECT title, LOCATION FROM Sculptures
SELECT T1.title, T2.location FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID
SELECT medium FROM Paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "Gallery 226"
SELECT title, YEAR FROM sculptures WHERE LOCATION!= "Gallery 226"
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT fname, lname FROM Artists ORDER BY deathYear DESC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear LIMIT 1
SELECT fname FROM Artists ORDER BY birthYear LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY deathYear LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY birthYear LIMIT 1
SELECT count(*) FROM paintings WHERE location = 240
SELECT count(*) FROM paintings WHERE location = 240
SELECT count(*) FROM Paintings WHERE painterID IN (SELECT artistID FROM Artists ORDER BY deathYear DESC LIMIT 1)
SELECT count(*) FROM Artists WHERE birthYear > deathYear GROUP BY painterID ORDER BY deathYear DESC LIMIT 1
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T2.fname = 'Mary'
SELECT T1.width_mm FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.width_mm FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.location, T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T2.location, T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Lithograph"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "lithographic"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "Oil" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT medium, count(*) FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM Paintings GROUP BY medium
SELECT count(*), LOCATION FROM Paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year > 1910
SELECT DISTINCT painterID FROM paintings WHERE medium = "oil" AND LOCATION = "gallery 240"
SELECT DISTINCT T1.painterID FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T1.location = 240
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN Sculptures AS T2 ON T1.medium = T2.medium WHERE T1.height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN Sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC
SELECT T2.title, T3.title FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.year >= 1900 AND T2.year <= 1950
SELECT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistid = 222
SELECT T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.artistid FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT location FROM paintings WHERE mediumOn = "on panel" INTERSECT SELECT DISTINCT location FROM paintings WHERE mediumOn = "on canvas"
SELECT LOCATION FROM Paintings WHERE mediumOn = "on panels" INTERSECT SELECT LOCATION FROM Paintings WHERE mediumOn = "on canvas"
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Sculptures WHERE YEAR > 1930
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Paintings WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE medium = "oil" AND location = 241
SELECT avg(height_mm), avg(width_mm) FROM Paintings WHERE medium = "oil" AND location = 241
SELECT max(height_mm), painterID FROM Paintings WHERE YEAR < 1900
SELECT height_mm, paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm), max(width_mm), YEAR FROM Paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname, T1.lname ORDER BY T1.fname
SELECT avg(height_mm), avg(width_mm), T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.fname, T1.lname ORDER BY T1.fname
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname
SELECT deathYear FROM Artists GROUP BY deathYear HAVING count(*) <= 3
SELECT T1.fname, T1.lname, T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) < 4
SELECT T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) LIMIT 1
SELECT T1.fname, T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) LIMIT 1
SELECT paintingid, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), paintingID FROM Paintings WHERE medium = "painting" AND location = "gallery 240"
SELECT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE location = "gallery 240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.fname, T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT paintingid, LOCATION, title FROM paintings ORDER BY YEAR
SELECT T1.paintingid, T1.location, T1.title FROM paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistid ORDER BY T1.year
SELECT year, LOCATION, title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT title, LOCATION, YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "painting" EXCEPT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID NOT IN (SELECT sculptorID FROM Sculptures)
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM sculptures WHERE medium = 'canvas'
SELECT title FROM paintings WHERE YEAR < 1885 AND medium!= "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Driver_ID!= "Junior Strous"
SELECT Winning_driver FROM race WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age), min(Age) FROM driver
SELECT max(Age), min(Age) FROM driver
SELECT count(DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20
{"sql": "SELECT count(DISTINCT Engine FROM driver WHERE Age > 30 OR Age < 20")"}
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.driver_id
SELECT T1.Driver_name, count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id
SELECT T2.Driver_ID, count(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_id
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE age < 20 INTERSECT SELECT Constructor FROM driver WHERE age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T2.Driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position = '1' INTERSECT SELECT T2.driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position = '2'
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.driver_id WHERE T1.driver_name = 'James Hinchcliffe' INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 'Carl Skerlong'
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe"
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score), min(health_score) FROM countries WHERE name!= "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages GROUP BY country_id)
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name, T2.language_id FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T2.name, count(*) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id
SELECT T2.language FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.language FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT T2.language FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE country_id IN (SELECT id FROM official_languages WHERE language_id = "English")
SELECT avg(overall_score) FROM countries WHERE language_id IN (SELECT id FROM official_languages WHERE language_id = 'english')
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.language_id FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score < 90)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score > 95) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score < 90)
SELECT county_state_province, town_city FROM Addresses
SELECT town_city FROM Addresses
SELECT T1.county_state_province FROM Addresses JOIN Properties ON Addresses.address_id = Properties.property_address_id GROUP BY T1.county_state_province
SELECT T1.county_state_province FROM Addresses WHERE T1.town_city = "New York"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Ref_user_categories WHERE user_category_description LIKE '%Mother%'
SELECT age_category_code FROM Ref_user_categories WHERE user_category_description LIKE "%Mother%"
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = "Garden"
SELECT avg(room_count) FROM Properties WHERE property_feature_description = "garden"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT town_city FROM Addresses WHERE town_city LIKE '%pool%'
SELECT property_id, price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT property_id, price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT avg(room_count) FROM Rooms
SELECT avg(room_count) FROM Rooms
SELECT count(DISTINCT room_size FROM Rooms)
{"sql": "SELECT count(DISTINCT room_size FROM Rooms;")"}
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id, search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT T1.search_datetime, T2.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T2.search_string ORDER BY T2.search_string DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM Addresses WHERE property_id NOT IN (SELECT property_id FROM User_Property_History GROUP BY owner_user_id HAVING count(*) <= 2)
SELECT zip_postcode FROM Addresses WHERE property_id NOT IN (SELECT property_id FROM Properties GROUP BY property_id HAVING count(*) <= 2)
SELECT T1.user_category_code, T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id, user_category_code FROM User_Searches GROUP BY user_category_code HAVING count(*) = 1
SELECT T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_category_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.age_category_code FROM User_Searches AS T1 JOIN Ref_User_Categories AS T2 ON T1.user_category_code = T2.user_category_code GROUP BY T1.user_category_code ORDER BY T1.search_datetime LIMIT 1
SELECT login_name FROM Users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_Searches WHERE search_string LIKE '%buyers%'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE user_id = 1
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = '1'
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Ref_User_Categories AS T2 ON T1.address_id = T2.address_id WHERE T2.user_category_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.user_category_code = "senior citizens"
SELECT count(*) FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2
SELECT count(*) FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2
SELECT count(*), T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name
SELECT count(*), property_id FROM Property_Photos GROUP BY property_id
SELECT T1.user_id, count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id
SELECT T1.owner_user_id, count(*) FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(T1.price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = 'single mothers' OR T2.user_category_code = 'students'
SELECT max(T1.price_max FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = 'single mothers' OR T2.user_category_code = 'students')
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT property_type_description, property_type_code FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_description ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code > 60
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T1.first_name, T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties GROUP BY owner_user_id HAVING count(*) = 1)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price ASC
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id, T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclists_own_bikes WHERE purchase_year < 2015
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name, T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT cyclist_id, count(*) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT Flavor FROM goods ORDER BY Price DESC LIMIT 1
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT Flavor FROM goods ORDER BY Price LIMIT 1
SELECT id, flavor FROM goods ORDER BY price LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT Id FROM goods WHERE Flavor = "apple"
SELECT Id FROM goods WHERE Price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.Id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "lemon"
SELECT T1.Food, COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Food
SELECT T1.Food, COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Food
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receiptnumber WHERE T3.food = "bakery" GROUP BY T1.id HAVING count(*) >= 15
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.CustomerId GROUP BY T1.id HAVING count(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods WHERE Food = "cake"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T2.customerid = 15
SELECT DISTINCT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.CustomerId = 15
SELECT Flavor, avg(Price), max(Price), min(Price) FROM goods GROUP BY Flavor
SELECT avg(Price), min(Price), max(Price) FROM goods GROUP BY Food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Food = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Food = "Cookie"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Food = "cakes" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Food = "cookies"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.LastName = "LOGAN" AND T1.Food = "Croissant"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.LastName = "Logan" AND T1.Food = "croissant"
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber ORDER BY T2.Price DESC LIMIT 1
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Price = (SELECT max(Price) FROM items)
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) LIMIT 1
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) LIMIT 1
SELECT Food, COUNT(*) FROM goods GROUP BY Food
SELECT Food, COUNT(*) FROM goods GROUP BY Food
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT avg(Price), Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Food = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Price > 13
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.Id WHERE T2.Price > 15
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Price > 15
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT T2.Price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.id = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT Id FROM goods WHERE Flavor = "Good" ORDER BY Id
SELECT DISTINCT id FROM goods ORDER BY Flavor
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Food = "apple" OR T1.CustomerId = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN customers AS T3 ON T1.CustomerId = T3.Id WHERE T2.Food = "apple" OR T3.FirstName = "12"
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT receiptnumber FROM receipts ORDER BY date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts WHERE price > 10) OR price > 10
SELECT receiptnumber FROM receipts WHERE date > '2010-01-01' OR price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT Flavor FROM goods WHERE Flavor = "cheese" ORDER BY Price ASC LIMIT 1
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price), Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price), max(Price), Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.CustomerId, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT Date, count(DISTINCT CustomerId) FROM receipts GROUP BY Date
SELECT Date, count(*) FROM receipts GROUP BY Date
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.CustomerId WHERE T2.Flavor = "Tart"
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.id WHERE T3.Food = "apple" AND T3.Flat = "Tart"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Croissant'
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(Price) FROM goods WHERE Flavor = "Tart")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods GROUP BY id HAVING avg(Price) * 2 > Price
SELECT id, Flavor, TYPE FROM goods ORDER BY Price
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT Flavor FROM goods WHERE Flavor = "chocolate" EXCEPT SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.Receipt > 10
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" GROUP BY T1.id HAVING count(*) >= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods GROUP BY Flavor ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.ReceiptNumber GROUP BY T1.Item ORDER BY COUNT(*) DESC LIMIT 3
SELECT id FROM customers WHERE sum(receipts) > 150
SELECT id FROM customers WHERE sum(receipt) > 150
SELECT T1.id FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customerid GROUP BY T2.id HAVING avg(T2.price) > 5
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id GROUP BY T3.id HAVING avg(T3.price > 5)
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.Id GROUP BY T1.Date HAVING sum(T2.Price > 100) > 100
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.Date HAVING sum(T2.Price > 100) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT Make, COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make, COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(Age), Make FROM driver GROUP BY Make
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
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T2.Driver, T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.Team_id
SELECT T2.Driver, T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country_id
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(Age) FROM driver WHERE Official_native_language = "English"
SELECT avg(Age) FROM driver WHERE Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country GROUP BY T1.Country_id ORDER BY sum(T2.Points) DESC LIMIT 1
SELECT Capital FROM country ORDER BY Points DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country GROUP BY T1.Country_id HAVING T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country_id WHERE T2.Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver
SELECT sum(Points), avg(Points) FROM driver
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager, T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T1.Manager, T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City, Province FROM institution
SELECT City, Province FROM institution
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
SELECT T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Enrollment LIMIT 1
SELECT nickname FROM championship ORDER BY Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T2.Institution_ID HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT sum(Number_of_Championships) FROM Championship WHERE Affiliation = 'Public'
SELECT sum(Number_of_Championships) FROM Championship WHERE Affiliation = "Public"
SELECT Affiliation, COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation, COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded, COUNT(*) FROM institution GROUP BY Founded
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded > 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province FROM institution)
SELECT count(DISTINCT Province FROM institution)
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse = 'New York'
SELECT DISTINCT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(Value), sum(Value) FROM Boxes
SELECT avg(value), sum(value) FROM Boxes
SELECT avg(capacity), sum(capacity) FROM Warehouses
SELECT avg(capacity), sum(capacity) FROM warehouses
SELECT avg(value), max(value), contents FROM Boxes GROUP BY contents
SELECT avg(value), max(value), Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY SUM(Value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT count(DISTINCT Contents FROM Boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT code FROM boxes WHERE Warehouse = "Chicago" OR Warehouse = "New York"
SELECT code FROM Boxes WHERE Warehouse = "Chicago" OR Warehouse = "New York"
SELECT sum(T2.Value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = "Chicago" OR T1.Location = "New York"
SELECT sum(T2.Value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = "Chicago" OR T2.Location = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse!= "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" EXCEPT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Scissors"
SELECT Warehouse FROM Boxes WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" INTERSECT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Scissors"
SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" INTERSECT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Scissors"
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT code, contents FROM Boxes ORDER BY value LIMIT 1
SELECT code, contents FROM boxes ORDER BY value LIMIT 1
SELECT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT Contents FROM Boxes ORDER BY Contents
SELECT Contents FROM Boxes ORDER BY Contents
SELECT Code FROM Boxes WHERE Value > (SELECT max(Value) FROM Boxes WHERE Contents = "Rocks")
SELECT Code FROM Boxes WHERE Value > (SELECT min(Value) FROM Boxes WHERE Contents = "Rocks")
SELECT code, contents FROM Boxes WHERE value > (SELECT min(value) FROM Boxes WHERE contents = 'Scissors')
SELECT Code, Contents FROM Boxes WHERE Value > (SELECT min(Value) FROM Boxes WHERE Contents = "Scissors")
SELECT sum(value) FROM Boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT T2.Warehouse, avg(T1.Value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T2.Warehouse HAVING avg(T1.Value) > 150
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse HAVING avg(Value) > 150
SELECT sum(value), count(*) FROM Boxes GROUP BY Contents
SELECT sum(value), count(*) FROM Boxes GROUP BY Contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM warehouses GROUP BY LOCATION
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM Warehouses
SELECT Warehouse, max(Value) FROM Boxes GROUP BY Warehouse
SELECT Warehouse, max(Value) FROM Boxes GROUP BY Warehouse
SELECT Warehouse, COUNT(*) FROM Boxes GROUP BY Warehouse
SELECT count(*), warehouse FROM Boxes GROUP BY warehouse
SELECT count(DISTINCT Warehouse) FROM Boxes WHERE Contents = "Rocks"
SELECT count(DISTINCT Warehouse FROM Boxes WHERE Contents = "Rocks")
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT code FROM Boxes WHERE LOCATION = "Chicago"
SELECT code FROM Boxes WHERE Warehouse = "Chicago"
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(*), T1.Warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code GROUP BY T1.Warehouse
SELECT count(DISTINCT contents), warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT Contents FROM Boxes WHERE Warehouse = "Warehouse") FROM Warehouses
SELECT code FROM warehouses WHERE capacity > 1000
SELECT code FROM Boxes GROUP BY code HAVING count(*) > capacity
SELECT sum(value) FROM boxes WHERE warehouse!= 'Chicago'
SELECT sum(value) FROM boxes WHERE warehouse!= 'Chicago'
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT University_Name, City, State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT max(Enrollment), avg(Enrollment), min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) FROM university GROUP BY Home_Conference
SELECT Home_Conference, count(*) FROM university GROUP BY Home_Conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) LIMIT 1
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name, Major_Code FROM major ORDER BY Major_Code
SELECT T1.Major_Name, T2.Rank FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.University_Name = "Augustana College"
SELECT T1.Major_Name FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID ORDER BY T2.Rank LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank = 1 GROUP BY T1.University_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Rank LIMIT 1
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking ORDER BY Rank DESC LIMIT 1)
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name, T1.Rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT T1.University_Name, T2.Rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN overall_ranking AS T3 ON T2.University_ID = T3.University_ID WHERE T1.State = "Wisconsin"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT sum(enrollment) FROM university WHERE University_ID IN (SELECT University_ID FROM overall_ranking WHERE Rank <= 5)
SELECT sum(enrollment) FROM university WHERE rank <= 5
SELECT T1.University_Name, T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name, T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND Enrollment < 3000
SELECT title FROM Movies WHERE code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT title FROM Movie WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE Rating = "G"
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon"
SELECT T1.Title, T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.Title, T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = ‘G’
SELECT count(*) FROM Movies WHERE Rating = "G"
SELECT count(*) FROM MovieTheaters GROUP BY Code
SELECT count(*) FROM MovieTheaters WHERE Movie = 'T'
SELECT count(DISTINCT MovieTheaters.Code) FROM MovieTheaters WHERE MovieTheaters.Name = "Theaters"
SELECT count(DISTINCT title) FROM MovieTheaters WHERE movie = 'T'
SELECT count(DISTINCT Code) FROM MovieTheaters
SELECT count(DISTINCT Name) FROM MovieTheaters
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" OR T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Imperial'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.code WHERE T2.name = 'Odeon'
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM Movies ORDER BY Rating
SELECT title FROM Movies ORDER BY rating
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie GROUP BY T1.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT rating, count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT count(*) FROM Movies WHERE Rating!= "null"
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T1.Movie = 'T1'
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T1.Name!= "null"
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT code FROM MovieTheaters WHERE movie = 'TBA')
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT MovieTheaters.Code FROM MovieTheaters JOIN Movies ON MovieTheaters.Movie = Movies.Code)
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT title FROM Movies
SELECT Title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM Movies WHERE code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT title FROM Movies WHERE code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1
SELECT T2.Name FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT sum(weight) FROM Package WHERE sender = "Leo Wong"
SELECT sum(weight) FROM package WHERE sender = "Leo Wong"
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT POSITION FROM EMPLOYEE WHERE Name = "Amy Wong"
SELECT salary, POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT salary, POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(Salary) FROM Employee WHERE Position = "Intern"
SELECT avg(Salary) FROM Employee WHERE Position = "Intern"
SELECT LEVEL FROM Has_clearance WHERE POSITION = "Physician"
SELECT LEVEL FROM Has_clearance WHERE POSITION = "Physician"
SELECT count(*) FROM Package WHERE Sender = "Leo Wong"
SELECT count(*) FROM Package WHERE Sender = "Leo Wong"
SELECT PackageNumber FROM Package WHERE Recipient = "Leo Wong"
SELECT PackageNumber FROM Package WHERE Recipient = "Leo Wong"
SELECT Sender FROM Package WHERE Recipient = "Leo Wong"
SELECT DISTINCT Sender FROM Package WHERE Name = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Recipient = "Leo Wong" AND T2.Manager = "Ogden Wernstrom"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Recipient = "Leo Wong" AND T2.Manager = "Ogden Wernstrom"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT T1.PackageNumber, T1.Weight FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Sender = "John"
SELECT T1.PackageNumber, T1.Weight FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Client AS T3 ON T1.Recipient = T3.AccountNumber WHERE T3.Name = "John" OR T3.Name LIKE "%John%"
SELECT PackageNumber, Weight FROM Package ORDER BY Weight LIMIT 3
SELECT PackageNumber, Weight FROM Package ORDER BY Weight LIMIT 3
SELECT T2.Name, COUNT(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber GROUP BY T2.Name ORDER BY COUNT(*) LIMIT 1
SELECT T2.Recipient, T1.ShipmentID FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID GROUP BY T1.Recipient ORDER BY count(*) LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber GROUP BY T1.Recipient HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT shipmentid FROM Shipment WHERE manager = "Phillip J. Fry"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE PlanetID = "Mars"
SELECT ShipmentID FROM Planet WHERE Name = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" AND Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT shipmentid FROM shipment WHERE planet = "Mars" OR manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T2.Name, COUNT(*) FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT count(*), T1.name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T1.Weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T2.Planet = "Mars"
SELECT sum(T1.Weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T2.Planet = "Mars"
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet
SELECT T2.Name, sum(T1.Weight) FROM Package AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING sum(T1.Weight) > 30
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Weight > 30
SELECT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = "Omicron Persei 8" AND T2.Sender = "Zapp Brannigan"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID WHERE T1.Recipient = "Zapp Brannigan" AND T2.Planet = "Omicron Persei 8"
SELECT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipmentID = T2.ShipmentID JOIN Planet AS T3 ON T1.Recipient = T3.PlanetID WHERE T3.Name = "Omicron Persei 8" OR T2.Sender = "Zapp Brannigan"
SELECT count(*) FROM Shipment WHERE Planet = "Omicron Persei 8" OR Sender = "Zapp Brannigan"
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Omega III"
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Omega III'
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Employee = 1
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Employee = "Employee1"
SELECT Name FROM EMPLOYEE WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT Name FROM EMPLOYEE WHERE Salary > (SELECT avg(Salary) FROM EMPLOYEE) OR Salary > 5000
SELECT count(*) FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title, Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title, Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= "Nintendo"
SELECT Platform_name, Market_district FROM platform
SELECT Platform_name, Market_district FROM platform
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name, Platform_ID FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T2.Player_name, T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(Units_sold_Millions) FROM game WHERE POSITION = "Guard"
SELECT avg(Units_sold_Millions) FROM game WHERE Platform_ID = game_player.Player_ID WHERE POSITION = "Guard"
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T2.Title, COUNT(*) FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID GROUP BY T1.Franchise
SELECT Franchise, COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE POSITION = "Guard")
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position!= "Guard"
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 1500000000 OR month_profits_billion > 1000000
SELECT name FROM press WHERE YEAR_Profits_billion > 15 OR MONTH_Profits_billion > 1
SELECT avg(YEAR_PRO Fits_billion), max(YEAR_PRO Fits_billion) FROM press
SELECT avg(YEAR_PROFITS_billion), max(YEAR_PROFITS_billion) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 OR Month_Profits_billion ASC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(Age), Gender FROM author GROUP BY Gender
SELECT Gender, avg(Age) FROM author GROUP BY Gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Book_Series, COUNT(*) FROM book GROUP BY Book_Series
SELECT book_series, count(*) FROM book GROUP BY book_series
SELECT T1.Title, T1.Release_date FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 5
SELECT Title, Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Book_Series FROM book GROUP BY Book_Series HAVING min(Sale_Amount) > 1000 INTERSECT SELECT Book_Series FROM book GROUP BY Book_Series HAVING min(Sale_Amount) < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT Name, Age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Title, T2.Name, T2.Publisher_Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title, T2.Name, T1.Press_ID FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T2.Name, SUM(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T2.Name, T1.Sale_Amount FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name HAVING T1.Sale_Amount > 1000
SELECT T2.Name, COUNT(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name, T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Gender ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book WHERE Press_ID = "Accor")
SELECT T2.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT T2.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) FROM Authors
SELECT author_name FROM Authors
SELECT author_name, other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM Authors WHERE author_name = "4"
SELECT author_name FROM Authors JOIN Documents ON Authors.author_name = Documents.author_name WHERE Documents.document_name = "Travel to Brazil"
SELECT count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name, document_description FROM Documents
SELECT document_id, author_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT author_name, other_details FROM Authors JOIN Documents ON Authors.author_name = Documents.author_name WHERE document_name = "Travel to China"
SELECT author_name, count(*) FROM Documents GROUP BY author_name
SELECT author_name FROM Authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM Authors GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT next_process_id, process_name, process_description FROM Business_processes WHERE process_id = 9
SELECT process_name FROM Business_processes WHERE process_id = 9 ORDER BY process_name DESC LIMIT 1
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_processes
SELECT process_id FROM Documents GROUP BY process_id
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_processes
SELECT process_id FROM Business_processes GROUP BY process_id HAVING count(*) = 0
SELECT T1.process_outcome_description, T2.process_status_description FROM Process_outcomes AS T1 JOIN Process_Status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.document_id = 0
SELECT process_name FROM Business_processes WHERE process_description LIKE "%Travel to Brazil%"
SELECT process_id, count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM Documents WHERE document_id = 0 AND staff_id IN (SELECT staff_id FROM Staff_in_processes WHERE process_id = 9)
SELECT T1.staff_id, count(*) FROM Staff_in_processes AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id
SELECT T1.staff_role_code, count(*) FROM Staff_in_processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code GROUP BY T1.staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(DISTINCT agency_id) FROM Agencies
SELECT agency_id, agency_details FROM Agencies
SELECT agency_id, agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT agency_id, count(*) FROM Clients GROUP BY agency_id
SELECT count(*), T1.agency_id FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT agency_details FROM Agencies WHERE agency_details = "Mac"
SELECT T1.client_details, T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details, T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code, count(*) FROM Clients GROUP BY sic_code
SELECT sic_code, count(*) FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT client_id, count(*) FROM Invoices GROUP BY client_id
SELECT client_id, count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id, T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, client_id, agency_id, invoice_details FROM Invoices
SELECT invoice_status, invoice_details, client_id, agency_id FROM Invoices
SELECT meeting_type, other_details FROM Meetings
SELECT meeting_type, other_details FROM Meetings
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT T1.invoice_id, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T1.invoice_id, T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id, invoice_status FROM Invoices EXCEPT SELECT invoice_id, invoice_status FROM Payments
SELECT invoice_id, invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id, T1.invoice_id, T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id, invoice_id, payment_details FROM Payments
SELECT DISTINCT T1.invoice_id, T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT invoice_id, invoice_status FROM Payments
SELECT T1.invoice_id, count(*) FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*), T1.invoice_id FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id, count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id, count(*) FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM Meetings GROUP BY client_id
SELECT client_id, count(*) FROM Meetings GROUP BY client_id
SELECT T1.meeting_type, count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.meeting_type
SELECT meeting_type, count(*) FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id, T1.other_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T1.client_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.meeting_id, count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT count(*), T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id, count(*) FROM Staff_in_meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_details LIKE '%s%'
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) >= 1
SELECT T1.client_id, T1.sic_code, T2.agency_id FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time, T1.end_date_time, T2.staff_details, T3.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Staff AS T3 ON T2.staff_id = T3.staff_id
SELECT T1.start_date_time, T1.end_date_time, T2.staff_details, T2.agenty_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
