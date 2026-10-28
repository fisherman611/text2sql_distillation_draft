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
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name, T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name, T1.Club_ID FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING count(*) > 2
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING count(*) > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce'
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT DISTINCT Manufacturer, COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer, COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT T1.customer_id, T2.customer_first_name, T2.customer_last_name FROM orders AS T1 JOIN customer_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM orders AS T1 JOIN customer_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) > 3
SELECT T1.order_id, T2.order_status_code, count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*), T1.order_status_code, T1.order_id FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM Orders GROUP BY date_order_placed ORDER BY date_order_placed ASC LIMIT 1
SELECT min(date_order_placed), T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name, customer_last_name FROM customers EXCEPT SELECT T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers EXCEPT SELECT T1.customer_first_name, T1.customer_last_name, T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT product_id, product_name, product_price, product_color FROM products EXCEPT SELECT T1.product_id, T2.product_name, T2.product_price, T2.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 2
SELECT T1.product_id, T1.product_name, T1.product_price, T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT order_id, date_order_placed FROM Orders GROUP BY order_id HAVING count(*) >= 2
SELECT T1.product_id, T2.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT order_id, sum(product_price) FROM products GROUP BY order_id ORDER BY sum(product_price) LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code, count(*) FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*), gender_code FROM Customers AS T1 JOIN Order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*), gender_code FROM Customers GROUP BY gender_code
SELECT count(*), gender_code FROM Customers GROUP BY gender_code
SELECT T1.customer_first_name, T1.customer_last_name, T1.customer_middle_initial FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name, customer_middle_initial, customer_last_name, payment_method_code FROM Customers
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT invoice_status_code, invoice_date, shipment_date FROM INVOICES
SELECT T2.product_name, T3.shipment_date FROM shipments AS T1 JOIN order_items AS T2 ON T1.shipment_id = T2.shipment_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T2.product_name, T1.shipment_date FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipment_items AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = 'ordered' INTERSECT SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipment_items AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = 'shipped'
SELECT T1.order_item_status_code, T2.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 ON T1.order_item_id = T2.order_item_id WHERE T1.order_status_code = 'ordered' INTERSECT SELECT T1.shipment_tracking_number FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_item_id = T2.order_item_id WHERE T2.order_status_code = 'shipped'
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_item_id
SELECT T1.product_name, T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT DISTINCT T1.product_name, T1.product_price, T1.product_description FROM products AS T1 JOIN customer_payment_methods AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_status_code!= 'Shipped'
SELECT sum(T1.order_id), T1.date_order_placed, T1.total_cost FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id, T1.date_order_placed, sum(T2.product_price) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM Customers WHERE customer_id IN (SELECT customer_id FROM Orders)
SELECT count(DISTINCT customer_id) FROM Customers
SELECT count(*) FROM Order_items WHERE order_item_status_code = 'state'
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_first_name, customer_last_name FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM Orders
SELECT order_status_code, date_order_placed FROM Orders
SELECT address_line_1, town_city, county FROM customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'
SELECT customer_first_name, product_name FROM Customers JOIN Order_items ON Customers.customer_id = Order_items.customer_id
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT count(*) FROM Shipment_items
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(T1.product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id
SELECT avg(product_price) FROM products GROUP BY product_price
SELECT email_address, town_city, county FROM customers WHERE gender_code = 'M' GROUP BY email_address, town_city, county ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address, T2.town_city, T2.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code HAVING count(*) < (SELECT count(*) FROM customers GROUP BY gender_code)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT product_id, product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipment_items AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date, T1.invoice_number FROM Invoices AS T1 JOIN Shipment_items AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT shipment_tracking_number, shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color, product_description, product_size FROM products WHERE product_price NOT IN (SELECT max(product_price) FROM products)
SELECT Name FROM director WHERE Age > (SELECT avg(Age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE '%bbc%'
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year
SELECT T2.Name FROM program AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T1.Age FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.website FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*), T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE Channel_ID NOT IN (SELECT Channel_ID FROM program)
SELECT T2.Name FROM program AS T1 JOIN director AS T2 ON T1.Director_ID = T2.Director_ID WHERE T1.Title = "Dracula"
SELECT T1.Name, T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age > 60
SELECT channel_id, name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id WHERE T2.name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation!= "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT DISTINCT T1.Affiliation, COUNT(*) FROM city_channel AS T1 JOIN city_channel AS T2 ON T1.ID = T2.ID GROUP BY T1.Affiliation
SELECT DISTINCT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Affiliation FROM city_channel AS T1 JOIN city_channel AS T2 ON T1.City_channel_ID = T2.City_channel_ID GROUP BY T1.City_channel_ID HAVING COUNT(*) > 3
SELECT T1.City, T2.station_name FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.ID = T2.City_channel_ID ORDER BY T2.station_name
SELECT T1.Transmitter, T2.City FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT transmitter, station_name FROM radio ORDER BY ERP_kW DESC
SELECT T1.Transmitter, COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*), T1.Driver_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Driver_ID, count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(Power), avg(Power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) LIMIT 1
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed, Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year, Model, Builder FROM vehicle
SELECT Build_Year, Model, Builder FROM vehicle
SELECT count(*) FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Build_Year = 2012)
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Build_Year = 2012)
SELECT count(*) FROM vehicle_driver WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Series = 'NASCAR')
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver WHERE Series = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model, Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT DISTINCT T1.Model, T1.Build_Year FROM vehicle AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Model LIKE "DJ"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID, T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Ziyang' OR T2.Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID, T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) >= 2 INTERSECT SELECT T1.Vehicle_ID, T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 'Ziyang'
SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon'
SELECT T1.Vehicle_ID, T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID GROUP BY T1.Vehicle_ID HAVING count(*) > 2 UNION SELECT T1.Vehicle_ID, T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon'
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(DISTINCT Driver_ID), Racing_Series FROM vehicle_driver GROUP BY Racing_Series
SELECT count(DISTINCT T1.Name), T2.Racing_Series FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Racing_Series
SELECT T1.Name, T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T1.Name, T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(DISTINCT Driver_ID) FROM vehicle_driver
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name, exam_date FROM exams WHERE subject_code!= "Database"
SELECT exam_date, exam_name FROM exams WHERE subject_code!= "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "data" ORDER BY exam_date DESC
SELECT count(*), TYPE_of_Question_code FROM questions GROUP BY TYPE_of_Question_code
SELECT TYPE_of_Question_Code, COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = "Normal"
SELECT DISTINCT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id JOIN questions AS T3 ON T1.question_id = T3.question_id WHERE T3.question_text = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_answers
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T1.student_id ORDER BY count(*) DESC
SELECT T2.Student_answer_text FROM Questions_in_exams AS T1 JOIN Student_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T2.student_answer_text ORDER BY count(*) DESC
SELECT T1.First_Name, T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name, T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_ADRESS, T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress, T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Student_Answers AS T2 ON T1.Assessment_ID = T2.Assessment_ID GROUP BY T1.Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Exam_Name FROM Exams AS T1 JOIN Student_Assessments AS T2 ON T1.Exam_ID = T2.Exam_ID GROUP BY T1.Exam_ID ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Last_Name FROM Students WHERE Gender_MFU!= "M"
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT first_name FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN Student_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = "Normal" INTERSECT SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Student_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = "Absent"
SELECT T1.Comments FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.Comments = "Normal" INTERSECT SELECT T1.Comments FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.Comments = "Absent"
SELECT TYPE_of_Question_code FROM Questions GROUP BY TYPE_of_Question_code HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT DISTINCT T1.student_id FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Addresses
SELECT count(*) FROM Addresses
SELECT address_id, address_details FROM addresses
SELECT address_id, address_details FROM Addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_id, product_type_code, product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = 'Monitor'
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT min(product_price), avg(product_price), max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id, product_name FROM products ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code
SELECT count(*), product_type_code FROM products GROUP BY product_type_code
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
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers WHERE payment_method_code = 'Payment' GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_id, product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Customer_Orders
SELECT count(*) FROM Customer_Orders
SELECT T1.order_id, T1.order_date, T1.order_status_code FROM Customer_Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT order_id, order_date, order_status_code FROM Customer_Orders WHERE customer_id = 1
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code, count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT count(*), order_status_code FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Order_items WHERE product_id IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Customer_Orders
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Customer_Orders
SELECT T1.order_date, T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 INTERSECT SELECT T1.order_date, T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT T1.order_id, T1.order_date FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 6 UNION SELECT T1.order_id, T1.order_date FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories
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
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T2.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T2.capital ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address, T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address, T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building WHERE region_id = (SELECT region_id FROM region WHERE name = 'Abruzzo')
SELECT Number_of_Stories FROM building WHERE Region_ID = (SELECT Region_ID FROM region WHERE Name = "Abruzzo")
SELECT Completed_Year, count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year, count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name, Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM CHANNEL ORDER BY Channel_Details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.service_details FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT service_details FROM services GROUP BY service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT DISTINCT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details), count(DISTINCT service_details) FROM customers_and_services
SELECT count(*), T1.service_details FROM Customers_and_services AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.service_details
SELECT customer_details FROM Customers WHERE customer_details LIKE '%Kutch%'
SELECT customer_details FROM Customers WHERE customer_details LIKE "%Kutch%"
SELECT T2.Service_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = "Hardy Kutch" OR T2.services_and_channels_details = "Good"
SELECT T1.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T2.services_and_channels_details = "good"
SELECT T1.Service_details FROM customers_and_services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "bad" INTERSECT SELECT T1.service_details FROM customers_and_services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customer_interactions AS T3 ON T2.customer_id = T3.customer_id WHERE T3.status_code = "bad" AND T2.customer_id = "Hardy Kutch"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_channels_details = "15 ij"
SELECT DISTINCT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details, T2.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T2.status_code = "Stuck" AND T4.channel_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN customer_and_services AS T4 ON T4.customers_and_services_id = T3.customers_and_services_id JOIN channels AS T5 ON T4.channels_and_services_id = T5.channels_id WHERE T5.channel_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_details = 'Success'
SELECT count(*) FROM Integration_platform AS T1 JOIN customer_interactions AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T1.integration_platform_details = "Success"
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_id = T2.customer_id WHERE T2.integration_platform_details = 'failed'
SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code, count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.analytical_layer_type_code, count(*) FROM analytical_layer AS T1 JOIN customers_and_services AS T2 ON T1.customers_and_services_id = T2.customers_and_services_id GROUP BY T1.analytical_layer_type_code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.services_and_channels_details = 'unsatisfied'
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name, TYPE_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year BETWEEN 2013 AND 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain, count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT count(*), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(A1_annual_fuel_cost), max(A1_annual_fuel_cost), avg(A1_annual_fuel_cost) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT min(A1.annual_fuel_cost), max(A1.annual_fuel_cost), avg(A1.annual_fuel_cost) FROM Vehicles AS A1 JOIN Renting_history AS B ON A1.id = B.vehicles_id
SELECT name, model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name, Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain, avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(T1.age) FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING avg(T1.membership_credit) > (SELECT avg(membership_credit) FROM Customers)
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
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT T1.name, T2.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT avg(Highway_fuel_economy_rate), avg(City_fuel_economy_rate) FROM Vehicles GROUP BY Type_of_powertrain
SELECT avg(Highway_fuel_economy_rate), TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data, T2.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data, T2.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data, T2.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data, T2.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT DISTINCT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT DISTINCT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.teacher_details LIKE '%net%'
SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT student_id FROM Students EXCEPT SELECT student_id FROM Student_Loans
SELECT T1.amount_of_loan, T2.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan, T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details, T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.bio_data, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details, T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details, T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.address_details, T2.bio_data FROM Students_addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T1.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(*), behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data, T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*), event_type_code, event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T1.event_type_description, count(*) FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details, T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details, T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T2.teacher_id = T3.teacher_id WHERE T3.teacher_details = 'Not' AND T1.student_id NOT IN (SELECT T1.student_id FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id)
SELECT count(*) FROM Students AS T1 JOIN Students_Events AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT T1.student_id FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 1)
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM TRANSCRIPTS
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
SELECT T1.achievement_type_code, T1.achievement_details, T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Students_details AS T2 ON T1.student_id = T2.student_id WHERE T2.bio_data LIKE '%Suite%'
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Students_details AS T2 ON T1.student_id = T2.student_id WHERE T2.bio_details LIKE '%Suite%'
SELECT T1.teacher_details, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*), teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id, count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id, T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code, detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.date_of_loan FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Transcripts AS T2 ON T1.teacher_id = T2.student_id ORDER BY T2.date_of_transcript ASC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Transcripts AS T2 ON T1.teacher_id = T2.student_id ORDER BY T2.date_of_transcript ASC LIMIT 1
SELECT student_id, sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT student_id, sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT T1.student_id, T1.bio_data, T2.class_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id, T1.bio_data, count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(*) FROM Detention WHERE datetime_detention_start >= datetime('2020-01-01') AND datetime_detention_end <= datetime('2020-12-31')
SELECT count(*) FROM Detention WHERE datetime_detention_start >= '2020-01-01' AND datetime_detention_end <= '2020-01-31'
SELECT T1.address_type_code, T2.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_type_description FROM Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data, T2.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT T1.student_id FROM Student_Loans)
SELECT T1.bio_data, T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from, T1.date_to FROM Students_addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from, T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id WHERE T2.transcript_id = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name, address FROM Client
SELECT name, address FROM Client
SELECT title, isbn, saleprice FROM Book
SELECT title, ISBN, saleprice FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM Books ORDER BY ISBN
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name, address FROM Client ORDER BY name
SELECT name, address FROM Client ORDER BY name
SELECT T1.Title, T2.Name FROM BOOK AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor
SELECT T2.Name, T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN
SELECT idClient, name FROM Client ORDER BY idorder
SELECT IdOrder, Name FROM Orders
SELECT T1.name, count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author GROUP BY T1.name
SELECT T2.Name, count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author GROUP BY T1.Name
SELECT isbn, count(*) FROM Books_order GROUP BY isbn
SELECT ISBN, count(*) FROM Books_order GROUP BY ISBN
SELECT isbn, sum(amount) FROM Books_order GROUP BY isbn
SELECT isbn, sum(amount) FROM Books_order GROUP BY isbn
SELECT T2.Title FROM Books ORDER BY T1.amount DESC LIMIT 1
SELECT title FROM Books ORDER BY amount DESC LIMIT 1
SELECT T1.Title, T2.PurchasePrice FROM Books ORDER BY T2.amount DESC LIMIT 1
SELECT T2.title, T1.purchaseprice FROM Books ORDER BY T1.amount DESC LIMIT 1
SELECT Title FROM BOOK ORDER BY ISBN
SELECT DISTINCT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN ORDER BY T2.IdOrder
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT T1.Name, count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name
SELECT name, count(*) FROM Client ORDER BY name
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, sum(T2.amount) FROM Author AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.Name
SELECT T1.Name, sum(T2.amount) FROM Books_order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.IdOrder
SELECT T1.Name FROM Client AS T1 JOIN Books_order AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.Name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Books_order AS T2 ON T1.IdClient = T2.IdOrder GROUP BY T1.IdClient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM BOOK WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice), min(SalePrice) FROM Book
SELECT max(SalePrice), min(SalePrice) FROM BOOK
SELECT avg(PurchasePrice), avg(SalePrice) FROM BOOK
SELECT avg(purchaseprice), avg(saleprice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT title FROM BOOK WHERE purchaseprice > (SELECT avg(saleprice) FROM BOOK)
SELECT title FROM BOOK WHERE purchaseprice > (SELECT avg(saleprice) FROM BOOK)
SELECT title FROM BOOK ORDER BY saleprice ASC LIMIT 1
SELECT title FROM BOOK WHERE purchaseprice = (SELECT min(saleprice) FROM BOOK)
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT SalePrice FROM BOOK WHERE Author = "Plato"
SELECT t1.SalePrice FROM Books AS t1 JOIN Author_Book AS t2 ON t1.ISBN = t2.ISBN WHERE t2.Name = "Plato"
SELECT title FROM BOOK WHERE Author = "George Orwell" ORDER BY SalePrice LIMIT 1
SELECT title FROM Book WHERE Author = "George Orwell" ORDER BY SalePrice LIMIT 1
SELECT title FROM BOOK WHERE author = 'Plato' AND purchaseprice < (SELECT avg(saleprice) FROM BOOK)
SELECT T2.title FROM Books ORDER BY T1.saleprice < (SELECT avg(saleprice) FROM Books)
SELECT T2.Name FROM Books ORDER BY ISBN = "Pride and Prejudice"
SELECT T2.Name FROM Books ORDER BY ISBN = "Pride and Prejudice"
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT T1.Title FROM BOOK AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM Orders WHERE title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE T1.title = "Pride and Prejudice"
SELECT idOrder FROM orders WHERE title = "Pride and Prejudice" INTERSECT SELECT idOrder FROM orders WHERE title = "The Little Prince"
SELECT idorder FROM orders JOIN author_book ON idorder = isbn WHERE author = 'Pride' INTERSECT SELECT idorder FROM orders JOIN author_book ON idorder = isbn WHERE author = 'The Little Prince'
SELECT ISBN FROM Books ORDER BY idOrder, idClient WHERE name = "Peter Doe" INTERSECT SELECT ISBN FROM Books ORDER BY idOrder, name WHERE name = "James Smith"
SELECT ISBN FROM Books ORDER BY idOrder FROM Orders WHERE idClient = 'Peter Doe' INTERSECT SELECT ISBN FROM Books ORDER BY idOrder FROM Orders WHERE idClient = 'James Smith'
SELECT title FROM Books ORDER BY idOrder EXCEPT SELECT T1.title FROM Books ORDER BY idOrder WHERE T1.Name = 'Peter Doe'
SELECT T1.Title FROM Books ORDER BY T1.ISBN WHERE idOrder!= (SELECT idOrder FROM Orders WHERE name = 'Peter Doe')
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Book AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.Title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE, Release FROM book
SELECT max(Chapters), min(Chapters) FROM book GROUP BY Book_ID
SELECT Title FROM book WHERE Title!= "Poet"
SELECT avg(Rating) FROM review
SELECT DISTINCT T1.Title, T1.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review ORDER BY Rating DESC LIMIT 1
SELECT rank FROM review ORDER BY Pages LIMIT 1
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE, count(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT Title FROM book ORDER BY Rating ASC
SELECT T2.Title, T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE, Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT name FROM customer ORDER BY level_of_membership ASC
SELECT Nationality, Card_Credit FROM customer
SELECT Nationality, Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT name, card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality, count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name, T2.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name, T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name, T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.Quantity DESC
SELECT T1.Name, T2.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.Quantity DESC
SELECT T1.Name, sum(T2.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT T1.Name, sum(T2.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity) > 1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT name, nationality FROM member
SELECT name FROM member WHERE nationality!= "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality, COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T2.Club_Name, T1.Member_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T2.Name FROM clubleader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Year_Join < 2018
SELECT T2.Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Club_Name = "Houston"
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.age) FROM member AS T1 JOIN clubleader AS T2 ON T1.member_id = T2.member_id GROUP BY T2.club_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT DISTINCT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT DISTINCT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Document_Subset_members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN document_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_subset_name = 'Top collection'
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = 'Top collection'
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_object_id
SELECT DISTINCT document_subset_name FROM document_subsets
SELECT T1.document_subset_details FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.collection_id WHERE T2.collection_id = 2000 AND T1.document_subset_name = 'Best for 2000'
SELECT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID WHERE T1.Document_Subset_Name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections
SELECT document_object_id FROM document_objects
{"sql": "SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID JOIN Document_Subset_Members AS T4 ON T3.Document_Object_ID = T4.Document_Object_ID JOIN Collection_Subset_Members AS T5 ON T4.Related_Collection_ID = T5.Collection_ID JOIN Collections AS T6 ON T5.Collection_ID = T6.Collection_ID JOIN Collections AS T7 ON T7.Collection_ID = T6.Collection_ID JOIN Document_Subsets AS T8 ON T8.Document_Subset_ID = T2.Document_Subset_ID JOIN Document_Objects AS T9 ON T8.Document_Object_ID = T9.Document_Object_ID JOIN Document_Subset_Members AS T10 ON T10.Document_Object_ID = T9.Document_Object_ID JOIN Document_Subset_Members AS T11 ON T11.Document_Object_ID = T10.Document_Object_ID JOIN Document_Objects AS T12 ON T12.Document_Object_ID = T11.Document_Object_ID JOIN Document_Subset_Members AS T13 ON T13.Document_Object_ID = T12.Document_Object_ID JOIN Document_Subset_Members AS T14 ON T14.Document_Object_ID = T13.Document_Object_ID JOIN Document_Objects AS T15 ON T15.Document_Object_ID = T14.Document_Object_ID JOIN Document_Subset_Members AS T16 ON T16.Document_Object_ID = T15.Document_Object_ID JOIN Document_Subset_Members AS T17 ON T17.Document_Object_ID = T16.Document_Object_ID JOIN Document_Objects AS T18 ON T18.Document_Object_ID = T17.Document_Object_ID JOIN Document_Subset_Members AS T19 ON T19.Document_Object_ID = T18.Document_Object_ID JOIN Document_Objects AS T20 ON T20.Document_Object_ID = T19.Document_Object_ID JOIN Document_Subset_Members AS T21 ON T21.Document_Object_ID = T20.Document_Object_ID JOIN Document_Objects AS T22 ON T22.Document_Object_ID = T21.Document_Object_ID JOIN Document_Subset_Members AS T23 ON T23.Document_Object_ID = T22.Document_Object_ID JOIN Document_Objects AS T24 ON T24.Document_Object_ID = T23.Document_Object_ID JOIN Document_Subset_Members AS T25 ON T25.Document_Object_ID = T24.Document_Object_ID JOIN Document_Objects AS T26 ON T26.Document_Object_ID = T25.Document_Object_ID JOIN Document_Subset_Members AS T27 ON T27.Document_Object_ID = T26.Document_Object_ID JOIN Document_Objects AS T28 ON T28.Document_Object_ID = T27.Document_Object_ID JOIN Document_Subset_Members AS T29 ON T29.Document_Object_ID = T28.Document_Object_ID JOIN Document_Objects AS T30 ON T30.Document_Object_ID = T29.Document_Object_ID JOIN Document_Subset_Members AS T31 ON T31.Document_Object_ID = T30.Document_Object_ID JOIN Document_Objects AS T32 ON T32.Document_Object_ID = T31.Document_Object_ID JOIN Document_Subset_Members AS T33 ON T33.Document_Object_ID = T32.Document_Object_ID JOIN Document_Objects AS T34 ON T34.Document_Object_ID = T33.Document_Object_ID JOIN Document_Subset_Members AS T35 ON T35.Document_Object_ID = T34.Document_Object_ID JOIN Document_Objects AS T36 ON T36.Document_Object_ID = T35.Document_Object_ID JOIN Document_Subset_Members AS T37 ON T37.Document_Object_ID = T36.Document_Object_ID JOIN Document_Objects AS T38 ON T38.Document_Object_ID = T37.Document_Object_ID JOIN Document_Subset_Members AS T39 ON T39.Document_Object_ID = T38.Document_Object_ID JOIN Document_Objects
SELECT document_object_id FROM document_objects WHERE owner = 'Marlin'
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT owner FROM document_objects WHERE owner = 'Marlin'
SELECT Owner FROM Document_Objects WHERE Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE document_object_id NOT IN (SELECT document_object_id FROM Document_Subset_members)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT document_object_id FROM document_subsets)
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT count(*), T1.parent_document_object_id FROM Document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.collection_object_id GROUP BY T1.parent_document_object_id
SELECT Collection_Name FROM Collections
SELECT DISTINCT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best";
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = 'Nice'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT Collection_Name FROM Collections WHERE Collection_ID NOT IN (SELECT Collection_ID FROM Collection_Subset_Members)
SELECT Collection_Name FROM Collections EXCEPT SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Parent_Collection_ID
SELECT document_object_id FROM document_objects WHERE document_object_id IN (SELECT document_object_id FROM document_subsets WHERE document_subset_id IN (SELECT related_document_object_id FROM document_subset_members WHERE subset_id IN (SELECT document_subset_id FROM document_subsets WHERE document_id = 12345) GROUP BY document_object_id HAVING count(*) > 1)
SELECT DISTINCT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subset_Members AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID JOIN Document_Subsets AS T4 ON T3.Document_Subset_ID = T4.Document_Subset_ID JOIN Document_Subsets AS T5 ON T4.Document_Subset_ID = T5.Document_Subset_ID JOIN Document_Objects AS T6 ON T5.Document_Object_ID = T6.Document_Object_ID WHERE T1.Owner = "Ransom"
SELECT document_object_id FROM document_objects WHERE owner = 'Ransom'
SELECT T1.collection_subset_id, count(*), T2.collection_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_id GROUP BY T1.collection_subset_id
SELECT T1.Collection_Subset_ID, T1.Collection_Subset_Name, COUNT(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID GROUP BY T1.Collection_Subset_ID
SELECT document_object_id, count(*) FROM document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM document_objects WHERE description = 'child') GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID ORDER BY count(*) LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Document_Object_ID, count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Object_ID HAVING count(*) BETWEEN 2 AND 4
SELECT T1.owner FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id JOIN collections AS T4 ON T4.collection_id = T3.collection_id WHERE T4.collection_name = 'Braeden'
SELECT DISTINCT T1.owner FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN documents_in_collections AS T3 ON T2.collection_id = T3.collection_id JOIN collections AS T4 ON T3.collection_id = T4.collection_id JOIN collections AS T5 ON T4.collection_id = T5.collection_id WHERE T4.collection_name = 'Braeden'
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.related_document_object_id JOIN documents AS T3 ON T2.collection_id = T3.collection_id JOIN documents AS T4 ON T4.document_object_id = T4.document_object_id WHERE T4.owner = 'Braeden'
SELECT DISTINCT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.Document_Subset_ID = T2.Document_Object_ID WHERE T2.Owner = "Braeden"
SELECT DISTINCT T1.Document_Subset_ID, T1.Document_Subset_Name, COUNT(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID GROUP BY T1.Document_Subset_ID
SELECT DISTINCT T1.document_subset_id, T1.document_subset_name, count(*) FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id, T1.document_subset_name, count(DISTINCT T1.document_subset_id) FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id ORDER BY count(DISTINCT T1.document_subset_id) DESC LIMIT 1
SELECT T1.document_subset_id, T1.document_subset_name, count(*) FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name, T2.document_subset_id FROM Document_Subset_members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id
SELECT T1.Document_Subset_Name, T1.Document_Subset_ID FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Document_Subset_ID
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = "Ransom"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Document_Objects AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Owner = 'Ransom'
SELECT count(*), T1.collection_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*), T1.collection_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = 'Best'
SELECT count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.collection_id = 'Best'
SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT count(*) FROM Document_objects WHERE document_object_id IN (SELECT document_object_id FROM collections WHERE collection_name = 'Best')
SELECT T1.Collection_Name, T1.Collection_ID, COUNT(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.collection_name, T2.document_object_id, count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T2.collection_id ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best') AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT DISTINCT document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T2.document_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections WHERE collection_id NOT IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT DISTINCT document_object_id FROM document_objects WHERE document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best for 2000') EXCEPT SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best") AND document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best"))
SELECT DISTINCT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' INTERSECT SELECT document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best for 2000'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T2.Collection_Name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT collection_id) FROM collections WHERE collection_name = 'Best'
SELECT T2.Collection_Subset_Name FROM COLLECTION_SUBSETS AS T1 JOIN COLLECTION_SUBSETS AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID WHERE T1.Collection_Name = "Best"
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT DISTINCT language, name FROM songs
SELECT max(voice_sound_quality), min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality, T2.rhythm_tempo, T2.stage_presence FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T1.name = 'Freeway'
SELECT id, language, original_artist FROM songs WHERE name!= 'Love'
SELECT original_artist, original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "English"
SELECT T1.id, T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo), T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.original_artist WHERE T2.language = 'English'
SELECT T1.name, T1.popularity FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.original_artist WHERE T2.language = 'Croatian' INTERSECT SELECT T1.name, T1.popularity FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.original_artist WHERE T2.language = 'English'
SELECT DISTINCT name FROM songs WHERE name LIKE "Is"
SELECT original_artist FROM performance_score WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT T1.city_name, T2.city_code, T2.state, T2.country FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code
SELECT city_name, city_code, state, country FROM City
SELECT T1.latitude, T1.longitude FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code WHERE T1.city_name = 'Baltimore'
SELECT DISTINCT T1.latitude, T1.longitude FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code WHERE T1.city_name = 'Baltimore'
SELECT DISTINCT city_name FROM City WHERE state = 'PA'
SELECT city_name FROM City WHERE state = "PA"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM City WHERE country = 'Canada'
SELECT DISTINCT t1.fname, t1.lname FROM direct_distance AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.country = 'USA' ORDER BY t2.latitude
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT state, count(*) FROM City GROUP BY state
SELECT count(*), state FROM city GROUP BY state
SELECT country, count(*) FROM City GROUP BY country
SELECT count(*), country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM City GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT fname, lname FROM student WHERE city_code = 'MD'
SELECT fname, lname FROM Student WHERE city_code = 'MD'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = 'China'
SELECT fname, major FROM student WHERE city_code = "Baltimore"
SELECT fname, major FROM student WHERE city_code = "Baltimore"
SELECT count(*), country FROM City GROUP BY country
SELECT count(*), country FROM City GROUP BY country
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT count(*), city_code FROM student GROUP BY city_code
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city WHERE city_code IN (SELECT city_code FROM direct_distance) GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city WHERE city_code IN (SELECT city_code FROM direct_distance) GROUP BY city_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.city_name FROM City AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT DISTINCT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT state FROM city WHERE state > 5
SELECT state FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code HAVING count(*) > 5)
SELECT stuID FROM student WHERE city_code NOT IN (SELECT city_code FROM direct_distance WHERE country = 'USA')
SELECT stuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM direct_distance WHERE country = 'USA')
SELECT stuID FROM Student WHERE sex = 'F' AND state = 'PA'
SELECT stuid FROM student WHERE sex = 'F' AND state = 'PA'
SELECT stuID FROM Student WHERE sex = 'M' AND country!= 'USA'
SELECT stuID FROM Student WHERE sex = 'male' EXCEPT SELECT stuID FROM Student WHERE country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 'CHI' AND city2_code = 'BAL'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' AND T1.city1_code = 'Newark'
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT avg(T1.distance), min(T1.distance), max(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city1_code
SELECT avg(distance), min(distance), max(distance) FROM direct_distance
SELECT city_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT city_code FROM direct_distance GROUP BY city1_code ORDER BY sum(distance) DESC LIMIT 1
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance GROUP BY city1_code HAVING sum(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL"
SELECT avg(distance) FROM direct_distance WHERE city1_code!= 'Boston' GROUP BY city1_code
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t1.city_name = 'Chicago'
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN student AS t3 ON t1.city_code = t3.city_code WHERE t3.city_name = 'Chicago'
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.city1_code = 'BOSTON' ORDER BY t2.distance DESC LIMIT 1
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t1.state = 'MA' AND t2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT sum(T1.distance), T2.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code
SELECT sum(distance), city_code FROM direct_distance GROUP BY city_code
SELECT city_name, avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name, avg(T2.distance) FROM City AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT t1.fname, t1.lname FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code JOIN student AS t3 ON t1.stuid = t3.stuid WHERE t3.fname = 'Linda' AND t3.lname = 'Smith' AND t3.fname = 'Tracy'
SELECT t1.distance FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code WHERE t1.stuID = 'Linda Smith' INTERSECT SELECT t1.distance FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code WHERE t1.stuID = 'Tracy Kim'
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.lname = 'Smith' AND T2.distance = (SELECT min(distance) FROM direct_distance WHERE city2_code = 'Linda')
SELECT t1.fname, t1.lname FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city_code = t3.city_code WHERE t3.city_name = 'Linda' AND t1.lname = 'Smith' ORDER BY t2.distance DESC LIMIT 1
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code WHERE t2.fname = "Linda"
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code WHERE t2.fname = 'Linda'
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT DISTINCT T1.bid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.id = 1
SELECT DISTINCT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM reserves)
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT max(age) FROM sailors)
SELECT sid FROM sailors WHERE age!= ( (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T2.name, T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) >= 2
SELECT DISTINCT sid FROM reserves WHERE color = 'red' OR color = 'blue'
SELECT DISTINCT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.bid
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = 'boat'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 103
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors)
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.rating > 2
SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3
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
SELECT count(*), bid FROM reserves GROUP BY bid
SELECT count(*) FROM reserves WHERE bid > 50
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 50
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 1 GROUP BY T1.name
SELECT count(*), T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.id > 1 GROUP BY T1.name
SELECT avg(T1.age), avg(T1.rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red"
SELECT T2.rating, avg(T1.age) FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" GROUP BY T2.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM reserves WHERE bid = 'red')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM reserves WHERE bid = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = 'Melon'
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
SELECT count(*), CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*), CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model, class, construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT Model, Class, Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Construction, avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price), Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Bowls"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction!= "plastic"
SELECT Earpads FROM headphone WHERE Construction!= "plastic"
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
SELECT T2.Name, count(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID = 'Headphones' GROUP BY T2.Name
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID WHERE T2.Store_ID = (SELECT Store_ID FROM store WHERE Name = "Woodman")
SELECT sum(T1.Quantity) FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID WHERE T2.Store_ID = (SELECT Store_ID FROM store WHERE Name = 'Woodman')
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT T2.Neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE title LIKE '%NAACL 2000%'
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM paper WHERE YEAR = 2009 AND affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = "Columbia University")
SELECT DISTINCT T1.name, T1.address FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id
SELECT name, address FROM affiliation
SELECT venue, year FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY year
SELECT t1.title, t1.paper_id FROM Paper AS t1 JOIN Author_list AS t2 ON t1.paper_id = t2.paper_id JOIN Affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT T1.title, T2.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT DISTINCT t1.title, t1.paper_id FROM Paper AS t1 JOIN Author_list AS t2 ON t1.paper_id = t2.paper_id JOIN Author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'McKeown'
SELECT title, paper_id FROM Paper WHERE author_id = (SELECT author_id FROM Author_list WHERE name = 'McKeown')
SELECT t1.title, t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' INTERSECT SELECT t1.title, t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT T1.title, T2.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title, T2.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown" AND T3.name = "Kathleen" AND T1.title = "Rambow, Owen"
SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" INTERSECT SELECT T2.title, T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT title, paper_id FROM paper EXCEPT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown'
SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' EXCEPT SELECT T1.title, T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Rambow'
SELECT title, paper_id FROM Paper WHERE author LIKE '%McKeown%' OR author LIKE '%Kathleen%' OR author LIKE '%Rambow%'
SELECT T1.title, T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "McKeown" OR T3.name = "Rambow" OR T3.name = "Owen"
SELECT T2.name, count(*) FROM Author_list AS T1 JOIN Paper AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT count(*), T2.name FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id GROUP BY T2.name ORDER BY count(*)
SELECT count(*), T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T2.name FROM paper AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT DISTINCT T2.name FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) = 1
SELECT venue, YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM paper WHERE paper_id = 'D12-1027'
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.paper_id = 'D12-1027'
SELECT T1.paper_id, count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id, count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT t1.title, count(*) FROM Paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 10
SELECT t1.title, count(*) FROM Paper AS t1 JOIN Citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T1.name = "Kathleen"
SELECT count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T1.name = "Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "McKeown, Kathleen"
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKeown' AND T2.author_id = 'Kathleen'
SELECT T2.name, count(*) FROM citation AS T1 JOIN author AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.venue, T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'McKeown' AND T3.name = 'Kathleen'
SELECT T2.venue, T1.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = "Mckeown" AND T1.name = "Kathleen"
SELECT T2.venue, T2.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T2.venue, T2.year FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = (SELECT affiliation_id FROM Affiliate WHERE name = "Columbia University")
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM Paper WHERE title LIKE '%Columbia University%' AND YEAR < 2009
SELECT count(*) FROM Paper WHERE title LIKE '%Columbia University%' OR YEAR = 2009
SELECT count(*) FROM Paper WHERE title LIKE '%Stanford University%' AND YEAR BETWEEN 2000 AND 2009
SELECT count(*) FROM Paper WHERE YEAR = 2000 AND affiliation_id IN (SELECT affiliation_id FROM Affiliation WHERE name = "Stanford University")
SELECT title FROM Paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM Paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T2.name = "Kathleen"
SELECT count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.name = "Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "McKeown" AND t1.name = "Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'McKeown' AND t1.name = 'Kathleen'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), venue FROM paper GROUP BY venue
SELECT venue, count(*) FROM paper GROUP BY venue, year
SELECT count(*), T2.name FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.name
SELECT count(DISTINCT T1.affiliation_id), T2.name FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.name
SELECT title FROM Paper WHERE paper_id IN (SELECT cited_paper_id FROM Citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.title LIKE "NAACL" AND t2.year = 2009 INTERSECT SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.title LIKE "ACL" AND t2.year = 2009
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T1.name = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T1.name = 'ACL'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM citation)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM citation)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT conference_name, YEAR, LOCATION FROM conference
SELECT conference_name, year, location FROM conference
SELECT conference_name, count(*) FROM conference GROUP BY conference_name
SELECT conference_name, count(*) FROM conference_participation GROUP BY conference_name
SELECT YEAR, count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference_participation GROUP BY conference_id HAVING count(*) >= 2
SELECT institution_name, location, founded FROM institution
SELECT institution_name, location, founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name, LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, count(*) FROM institution WHERE founded > 1800 GROUP BY institution_name
SELECT T2.institution_name, count(*) FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.founded > 1800 GROUP BY T2.institution_name
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age), min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age), min(age) FROM staff
SELECT T2.conference_name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T1-nationality = 'Canada'
SELECT T2.Conference_Name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T1.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T2.role = 'sponsor'
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'ACL') INTERSECT SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'NACCL')
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.conference_id = T3.conference_id WHERE T3 conference_name = 'ACL' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.conference_id = T3.conference_id WHERE T3 conference_name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year >= 2003 INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year >= 2004
SELECT T1.confidence_name, T1.year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.conference_name, T1.year, count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T2.Conference_Name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT T1 conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT plane_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age ASC LIMIT 1
SELECT name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter'
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14'
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT location) FROM hangar
SELECT T1.plane_name FROM pilotskills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Jones' AND T2.age = 32
SELECT T1.plane_name FROM pilotskills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Jones' AND T2.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35
SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub'
SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub'
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Smith" AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT DISTINCT plane_name FROM hangar
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT T1.plane_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 OR T1.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT DISTINCT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter' AND T1.age > 35
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT avg(age), min(age) FROM PilotSkills
SELECT avg(age), min(age) FROM PilotSkills
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin" INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Boston"
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(age), T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT avg(age), plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*), T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT count(*), plane_name FROM pilot_skills GROUP BY plane_name
SELECT plane_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT DISTINCT plane_name, pilot_name FROM pilot_skills ORDER BY plane_name
SELECT T1.plane_name, T2.age FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name ORDER BY T2.age DESC LIMIT 1
SELECT DISTINCT T1.plane_name, T2.pilot_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age DESC LIMIT 1
SELECT max(age), T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.name
SELECT DISTINCT pilot_name, max(age) FROM pilotskills GROUP BY pilot_name
SELECT count(*), avg(age) FROM pilotskills GROUP BY location
SELECT DISTINCT T1.location, count(*), avg(T2.age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills WHERE plane_name = 'plane1' AND avg(age) < 35
SELECT avg(T1.age), count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name, T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilotskills WHERE age > (SELECT max(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' ORDER BY pilot_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14' AND T1.age < (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14')
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name)
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT Government_website, Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km), avg(Area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT district_id, name, government_website FROM district ORDER BY population
SELECT DISTINCT government_website FROM district WHERE government_website = 'gov'
SELECT district_id, name FROM district WHERE population > 4000 OR area > 3000
SELECT DISTINCT name, speech_title FROM spokesman
SELECT avg(T1.Points), avg(T1.Age) FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.rank_position = 1
SELECT name, points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(Points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Start_year < 2004
SELECT T1.name, T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name
SELECT T2.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.Rank_position = 1 INTERSECT SELECT T2.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID
SELECT DISTINCT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(T1.Population), avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title, location FROM paintings ORDER BY year DESC LIMIT 1
SELECT title, LOCATION FROM paintings ORDER BY year LIMIT 1
SELECT title FROM Sculptures WHERE location = 226
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.sculptorID = T2.sculptorID WHERE T2.location = 226
SELECT title, LOCATION FROM paintings
SELECT title, LOCATION FROM paintings
SELECT title, location FROM Sculptures
SELECT title, LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, year FROM sculptures WHERE location!= 'gallery 226'
SELECT title, YEAR FROM sculptures WHERE location!= 226
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year > 1920
SELECT fname, lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.year - T1.birthYear DESC LIMIT 1
SELECT T1.fname, T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T1.birthYear LIMIT 1
SELECT T1.fname, T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.height_mm ASC LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY deathYear ASC LIMIT 1
SELECT fname, birthYear FROM Artists ORDER BY birthYear LIMIT 1
SELECT count(*) FROM paintings WHERE location = 240
SELECT count(*) FROM paintings WHERE paintingID = 240
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthYear = (SELECT max(deathYear) FROM artists)
SELECT count(*) FROM artists WHERE birthYear >= deathYear GROUP BY artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.title, T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear < 1850
SELECT T1.location, T2.medium FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = 'Pablo'
SELECT T1.location, T2.mediumOn FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = 'Pablo'
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T2.fname, T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID JOIN sculptures AS T3 ON T1.sculptorID = T3.sculptorID
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.birthYear FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT count(*), medium FROM Paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT avg(height_mm), medium FROM paintings GROUP BY medium
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*), LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T1.location = 240
SELECT DISTINCT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(year) FROM paintings WHERE location = 240)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(year) FROM paintings WHERE location = 240)
SELECT paintingID FROM paintings ORDER BY year DESC LIMIT 1
SELECT paintingID FROM paintings ORDER BY year LIMIT 1
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT T1.title, T2.title FROM Paintings AS T1 JOIN Sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title, T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistid = 222
SELECT artistid FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT artistid FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn = "on" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE mediumON = "on" INTERSECT SELECT LOCATION FROM sculptures WHERE medium = "on"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Sculptures WHERE YEAR > 1930
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE mediumOn = "oil" AND location = 241
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE mediumON = "oil" AND location = 241
SELECT max(height_mm), paintingID FROM Paintings WHERE YEAR < 1900 GROUP BY paintingID
SELECT height_mm, paintingid FROM paintings WHERE YEAR < 1900
SELECT max(height_mm), max(width_mm), year FROM paintings GROUP BY year
SELECT max(height_mm), max(width_mm), YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm), avg(width_mm), T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID GROUP BY T1.painterID ORDER BY T1.title
SELECT avg(height_mm), avg(width_mm), painterID FROM Paintings GROUP BY painterID ORDER BY painterID
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname, count(*) FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) ASC LIMIT 1
SELECT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingid, height_mm FROM paintings WHERE width_mm = 240
SELECT max(height_mm), paintingID FROM paintings WHERE location = "240" GROUP BY paintingID
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(year) FROM paintings WHERE location = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE year > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE year > 1900)
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T2.fname, T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" GROUP BY T2.fname, T2.lname ORDER BY count(*) DESC LIMIT 1
SELECT paintingID, LOCATION, title FROM paintings WHERE medium = "oil" ORDER BY year
SELECT DISTINCT T1.title, T1.location, T1.paintingid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.year
SELECT title, LOCATION, height_mm FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.year, T1.location, T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.height_mm > 1000 ORDER BY T1.title
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "painting" EXCEPT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "sculpture" EXCEPT SELECT T1.fname, T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid
SELECT location FROM paintings WHERE YEAR < 1885 AND mediumOn = 'no'
SELECT title FROM paintings WHERE YEAR < 1885 EXCEPT SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_team, Winning_driver FROM race ORDER BY Winning_team ASC
SELECT Winning_driver, Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Winning_driver!= "Junior Strous"
SELECT Winning_driver FROM race WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race WHERE Pole_Position = "Junior Strous");
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(age), min(age) FROM driver
SELECT max(age), min(age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name, T1.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name, T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_name, count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id
SELECT Driver_ID, COUNT(*) FROM race GROUP BY Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name, T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor!= "Bugatti"
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor, COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver WHERE Driver_ID IN (SELECT Driver_ID FROM race GROUP BY Driver_ID HAVING COUNT(*) >= 2)
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver EXCEPT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = "Carl Skerlong"
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe'
SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe'
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT DISTINCT name FROM languages WHERE name LIKE '%ish%'
SELECT DISTINCT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score), min(health_score) FROM countries WHERE name!= "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE name!= 'Norway'
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T2.name, T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name, count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = 'English'
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = 1
SELECT DISTINCT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.country_id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name = 'english' INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T1.name = 'spanish'
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country, town_city FROM Addresses
SELECT country, town_city FROM Addresses
SELECT county_state_province FROM Addresses WHERE county_state_province = 'USA'
SELECT DISTINCT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT T1.feature_name, T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT feature_name, feature_description FROM Features GROUP BY feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Rooms
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Users AS T1 JOIN Ref_Age_Categories AS T2 ON T1.user_category_code = T2.user_category_code WHERE T1.first_name LIKE '%Mother%' AND T1.last_name LIKE '%Mother%'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code WHERE T2.first_name LIKE '%Mother%' OR T2.last_name LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Property_Property_History AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Property_Property_History AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'garden'
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.feature_name = 'garden'
SELECT town_city FROM Addresses WHERE town_city LIKE '%pool%'
SELECT town_city FROM Addresses WHERE town_city LIKE '%pool%'
SELECT property_id, price_min FROM Properties ORDER BY price_requested_price LIMIT 1
SELECT property_id, price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT avg(room_count) FROM Rooms GROUP BY property_id
SELECT avg(room_count) FROM Rooms GROUP BY property_id
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT T1.user_id, T2.search_string FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT T1.user_id, T2.search_seq FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, content FROM User_Searches ORDER BY content DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT DISTINCT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id IN (SELECT T1.user_id FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id HAVING count(*) <= 2)
SELECT DISTINCT zip_postcode FROM Addresses WHERE property_id NOT IN (SELECT property_id FROM User_Property_History WHERE user_id IN (SELECT user_id FROM Users WHERE is_buyer = 'T') GROUP BY user_id HAVING count(*) >= 2)
SELECT T1.user_id, T2.user_category_code FROM User_searches AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id, T2.user_category_code FROM User_Searches AS T1 JOIN User_Categories AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime ASC LIMIT 1
SELECT T1.age_category_code FROM User_Categories AS T1 JOIN User_Searches AS T2 ON T1.user_category_code = T2.user_category_code ORDER BY T2.search_datetime ASC LIMIT 1
SELECT login_name FROM Users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id WHERE T2.seller = 1
SELECT first_name, last_name, login_name FROM Users WHERE is_seller = 'T'
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.line_3_area_locality FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Senior Citizens"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.line_3_area_locality FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.user_category_code ='senior'
SELECT count(DISTINCT count(*) FROM Property_Features WHERE feature_id >= 2
SELECT count(DISTINCT count(*) FROM Property_Features WHERE feature_id IN (SELECT feature_id FROM Property_Features GROUP BY feature_id HAVING count(*) >= 2)
SELECT count(*), T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name
SELECT count(*), T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id, count(*) FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name = 'single' OR T2.last_name = 'mother'
SELECT max(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE first_name = "Mother" OR first_name = "Student")
SELECT datestamp, T1.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp, T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT property_type_description, property_type_code FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT property_type_code, property_type_description FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.user_category_code WHERE T1.age_category_description = 'Over 60'
SELECT room_size, count(*) FROM Rooms GROUP BY room_size
SELECT count(DISTINCT room_size), room_type_code FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN User_Property_History AS T2 ON T1.address_id = T2.property_id WHERE T2.user_id = (SELECT user_id FROM User_Searches WHERE search_string = "Robbie")
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name, T1.last_name, T1.middle_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT T2.first_name, T2.last_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name, T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price ASC
SELECT heat, name, nation FROM cyclist
SELECT max(weight), min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation!= 'Russia'
SELECT DISTINCT T1.id, T2.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id, T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
SELECT T2.product_name, T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T2.product_name, T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT DISTINCT material FROM bike WHERE material LIKE '%fiber%'
SELECT T2.id, count(*) FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id
SELECT max(price), flavor FROM goods GROUP BY flavor
SELECT id, flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(price), flavor FROM goods GROUP BY flavor
SELECT id, flavor FROM goods ORDER BY price LIMIT 1
SELECT Id FROM goods WHERE Flavor = "Apple"
SELECT DISTINCT id FROM goods WHERE Flavor = "apple"
SELECT Id FROM goods WHERE Price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.Id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "lemon"
SELECT DISTINCT T1.Id FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "lemon"
SELECT T1.Food, COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Food
SELECT T1.Food, COUNT(*) FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.Food
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date LIKE '%bakery%' GROUP BY T1.id HAVING count(*) >= 15
SELECT DISTINCT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT DISTINCT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T1.Id HAVING COUNT(*) > 10
SELECT count(DISTINCT Flavor) FROM goods
SELECT count(DISTINCT Flavor) FROM goods
SELECT DISTINCT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Id = T2.Item WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.items WHERE T2.customerid = 15
SELECT avg(price), max(price), min(price) FROM goods GROUP BY food
SELECT avg(price), min(price), max(price) FROM goods
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Flavor = "Cake" INTERSECT SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Flavor = "Cookie"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "cakes" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "cookies"
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.LastName = "LOGAN" AND T1.Food = "Croissant"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.LastName = 'Logan' AND T1.Food = 'Croissant'
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.ReceiptNumber ORDER BY sum(T2.Price) DESC LIMIT 1
SELECT T1.ReceiptNumber, T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T1.ReceiptNumber ORDER BY sum(T2.Price) DESC LIMIT 1
SELECT T1.Item FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.Item GROUP BY T1.id ORDER BY count(*) LIMIT 1
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.Item GROUP BY T1.id ORDER BY count(*) LIMIT 1
SELECT Food, COUNT(*) FROM goods GROUP BY Food
SELECT Food, COUNT(*) FROM goods GROUP BY Food
SELECT Food, avg(Price) FROM goods GROUP BY Food
SELECT Food, avg(Price) FROM goods GROUP BY Food
SELECT Id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT id FROM goods WHERE Flavor = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Flavor = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods)
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Id = T3.Id WHERE T3.Price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Id = T3.Id WHERE T3.Price > 13
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.RecceptNumber = T2.ReceiptNumber WHERE T2.Price > 15
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.itemid WHERE T1.price > 15
SELECT DISTINCT id FROM goods WHERE id = "APP"
SELECT Id FROM goods WHERE Id LIKE '%APP%'
SELECT T2.Price FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.id = "70"
SELECT id, price FROM goods WHERE Flavor = "70"
SELECT DISTINCT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods
SELECT DISTINCT id FROM goods
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.CustomerId = T2.CustomerId WHERE T2.Food = "apple" OR T1.CustomerId = 12
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.Id WHERE T2.Food = "apple" OR T1.CustomerId = 12
SELECT DISTINCT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id ORDER BY T1.Date DESC LIMIT 1
SELECT ReceiptNumber FROM receipts ORDER BY Date DESC LIMIT 1
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.RecceiptNumber = T2.Id WHERE T2.Price > 10
SELECT DISTINCT receiptnumber FROM receipts WHERE date > '10' OR price > 10
SELECT DISTINCT T1.Id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price BETWEEN 3 AND 7
SELECT DISTINCT T1.Id FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price BETWEEN 3 AND 7
SELECT DISTINCT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId ORDER BY T2.Date ASC LIMIT 1
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1
SELECT avg(price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "cheese"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price), min(Price), avg(Price) FROM goods GROUP BY Flavor
SELECT min(price), max(price) FROM goods GROUP BY Food
SELECT min(Price), max(Price) FROM goods ORDER BY Food
SELECT DISTINCT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.Date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T2.FirstName, T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id GROUP BY T1.CustomerId ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.date, count(DISTINCT T1.customerid) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.date
SELECT DISTINCT T1.FirstName, T1.LastName, T1.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T1.Date
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.CustomerId JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "Tart"
SELECT T1.FirstName, T1.LastName FROM customers AS T1 JOIN goods AS T2 ON T1.Id = T2.Id WHERE T2.Food = "Apple"
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Croissant')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "croissant";
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Flavor = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Tart"
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods GROUP BY id HAVING count(*) > (SELECT avg(price) FROM goods)
SELECT id, flavor, TYPE FROM goods ORDER BY price
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id, flavor FROM goods ORDER BY flavor
SELECT id, flavor FROM goods ORDER BY flavor
SELECT DISTINCT T1.Food FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" AND T2.receiptNumber NOT IN (SELECT T3.receiptNumber FROM goods AS T3 JOIN receipts AS T4 ON T3.id = T4.item WHERE T3.flavor = "chocolate" AND T4.receiptNumber > 10)
SELECT DISTINCT T1.Food FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.goods_id WHERE T2.ReceiptNumber IN (SELECT ReceiptNumber FROM receipts WHERE T2.ReceiptNumber = (SELECT max(T1.ReceiptNumber) FROM receipts AS T1 JOIN goods AS T2 ON T1.id = T2.goods_id WHERE T2.Food = 'chocolate') )
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Flavor!= 'Tart'
SELECT T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.Food ORDER BY count(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id GROUP BY T1.id HAVING avg(T3.price) > 5
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT date FROM receipts WHERE sum(price) > 100
SELECT DISTINCT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber WHERE T2.Price > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*), make FROM driver WHERE points > 150 GROUP BY make
SELECT make, count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(T1.Age), T1.Make FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Make
SELECT avg(T1.Age), T2.Make FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points), min(Points) FROM driver
SELECT max(Points), min(Points) FROM driver
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T1.Driver, T2.Country FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT Driver, Country FROM driver WHERE Driver = 'John' UNION SELECT Driver, Country FROM driver WHERE Driver = 'Porsche'
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Capital = "Dublin"
SELECT avg(age) FROM driver WHERE official_native_language = "English"
SELECT avg(T1.age) FROM country AS T1 JOIN team_driver AS T2 ON T1.country_id = T2.driver_id WHERE T1.official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT DISTINCT T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.driver_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T3.Points > 150
SELECT T2.Capital FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Country ORDER BY T1.Points DESC LIMIT 1
SELECT T2.Capital FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Country ORDER BY sum(T1.Points) DESC LIMIT 1
SELECT Make, COUNT(*) FROM driver GROUP BY Make
SELECT make, count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Make FROM team_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.car_owner WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN team_driver AS T2 ON T1.Country_id = T2.car_owner WHERE T2.Make = "Chevrolet"
SELECT T2.Country FROM team_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Make = "Dodge" INTERSECT SELECT T2.Country FROM team_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Make = "Chevrolet"
SELECT sum(Points), avg(Points) FROM driver GROUP BY Driver
SELECT sum(Points), avg(Points) FROM driver
SELECT country FROM country WHERE country_id NOT IN (SELECT driver_id FROM team_driver)
SELECT country FROM country WHERE country_id NOT IN (SELECT driver_id FROM team_driver)
SELECT T1.Manager, T2.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager, T2.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T1.Manager, T2.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT DISTINCT city, province FROM institution
SELECT DISTINCT city, province FROM institution
SELECT max(enrollment), min(enrollment) FROM institution
SELECT max(enrollment), min(enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City!= "Vancouver"
SELECT Affiliation FROM institution WHERE City!= 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT DISTINCT T1.Name, T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Name, T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT Nickname FROM institution ORDER BY Enrollment ASC LIMIT 1
SELECT Nickname FROM institution ORDER BY Enrollment ASC LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY COUNT(*) DESC
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY COUNT(*) DESC
SELECT T2.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT count(*) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT count(DISTINCT T1.Institution_ID) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT DISTINCT affiliation, count(*) FROM institution GROUP BY affiliation
SELECT Affiliation, COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded, COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM Boxes WHERE Warehouse = 'New York'
SELECT DISTINCT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Warehouse, avg(Value) FROM Boxes GROUP BY Warehouse
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(Value), sum(Value) FROM Boxes GROUP BY Code
SELECT avg(value), sum(value) FROM Boxes GROUP BY Code
SELECT avg(capacity), sum(capacity) FROM Warehouses
SELECT avg(capacity), sum(capacity) FROM Warehouses GROUP BY Warehouse
SELECT avg(value), max(value), contents FROM Boxes GROUP BY contents
SELECT avg(value), max(value), Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT max(Value) FROM Boxes
SELECT avg(value) FROM Boxes
SELECT avg(value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT count(DISTINCT contents) FROM Boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT T1.Code FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = "Chicago" OR T2.Location = "New York"
SELECT DISTINCT code FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse = 'Chicago' OR warehouse = 'New York'
SELECT DISTINCT Contents FROM Boxes WHERE Warehouse = "Chicago" OR Warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = "Chicago" INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT TYPE FROM boxes WHERE contents!= 'warehouses' AND LOCATION = 'New York'
SELECT Contents FROM Boxes WHERE Warehouse = "New York"
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = 'Rocks' EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = 'Scissors'
SELECT Warehouse FROM Boxes WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents = "Rocks" OR Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks" OR T2.Contents = "Scissors"
SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Rocks" INTERSECT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T1.Contents = "Scissors"
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code, contents FROM Boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT contents FROM Boxes WHERE value > (SELECT avg(value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT contents FROM Boxes ORDER BY contents
SELECT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE Contents = 'Rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code, contents FROM Boxes WHERE value > (SELECT max(value) FROM Boxes WHERE Contents = 'Scissors')
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse = (SELECT warehouse FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT T2.warehouse, avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse HAVING avg(T1.value) > 150
SELECT avg(Value), Warehouse FROM Boxes GROUP BY Warehouse HAVING avg(Value) > 150
SELECT sum(value), count(*) FROM boxes WHERE Contents = 'water' GROUP BY Contents
SELECT sum(value), count(*) FROM Boxes GROUP BY Contents
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity), avg(capacity), max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT max(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT max(Value), Warehouse FROM Boxes GROUP BY Warehouse
SELECT Warehouse, count(*) FROM Boxes GROUP BY Warehouse
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(DISTINCT warehouse) FROM Warehouses WHERE Contents = "Rocks"
SELECT count(DISTINCT Warehouse) FROM Boxes WHERE Contents = "Rocks"
SELECT T1.code, T2.city FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.Code, T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code
SELECT DISTINCT T1.Code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse
SELECT T2.Code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = "Chicago"
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(*), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(DISTINCT Contents), Warehouse FROM Boxes GROUP BY Warehouse
SELECT count(DISTINCT Contents), Warehouse FROM Boxes GROUP BY Warehouse
SELECT code FROM warehouses WHERE capacity > 0
SELECT Warehouse FROM Boxes GROUP BY Warehouse HAVING COUNT(*) > (SELECT min(capacity) FROM Warehouses)
SELECT sum(value) FROM boxes WHERE code NOT IN (SELECT Warehouse FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT max(enrollment), avg(enrollment), min(enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT DISTINCT home_conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT home_conference, count(*) FROM university WHERE home_conference = 'Home' GROUP BY home_conference
SELECT count(*), home_conference FROM university GROUP BY home_conference
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT home_conference FROM university WHERE enrollment > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT T1.major_name, T2.major_rank FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.University_Name = "Augustana College"
SELECT T1.major_name FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.city = "Augustana"
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = 'Accounting' AND T2.Rank = 1
SELECT T1.University_Name, T1.City, T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = 'Accounting' AND T2.Rank = 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T2.Rank = 1 GROUP BY T1.University_Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = 'Accounting' INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = 'Urban Education'
SELECT T2.University_Name, T1.Rank FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.State = 'Wisconsin'
SELECT university_name, rank FROM university WHERE state = 'Wisconsin'
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.University_ID ORDER BY sum(T2.Reputation_point) DESC LIMIT 1
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank = 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = 'Accounting' AND T2.Rank >= 3
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT count(*) FROM university WHERE university_id IN (SELECT university_id FROM major_ranking WHERE rank <= 5)
SELECT T2.University_Name, T2.Citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point DESC LIMIT 3
SELECT university_name, citation_point FROM overall_ranking ORDER BY reputation_point DESC LIMIT 3
SELECT state FROM university GROUP BY state HAVING count(*) > 2
SELECT state FROM university GROUP BY state HAVING count(*) > 2
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT DISTINCT T2.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = "G"
SELECT DISTINCT title FROM Movies WHERE Rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT DISTINCT t1.title FROM movies AS t1 JOIN movietheaters AS t2 ON t1.code = t2.movie WHERE t2.name = "Odeon"
SELECT T1.title, T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT T1.title, T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters WHERE MovieCode IN (SELECT MovieCode FROM MovieTheaters GROUP BY MovieCode)
SELECT count(*) FROM MovieTheaters WHERE MovieCode IN (SELECT Movie FROM MovieTheaters)
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT count(DISTINCT code) FROM MovieTheaters
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT name FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating = 'G' OR rating = 'PG'
SELECT name FROM MovieTheaters WHERE Movie = 'G' OR Rating = 'PG'
SELECT DISTINCT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon" OR T1.name = "Imperial"
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon' OR T2.name = 'Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon" INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = "Imperial"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon" INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Imperial"
SELECT title FROM movies EXCEPT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon"
SELECT title FROM movies EXCEPT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon"
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY Rating
SELECT title FROM Movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*), rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating IS NOT NULL
SELECT count(*) FROM Movies WHERE Rating IS NOT NULL
SELECT Name FROM MovieTheaters WHERE Code IN (SELECT Movie FROM Movies)
SELECT DISTINCT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM Movies)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT Movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = "G"
SELECT DISTINCT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Code = T2.Code WHERE T2.Rating = 'G'
SELECT DISTINCT title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM Movies WHERE Rating = 'unrated'
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT title FROM movies EXCEPT SELECT DISTINCT t1.title FROM movies AS t1 JOIN movieTheaters AS t2 ON t1.code = t2.movie WHERE t2.name = 'Not Show'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT T2.Name FROM Package AS T1 JOIN Shipment AS T2 ON T1.Recipient = T2.Recipient WHERE T1.Weight = (SELECT max(weight) FROM Package)
SELECT T2.Name FROM Shipment AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT sum(weight) FROM package WHERE sender = 'Leo Wong'
SELECT sum(weight) FROM Package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT Salary, POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary, POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM Employee GROUP BY POSITION
SELECT avg(salary) FROM Employee WHERE position = 'Intern'
SELECT DISTINCT LEVEL FROM Has_clearance WHERE POSITION = 'Physician'
SELECT DISTINCT T1.Level FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID
SELECT DISTINCT sender FROM package WHERE recipient = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Sender = T2.Sender WHERE T1.Name = 'Leo Wong'
SELECT DISTINCT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.Sender = T2.Recipient WHERE T2.Name = 'Leo Wong'
SELECT DISTINCT sender FROM Package AS T1 JOIN Shipment AS T2 ON T1.Recipient = T2.Sender WHERE T1.Name = 'Leo Wong'
SELECT DISTINCT sender FROM Package WHERE recipient = 'Leo Wong'
SELECT DISTINCT DISTINCT sender FROM package WHERE recipient = 'Leo Wong' OR recipient = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Recipient = T2.Recipient JOIN Employee AS T3 ON T2.Manager = T3.EmployeeID WHERE T3.Name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Recipient = T2.Recipient JOIN Employee AS T3 ON T2.Manager = T3.EmployeeID WHERE T3.Name = "Leo Wong"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Recipient = T2.Recipient JOIN Employee AS T3 ON T2.Sender = T3.EmployeeID WHERE T3.Name = "Ogden Wernstrom" AND T2.Recipient = "Leo Wong"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT DISTINCT T1.Contents FROM Package AS T1 JOIN Shipment AS T2 ON T1.Sender = T2.Sender WHERE T2.Name = 'John Zoidfarb'
SELECT T1.PackageNumber, T1.Weight FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name = 'John'
SELECT T1.packageNumber, T1.weight FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'John' OR T2.name = 'something'
SELECT packagenumber, weight FROM package ORDER BY weight ASC LIMIT 3
SELECT packagenumber, weight FROM package ORDER BY weight LIMIT 3
SELECT T2.Name, count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM client AS T1 JOIN shipment AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, count(*) FROM client AS T1 JOIN shipment AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT min(T1.packageNumber), T2.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid GROUP BY T1.sender
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM PLANET WHERE Name = "Mars"
SELECT name, coordinates FROM planet ORDER BY name
SELECT Name, Coordinates FROM PLANET ORDER BY Name
SELECT DISTINCT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Phillip J. Fry"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT DISTINCT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars"
SELECT DISTINCT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 'Mars'
SELECT DISTINCT shipmentid FROM Shipment WHERE planet = "Mars" OR manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T1.Name, count(*) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name
SELECT T2.Name, count(*) FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.ShipmentID = (SELECT max(ShipmentID) FROM Shipment)
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T1.EmployeeID
SELECT count(*), T1.name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(weight) FROM Package WHERE planet = 'Mars'
SELECT sum(weight) FROM package WHERE planet = 'Mars'
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.weight > 1000
SELECT T1.name, sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.planetid GROUP BY T1.name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Weight > 30
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Weight > 30
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.sender = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Omicron Persei" OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT DISTINCT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT name FROM Employee WHERE employeeID NOT IN (SELECT Employee FROM Has_Clearance WHERE Planet = "Mars")
SELECT Name FROM Employee EXCEPT SELECT T2.Name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Planet = 'Mars'
SELECT T2.Name FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Level = 'Omega III'
SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Level = "Omega III"
SELECT T1.Name FROM Planet AS T1 JOIN Has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Employee = '1'
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Employee = T2.EmployeeID
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_Clearance WHERE Planet = 'Mars')
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_Clearance WHERE Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title, developers FROM game ORDER BY units_sold_millions DESC
SELECT title, developers FROM game ORDER BY units_sold DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers!= 'Nintendo'
SELECT platform_name, market_district FROM platform
SELECT platform_name, market_district FROM platform
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT max(Rank_of_the_year), min(Rank_of_the_year) FROM player
SELECT max(rank_of_the_year), min(rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT player_name FROM player ORDER BY player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name, College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name, T2.Rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name, T2.Rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T2.Player_name FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.College = "Auburn"
SELECT DISTINCT T1 Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard"
SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'Guard'
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title, T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT franchise, count(*) FROM game GROUP BY franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Position = 'Guard')
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE position = "Guard")
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT DISTINCT T1.name FROM press AS T1 JOIN author AS T2 ON T1.press_id = T2.press_id WHERE T1.year_profits_billion > 15 OR T1.month_profits_billion = 1000000000
SELECT name FROM press WHERE YEAR_Profits_billion > 15 OR MONTH_Profits_billion > 1
SELECT avg(YEAR_Profits_billion), max(YEAR_Profits_billion) FROM press
SELECT avg(yearly_profit_billion), max(yearly_profit_billion) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR SELECT name FROM press ORDER BY month_profits_billion ASC
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age), gender FROM author GROUP BY gender
SELECT Gender, avg(Age) FROM author GROUP BY Gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*), gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Book_Series, COUNT(*) FROM book GROUP BY Book_Series
SELECT Book_Series, COUNT(*) FROM book GROUP BY Book_Series
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT Title, Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T2.Book_Series FROM book AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Sale_Amount > 1000 INTERSECT SELECT T2.Book_Series FROM book AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Sale_Amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Title, T2.Name, T3.Name FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID JOIN author AS T3 ON T2.Author_ID = T3.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 3
SELECT T1.Title, T2.Name, T1.Press_ID FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T2.Name, sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT count(*), T2.Name FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name HAVING count(*) > 1000
SELECT T2.Name, count(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name HAVING sum(T1.Sale_Amount) > 1000
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T2.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Gender ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = 'Accor')
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id = 'Accor')
SELECT T1.Name, T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING count(*) > 2
SELECT T1.Name, T2.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) FROM Authors
SELECT author_name FROM Authors
SELECT author_name, other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM documents WHERE document_id = 4
SELECT author_name FROM authors WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT author_name, document_description FROM Documents
SELECT document_id, author_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT author_name, other_details FROM Documents WHERE document_name = "Travel to China"
SELECT author_name, count(*) FROM Authors GROUP BY author_name
SELECT author_name FROM authors GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM Documents GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT T1.next_process_id, T1.process_name, T1.process_description FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id WHERE T1.next_process_id = 9
SELECT process_name FROM Business_processes WHERE process_id = 9
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status WHERE process_status_description = "Process Status"
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = 'CT'
SELECT count(*) FROM Staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT t1.staff_role_description FROM Ref_Staff_Roles AS t1 JOIN Staff AS t2 ON t1.staff_role_code = t2.staff_role_code WHERE t2.staff_details = 'HR'
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id JOIN Process_Status AS T3 ON T2.process_status_code = T3.process_status_code WHERE T3.process_status_description = 'Process'
SELECT document_id FROM Documents_processes
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_processes
SELECT process_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM Documents_processes)
SELECT T1.process_outcome_description, T2.process_status_description FROM Documents_processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.document_id = 0
SELECT T2.process_name FROM documents AS T1 JOIN Business_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Travel to Brazil"
SELECT count(*), process_id FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM Documents AS T1 JOIN Staff_in_processes AS T2 ON T1.document_id = T2.document_id JOIN Staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.document_name = "0" AND T3.staff_id = 9
SELECT staff_id, count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT count(*), staff_role_code FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id, agency_details FROM Agencies
SELECT agency_id, agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT agency_id, count(*) FROM Clients GROUP BY agency_id
SELECT count(DISTINCT agency_id) FROM Clients
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.agency_id, t1.agency_details FROM agencies AS t1 JOIN clients AS t2 ON t1.agency_id = t2.agency_id GROUP BY t1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM Agencies WHERE agency_id IN (SELECT agency_id FROM Clients GROUP BY agency_id HAVING count(*) >= 2)
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT t1.agency_details FROM agencies AS t1 JOIN clients AS t2 ON t1.agency_id = t2.agency_id WHERE t2.client_details = "Mac"
SELECT T1.client_details, T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details, T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT tic_code, count(*) FROM Clients GROUP BY tic_code
SELECT count(*), sic_code FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = "Bad"
SELECT t1.client_details, t1.client_details FROM Clients AS t1 JOIN Agencies AS t2 ON t1.agency_id = t2.agency_id WHERE t2.sic_code = "Bad"
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT T1.client_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id, invoice_status, invoice_details FROM INVOICES
SELECT client_id, count(*) FROM Invoices GROUP BY client_id
SELECT count(*), client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id, T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status, count(*) FROM Invoices GROUP BY invoice_status
SELECT count(*), invoice_status FROM INVOICES GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status, invoice_details, agency_id, client_details FROM Invoices JOIN Clients ON Invoices.client_id = Clients.client_id
SELECT T1.invoice_status, T1.invoice_details, T2.client_id, T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT DISTINCT meeting_type, other_details FROM Meetings
SELECT meeting_type, other_details FROM Meetings
SELECT DISTINCT purpose_of_meeting FROM MEETINGS
SELECT DISTINCT purpose_of_meeting FROM Meetings
SELECT T1.invoice_id, T1.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id, T2.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id, invoice_status FROM Invoices WHERE invoice_status!= 'Payment'
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id, T2.invoice_id, T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT DISTINCT invoice_id, invoice_status FROM payments
SELECT invoice_id, count(*) FROM payments GROUP BY invoice_id
SELECT count(*), T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id, T1.invoice_status, T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id, T2.invoice_status, T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id, count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT agency_id, count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id, T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM Agencies GROUP BY agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome, count(*) FROM Meetings GROUP BY meeting_outcome
SELECT count(*), meeting_outcome FROM Meetings GROUP BY meeting_outcome
SELECT client_id, count(*) FROM Meetings GROUP BY client_id
SELECT count(*), client_id FROM Meetings GROUP BY client_id
SELECT meeting_type, count(*) FROM Meetings GROUP BY meeting_type
SELECT count(*), meeting_type FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id, T2.meeting_outcome, T2.meeting_type, T2.other_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.meeting_id, T2.meeting_outcome, T2.meeting_type, T1.client_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id, count(*) FROM Staff_in_meetings GROUP BY meeting_id
SELECT count(*), T1.meeting_id FROM Staff_in_meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id, count(*) FROM Staff_in_meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_meetings
SELECT count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IS NULL
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 1 UNION SELECT T1.client_id, T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 1
SELECT T1.client_id, T2.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.staff_id, T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.client_id, T2.sic_code, T2.agency_id FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id WHERE T1.meeting_outcome = 'yes' AND T1.meeting_id IN (SELECT meeting_id FROM Staff_in_Meetings)
SELECT T1.client_id, T2.sic_code, T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time, T1.end_date_time, T2.client_details, T3.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Staff AS T3 ON T2.staff_id = T3.staff_id
SELECT T1.start_date_time, T1.end_date_time, T2.staff_details, T3.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Staff AS T3 ON T2.staff_id = T3.staff_id
