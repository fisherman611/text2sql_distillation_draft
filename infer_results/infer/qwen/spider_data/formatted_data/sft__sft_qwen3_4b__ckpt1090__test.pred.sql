SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name , T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(T1.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY AVG(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT count(*) , Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM playEr)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player WHERE earnings > 1400000 INTERSECT SELECT country FROM player WHERE earnings < 1100000
SELECT count(DISTINCT country) FROM player
SELECT count(DISTINCT country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM order_items AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T1.product_id = T3.product_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2
SELECT T2.order_id , T2.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT T1.order_id , count(*) , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY T1.date_order_placed LIMIT 1
SELECT date_order_placed FROM orders ORDER BY date_order_placed ASC LIMIT 1 UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers EXCEPT SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T2.order_id , T2.date_order_placed FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price FROM Order_Items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T3.product_name , T3.product_price FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.order_id , sum(T1.product_price) FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_Items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code
SELECT T1.gender_code , count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_Items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code
SELECT count(*) , T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , T1.gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T1.payment_method_code FROM Customer_Payment_Methods AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T3.product_name , T2.shipment_date FROM Shipment_Items AS T1 JOIN Shipments AS T2 ON T1.shipment_id = T2.shipment_id JOIN Products AS T3 ON T1.product_id = T3.product_id
SELECT T2.product_name , T3.shipment_date FROM Order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T1.order_id = T3.order_id
SELECT T1.order_item_status_code , T3.shipment_tracking_number FROM Order_items AS T1 JOIN Shipment_items AS T2 ON T1.order_item_id = T2.order_item_id JOIN Shipments AS T3 ON T2.shipment_id = T3.shipment_id
SELECT T2.order_item_status_code , T3.shipment_tracking_number FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T1.order_id = T3.order_id WHERE T1.order_status_code = "Shipped"
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipment_items AS T3 ON T2.order_item_id = T3.order_item_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T2.order_id = T3.order_id
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN Order_items AS T3 ON T2.order_id = T3.order_id WHERE T1.gender_code = "Female"
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T4 ON T2.order_id = T4.order_id JOIN products AS T3 ON T4.product_id = T3.product_id WHERE T1.gender_code = "Female"
SELECT DISTINCT T1.invoice_status_code FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number WHERE T2.shipment_date > T1.invoice_date
SELECT T1.invoice_status_code FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number WHERE T2.shipment_date > T1.invoice_date
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT login_name , login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM ORDERS
SELECT order_status_code , date_order_placed FROM ORDERS
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T4.customer_first_name , T3.product_name FROM orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id JOIN customers AS T4 ON T1.customer_id = T4.customer_id
SELECT T4.customer_first_name , T3.product_name FROM orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id JOIN customers AS T4 ON T1.customer_id = T4.customer_id
SELECT count(*) FROM shipments
SELECT count(DISTINCT product_id) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(t2.product_price) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id
SELECT avg(t2.product_price) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT gender_code FROM customers GROUP BY gender_code ORDER BY count(*) LIMIT 1)
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T1.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T2.date_order_placed FROM Customer_Payment_Methods AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T1.product_description FROM Products AS T1 JOIN Order_Items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T1.product_description FROM Products AS T1 JOIN Order_Items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING COUNT(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM channel WHERE Digital_terrestrial_channel = 1
SELECT title FROM program ORDER BY start_year DESC
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT T1.Name , count(*) FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age > 60
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT T1.channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T1.name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , original_airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != 'ABC'
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT City , Station_name FROM city_channel ORDER BY Station_name ASC
SELECT T2.Transmitter , T3.City FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.Radio_ID = T2.Radio_ID JOIN city_channel AS T3 ON T1.City_channel_ID = T3.ID
SELECT T1.Transmitter , T2.Station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.City_channel_ID ORDER BY ERP_kW DESC
SELECT T2.Transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T2.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*) , T1.Driver_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_ID , count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) LIMIT 1
SELECT max(top_speed) , max(power) FROM vehicle WHERE build_year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(DISTINCT T3.Name) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T3.driver_id) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T2.driver_id = T3.driver_id WHERE T1.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT avg(Top-Speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT model , build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT Vehicle_ID , Model FROM vehicle WHERE Builder = 'Ziyang'
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 UNION SELECT vehicle_id , model FROM vehicle WHERE builder = "Ziyang"
SELECT T3.Vehicle_ID , T3.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T3.Vehicle_ID = T1.Vehicle_ID GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2 OR T2.Name = 'Jeff Gordon'
SELECT T3.Vehicle_ID , T3.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T2.Name = "Jeff Gordon" INTERSECT SELECT T3.Vehicle_ID , T3.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE TOPT_SPEED = (SELECT max(TOPT_SPEED) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name ASC
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT T2.name , T2.citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.Model = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT DISTINCT subject_code FROM Exams ORDER BY subject_code
SELECT Exam_Name , Exam_Date FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_OF_QUESTION_CODE , COUNT(*) FROM Questions GROUP BY TYPE_OF_QUESTION_CODE
SELECT TYPE_OF_QUESTION_CODE , COUNT(*) FROM Questions GROUP BY TYPE_OF_QUESTION_CODE
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Assessments GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_OF_QUESTION_CODE FROM questions GROUP BY TYPE_OF_QUESTION_CODE HAVING COUNT(*) >= 3
SELECT TYPE_OF_QUESTION_CODE FROM questions GROUP BY TYPE_OF_QUESTION_CODE HAVING COUNT(*) >= 3
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
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware' )
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name , payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT T2.order_id , T2.order_date , T2.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = "Monitor"
SELECT count(*) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT T3.customer_id) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN customer_orders AS T3 ON T2.order_id = T3.order_id WHERE T1.product_type_code = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT T1.order_id , T1.order_date FROM Customer_Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 OR count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT name FROM building ORDER BY number_of_stories ASC
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
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T2.Name , T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT capital FROM region GROUP BY region_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Address , T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Address , T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT sum(T1.Number_of_Stories) FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = "Abruzzo"
SELECT count(*) , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = "Abruzzo" GROUP BY T1.name
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT T1.Completed_Year FROM building AS T1 JOIN building AS T2 ON T1.Completed_Year = T2.Completed_Year WHERE T1.Number_of_Stories > 20 INTERSECT SELECT T1.Completed_Year FROM building AS T1 JOIN building AS T2 ON T1.Completed_Year = T2.Completed_Year WHERE T1.Number_of_Stories < 15
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T2.Service_ID HAVING COUNT(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM customers EXCEPT SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.service_id IN ( SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1 )
SELECT count(DISTINCT Customers_and_Services_Details) FROM Customers_and_Services
SELECT count(*) FROM Customers UNION SELECT count(*) FROM Services
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Customer_Details = "Hardy Kutch" UNION SELECT T3.Service_Details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T2.Status_Code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.Status_Code = "good" UNION SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id JOIN customers AS T5 ON T4.customer_id = T5.customer_id WHERE T5.customer_details = "Hardy Kutch"
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T1.Customer_Details = "Hardy Kutch" INTERSECT SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T2.Status_Code = "bad"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customer_Interactions AS T3 ON T2.Customer_ID = T3.Customer_ID AND T2.Service_ID = T3.Service_ID WHERE T3.Status_Code = "bad" AND Customers_and_Services_Details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = " 15 ij "
SELECT T3.service_details FROM channels AS T1 JOIN customer_interactions AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.Services_and_Channels_Details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM integration_platform AS T1 JOIN customer_interactions AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T2.status_code = "Successful"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT service_details FROM services EXCEPT SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T2.service_details FROM customer_interactions AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id WHERE T1.status_code = "unsatisfied"
SELECT t2.service_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id JOIN customer_interactions AS t3 ON t3.customer_id = t1.customer_id AND t3.service_id = t1.service_id WHERE t3.status_code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT name , type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_OF_POWERTRAIN , count(*) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT TYPE_OF_POWERTRAIN , count(*) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT TYPE_OF_POWERTRAIN FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_OF_POWERTRAIN FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles;
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles;
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_OF_POWERTRAIN , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN HAVING count(*) >= 2
SELECT TYPE_OF_POWERTRAIN , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T2.name , T2.model_year FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , type_of_powertrain FROM Vehicles GROUP BY type_of_powertrain
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , type_of_powertrain FROM Vehicles GROUP BY type_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) AND student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_Loans)
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT sum(amount_of_loan) , date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T2.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T2.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = student_address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = student_address_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING count(*) = 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING T2.behaviour_monitoring_details = (SELECT max(behaviour_monitoring_details) FROM Behaviour_Monitoring)
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT teacher_id) FROM Classes WHERE student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT count(DISTINCT teacher_id) FROM Classes WHERE student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE "%Suite%"
SELECT T1.class_details , T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id = (SELECT T5.student_id FROM Transcripts AS T4 JOIN Students AS T5 ON T4.student_id = T5.student_id WHERE T4.date_of_transcript = (SELECT min(T4.date_of_transcript) FROM Transcripts AS T4 JOIN Students AS T5 ON T4.student_id = T5.student_id))
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id = (SELECT student_id FROM Transcripts ORDER BY date_of_transcript LIMIT 1)
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_address_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1
SELECT datetime_detention_start FROM Detention
SELECT Name FROM AUTHOR
SELECT Name FROM AUTHOR
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , ISBN , saleprice FROM book
SELECT title , ISBN , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM BOOK
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT T2.title , T1.name FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author
SELECT T2.Title , T2.Name FROM AUTHOR AS T1 JOIN BOOK AS T2 ON T1.idauthor = T2.Author
SELECT T2.idorder , T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient
SELECT T2.idorder , T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT count(*) , T1.Name FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.Author GROUP BY T1.Name
SELECT ISBN , count(*) FROM Books_order GROUP BY ISBN
SELECT T1.ISBN , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.isbn , sum(T2.amount) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.ISBN , sum(T2.amount) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.ISBN
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.isbn GROUP BY T1.title ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name , count(*) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T3.amount) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name
SELECT T1.name , sum(T3.amount) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE ISBN NOT IN (SELECT ISBN FROM Books_order)
SELECT Title FROM Book WHERE ISBN NOT IN (SELECT ISBN FROM Books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(saleprice - purchaseprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM Book WHERE Author = "George Orwell"
SELECT SalePrice FROM BOOK AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T2.Name = "Plato"
SELECT SalePrice FROM BOOK AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor WHERE T2.Name = "Plato"
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice LIMIT 1
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor WHERE T2.name = "George Orwell" ORDER BY T1.saleprice LIMIT 1
SELECT title FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor WHERE T2.name = "plato" AND T1.purchaseprice < (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE author = 'Plato' AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT Author FROM BOOK WHERE Title = "Pride and Prejudice"
SELECT T1.Name FROM AUTHOR AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T2.title = "Pride and Prejudice"
SELECT T2.title FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT T2.title FROM author AS T1 JOIN book AS T2 ON T1.name = T2.author WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = "Pride and Prejudice"
SELECT count(*) FROM book AS T1 JOIN books_order AS T2 ON T1 ISBN = T2 ISBN JOIN orders AS T3 ON T2 idorder = T3 idorder WHERE T1.title = "Pride and Prejudice"
SELECT idorder FROM Books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = "Pride and Prejudice" INTERSECT SELECT idorder FROM Books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = "The Little Prince"
SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice" INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "The Little Prince"
SELECT T4.isbn FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T1.name = "Peter Doe" INTERSECT SELECT T4.isbn FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T1.name = "James Smith"
SELECT T3.ISBN FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T2.idorder = T3.idorder WHERE T1.name = "Peter Doe" INTERSECT SELECT T3.ISBN FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T2.idorder = T3.idorder WHERE T1.name = "James Smith"
SELECT T3.title FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idclient = T3.idorder WHERE T1.name = "Peter Doe" EXCEPT SELECT T3.title FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idclient = T3.idorder WHERE T1.name = "James Smith"
SELECT T3.title FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T4.isbn WHERE T1.name = "Peter Doe" EXCEPT SELECT T3.title FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T4.isbn WHERE T1.name = "James Smith"
SELECT T1.name FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T4.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.isbn = T4.isbn WHERE T4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) , Title FROM book GROUP BY Title
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT T2.Title , T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.rank FROM book AS T1 JOIN review AS T2 ON T1.book_id = T2.book_id ORDER BY T1.Pages LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank LIMIT 1
SELECT avg(T1 Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating ASC
SELECT T1.Title , T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2 Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE chapters > 75 INTERSECT SELECT TYPE FROM book WHERE chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT name FROM customer ORDER BY level_of_membership ASC
SELECT name FROM customer ORDER BY level_of_membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(Card_Credit) FROM customer WHERE LEVEL_of_MEMBERSHIP > 1
SELECT Card_Credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.Quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING sum(T2.Quantity) > 1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING sum(T2.Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT name FROM member ORDER BY age ASC
SELECT name , nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T3.club_name , T2.name FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id JOIN club AS T3 ON T1.club_id = T3.club_id
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT t1.club_name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t2.year_join < 2018
SELECT T2.Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T1.club_id = T3.club_id WHERE T3.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(t2.age) FROM club_leader AS t1 JOIN member AS t2 ON t1.member_id = t2.member_id
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_name FROM collection_subsets
SELECT Collection_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Top collection'
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT parent_document_object_id FROM document_objects WHERE OWNER = 'Marlin'
SELECT parent_document_object_id FROM document_objects WHERE owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM document_objects
SELECT count(*) FROM document_objects WHERE OWNER = 'Marlin'
SELECT count(*) FROM document_objects WHERE owner = 'Marlin'
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT document_object_id FROM document_objects WHERE parent_document_object_id = 0
SELECT count(*) , parent_document_object_id FROM document_objects GROUP BY parent_document_object_id
SELECT count(*) , parent_document_object_id FROM document_objects GROUP BY parent_document_object_id
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT parent_collection_id FROM collections WHERE collection_name = "Nice"
SELECT parent_collection_id FROM collections WHERE collection_name = "Nice"
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections EXCEPT SELECT t1.collection_name FROM collections AS t1 JOIN collections AS t2 ON t1.parent_collection_id = t2.collection_id
SELECT parent_document_object_id FROM document_objects GROUP BY parent_document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = related_collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = related_collection_id WHERE t1.collection_name = "Best"
SELECT related_document_object_id FROM document_subset_members WHERE document_object_id IN (SELECT document_object_id FROM document_objects WHERE OWNER = 'Ransom')
SELECT document_object_id FROM document_objects WHERE OWNER = 'Ransom'
SELECT collection_subset_id , collection_subset_name , count(*) FROM collection_subsets GROUP BY collection_subset_id
SELECT collection_subset_id , collection_subset_name , count(*) FROM collection_subsets GROUP BY collection_subset_id
SELECT count(*) , document_object_id FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id , count(*) FROM document_objects GROUP BY document_object_id
SELECT T1.document_object_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT related_document_object_id , count(*) FROM document_subset_members WHERE document_subset_id = 2 GROUP BY related_document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_object_id , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'related' GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT OWNER FROM Document_Objects WHERE document_object_id IN (SELECT document_object_id FROM Document_subsets WHERE document_subset_id IN (SELECT document_subset_id FROM document_subset_members WHERE related_document_object_id IN (SELECT document_object_id FROM document_objects WHERE OWNER = "Braeden" )))
SELECT DISTINCT OWNER FROM Document_Objects WHERE document_object_id IN ( SELECT document_object_id FROM Document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.related_document_object_id = T2.document_subset_id WHERE T2.document_subset_name = 'Braeden' )
SELECT t3.document_subset_name FROM document_objects AS t1 JOIN document_subset_members AS t2 ON t1.document_object_id = t2.document_object_id JOIN document_subsets AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t1.owner = 'Braeden'
SELECT DISTINCT t3.document_subset_name FROM document_objects AS t1 JOIN document_subset_members AS t2 ON t1.document_object_id = t2.document_object_id JOIN document_subsets AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t1.owner = "Braeden"
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT related_document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT related_document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT t1.document_subset_name , t3.document_object_id FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.related_document_object_id = t3.document_object_id
SELECT T1.document_subset_name , T2.document_object_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_object_id
SELECT t1.collection_name FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t3.owner = 'Ransom '
SELECT t3.collection_name FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t1.owner = 'Ransom'
SELECT count(*) , document_object_id FROM Documents_in_collections GROUP BY document_object_id
SELECT document_object_id , count(*) FROM Documents_in_collections GROUP BY document_object_id
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.collection_name , count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best' GROUP BY t1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT related_document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best for 2000" INTERSECT SELECT related_document_object_id FROM collection_subset_members AS T3 JOIN collections AS T4 ON T3.related_collection_id = T4.collection_id WHERE T4.collection_name = "Best"
SELECT related_document_object_id FROM document_subset_members AS t1 JOIN document_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.document_subset_name = 'Best for 2000' UNION SELECT related_collection_id FROM collection_subset_members AS t1 JOIN collection_subsets AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_subset_name = 'Best'
SELECT document_object_id FROM documents_in_collections INTERSECT SELECT document_object_id FROM document_subset_members WHERE document_subset_id = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best') EXCEPT SELECT document_object_id FROM document_subset_members WHERE document_subset_id = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT DISTINCT t1.document_object_id FROM document_objects AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subset_members AS t3 ON t2.collection_id = t3.related_collection_id WHERE t2.collection_name = 'Best' EXCEPT SELECT DISTINCT t1.document_object_id FROM document_objects AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subset_members AS t3 ON t2.collection_id = t3.related_collection_id WHERE t2.collection_name = 'Best for 2000'
SELECT related_document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best for 2000" UNION SELECT T3.document_object_id FROM collections AS T3 JOIN collections_subset_members AS T4 ON T3.collection_id = T4.collection_id WHERE T4.collection_subset_name = "Best"
SELECT DISTINCT T2.document_object_id FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id JOIN document_subsets AS T3 ON T1.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = 'Best for 2000' UNION SELECT DISTINCT T2.document_object_id FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id JOIN document_subsets AS T3 ON T1.document_subset_id = T3.document_subset_id JOIN collections AS T4 ON T3.collection_id = T4.collection_id WHERE T4.collection_name = 'Best'
SELECT t2.collection_name FROM collection_subset_members AS t1 JOIN collections AS t2 ON t1.related_collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t1.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_details = 'Best'
SELECT t2.collection_name FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_details = 'Best'
SELECT count(*) FROM collection_subset_members AS t1 JOIN collections AS t2 ON t1.related_collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT count(*) FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN collections AS t3 ON t2.related_collection_id = t3.collection_id WHERE t3.collection_name = "Best"
SELECT t3.collection_subset_name FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.related_collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T2.voice_sound_quality , T2.rhythm_tempo , T2.stage_presence FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T1.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T2.stage_presence FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls " AND T2.language = "english"
SELECT T3.id , T3.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score )
SELECT avg(rhythm_tempo) , T1.language FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.language
SELECT DISTINCT T2.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id WHERE T3.language = 'English'
SELECT T3.name , T3.popularity FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id WHERE T2.language = 'Croatian' INTERSECT SELECT T3.name , T3.popularity FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id WHERE T2.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(DISTINCT country) FROM city
SELECT city_name , city_code , state , country FROM City
SELECT city_name , city_code , state , country FROM City
SELECT latitude , longitude FROM City WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM City WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT country , count(*) FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = 'MD'
SELECT fname , lname FROM student WHERE city_code IN (SELECT city_code FROM city WHERE state = 'MD')
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE country = 'China'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE country = 'China'
SELECT fname , major FROM Student WHERE city_code = "Baltimore"
SELECT fname , major FROM Student WHERE city_code = "Baltimore"
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM Student GROUP BY city_code
SELECT city_code , count(*) FROM Student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM City AS T1 JOIN Student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM City WHERE country = 'USA')
SELECT StuID FROM Student WHERE sex = "F" AND city_code = (SELECT city_code FROM city WHERE state = "PA")
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.country = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM Direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT distance FROM Direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT distance FROM Direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' AND T1.city2_code IN (SELECT city_code FROM city WHERE city_name = 'Newark')
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT city1_code , city2_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city ORDER BY latitude , longitude LIMIT 1
SELECT DISTINCT city1_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE distance < 1000 LIMIT 2
SELECT DISTINCT city_code FROM direct_distance WHERE distance < 1000
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(Distance) FROM Direct_distance WHERE city1_code = city_code(city_name = "BAL")
SELECT avg(distance) FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Boston")
SELECT avg(distance) FROM Direct_distance WHERE city1_code = (SELECT city_code FROM City WHERE city_name = "Boston")
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Chicago' ORDER BY distance LIMIT 1
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t2.city2_code IN (SELECT city_code FROM city WHERE city_name = 'Chicago') ORDER BY distance LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = "Boston" ORDER BY T1.city_name LIMIT 1
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t1.city_name = "Boston" ORDER BY t2.distance DESC LIMIT 1
SELECT city_code , sum(distance) FROM direct_distance GROUP BY city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT t1.distance FROM direct_distance AS t1 JOIN student AS t2 ON t1.city1_code = t2.city_code WHERE t2.fname = "Linda" AND t2.lname = "Smith" UNION SELECT t1.distance FROM direct_distance AS t1 JOIN student AS t2 ON t1.city1_code = t2.city_code WHERE t2.fname = "Tracy" AND t2.lname = "Kim"
SELECT distance FROM Direct_distance WHERE city1_code = (SELECT city_code FROM Student WHERE fname = "Linda" AND lname = "Smith") AND city2_code = (SELECT city_code FROM Student WHERE fname = "Tracy" AND lname = "Kim")
SELECT fname , lname FROM student WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Linda Smith' )
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = (SELECT city_code FROM Student WHERE fname = "Linda" AND lname = "Smith") ORDER BY T2.distance DESC LIMIT 1
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = "Linda"
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name FROM sailors WHERE age < 30
SELECT name FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT T3.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T1.bid = 102
SELECT T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T1.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT DISTINCT bid FROM Reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" INTERSECT SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "blue"
SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" INTERSECT SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "blue"
SELECT sid FROM Reserves
SELECT sid FROM Reserves
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T1.bid = 103
SELECT T2.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.rating > 2
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT count(*) , bid FROM reserves GROUP BY bid
SELECT count(*) , name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T2.bid HAVING count(*) > 1
SELECT count(*) , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T1.sid > 1 GROUP BY T2.bid
SELECT count(*) , bid FROM Reserves WHERE sid > 1 GROUP BY bid
SELECT T2.rating , avg(T1.age) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" GROUP BY T2.rating
SELECT avg(t1.age) , t1.rating FROM sailors AS t1 JOIN reserves AS t2 ON t1.sid = t2.sid JOIN boats AS t3 ON t2.bid = t3.bid WHERE t3.color = 'red' GROUP BY t1.rating
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T4.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T2.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE sid IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red'))
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE sid IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE color = 'red'))
SELECT max(rating) FROM sailors
SELECT max(rating) FROM Sailors
SELECT T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T1.name = 'Melon'
SELECT T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T1.name = 'Melon'
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT DISTINCT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT DISTINCT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction != "Plastic"
SELECT Earpads FROM headphone WHERE Construction != 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT Neighborhood , count(*) FROM store GROUP BY Neighborhood
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T1.headphone_id IN (SELECT Headphone_ID FROM stock GROUP BY Headphone_ID HAVING sum(Quantity) > 0) GROUP BY T2.name
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone EXCEPT SELECT t1.model FROM headphone AS t1 JOIN stock AS t2 ON t1.headphone_id = t2.headphone_id
SELECT model FROM headphone EXCEPT SELECT t1.model FROM headphone AS t1 JOIN stock AS t2 ON t1.headphone_id = t2.headphone_id
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_ID = t2.store_ID WHERE t1.name = "Woodman"
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_ID = t2.store_ID WHERE t1.name = 'Woodman'
SELECT neighborhood FROM store EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id
SELECT neighborhood FROM store EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.Headphone_ID IN (SELECT Headphone_ID FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = 'NAACL' AND YEAR = 2000
SELECT count(*) FROM paper WHERE venue = 'NAACL' AND YEAR = 2000
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT T3.title FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown'
SELECT T3.title , T3.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T3.paper_id = T2.paper_id WHERE T1.name = "Mckeown"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T3.paper_id = T1.paper_id WHERE T2.name = 'Stanford' INTERSECT SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T3.paper_id = T1.paper_id WHERE T2.name = 'Columbia University'
SELECT t3.title FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen" INTERSECT SELECT t3.title FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Rambow , Owen"
SELECT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen" INTERSECT SELECT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Rambow , Owen"
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' EXCEPT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Rambow'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Mckeown' EXCEPT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'Rambow'
SELECT t3.title , t3.paper_id FROM author_list AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id WHERE t2.name = "Mckeown, Kathleen" OR t2.name = "Rambow, Owen"
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = "Mckeown , Kathleen" OR t3.name = "Rambow , Owen"
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM citation WHERE cited_paper_id = "A00-1002"
SELECT count(*) FROM citation WHERE cited_paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT count(*) FROM citation WHERE cited_paper_id = "D12-1027"
SELECT cited_paper_id , count(*) FROM citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT cited_paper_id , count(*) FROM citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T2.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T2.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = "Mckeown , Kathleen"
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT T1.venue , T1.year FROM paper AS T1 JOIN authorlist AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown , Kathleen"
SELECT DISTINCT venue , YEAR FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT DISTINCT venue , YEAR FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t2.year = 2009 GROUP BY t3.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Columbia University' AND T3.year <= 2009
SELECT count(*) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Columbia University' AND t3.year <= 2009
SELECT count(*) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Stanford University' AND t3.year BETWEEN 2000 AND 2009
SELECT count(*) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Stanford University' AND t3.year BETWEEN 2000 AND 2009
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t1.name = "Mckeown , Kathleen"
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t1.name = "Mckeown , Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen " GROUP BY t2.paper_id HAVING count(*) = (SELECT max(count) FROM author_list GROUP BY paper_id HAVING t1.name = "Mckeown , Kathleen " )
SELECT t3.name FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name != "Mckeown , Kathleen " INTERSECT SELECT t3.name FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = "Mckeown , Kathleen " GROUP BY t3.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING T1.address LIKE '%China%' ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , YEAR , venue FROM paper GROUP BY YEAR , venue
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T2.cited_paper_id HAVING count(*) > 50
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.author_id HAVING count(*) > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50 )
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = 'NAACL' OR t3.venue = 'ACL' AND t3.year = 2009
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = 'NAACL' AND t3.year = 2009 INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = 'ACL' AND t3.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.venue = 'ACL')
SELECT name FROM author EXCEPT SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t1.venue = 'ACL'
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT Institution_Name , LOCATION , Founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT T1.name , T2.institution_id FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.founded > 1800
SELECT institution_name FROM institution EXCEPT SELECT T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age) , min(age) FROM staff
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_ID = T2.staff_ID JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = "Canada"
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_ID = T2.staff_ID JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = "Canadian"
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Naccl'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'ACL' INTERSECT SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'NACCL'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.conference_id , T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T2.conference_name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT T2.conference_name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_name = 'ACL Conference')
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_name = 'ACL Conference')
SELECT institution_name , LOCATION FROM institution EXCEPT SELECT T3.institution_name , T3.location FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN institution AS T3 ON T3.institution_id = T1.staff_id WHERE T2.year = 2004
SELECT institution_name , LOCATION FROM institution EXCEPT SELECT T3.institution_name , T3.location FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN institution AS T3 ON T3.institution_id = T1.staff_id WHERE T2.year = 2004
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM PilotSkills WHERE age < 35 AND plane_name = "Piper Cub"
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Jones" AND age = 32
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age < 35 AND plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilotskills WHERE plane_name = "B-52 Bomber" AND age < 35
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" AND age = (SELECT min(age) FROM PilotSkills)
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" AND age = (SELECT min(age) FROM pilotskills)
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT count(*) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Smith' AND age = 41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name} FROM pilotskills
SELECT count(*) FROM pilotskills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilotSkills WHERE pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "Piper Cub" AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "F-14 Fighter" AND age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "Piper Cub" AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = "F-14 Fighter" AND age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bombardier"
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = "B-52 Bomber"
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T2.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Austin' INTERSECT SELECT T2.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Boston'
SELECT T2.pilot_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Austin' INTERSECT SELECT T2.pilot_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Boston'
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name
SELECT plane_name , count(*) FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , plane_name FROM PilotSkills ORDER BY plane_name ASC
SELECT DISTINCT plane_name , pilot_name FROM PilotSkills ORDER BY plane_name
SELECT pilot_name , plane_name FROM PilotSkills ORDER BY age DESC
SELECT plane_name , pilot_name FROM PilotSkills GROUP BY plane_name ORDER BY max(age)
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT T2.location , count(*) , avg(T1.age) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) , T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE avg(age) < 35 GROUP BY T1.location
SELECT count(*) , T1.plane_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age < 35 GROUP BY T1.plane_name
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = (SELECT min(age) FROM pilotskills)
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Austin"
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE "%Bomber%"
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website LIKE 'gov%'
SELECT District_ID , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T1.District_ID = T3.District_ID WHERE T1.Start_year < 2004
SELECT T3.Name , count(*) FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T1.Spokesman_ID = T3.Spokesman_ID GROUP BY T2.District_ID
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T1.Spokesman_ID = T3.Spokesman_ID WHERE T3.Rank_position = 1 INTERSECT SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T1.Spokesman_ID = T3.Spokesman_ID WHERE T3.Rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.Population) , avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings WHERE YEAR = (SELECT min(YEAR) FROM paintings)
SELECT title , LOCATION FROM paintings ORDER BY YEAR LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != 'gallery 226'
SELECT title , YEAR FROM sculptures WHERE LOCATION != 'gallery 226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY deathyear - birthyear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY deathyear - birthyear DESC LIMIT 1
SELECT deathyear - birthyear FROM artists ORDER BY deathyear - birthyear LIMIT 1
SELECT deathyear - birthyear FROM artists ORDER BY deathyear - birthyear LIMIT 1
SELECT fname , deathYear - birthYear FROM Artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT fname , deathYear - birthYear FROM Artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN gallery AS T2 ON T1.location = T2.location WHERE T2.galleryID = 240
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE deathyear - birthyear = (SELECT deathyear - birthyear FROM artists ORDER BY deathyear - birthyear DESC LIMIT 1)
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE deathyear - birthyear = (SELECT deathyear - birthyear FROM artists ORDER BY deathyear - birthyear DESC LIMIT 1)
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T2.location , T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Pablo"
SELECT LOCATION , medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptrid
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptrid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithograph"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithograph"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.title = "The Scream" AND T2.year = 1884 AND T2.medium = "canvas"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = "gallery 241"
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = "241"
SELECT count(*) , medium FROM paintings GROUP BY medium UNION SELECT count(*) , medium FROM sculptures GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium UNION SELECT count(*) , medium FROM sculptures GROUP BY medium
SELECT medium , avg(height_mm) FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT painterID FROM paintings WHERE medium = "oil" AND LOCATION = "240"
SELECT DISTINCT painterID FROM paintings WHERE medium = "oil" AND LOCATION = "gallery 240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = "canvas")
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = "canvas")
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 'gallery 240')
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE galleryid = 240)
SELECT paintingid FROM paintings WHERE YEAR = (SELECT min(YEAR) FROM paintings)
SELECT paintingid FROM paintings WHERE YEAR = (SELECT min(YEAR) FROM paintings)
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY width_mm - height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950 UNION SELECT title FROM sculptures WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950 UNION SELECT title FROM sculptures WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptrid = T4.artistid WHERE T4.artistid = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 UNION SELECT T2.title FROM sculptures AS T2 JOIN artists AS T1 ON T1.artistid = T2.sculptrid WHERE T1.artistid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE mediumon = "panel" UNION SELECT DISTINCT LOCATION FROM paintings WHERE mediumon = "canvas"
SELECT DISTINCT location FROM paintings WHERE mediumon = "panel" UNION SELECT DISTINCT location FROM paintings WHERE mediumon = "canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = "241"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = "241"
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900
SELECT height_mm , paintingid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid ORDER BY T1.fname
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid ORDER BY T1.fname
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) <= 3
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.scalpotorID GROUP BY T2.scalpotorID ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) LIMIT 1
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings) AND LOCATION = 'gallery 240'
SELECT height_mm , paintingid FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings) AND galleryid = 240
{"sql": "SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(year) FROM paintings WHERE paintingid IN (SELECT paintingid FROM gallery AS T1 JOIN paintings AS T2 ON T1.paintingid = T2.paintingid WHERE T1.galleryid = 240"))"}
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(year) FROM paintings WHERE galleryid = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR
SELECT YEAR , LOCATION , title FROM Paintings WHERE height_mm > 1000 ORDER BY title
SELECT year , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT DISTINCT LOCATION FROM paintings WHERE medium = 'canvas'
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT T1.driver , T1.Winners_team FROM race AS T1 JOIN driver AS T2 ON T1.driver = T2.driver_id ORDER BY T1.Winners_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver WHERE T2.pole_position != "Junior Strous"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.winning_driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.pole_position WHERE T2.pole_position = "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT ENGINE) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT ENGINE) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name
SELECT T2.driver_id , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT T2.Race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT driver_name FROM driver EXCEPT SELECT driver_name FROM driver WHERE constructor = "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT count(*) , Constructor FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "Carl Skerlong"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "Carl Skerlong"
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
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
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT count(DISTINCT name) FROM languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.name
SELECT T3.name , count(*) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T3.name
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name HAVING COUNT(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name HAVING COUNT(*) >= 2
SELECT avg(t1.overall_score) FROM countries AS t1 JOIN official_languages AS t2 ON t1.id = t2.country_id JOIN languages AS t3 ON t2.language_id = t3.id WHERE t3.name = "English"
SELECT avg(t1.overall_score) FROM countries AS t1 JOIN official_languages AS t2 ON t1.id = t2.country_id JOIN languages AS t3 ON t2.language_id = t3.id WHERE t3.name = 'English'
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 3
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T1.language_id ORDER BY avg(T2.overall_score) DESC
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T1.language_id ORDER BY AVG(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score > 95 INTERSECT SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score < 90
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score > 95 INTERSECT SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score < 90
SELECT country , town_city FROM addresses
SELECT country , town_city FROM addresses
SELECT T1.country_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM FEATURES WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = '1'
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT age_category_code FROM users WHERE other_user_details LIKE '%Mother%'
SELECT T2.first_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T2.user_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_id IN ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_name = 'garden')
SELECT avg(T2.room_count) FROM property_features AS T1 JOIN properties AS T2 ON T1.property_id = T2.property_id JOIN features AS T3 ON T1.feature_id = T3.feature_id WHERE T3.feature_name = 'Garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN property_features AS T3 ON T2.property_id = T3.property_id JOIN features AS T4 ON T3.feature_id = T4.feature_id WHERE T4.feature_name = 'Swimming Pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_id = (SELECT feature_id FROM Features WHERE feature_name = 'Swimming Pool')
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT DISTINCT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT owner_user_id FROM Properties GROUP BY owner_user_id HAVING count(*) <= 2 )
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T3.user_id FROM Properties AS T3 GROUP BY T3.owner_user_id HAVING count(*) >= 2)
SELECT T1.user_id , T2.user_category_code FROM User_Searches AS T1 JOIN Ref_User_Categories AS T2 ON T1.user_id = T2.user_category_code GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM Users WHERE user_id IN (SELECT user_id FROM User_Searches GROUP BY user_id HAVING count(*) = 1)
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.date_registered LIMIT 1
SELECT T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime LIMIT 1
SELECT login_name FROM Users WHERE user_category_code = "senior" ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = "senior" ORDER BY first_name
SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT T2.line_1_number_building , T2.line_2_number_street , T2.town_city FROM Users AS T1 JOIN Addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.age_category_code = "Senior Citizen"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "senior"
SELECT count(*) FROM (SELECT * FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) FROM (SELECT T1.property_id FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT T1.property_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT T1.property_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT T1.user_id , count(*) FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Property_Photos AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id
SELECT T1.owner_user_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = "single_mother" OR T2.user_category_code = "student"
SELECT max(price_max) FROM Properties WHERE owner_user_id IN ( SELECT user_id FROM Users WHERE user_category_code = "single_mother" OR user_category_code = "student")
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T2.datestamp , T1.property_name FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id ORDER BY T2.datestamp
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60";
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T2.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id = T1.user_address_id
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Addresses AS T3 ON T2.property_address_id = T3.address_id WHERE T3.zip_postcode = T1.zip_postcode
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , RESULT FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T3.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T2.material = 'race' GROUP BY T2.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.nation = 'Russia' OR T2.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclists WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 );
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result > '4:21.558'
SELECT t3.product_name , t3.price FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id JOIN bike AS t3 ON t1.bike_id = t3.id WHERE t2.name = 'Bradley Wiggins' INTERSECT SELECT t3.product_name , t3.price FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id JOIN bike AS t3 ON t1.bike_id = t3.id WHERE t2.name = 'Antonio Tauler'
SELECT name , nation , RESULT FROM cyclist EXCEPT SELECT T1.name , T1.nation , T1.RESULT FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T3.product_name = 'racing bike'
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT flavor , max(price) FROM goods WHERE food = 'cake'
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.customerid FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.item IN (SELECT T3.item FROM goods AS T3 JOIN items AS T4 ON T3.id = T4.item WHERE T4.receipt = 2 AND T3.food = 'cake' AND T3.flavor = 'lemon')
SELECT DISTINCT T1.customerid FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.item IN (SELECT DISTINCT id FROM goods WHERE food = 'cake' AND flavor = 'lemon')
SELECT T3.Food , count(*) FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.ReceiptNumber JOIN goods AS T3 ON T3.Id = T1.Item GROUP BY T3.Food
SELECT count(*) , T3.Food FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptId JOIN goods AS T3 ON T2.Item = T3.Id GROUP BY T3.Food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date LIKE "% bakery %" GROUP BY T1.id HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date > "2017-01-01" GROUP BY T2.customerid HAVING count(*) > 10
SELECT T3.lastName FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.item = 4 GROUP BY T1.customerid HAVING count(*) > 10 INTERSECT SELECT T3.lastName FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt WHERE T2.item = 3 GROUP BY T1.customerid HAVING count(*) > 10
SELECT count(DISTINCT Food) FROM goods WHERE Food = "Cake"
SELECT count(DISTINCT food) FROM goods WHERE food = "cake"
SELECT Food FROM goods WHERE Food = "Croissant"
SELECT DISTINCT flavor FROM goods WHERE food = "croissant"
SELECT DISTINCT T2.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T1.CustomerId = 15
SELECT DISTINCT T3.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T1.CustomerId = 15
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Item IN (SELECT id FROM goods WHERE Food = 'Cake' INTERSECT SELECT id FROM goods WHERE Food = 'Cookie')
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "cookie"
SELECT T3.ReceiptNumber FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T1.lastname = 'LOGAN' AND T3.food = 'Croissant'
SELECT T3.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receipt = T3.receipt WHERE T1.lastname = 'Logan' AND T3.item IN (SELECT T3.item FROM goods AS T3 WHERE T3.food = 'croissant')
SELECT T1.ReceiptNumber , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.item = T3.id ORDER BY T3.price DESC LIMIT 1
SELECT T1.ReceiptNumber , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.item = T3.id ORDER BY T3.price DESC LIMIT 1
SELECT T1.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.item ORDER BY count(T2.item) ASC LIMIT 1
SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.item ORDER BY count(T2.item) ASC LIMIT 1
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT id FROM goods WHERE Food = "Apricot" AND Price < 5
SELECT id FROM goods WHERE Food = "Apricot" AND Price < 5
SELECT Flavor FROM goods WHERE Food = 'cake' AND Price > 10
SELECT flavor FROM goods WHERE price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Food = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = "Tart")
SELECT DISTINCT T3.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN receipts AS T3 ON T3.receiptnumber = T2.receipt WHERE T1.price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 13
SELECT T3.date FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T1.receipt = T3.receiptnumber WHERE T2.price > 15
SELECT T3.Date FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.id JOIN receipts AS T3 ON T1.Receipt = T3.ReceiptNumber WHERE T2.Price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT * FROM goods WHERE id = "70"
SELECT id , price FROM goods WHERE id = "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods ORDER BY id ASC
SELECT DISTINCT id FROM goods
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.flavor = 'apple' UNION SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.id = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Flavor = "apple" UNION SELECT T1.ReceiptNumber FROM receipts AS T1 WHERE T1.CustomerId = 12
SELECT Date , receiptnumber FROM receipts WHERE date = (SELECT max(date) FROM receipts)
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) UNION SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 10
SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 10 UNION SELECT T1.receiptnumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id WHERE T1.date = (SELECT min(date) FROM receipts)
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND food = 'Cookie' OR food = 'Cake'
SELECT id FROM goods WHERE Food = "Cookie" OR Food = "Cake" AND Price BETWEEN 3 AND 7
SELECT t1.firstname , t1.lastname FROM customers AS t1 JOIN receipts AS t2 ON t1.id = t2.customerid ORDER BY t2.date LIMIT 1
SELECT t1.firstname , t1.lastname FROM customers AS t1 JOIN receipts AS t2 ON t1.id = t2.customerid ORDER BY t2.date LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor
SELECT min(price) , max(price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(price) , max(price) FROM goods ORDER BY food
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T1.firstname , T1.lastname , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid ORDER BY count(*) DESC LIMIT 1
SELECT CustomerId , COUNT(*) FROM receipts GROUP BY CustomerId ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date , count(DISTINCT customerid) FROM receipts GROUP BY Date
SELECT T2.Date , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.date
SELECT DISTINCT T4.firstname , T4.lastname FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.receiptnumber = T1.receipt JOIN customers AS T4 ON T4.id = T3.customerid WHERE T2.food = 'Tart' AND T2.flavor = 'apple'
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receipt = T3.receipt JOIN goods AS T4 ON T3.item = T4.id WHERE T4.food = "Tarts" AND T4.flavor = "apple"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE Food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE Food = "Cake" AND Price >= (SELECT avg(Price) FROM goods WHERE Food = "Tart")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price > 2*(SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > 2*(SELECT avg(price) FROM goods)
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods WHERE food = 'Cake' ORDER BY flavor
SELECT id , flavor FROM goods WHERE food = 'cake' ORDER BY flavor
SELECT T1.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" EXCEPT SELECT T2.item FROM items AS T2 JOIN receipts AS T1 ON T1.receipt = T2.receipt WHERE T2.ordinal > 10
SELECT T1.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "chocolate" GROUP BY T2.item HAVING count(*) <= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Food FROM goods GROUP BY Food ORDER BY COUNT(*) DESC LIMIT 3
SELECT T2.food FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.food ORDER BY count(*) DESC LIMIT 3
SELECT T3.customerid FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.receiptnumber = T1.receipt GROUP BY T3.customerid HAVING sum(T2.price) > 150
SELECT T3.customerid FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.receiptnumber = T1.receipt WHERE T2.price > 150 GROUP BY T3.customerid HAVING sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receipt = T3.receipt GROUP BY T2.customerid HAVING avg(T3.item) > 5
SELECT T1.id , avg(T3.Price) FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.id GROUP BY T1.id HAVING avg(T3.Price) > 5
SELECT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber JOIN goods AS T3 ON T2.item = T3.id GROUP BY T1.date HAVING sum(T3.price) > 100
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id GROUP BY T1.Date HAVING sum(T3.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
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
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = "Dublin")
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Capital = "Dublin"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Official_native_language = "English"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team_ID FROM team_driver EXCEPT SELECT Team_ID FROM team
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country_ID FROM driver)
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country_ID FROM driver)
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Founded ASC
SELECT name FROM institution ORDER BY founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT T2.Name , T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT t1.name , t2.nickname FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id
SELECT t1.nickname FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id ORDER BY t2.enrollment LIMIT 1
SELECT t1.nickname FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id ORDER BY t2.enrollment LIMIT 1
SELECT t1.name FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id GROUP BY t1.institution_id ORDER BY count(*) DESC
SELECT t1.name FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id GROUP BY t1.institution_id ORDER BY count(*) DESC
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T2.number_of_championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = "Public"
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Capacity DESC
SELECT t1.nickname FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id ORDER BY t2.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = "Vancouver" OR city = "Calgary"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT AVG(VALUE) , warehouse FROM boxes GROUP BY warehouse
SELECT avg(Value) , warehouse FROM boxes GROUP BY warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(Value) FROM Boxes
SELECT avg(Value) FROM Boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.Location = 'Chicago' OR T2.Location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.Location = 'Chicago' OR T2.Location = 'New York'
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' OR T1.location = 'New York'
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' OR T1.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes EXCEPT SELECT contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.Contents = 'Rocks' EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.Contents = 'Scissors'
SELECT DISTINCT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' OR T2.contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' INTERSECT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' INTERSECT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE VALUE > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT avg(T1.value) , T2.loc FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.loc HAVING avg(T1.value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , location FROM warehouses GROUP BY location
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(Value) , warehouse FROM boxes GROUP BY warehouse
SELECT max(Value) , LOCATION FROM Boxes GROUP BY LOCATION
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT T2.location) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.Contents = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rock'
SELECT T2.code , T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse
SELECT T2.code , T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.Location = 'Chicago'
SELECT T2.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago'
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity > 1000
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > T1.capacity
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT count(*) FROM university WHERE State = "IL" OR State = "OH"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT Home_Conference FROM university
SELECT DISTINCT home_conference FROM university
SELECT Home_Conference , COUNT(*) FROM university GROUP BY Home_Conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY COUNT(*) ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.major_name , T3.rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_ID = T2.university_ID JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = "Augustana College"
SELECT T1.rank , T3.major_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T2.university_name = "Augustana College"
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank = 1 GROUP BY T1.University_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2 university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1 GROUP BY T1.university_id ORDER BY count(*) DESC LIMIT 1
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
SELECT university_name FROM university EXCEPT SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1
SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = 'Accounting' INTERSECT SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = 'Urban Education'
SELECT T2 university_name FROM major AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.major_name = 'Accounting' INTERSECT SELECT T2 university_name FROM major AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.major_name = 'Urban Education'
SELECT T1.University_Name , T2.Rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "WI"
SELECT T1.University_Name , T2.Rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "WI"
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Research_point DESC LIMIT 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point ASC
SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = 'Accounting' AND T1.rank >= 3
SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = 'Accounting' AND T1.rank >= 3
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank <= 5
SELECT T1.Enrollment FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank <= 5
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university GROUP BY State HAVING COUNT(*) > 2 AND AVG(Enrollment) < 3000
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.Movie
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT Rating FROM Movies)
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = "Odeon"
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT T1.Title , T2.Name FROM MovieTheaters AS T2 JOIN Movies AS T1 ON T1.Code = T2.Movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT name) FROM movietheaters
SELECT count(DISTINCT movie) FROM MovieTheaters
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM movietheaters
SELECT Rating FROM Movies WHERE Title LIKE "%Citizen%"
SELECT rating FROM Movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM MovieTheaters AS T1 JOIN MovieTheaters AS T2 ON T1.movie = T2.movie JOIN Movies AS T3 ON T3.code = T1.movie WHERE T3.rating = 'G' OR T3.rating = 'PG'
SELECT DISTINCT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'PG' OR T1.rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.name = 'Imperial'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT DISTINCT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.name != 'Odeon'
SELECT DISTINCT title FROM movies EXCEPT SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , rating FROM movies GROUP BY rating
SELECT count(*) , rating FROM movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM movies WHERE rating != "null"
SELECT DISTINCT name FROM MovieTheaters WHERE code IN (SELECT code FROM MovieTheaters INTERSECT SELECT code FROM MovieTheaters)
SELECT DISTINCT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT name FROM movietheaters EXCEPT SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT name FROM movietheaters WHERE code NOT IN (SELECT theater FROM movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT title FROM movies
SELECT title FROM movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM movies WHERE rating = ' unrated '
SELECT DISTINCT * FROM movies WHERE rating = 'Unrated'
SELECT title FROM movies EXCEPT SELECT T2.title FROM MovieTheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code
SELECT DISTINCT title FROM movies EXCEPT SELECT DISTINCT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code
SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM package WHERE sender = "Client: Leo Wong"
SELECT sum(weight) FROM package WHERE sender = "Leo Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary , position FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary , Position FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM Employee WHERE Position = 'intern'
SELECT avg(salary) FROM Employee WHERE position = 'intern'
SELECT LEVEL FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T2.Position = "Physician"
SELECT T2.Level FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T1.Position = "Physician"
SELECT packageNumber FROM package WHERE sender = (SELECT accountNumber FROM client WHERE name = "Leo Wong")
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender WHERE T1.Name = "Leo Wong"
SELECT T1.packageNumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentID JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT T1.packageNumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentID JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT T1.contents FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong" UNION SELECT DISTINCT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT count(*) FROM Package WHERE sender = 'Ogden Wernstrom' AND Recipient = 'Leo Wong'
SELECT count(*) FROM Package WHERE sender = 'Ogden Wernstrom' AND Recipient = 'Leo Wong'
SELECT contents FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = "John Zoidfarb")
SELECT T1.contents FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment WHERE T3.sender = "John Zoidfarb"
SELECT PackageNumber , weight FROM Package WHERE Sender IN ( SELECT AccountNumber FROM Client WHERE Name LIKE '%John%' ) ORDER BY weight DESC LIMIT 1
SELECT packagenumber , weight FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%john%john%' ORDER BY weight DESC LIMIT 1
SELECT PackageNumber , Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT PackageNumber , weight FROM Package ORDER BY weight ASC LIMIT 3
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1
SELECT T1.Recipient , count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber GROUP BY T1.Recipient ORDER BY count(*) ASC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT coordinates FROM planet WHERE name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name
SELECT T1.shipmentid FROM shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip J. Fry"
SELECT ShipmentID FROM Shipment WHERE Manager = (SELECT EmployeeID FROM Employee WHERE Name = "Phillip J Fry")
SELECT Date FROM Shipment
SELECT Date FROM SHIPMENT
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = 'Mars')
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = 'Mars')
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = 'Mars') AND manager = (SELECT employeeid FROM employee WHERE name = 'Turanga Leela')
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.manager = T3.employeeid WHERE T2.name = 'Mars' AND T3.name = 'Turanga Leela'
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = 'Mars') OR manager = (SELECT EmployeeID FROM Employee WHERE Name = 'Turanga Leela')
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = 'Mars') AND manager = (SELECT employeeid FROM employee WHERE name = 'Turanga Leela')
SELECT T1.Name , COUNT(*) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.PlanetID
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T2.Manager
SELECT count(*) , T1.Name FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T1.Name
SELECT sum(t1.weight) FROM package AS t1 JOIN shipment AS t2 ON t1.shipment = t2.shipmentid WHERE t2.planet = 2
SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.name = 'Mars'
SELECT sum(t1.weight) , t2.name FROM package AS t1 JOIN planet AS t2 ON t1.shipment = shipment JOIN planet AS t2 ON t2.planetid = shipment JOIN planet AS t2 ON t2.planetid = shipment
SELECT T1.Name , sum(T3.Weight) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet JOIN Package AS T3 ON T2.ShipmentID = T3.Shipment GROUP BY T1.PlanetID
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN package AS T3 ON T1.shipmentid = T3.shipment WHERE T3.weight > 30 GROUP BY T1.planet HAVING sum(T3.weight) > 30
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet JOIN Package AS T3 ON T2.ShipmentID = T3.Shipment GROUP BY T2.Planet HAVING SUM(T3.Weight) > 30
SELECT T1.packageNumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid JOIN employee AS T4 ON T2.manager = T4.employeeid WHERE T3.name = 'Omicron Persei 8' AND T4.name = 'Zapp Brannigan'
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Employee AS T3 ON T2.Manager = T3.EmployeeID JOIN Planet AS T4 ON T2.Planet = T4.PlanetID WHERE T3.Name = "Zapp Brannigan" AND T4.Name = "Omicron Persei 8"
SELECT T1.packageNumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentID JOIN planet AS T3 ON T2.planet = T3.planetID WHERE T3.name = 'Omicron Persei 8' OR T2.Recipient = 'Zapp Brannigan'
SELECT count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Omicron Persei 8" UNION SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.manager = (SELECT EmployeeID FROM Employee WHERE Name = "Zapp Brannigan")
SELECT packagenumber , weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Mars'
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Mars'
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN Planet AS T3 ON T3.PlanetID = T2.Planet WHERE T3.Name = "Omega III"
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN Planet AS T3 ON T3.PlanetID = T2.Planet WHERE T3.Name = "Omega III"
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING count(*) = 1
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING count(*) = 1
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN ( SELECT EmployeeID FROM Has_Clearance WHERE Planet = 'Mars' )
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employeeid FROM Has_clearance WHERE planet = 'Mars' )
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title , developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT Platform_name , Market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT T3.Player_name , T3.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T1.Title = "Super Mario World"
SELECT T3.Player_name , T3.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_id = T2.Game_id JOIN player AS T3 ON T2.Player_id = T3.Player_id WHERE T1.Title = "Super Mario World"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT avg(t1.Units_sold_Millions) FROM game AS t1 JOIN game_player AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t2.player_id = t3.player_id WHERE t3.position = "Guard"
SELECT avg(t1.Units_sold_Millions) FROM game AS t1 JOIN game_player AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t2.player_id = t3.player_id WHERE t3.position = "Guard"
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = 'Asia' OR T2.market_district = 'USA'
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id WHERE T2.market_district = 'Asia' OR T2.market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT T3.title FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T2.college = 'Oklahoma' INTERSECT SELECT T3.title FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T2.college = 'Auburn'
SELECT T2.title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game EXCEPT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T3.player_id = T2.player_id WHERE T3.position = 'Guard'
SELECT title FROM game EXCEPT SELECT t1.title FROM game AS t1 JOIN game_player AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t2.player_id = t3.player_id WHERE t3.position = 'Guard'
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) , Name FROM press GROUP BY Name
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY Sale_amount DESC LIMIT 5
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING COUNT(*) > 1
SELECT T2.title , T1.name , T3.name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T2.Press_ID = T3.Press_ID ORDER BY T2.sale_amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.Name , sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Press_ID
SELECT T2.Name , sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name
SELECT T2.Name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.press_id NOT IN (SELECT T3.press_id FROM press AS T3 WHERE T3.name = "Accor")
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT count(*) FROM authors
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM Authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM documents WHERE document_id = 4;
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS t1 JOIN documents AS t2 ON t1.author_name = t2.author_name WHERE t1.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianca Cummings"
SELECT author_name , other_details FROM authors AS t1 JOIN documents AS t2 ON t1.author_name = t2.author_name WHERE t2.document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT author_name FROM documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM Documents GROUP BY author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT next_process_id , process_name , process_description FROM Business_processes WHERE process_id = 9
SELECT next_process_id FROM Business_processes WHERE process_id = 9;
SELECT count(*) FROM process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct";
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100;
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(DISTINCT document_id) FROM documents_processes
SELECT DISTINCT process_id FROM Documents_Processes
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM Business_processes EXCEPT SELECT process_id FROM Documents_processes
SELECT T2.process_outcome_description , T3.process_status_description FROM Documents_processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code JOIN Process_status AS T3 ON T1.process_status_code = T3.process_status_code WHERE T1.document_id = 0
SELECT T2.process_name FROM documents AS T1 JOIN business_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Travel to Brazil"
SELECT T1.process_id , count(*) FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.document_id = T2.document_id GROUP BY T1.process_id
SELECT count(*) FROM Staff_in_Processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id , count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM clients
SELECT count(*) FROM clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_id , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING COUNT(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING COUNT(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = 'Bad'
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , COUNT(*) FROM Invoices GROUP BY client_id
SELECT client_id , count(*) FROM invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(invoice_id) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(*) >= 2
SELECT invoice_status , COUNT(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status , COUNT(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details , T2.agency_id , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details , T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT DISTINCT meeting_type , other_details FROM meetings
SELECT meeting_type , other_details FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT DISTINCT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T2.payment_id , T2.payment_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T2.payment_id , T2.payment_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN(SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN(SELECT invoice_id FROM Payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT agency_id , COUNT(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id
SELECT client_id , count(*) FROM meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_meetings)
SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 UNION SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN invoices AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN staff AS T3 ON T1.client_id = T3.client_id
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN staff_in_meetings AS T3 ON T1.meeting_id = T3.meeting_id
