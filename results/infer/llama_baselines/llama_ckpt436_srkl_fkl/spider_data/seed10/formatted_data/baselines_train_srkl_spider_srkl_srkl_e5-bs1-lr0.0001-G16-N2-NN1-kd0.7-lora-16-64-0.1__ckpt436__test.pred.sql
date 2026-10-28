SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager, Captain FROM club
SELECT Manager, Captain FROM club
SELECT Name FROM club WHERE Manufacturer!= 'Nike'
SELECT Name FROM club WHERE Manufacturer!= 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2
SELECT Country FROM player GROUP BY Country HAVING Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name, T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name, T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING count(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name HAVING T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT count(DISTINCT Manufacturer FROM club
SELECT count(*), Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Manufacturer FROM club AS T1 JOIN player AS T2 ON T1.Manufacturer = T2.Manufacturer GROUP BY T1.Manufacturer HAVING COUNT(*) > 1
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
SELECT order_id, count(*), T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) > 1
SELECT min(date_order_placed) FROM orders UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id NOT IN (SELECT T1.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.product_id HAVING count(*) >= 2)
SELECT product_id, product_name, product_price, product_color FROM products WHERE product_id IN ( SELECT product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) < 2 )
SELECT order_id, date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT order_id, date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT product_id, product_name, product_price FROM products GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY product_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender, count(*) FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*), gender_code FROM Products GROUP BY gender_code
SELECT T1.gender_code, count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.gender_code, COUNT(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT invoice_status_code, invoice_date, shipment_date FROM shipments
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T1.product_name, T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT order_item_status_code, shipment_tracking_number FROM order_items JOIN shipments ON order_items.order_item_id = shipments.order_item_id
SELECT T1.order_item_status_code FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = "Shipped"
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id WHERE T2.shipment_date > (SELECT min(shipment_date) FROM shipments)
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.order_item_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT T1.invoice_status_code FROM Invoices AS T1 JOIN Orders AS T2 ON T1.invoice_number = T2.order_id WHERE T2.order_status_code!= "Shipped"
SELECT invoice_status_code FROM invoices WHERE invoice_status_code NOT IN (SELECT invoice_status_code FROM shipments WHERE shipment_date > (SELECT min(shipment_date) FROM shipments) )
SELECT sum(T1.order_id), T1.date_order_placed, T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT order_id, date_order_placed, sum(product_price) FROM Products AS T1 JOIN Orders AS T2 ON T1.product_id = T2.order_item_id GROUP BY T2.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM Orders
SELECT count(DISTINCT order_item_status_code FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders
SELECT order_status_code, date_order_placed FROM orders
SELECT address_line_1, town_city, county FROM customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = "United States"
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products GROUP BY product_id
SELECT avg(product_price) FROM products GROUP BY product_id
SELECT email_address, town_city, county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address, town_city, county FROM customers WHERE gender_code = "M" GROUP BY email_address HAVING count(*) < (SELECT count(*) FROM customers WHERE gender_code = "M")
SELECT T1.date_order_placed FROM orders AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders ORDER BY order_status_code ASC LIMIT 1
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price NOT IN ( SELECT max(product_price) FROM products)
SELECT Name FROM director WHERE Age > (SELECT avg(Age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T1.Name FROM director AS T1 JOIN director_admin AS T2 ON T1.Director_ID = T2.Director_ID JOIN program AS T3 ON T2.Channel_ID = T3.Channel_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.age FROM director AS T1 JOIN director_admin AS T2 ON T1.Director_ID = T2.Director_ID JOIN program AS T3 ON T2.Director_ID = T3.Director_ID GROUP BY T3.Director_ID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T2.Channel_ID HAVING count(*) > 1
SELECT count(*), T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM program)
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id WHERE T2.title = "Dracula"
SELECT T1.Name, T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN director AS T3 ON T2.Director_ID = T3.Director_ID GROUP BY T3.Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age > 60
{"sql": "SELECT Channel_ID, name FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM director_admin WHERE Name = \"Hank Baskett\")}
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE affiliation!= 'ABC'
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT T1.Affiliation, COUNT(*) FROM city_channel AS T1 JOIN radio AS T2 ON T1.ID = T2.Radio_ID GROUP BY T1.Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Affiliation FROM city_channel AS T1 JOIN radio AS T2 ON T1.ID = T2.Radio_ID
SELECT T1.city, T2.station_name FROM city_channel AS T1 JOIN city_channel_tv_show AS T2 ON T1.ID = T2.city_channel_id ORDER BY T2.station_name
SELECT T1.Transmitter, T2.City_channel_ID FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT Transmitter, Station_name FROM radio ORDER BY ERP_kW DESC
SELECT T1.Transmitter, COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), Driver_ID FROM vehicle_driver GROUP BY Driver_ID
SELECT Driver_ID, COUNT(*) FROM vehicle_driver GROUP BY Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(T1.Power FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = 'Zhuzhou'), avg(T1.Power FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = 'Zhuzhou')
SELECT max(T1.Power), avg(T1.Power) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT Driver_ID) FROM vehicle WHERE Build_Year = 2012
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Name = 'NASCAR'
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Top_Speed > 200
SELECT avg(Top_Speed) FROM vehicle GROUP BY Top_Speed
SELECT avg(Top_Speed) FROM vehicle GROUP BY Top_Speed
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model, Build_Year FROM vehicle WHERE model LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Vehicle_ID, Model FROM vehicle WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver) INTERSECT SELECT Vehicle_ID, Model FROM vehicle WHERE Builder = 'Ziyang'
SELECT Vehicle_ID, Model FROM vehicle WHERE Driver_ID IN (SELECT Driver_ID FROM vehicle_driver GROUP BY Driver_ID HAVING COUNT(*) = 2) OR Builder = "Ziyang"
SELECT Vehicle_ID, Model FROM vehicle_driver GROUP BY Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon'
SELECT Vehicle_ID, Model FROM vehicle WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID HAVING COUNT(*) > 2) UNION SELECT Vehicle_ID FROM vehicle WHERE Builder = 'Jeff Gordon'
SELECT count(*) FROM vehicle GROUP BY Top_Speed ORDER BY Top_Speed DESC LIMIT 1
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT count(*), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(DISTINCT driver_id) FROM vehicle_driver
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT Exam_Code FROM Exams ORDER BY Exam_Name
SELECT DISTINCT Exam_Code FROM Exams ORDER BY Exam_Code
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID JOIN Questions_in_Exams AS T3 ON T1.Question_ID = T3.Question_ID JOIN Exams AS T4 ON T3.Exam_ID = T4.Exam_ID WHERE T4.Exam_Name = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions_in_Exams AS T2 ON T1.Question_ID = T2.Exam_ID JOIN Valid_Answers AS T3 ON T1.Question_ID = T3.Question_ID GROUP BY T1.Student_ID ORDER BY count(*) DESC
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Student_ID ORDER BY COUNT(*) DESC
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T1.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID GROUP BY T1.Assessment ORDER BY COUNT(*) ASC
SELECT T1.Exam_Name FROM Exams AS T1 JOIN Student_Assessments AS T2 ON T1.Exam_ID = T2.Assessment GROUP BY T1.Exam_Name ORDER BY count(*) ASC
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT DISTINCT T1.Last_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender_MFU = "F" OR T1.Gender_MFU = "M"
SELECT T1.Last_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.Gender_MFU = "F" OR T1.Gender_MFU = "M"
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T2.Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T2.Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID JOIN Questions_in_Exams AS T3 ON T1.Question_ID = T3.Question_ID WHERE T2.Valid_Answer_Text = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID JOIN Questions_in_Exams AS T3 ON T1.Question_ID = T3.Question_ID WHERE T2.Valid_Answer_Text = "Absent"
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Valid_Answer_Text = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID WHERE T2.Valid_Answer_Text = "Absent"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
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
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC LIMIT 1
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
SELECT count(*) FROM Customers
SELECT count(*) FROM customers
SELECT customer_id, customer_name FROM customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address, customer_phone, customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
SELECT order_id, order_date, order_status_code FROM Customer_Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE customer_name = "Jeromy")
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "Jeromy"
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_id, T1.customer_id, T1.customer_name, T1.customer_phone FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code, count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_type_code = "Monitor"
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T1.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T1.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT order_date, order_id FROM Order_items GROUP BY order_date HAVING order_quantity > 6 UNION SELECT order_id FROM Customer_Orders GROUP BY order_id HAVING count(*) > 3
SELECT order_id, order_date FROM order_items GROUP BY order_id HAVING order_quantity > 6 OR count(*) > 3
SELECT count(*) FROM building
