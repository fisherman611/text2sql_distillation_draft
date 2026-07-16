SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT manager , captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING COUNT(*) > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = 'Sam Allardyce'
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
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
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T2.order_status_code , count(*) FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_id , T2.order_status_code FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT date_order_placed FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 1) UNION SELECT date_order_placed FROM orders
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM Order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id IN (SELECT product_id FROM products GROUP BY product_id HAVING count(*) < 2)
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T1.product_price FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T2.product_name , T1.product_price FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1
SELECT sum(T1.order_item_price) , T1.order_id FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id ORDER BY sum(T1.order_item_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code , count(*) FROM Customers GROUP BY gender_code
SELECT count(*) , gender_code FROM Orders GROUP BY gender_code
SELECT count(*) , T1.gender_code FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name , customer_middle_initial , customer_last_name , payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T2.order_id = T3.order_id WHERE T3.shipment_date != "null"
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN customers AS T2 ON T1.product_id = T2.customer_id WHERE T2.gender_code = "F"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN customers AS T2 ON T1.product_id = T2.customer_id WHERE T2.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT order_id , date_order_placed , sum(T2.total_cost) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT order_id , date_order_placed , sum(T1.total_amount_paid) FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_name) FROM products WHERE product_id NOT IN (SELECT product_id FROM Order_items)
SELECT count(*) FROM Products WHERE product_id NOT IN (SELECT product_id FROM Order_items)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM Customers WHERE country = "USA"
SELECT address_line_1 , town_city , county FROM Customers WHERE country = "United States"
SELECT T1.customer_first_name , T2.product_name FROM Customers AS T1 JOIN Products AS T2 ON T1.customer_id = T2.product_id
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address , town_city , county FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING count(*) < 2)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T2.customer_id HAVING count(T3.payment_method_code) = 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_price > 3 GROUP BY product_id HAVING count(*) > 3
SELECT product_id , product_description FROM products WHERE product_id IN (SELECT product_id FROM orders_items GROUP BY product_id HAVING count(*) > 3)
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_date HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT T1.channel_id , T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.name = 'Hank Baskett'
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T1.Transmitter , T2.City FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.City_channel_ID ORDER BY T1.Erp_kW DESC
SELECT T1.Transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT count(*) , T1.Driver_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) <= (SELECT count(*) FROM vehicle_driver)
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT build_year , model , builder FROM vehicle
SELECT build_year , model , builder FROM vehicle
SELECT count(DISTINCT T1.Driver_ID) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Build_Year = 2012
SELECT count(DISTINCT T1.Name) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T3.Name = 'Ziyang' GROUP BY T1.vehicle_id HAVING count(*) = 2 UNION SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.builder = 'Ziyang' GROUP BY T1.vehicle_id HAVING count(*) = 2
{"sql": "SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) > 2 INTERSECT SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.driver_id = 10000000123456789
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T3.Name = "Jeff Gordon" GROUP BY T1.vehicle_id HAVING count(*) > 2 UNION SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT subject_code FROM Exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT exam_date , exam_name FROM Exams WHERE subject_code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.email_address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Date_of_Answer ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.first_name HAVING count(*) >= 2
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T2.Question_Text = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T2.Question_Text = "Absent"
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
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
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT count(DISTINCT product_type_code) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
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
SELECT order_id , order_date , order_status_code FROM Customer_Orders WHERE customer_id = "Jeromy"
SELECT * FROM customer_orders WHERE customer_id = 1001
SELECT T1.customer_name , T1.customer_id , count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products EXCEPT SELECT T1.product_name FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE product_id IN (SELECT product_id FROM products WHERE product_name = "Monitor")
SELECT count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM Customer_Orders
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 UNION SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 6
SELECT T1.order_id , T2.order_date FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 OR count(*) > 3
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
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT sum(number_of_stories) FROM building WHERE name = "Abruzzo"
SELECT count(*) FROM building WHERE region = "Abruzzo"
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Name , Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.service_details FROM services AS T1 JOIN customers AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_details = "Hardy Kutch"
SELECT T2.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T2.service_id HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT customer_details FROM Customers_and_Services
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id ORDER BY T3.service_details LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_id) , count(DISTINCT customers_and_services_details) FROM Customers_and_Services
SELECT count(*) FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" OR T2.status_code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details LIKE "%Hardy Kutch%" OR T3.customer_details LIKE "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.channel_id = 15 AND T1.service_details LIKE "%15%"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = 'failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id EXCEPT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.analytical_layer_type_code , count(*) FROM Analytical_Layer AS T1 JOIN Customers_and_Services AS T2 ON T1.customers_and_services_id = T2.customers_and_services_id GROUP BY T1.analytical_layer_type_code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT Type_of_powertrain , COUNT(*) FROM Vehicles GROUP BY Type_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM DISCOUNT
SELECT * FROM DISCOUNT
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT Name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T2.total_hours > 30
SELECT T1.name , T1.Type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 OR count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id UNION SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT detention_summary FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Ref_Address_Types AS T2 ON T1.student_id = T2.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Ref_Address_Types AS T2 ON T1.student_id = T2.address_type_code
SELECT T1.address_details , T2.bio_data FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details , T2.bio_data FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 OFFSET 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , T2.event_type_description , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT T1.teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT count(DISTINCT T1.teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.event_type_code , T2.achievement_details , T1.date_achievement FROM Student_Events AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.teacher_id
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.teacher_details , T2.student_details
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , student_details FROM Classes GROUP BY student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT min(date_of_loan) FROM Student_Loans
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY T2.date_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_details LIKE "student with earliest transcript%"
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(*) FROM Detention
SELECT count(*) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T1 JOIN Student_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T1 JOIN Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , isbn , purchaseprice FROM book
SELECT title , isbn , saleprice FROM books
SELECT count(*) FROM BOOK
SELECT count(*) FROM books
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT title , author FROM book
SELECT title , author FROM book
SELECT idorder , idclient FROM orders
SELECT idorder , idclient FROM orders
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.isbn , count(*) FROM Books_order AS T1 JOIN Book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , count(*) FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT t1.title FROM books AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT DISTINCT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder <= "current date"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name , sum(T2.amount) FROM CLIENT AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM Client WHERE idclient NOT IN (SELECT idclient FROM Orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM BOOK
SELECT max(saleprice) , min(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM BOOK
SELECT max(saleprice) , max(purchaseprice) FROM BOOK
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = 'George Orwell'
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT T2.saleprice FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT T1.title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.isbn = T2.isbn JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name = "Plato" AND T1.saleprice < (SELECT avg(saleprice) FROM BOOK)
SELECT T1.name FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT T2.title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM Orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books_order WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM books_order WHERE title = "The Little Prince")
SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride" INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "The Little Prince"
SELECT T1.isbn FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT T1.isbn FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT T1.isbn FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" INTERSECT SELECT T1.isbn FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "Peter Doe" EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = "James Smith"
SELECT T2.title FROM orders AS T1 JOIN books AS T2 ON T1.idorder = T2.idorder JOIN clients AS T3 ON T1.idclient = T3.idclient WHERE T3.name = "Peter Doe" EXCEPT SELECT T2.title FROM orders AS T1 JOIN books AS T2 ON T1.idorder = T2.idorder JOIN clients AS T3 ON T1.idclient = T3.idclient WHERE T3.name = "James Smith"
SELECT T1.name FROM clients AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , book_id FROM book GROUP BY book_id
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT Title , Rating FROM book
SELECT max(chapters) FROM book
SELECT rank FROM review WHERE book_id = (SELECT book_id FROM book ORDER BY pages ASC LIMIT 1)
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(Readers_in_Million) FROM review WHERE TYPE = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating
SELECT Title , Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , TITLE FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT customer_id , card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.dish_name ORDER BY count(*) DESC
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY T2.quantity DESC
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.Quantity) > 1
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T2.Team_Leader , T1.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM club AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Team_Leader = 'Clubs'
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id
SELECT collection_subset_name FROM collection_subsets
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_id WHERE T2.collection_name = 'Top collection'
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_id WHERE T2.collection_name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Name FROM Document_Subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM Documents_in_Collections
SELECT document_object_id FROM Document_Objects
SELECT parent_document_object_id FROM Document_Objects WHERE owner = "Marlin"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.document_object_id = T2.collection_id WHERE T2.collection_name = "Braeden Collection"
SELECT T1.owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.document_object_id = T2.collection_id WHERE T2.collection_name = "Braeden Collection"
SELECT Owner FROM Document_Objects WHERE Document_Object_ID = (SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin')
SELECT T1.owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.collection_id = (SELECT collection_id FROM Document_Objects WHERE owner = 'Marlin')
SELECT DISTINCT T1.description FROM Document_Objects AS T1 JOIN Collection_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects EXCEPT SELECT parent_document_object_id FROM Document_Objects
SELECT document_object_id FROM Document_Objects EXCEPT SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id != "null"
SELECT T1.parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.parent_document_object_id
SELECT count(*) , parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT collection_description FROM Collections WHERE collection_name = "Best"
SELECT collection_description FROM Collections WHERE collection_name = 'Best'
SELECT parent_collection FROM Collections WHERE collection_name = "Nice"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Nice"
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.parent_colidition_id
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.parent_clelection_id
SELECT Parent_Document_Object_ID FROM Document_Objects GROUP BY Parent_Document_Object_ID HAVING COUNT(*) > 1
SELECT parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id HAVING count(*) > 1
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT document_object_id FROM Document_Objects WHERE owner = "Ransom"
SELECT T1.Related_Document_Object_ID FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T2.Document_Object_ID = "Ransom"
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.collection_subset_id = T2.collection_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.parent_document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , document_object_id FROM Document_Objects GROUP BY document_object_id
SELECT document_object_id , count(*) FROM Document_Subset_Members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_subset_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID WHERE T1.Owner = 'Braeden'
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Objects AS T3 ON T1.Document_Object_ID = T3.Document_Object_ID WHERE T2.Related_Document_Object_ID = T3.Document_Object_ID AND T1.Owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = "Braeden"
SELECT document_subset_id , T1.document_subset_name , count(DISTINCT T1.document_subset_name) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_Subsets GROUP BY document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(DISTINCT T1.document_subset_name) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(DISTINCT T1.document_subset_name) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE Document_Subset_ID = "Best for 2000"
SELECT document_object_id FROM Document_Subset_Members WHERE Document_Subset_ID = "Best for 2000"
SELECT T1.document_subset_name , T2.document_object_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_object_id
SELECT T1.document_subset_name , T1.document_subset_id , T2.document_object_id FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) , document_object_id FROM Documents_in_Collections GROUP BY document_object_id
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT document_object_id FROM Documents_in_Collections WHERE collection_id = (SELECT collection_id FROM Collections WHERE collection_name = "Best")
SELECT count(*) FROM Documents_in_Collections WHERE Collection_ID = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best" GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T2.collection_id = (SELECT collection_id FROM Document_in_Collections WHERE collection_name = "Best" AND document_subset_name = "Best for 2000")
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = 'Best' INTERSECT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = 'Best for 2000'
SELECT document_object_id FROM Documents_in_Collections WHERE collection_id = "Best" EXCEPT SELECT document_object_id FROM Documents_in_Collections WHERE collection_id = "Best"
SELECT DISTINCT document_object_id FROM Documents_in_Collections WHERE collection_id NOT IN (SELECT collection_id FROM Collection_Subsets WHERE collection_subset_name = 'Best for 2000')
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = "Best" OR T2.collection_id = (SELECT collection_id FROM Collections WHERE collection_name = "Best")
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_subset_name = 'Best' OR T3.collection_subset_name = 'Best for 2000'
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = "Best"
SELECT count(DISTINCT collection_name) FROM Collections WHERE collection_name = 'Best'
SELECT T2.collection_subset_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best in"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "english"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.songs_id WHERE T2.language = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.songs_id WHERE T2.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN songs AS T2 ON T1.id = T2.songs_id WHERE T2.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(DISTINCT city_name) FROM city
SELECT count(*) FROM City
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT count(*) FROM City
SELECT count(*) FROM City
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM City
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM City WHERE city_name = "Baltimore"
SELECT city_name FROM City WHERE state = "PA"
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM City WHERE country = "Canada"
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM City GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM City GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM City GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "MD"
SELECT count(*) FROM student WHERE city_code = "China"
SELECT count(*) FROM student WHERE city_code = 'China'
SELECT Fname , Major FROM Student WHERE city_code = "Baltimore"
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "Baltimore"
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_name FROM city GROUP BY city_name
SELECT count(*) , T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name
SELECT count(*) , city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY city_name
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT state FROM city WHERE city_code IN (SELECT T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 5)
SELECT state FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code HAVING count(*) > 5)
SELECT StuID FROM Student WHERE city_code != 'USA'
SELECT StuID FROM Student WHERE city_code != 'USA'
SELECT T1.stuid FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "PA" AND T1.sex = "F"
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = "PA"
SELECT StuID FROM Student WHERE sex = 'M' AND city_code != 'USA'
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE city_code = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = "Boston" AND city2_code = "Newark"
SELECT distance FROM direct_distance WHERE city1_code = 'Boston' AND city2_code = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT city1_code FROM direct_distance GROUP BY city1_code ORDER BY distance DESC LIMIT 2
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code FROM Direct_distance WHERE distance > (SELECT avg(distance) FROM Direct_distance)
SELECT city_code FROM city WHERE city_name NOT IN (SELECT city_name FROM city WHERE distance < (SELECT avg(distance) FROM city))
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT city_code FROM city WHERE distance < 1000
SELECT sum(distance) FROM Direct_distance WHERE city1_code = 'BAL'
SELECT sum(T1.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'BAL'
SELECT avg(distance) FROM Direct_distance WHERE city1_code = 'Boston'
SELECT avg(distance) FROM Direct_distance WHERE city1_code = 'Boston'
SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Chicago' LIMIT 1)
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance WHERE city1_code = 'Chicago')
SELECT city_name FROM city WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Boston' ORDER BY distance DESC LIMIT 1)
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Boston' LIMIT 1
SELECT city_code , sum(distance) FROM direct_distance GROUP BY city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.city_name , avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.Fname = "Linda" AND T3.Lname = "Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.Fname = "Tracy" AND T3.Lname = "Kim"
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.Fname = "Linda Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T2.city_code = T3.city_code WHERE T3.Fname = "Tracy Kim"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = (SELECT city1_code FROM direct_distance WHERE city2_code = 'Linda Smith' )
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = (SELECT city_name FROM city WHERE city_name = (SELECT T1.city_name FROM student WHERE T1.lname = 'Linda Smith' ))
SELECT T2.state FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T1.Fname = "Linda"
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.Fname = "Linda"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT DISTINCT bid FROM Reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 103
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%';
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid > 50 GROUP BY T1.name
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid > 1 GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid > 1 GROUP BY T1.name
SELECT T1.rating , avg(T1.age) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' GROUP BY T1.rating
SELECT T1.rating , avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM Boats WHERE color = "red"
SELECT count(*) FROM Boats WHERE color = "red"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE sid IN (SELECT sid FROM Reserves JOIN Boats ON Reserves.bid = Boats.bid WHERE Boats.color = 'red') )
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE sid IN (SELECT sid FROM Reserves WHERE color = 'red'))
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "Melon"
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT count(*) , CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , class , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT model , class , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction != "Plastic"
SELECT Earpads FROM headphone WHERE Construction != "Plastic"
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT Name , Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.Name , COUNT(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , SUM(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T1.Headphone_ID = T3.Headphone_ID GROUP BY T2.Name
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT count(*) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t1.name = "Woodman"
SELECT sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Neighborhood FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM Author
SELECT count(*) FROM paper
SELECT count(*) FROM Paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = "NAACL 2000"
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2009 INTERSECT SELECT count(*) FROM paper WHERE YEAR = 2009 AND paper_id IN (SELECT paper_id FROM author_list JOIN affiliation ON affiliation.affiliation_id = author_list.affiliation_id JOIN affiliation AS t ON t.affiliation_id = SELECT affiliation_id FROM affiliation WHERE name = "Columbia University" )
SELECT count(*) FROM paper WHERE YEAR = 2009 AND title LIKE "%Columbia%"
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM Paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" INTERSECT SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' EXCEPT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Rambow'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" EXCEPT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Kathleen" OR T3.name = "Owen"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Rambow"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM Paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Citation WHERE paper_id = "A00-1002"
SELECT count(*) FROM Citation WHERE paper_id = 'A00-1002'
SELECT count(*) FROM Paper WHERE paper_id = "D12-1027"
SELECT count(*) FROM Citation WHERE paper_id = 12-1027
SELECT T1.paper_id , count(*) FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id , count(*) FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Citation AS T1 JOIN Author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown , Kathleen"
SELECT count(*) FROM Citation AS T1 JOIN Author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT count(*) FROM Paper AS T1 JOIN Citation AS T2 ON T1.paper_id = T2.cited_paper_id JOIN Author AS T3 ON T2.cited_paper_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen"
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.cited_paper_id = T3.author_id WHERE T3.name = "Mckeown" INTERSECT SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.cited_paper_id = T3.author_id WHERE T3.name = "Kathleen"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown" AND T2.author_id = "Kathleen"
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown" AND T2.author_id = "Kathleen"
SELECT venue , YEAR FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE name = 'Columbia University')
SELECT venue , YEAR FROM Paper WHERE paper_id IN (SELECT paper_id FROM Paper WHERE name = 'Columbia University')
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND title != 'Abstract' AND author_list.paper_id IN (SELECT paper_id FROM author_list JOIN affiliation ON affiliation.affiliation_id = author_list.affiliation_id WHERE affiliation.name = 'Columbia University')
SELECT count(*) FROM paper WHERE YEAR <= 2009
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND institution = "Stanford University"
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2.affiliation_id = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id JOIN affiliation AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = "Mckeown" AND T3.name = "Kathleen" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper EXCEPT SELECT paper_id , title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper EXCEPT SELECT T1.paper_id , T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT venue) , YEAR FROM Paper GROUP BY YEAR
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT count(*) FROM Author WHERE author_id NOT IN (SELECT author_id FROM Author_list WHERE paper_id IN (SELECT paper_id FROM Citation GROUP BY paper_id HAVING count(*) > 50))
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = "NAACL" INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = "ACL"
{"sql": "SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T1.name IN (SELECT T3.name FROM author AS T3 JOIN paper AS T4 ON T3.author_id = T4.paper_id WHERE T4.year = 2009 AND T3.name IN (SELECT T5.name FROM author AS T5 JOIN paper AS T6 ON T5.author_id = T6.paper_id WHERE T6.year = 2009 AND T5.name IN (SELECT T7.name FROM author AS T7 JOIN paper AS T8 ON T7.author_id = T8.paper_id WHERE T8.year = 2009 AND T7.name IN (SELECT T9.name FROM author AS T9 JOIN paper AS T10 ON T9.author_id = T10.paper_id WHERE T10.year = 2009 AND T9.name IN (SELECT T11.name FROM author AS T11 JOIN paper AS T12 ON T11.author_id = T12.paper_id WHERE T12.year = 2009 AND T11.name IN (SELECT T13.name FROM author AS T13 JOIN paper AS T14 ON T13.author_id = T14.paper_id WHERE T14.year = 2009 AND T13.name IN (SELECT T15.name FROM author AS T15 JOIN paper AS T16 ON T15.author_id = T16.paper_id WHERE T16.year = 2009 AND T15.name IN (SELECT T17.name FROM author AS T17 JOIN paper AS T18 ON T17.author_id = T18.paper_id WHERE T18.year = 2009 AND T17.name IN (SELECT T19.name FROM author AS T19 JOIN paper AS T20 ON T19.author_id = T20.paper_id WHERE T20.year = 2009 AND T19.name IN (SELECT T21.name FROM author AS T21 JOIN paper AS T22 ON T21.author_id = T22.paper_id WHERE T22.year = 2009 AND T21.name IN (SELECT T23.name FROM author AS T23 JOIN paper AS T24 ON T23.author_id = T24.paper_id WHERE T24.year = 2009 AND T23.name IN (SELECT T25.name FROM author AS T25 JOIN paper AS T26 ON T25.author_id = T26.paper_id WHERE T26.year = 2009 AND T25.name IN (SELECT T27.name FROM author AS T27 JOIN paper AS T28 ON T27.author_id = T28.paper_id WHERE T28.year = 2009 AND T27.name IN (SELECT T29.name FROM author AS T29 JOIN paper AS T30 ON T29.author_id = T30.paper_id WHERE T30.year = 2009 AND T29.name IN (SELECT T31.name FROM author AS T31 JOIN paper AS T32 ON T31.author_id = T32.paper_id WHERE T32.year = 2009 AND T31.name IN (SELECT T33.name FROM author AS T33 JOIN paper AS T34 ON T33.author_id = T34.paper_id WHERE T34.year = 2009 AND T33.name IN (SELECT T35.name FROM author AS T35 JOIN paper AS T36
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = "ACL"
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY Founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.Founded > 1800 GROUP BY T1.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = "United States"
SELECT max(Age) , min(Age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = "Canada"
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = "Canada"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE institution_id IN (SELECT institution_id FROM staff WHERE nationality = 'NACCL' INTERSECT SELECT institution_id FROM staff WHERE nationality = 'ACL')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = "ACL" INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Conference_Name = "NACCL"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2003 OR T3.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Year = 2003 OR T3.Year = 2004
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2
SELECT conference_name FROM conference ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff EXCEPT SELECT T1.name , T1.nationality FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.Conference_ID IN (SELECT Conference_ID FROM conference WHERE Conference_Name = 'ACLS' )
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id = 2004)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = "Jones"
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Jones" AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT count(*) FROM PilotSkills WHERE plane_name = "B-52" AND age < 35
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM hangar WHERE LOCATION = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM PilotSkills ORDER BY plane_name
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35 AND age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35 OR age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE LOCATION = 'Austin') INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE LOCATION = 'Boston')
SELECT pilot_name FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE LOCATION = 'Austin') INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE LOCATION = 'Boston')
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT plane_name , pilot_name FROM PilotSkills ORDER BY pilot_name
SELECT plane_name , pilot_name FROM PilotSkills ORDER BY pilot_name , age
SELECT plane_name , pilot_name , age FROM PilotSkills GROUP BY plane_name
SELECT plane_name , T1.pilot_name FROM pilotskills AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = (SELECT max(age) FROM pilotskills)
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT T1.location , count(*) , avg(T2.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name HAVING avg(age) < 35
SELECT plane_name , count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT pilot_name , age FROM pilotskills WHERE plane_name = 'plane in Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district WHERE Area_km < (SELECT min(Area_km) FROM district ORDER BY Area_km LIMIT 3)
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT name FROM district WHERE government_website LIKE 'gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID WHERE T2.Start_year < 2004
SELECT count(*) , T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id WHERE T2.rank_position = 1 INTERSECT SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id WHERE T2.rank_position = 2
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.Population) , avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM Paintings ORDER BY YEAR DESC LIMIT 1
SELECT T1.title , T1.location FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.birthYear DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT T1.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorid = T2.artistid WHERE T2.lname = "Smith" AND T2.fname = "Joan" AND T1.location = "Gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT T1.title , T1.year FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorid = T2.artistid EXCEPT SELECT T1.title , T1.year FROM sculptures WHERE LOCATION = 226
SELECT T1.fname , T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.location != 226
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920 GROUP BY T1.birthYear
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT fname , age FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , age FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = "240"
SELECT count(*) FROM paintings WHERE LOCATION = "Gallery 240"
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.deathyear = (SELECT max(deathyear) FROM Artists)
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.deathyear = (SELECT max(deathyear) FROM Artists)
SELECT T1.name , T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT LOCATION , mediumON FROM paintings WHERE painterID = (SELECT artistID FROM artists WHERE fname = "Pablo")
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.medium = "painting" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid JOIN Paintings AS T3 ON T1.artistid = T3.painterid WHERE T3.medium = "sculpture"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.medium = "canvas"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = "241"
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = "241"
SELECT count(*) , medium FROM Paintings GROUP BY medium
SELECT count(*) , medium FROM Paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM Paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(DISTINCT LOCATION) FROM paintings WHERE YEAR < 1900
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear > 1910
SELECT DISTINCT painterID FROM Paintings WHERE LOCATION = "240" AND medium = "medium oil"
SELECT DISTINCT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = "oil" AND T2.location = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE location = 'canvas')
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE gallery = 240))
SELECT painterID FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT painterid FROM paintings ORDER BY year DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.fname
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.height_mm
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN paintings AS T2 ON T1.painterID = T2.painterID WHERE T1.height_mm < T2.height_mm ORDER BY T1.height_mm
SELECT T1.title , T1.medium , T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title , T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title , T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.painterID = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT T1.artistid FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.width_mm < 600 OR T1.height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM Paintings WHERE medium = "on panels" INTERSECT SELECT LOCATION FROM Paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1930 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1885
SELECT LOCATION FROM Paintings WHERE YEAR < 1930 INTERSECT SELECT LOCATION FROM Paintings WHERE YEAR > 1885
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE LOCATION = "241" AND medium = "oil"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND LOCATION = "241"
SELECT max(height_mm) , max(paintingid) FROM Paintings WHERE YEAR < 1900
SELECT height_mm , paintingID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID GROUP BY T1.painterID ORDER BY T1.fname
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID GROUP BY T1.painterID ORDER BY T1.fname
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname
SELECT T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.deathyear ORDER BY count(*) ASC LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE gallery = 240)
SELECT height_mm , paintingid FROM Paintings WHERE paintingid = 240 ORDER BY height_mm DESC LIMIT 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT painterid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings ORDER BY YEAR
SELECT painterid , LOCATION , title , YEAR FROM paintings ORDER BY YEAR
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM Paintings WHERE height_mm > 1000 ORDER BY title
SELECT fname , lname FROM Artists EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.medium = "painting" AND T3.medium = "sculpture"
SELECT fname , lname FROM artists EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "paint"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "medium"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT ENGINE) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT count(*) , T1.Driver_ID FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(DISTINCT Driver_ID) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Pole' AND T1.Driver_Name = 'James Hinchcliffe' INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Pole' AND T1.Driver_Name = 'Carl Skerlong'
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 'James Hinchcliffe'
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
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT count(DISTINCT name) FROM languages
SELECT count(DISTINCT T1.name) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = "official"
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) > 1
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = 1 AND T2.name = "English"
SELECT avg(overall_score) FROM countries WHERE id IN (SELECT country_id FROM official_languages WHERE language_id = 1)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name , T2.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name , T2.name FROM languages AS T1 JOIN countries AS T2 ON T1.id = T2.id GROUP BY T2.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.county_state_province , T2.property_address_id FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT T1.county_state_province , T2.property_address_id FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM Features WHERE feature_name = "Rooftop"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = "Gardens"
SELECT avg(T1.room_count) FROM Rooms AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id WHERE T2.property_description LIKE "garden%"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_name LIKE "%swimming pool%"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_seq DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT zip_postcode FROM Properties EXCEPT SELECT T1.zip_postcode FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T1.zip_postcode HAVING count(*) > 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Users AS T3 ON T2.owner_user_id = T3.user_id GROUP BY T1.zip_postcode HAVING count(*) >= 2
SELECT T1.category , T1.user_id FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM Users GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_id = (SELECT user_id FROM User_Searches ORDER BY search_seq LIMIT 1)
SELECT T1.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code ORDER BY T2.date_registered LIMIT 1
SELECT login_name FROM Users WHERE age_category_code = "senior" ORDER BY first_name
SELECT login_name FROM Users WHERE user_category_code = 'senior' ORDER BY first_name
SELECT count(*) FROM User_Searches
SELECT count(*) FROM User_Searches WHERE is_buyer = '1'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Y'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE user_category_code = "Senior"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "senior"
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T1.user_id , count(*) FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id
SELECT T1.owner_user_id , count(*) FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT max(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE user_category_code = 'student' UNION SELECT user_id FROM Users WHERE user_category_code = 'single')
SELECT max(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE user_category_code = 'student' UNION SELECT user_id FROM Users WHERE user_category_code = 'single')
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT country FROM Addresses WHERE user_address_id IN (SELECT user_id FROM Users WHERE first_name = "Robbie")
SELECT country FROM Addresses WHERE user_address_id IN (SELECT user_id FROM Users WHERE first_name = "Robbie")
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id = (SELECT address_id FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number_building = (SELECT line_1_number_building FROM Addresses WHERE line_1_number
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T2.name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year < 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
SELECT T1.name , T1.price FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T1.name = 'Bradley Wiggins' INTERSECT SELECT T1.name , T1.price FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T1.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist EXCEPT SELECT T1.name , T1.nation , T1.result FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T2.purchase_year = "2023"
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT max(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY count(*) DESC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY min(Price) ASC
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE Flavor = "apple"
SELECT id FROM goods WHERE Price < 3
SELECT id FROM goods WHERE Price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customer_id WHERE T2.flavor = "lemon"
SELECT DISTINCT T1.customerid FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customerid WHERE T2.flavor = "lemon"
SELECT count(*) , food FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T1.Id HAVING COUNT(*) > 10
SELECT lastname FROM customers WHERE id IN (SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) > 10)
SELECT count(DISTINCT Flavor) FROM goods WHERE Food = "Cake"
SELECT count(DISTINCT Flavor) FROM goods
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT Food , avg(Price) , max(Price) FROM goods GROUP BY Food
SELECT avg(Price) , min(Price) , max(Price) , Food FROM goods GROUP BY Food
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cake" INTERSECT SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cookie"
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cake" INTERSECT SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "cookie"
SELECT T1.receiptnumber FROM items AS T1 JOIN customers AS T2 ON T1.item = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.flavor = "Croissant" AND T2.lastName = "LOGAN"
SELECT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Croissant" JOIN customers AS T3 ON T1.terminal = T3.id WHERE T3.lastName = "Logan"
SELECT T1.receiptnumber , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.item WHERE T2.price = (SELECT max(price) FROM goods)
SELECT T1.receiptnumber , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.customerid = T2.item WHERE T2.price = (SELECT max(price) FROM goods)
SELECT Item FROM items GROUP BY Item ORDER BY COUNT(*) ASC LIMIT 1
SELECT Item FROM items GROUP BY Item ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "Tart")
SELECT DISTINCT T1.receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price > 13
SELECT DISTINCT T1.receiptnumber FROM receipts AS T1 JOIN goods AS T2 ON T1.customerid = T2.id WHERE T2.price > 13
SELECT T1.date FROM receipts AS T1 JOIN goods AS T2 ON T1.receiptnumber = T2.id WHERE T2.price > 15
SELECT T1.date FROM receipts AS T1 JOIN goods AS T2 ON T1.customerid = T2.id WHERE T2.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE Id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE flavor = "good"
SELECT DISTINCT id FROM goods
SELECT * FROM receipts WHERE customerid = 12 OR flavor = "apple"
SELECT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.firstname = "Apple" OR T2.id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR (SELECT * FROM goods WHERE price > 10)
SELECT ReceiptNumber FROM receipts WHERE Date = (SELECT min(Date) FROM receipts) OR Price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT Flavor FROM goods WHERE Price = (SELECT min(Price) FROM goods WHERE Flavor = "cheese")
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price) , max(Price) , Food FROM goods ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.firstname , T1.lastname , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customerid , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date
SELECT count(*) , date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY date
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customerid WHERE T2.flavor = "Tart"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customerid WHERE T2.flavor = "apple" AND T2.food = "Tarts"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = "Croissant")
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = "croissant")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Tart")
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Flavor = "Chocolate" EXCEPT SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Flavor = "Chocolate" GROUP BY T1.Item HAVING COUNT(*) > 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "chocolate" GROUP BY T1.item HAVING count(*) <= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food != "Tart"
SELECT Food FROM goods GROUP BY Food ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id ORDER BY T2.Price DESC LIMIT 3
SELECT customerid FROM customers GROUP BY customerid HAVING sum(price) > 150
SELECT customerid FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T1.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.date) > 5
SELECT T1.id , avg(T2.price) FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT date FROM receipts WHERE sum(T1.price) > 100
SELECT T1.date FROM receipts AS T1 JOIN goods AS T2 ON T1.customerid = T2.id WHERE sum(T2.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , count(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
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
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_ID WHERE T2.Official_native_language = "English"
SELECT avg(Age) FROM driver WHERE Country = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Capital FROM country WHERE Country = (SELECT Country FROM driver ORDER BY Points DESC LIMIT 1)
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Manager HAVING count(*) = (SELECT count(*) FROM team_driver)
SELECT manager , sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Manager HAVING count(*) >= 2
SELECT T1.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM Institution ORDER BY Name ASC
SELECT Name FROM Institution ORDER BY Name
SELECT Name FROM Institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM Institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT name , nickname FROM institution
SELECT T1.name , T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
SELECT T1.Nickname FROM Championship AS T1 JOIN Institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Nickname FROM Championship AS T1 JOIN Institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name ORDER BY count(*) DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name ORDER BY count(*) DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM Championship AS T1 JOIN Institution AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Affiliation = "Public"
SELECT sum(T1.Number_of_Championships) FROM Championship AS T1 JOIN Institution AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Affiliation = "Public"
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation FROM Institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM Institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT Nickname FROM Institution ORDER BY Capacity DESC
SELECT Nickname FROM Institution ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "New York"
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "New York"
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T1.code , avg(T2.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code
SELECT avg(Value) , Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T2.contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' INTERSECT SELECT T2.contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'New York'
SELECT contents FROM boxes WHERE warehouse = 'Chicago' INTERSECT SELECT contents FROM boxes WHERE warehouse = 'New York'
SELECT Contents FROM Boxes WHERE Warehouse != "New York"
SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT LOCATION FROM Warehouses WHERE Contents = "Rocks" EXCEPT SELECT LOCATION FROM Warehouses WHERE Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks" EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Scissors"
SELECT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.warehouse = T2.warehouse WHERE T2.contents = "Rocks" OR T2.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" AND T2.contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks and Scissors"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT unique(Contents) FROM boxes WHERE Value > (SELECT avg(Value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT Contents FROM boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM Warehouses)
SELECT T1.warehouse , avg(T2.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T2.value) > 150
SELECT avg(value) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity > 150 GROUP BY T1.warehouse
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) FROM boxes
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT T1.Location , MAX(T2.Value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse GROUP BY T1.Location
SELECT T1.location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT T1.code , count(*) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code
SELECT count(*) , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE CONTENT = "Rocks"
SELECT count(DISTINCT warehouse) FROM boxes
SELECT T2.code , T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T2.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = "Chicago"
SELECT T2.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago'
SELECT count(*) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(*) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM Warehouses WHERE capacity = 'inf'
SELECT T1.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.value > T1.capacity
SELECT sum(Value) FROM Boxes WHERE Warehouse != (SELECT Code FROM Warehouses WHERE LOCATION = 'Chicago')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT home_conference FROM university
SELECT DISTINCT home_conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university WHERE Enrollment > 2000 GROUP BY home_conference HAVING avg(Enrollment) > 2000
SELECT home_conf FROM university WHERE enrollment > 2000 GROUP BY home_conf HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T1.major_name , T1.major_ranking FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.university_name = "Augustana College"
SELECT T1.rank , T2.major_name FROM major_ranking AS T1 JOIN major AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T3.University_ID = T1.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" AND T2.rank = 1
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" ORDER BY T2.rank LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Rank 1" GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "null"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.Major_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT university_name , rank FROM university WHERE state = "Wisconsin"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank >= 3
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank <= 5
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank <= 5
SELECT T1.university_name , T1.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > 3
SELECT T1.University_Name , T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND Enrollment < 3000
SELECT title FROM Movies WHERE rating = "null"
SELECT Title FROM Movies WHERE Rating = "null"
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT T2.Name , T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT T1.name) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T2.rating FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name LIKE '%Citizen%'
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" OR T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon"
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon"
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY title
SELECT title FROM Movies ORDER BY rating
SELECT title FROM Movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT name FROM MovieTheaters
SELECT name FROM MovieTheaters WHERE Movie = (SELECT code FROM Movies WHERE Rating = 100)
SELECT Name FROM MovieTheaters WHERE Movie = "null"
SELECT Name FROM MovieTheaters WHERE Movie = "null"
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT title FROM Movies
SELECT title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM Package WHERE sender = "Leo Wong"
SELECT sum(weight) FROM Package WHERE sender = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , position FROM Employee WHERE name = "Turanga Leela"
SELECT avg(salary) FROM Employee WHERE position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE Employee = EmployeeID = 1001
SELECT LEVEL FROM Has_clearance WHERE Employee = "Physician"
SELECT packagenumber FROM package WHERE sender = 'Leo Wong'
SELECT count(*) FROM PACKAGE WHERE sender = 'Leo Wong'
SELECT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT * FROM PACKAGE WHERE Sender = (SELECT Client.AccountNumber FROM Client WHERE Name = 'Leo Wong') INTERSECT SELECT * FROM PACKAGE WHERE Recipient = (SELECT Client.AccountNumber FROM Client WHERE Name = 'Leo Wong')
SELECT DISTINCT Sender FROM Package WHERE Sender = "Leo Wong" INTERSECT SELECT DISTINCT Recipient FROM Package WHERE Recipient = "Leo Wong"
SELECT count(*) FROM PACKAGE WHERE sender = 'Ogden Wernstrom' INTERSECT SELECT count(*) FROM PACKAGE WHERE recipient = 'Leo Wong'
SELECT count(*) FROM Package WHERE sender = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Package WHERE recipient = "Leo Wong"
SELECT Contents FROM Package WHERE Sender = "John Zoidfarb"
SELECT T1.contents FROM Package AS T1 JOIN Client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM Package AS T1 JOIN Client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'John'
SELECT packagenumber , weight FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'John')
SELECT packagenumber , weight FROM Package ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM Package ORDER BY weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT min(packagenumber) , sender FROM PACKAGE GROUP BY sender
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM Planet ORDER BY name
SELECT shipmentid FROM shipment WHERE manager = 'Phillip J. Fry'
SELECT shipmentid FROM shipment WHERE manager = (SELECT employeeid FROM Employee WHERE name = 'Phillip J Fry')
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment WHERE planet = "Mars"
SELECT shipmentid FROM shipment WHERE planet = "Mars"
SELECT shipmentid FROM shipment WHERE manager = "Turanga Leela" AND planet = "Mars"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.manager = T3.employeeid WHERE T3.name = "Turanga Leela"
SELECT shipmentid FROM shipment WHERE planet = "Mars" OR manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Mars" AND T2.name = "Turanga Leela"
SELECT T1.name , sum(T2.shipment) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT count(*) , T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT count(*) , T1.name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(weight) FROM Package WHERE shipment IN (SELECT shipmentid FROM Shipment WHERE planet = "Mars")
SELECT sum(weight) FROM Package WHERE shipment IN (SELECT shipmentid FROM Shipment WHERE planet = "Mars")
SELECT sum(T1.Weight) , T2.Name FROM Package AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.Name
SELECT sum(T2.Weight) , T1.Name FROM Planet AS T1 JOIN Package AS T2 ON T1.PlanetID = T2.Recipient GROUP BY T1.Name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.weight > 30
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.shipmentid NOT NULL AND T2.manager = 'TJ' AND sum(T2.weight) > 30
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" AND T2.manager = "Zapp Brannigan"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = "Omicron Persei 8" AND T1.Sender = "Zapp Brannigan"
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentID JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" OR T2.manager = "Zapp Brannigan"
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = "Omicron Persei 8" OR T2.Manager = "Zapp Brannigan"
SELECT packagenumber , weight FROM Package WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM Package WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = "Mars")
SELECT name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 3
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.level = "Omega III"
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE count(*) = 1
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee = (SELECT employee FROM has_clearance GROUP BY employee HAVING count(*) = 1)
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE Download_rank = 1
SELECT platform_name , platform_id FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.player_name , T1.rank_of_the-year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = "Guard"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT T2.Title , T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Position = "Guard")
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE POSITION = "Guard")
SELECT name FROM press ORDER BY YEAR_Profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE YEAR_profits_billion > 15e9 OR month_profits_billion = 1e9
SELECT name FROM press WHERE YEAR_PROFIT_billion > 15 OR month_profits_billion > 1000000000
SELECT avg(month_profits_billion) , max(year_profits_billion) FROM press
SELECT avg(year_profits_billion) , max(year_profits_billion) , press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT title FROM book ORDER BY release_date DESC
SELECT title FROM book ORDER BY release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "LT"
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.title , T2.name , T3.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T1.title , T2.name , T3.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id JOIN author AS T3 ON T1.author_id = T3.author_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name
SELECT count(*) , T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T1.name , count(*) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.name
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT T1.name , T2.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name HAVING count(*) > 2
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents WHERE author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT process_name FROM Business_Processes WHERE process_id = 9
SELECT count(*) FROM Process_Outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_Processes
SELECT process_id FROM Documents_Processes WHERE document_id = (SELECT document_id FROM Documents)
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_Processes
SELECT process_id FROM Business_Processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_Outcomes AS T1 JOIN Process_Status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_outcome_code = "0"
SELECT process_name FROM Business_Processes WHERE process_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_Processes GROUP BY process_id
SELECT count(*) FROM Staff_in_Processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles WHERE staff_role_code = 'admin'
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details LIKE "Mac%"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT client_id , invoice_status , invoice_details FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T2.client_details , T1.client_id , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T2.client_details , T1.agency_id , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT payment_id , payment_details FROM payments WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoice_status = 'Working')
SELECT payment_id , payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT T1.meeting_type , count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.meeting_type
SELECT count(*) , meeting_type FROM Meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , T1.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_id FROM meetings
SELECT T1.meeting_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT count(*) , T1.meeting_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT client_id , client_details FROM Clients UNION SELECT client_id , client_details FROM Invoices
SELECT client_id , client_details FROM clients UNION SELECT client_id , client_details FROM invoices
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff AS T3 ON T1.meeting_id = T3.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T1.meeting_id = T3.meeting_id
