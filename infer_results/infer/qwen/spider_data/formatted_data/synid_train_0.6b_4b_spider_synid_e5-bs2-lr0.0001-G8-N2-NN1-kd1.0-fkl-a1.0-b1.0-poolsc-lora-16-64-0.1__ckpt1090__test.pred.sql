SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000 GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name , T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name , T1.Club_ID FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING COUNT(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING COUNT(*) > 2
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID ORDER BY AVG(Earnings) DESC
SELECT DISTINCT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT DISTINCT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSEct SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 2 AND sum(T3.product_id) >= 3
SELECT T1.order_id , T2.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , order_status_code , order_id FROM Order_items GROUP BY order_id
SELECT date_order_placed FROM orders WHERE date_order_placed >= (SELECT min(date_order_placed) FROM orders) OR count(*) > 1
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT * FROM products WHERE product_id NOT IN (SELECT T1.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.product_id HAVING count(*) < 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T2.order_id , T1.date_order_placed FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT sum(T1.order_item_status_code) , sum(T1.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_item_status_code ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT count(*) , gender_code FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T3 ON T1.customer_id = T3.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T2.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.order_id = T2.order_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T3.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 JOIN Orders AS T3 ON T1.order_id = T2.order_id AND T2.order_id = T3.order_id
SELECT T1.product_name , T2.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.order_id = T2.order_id JOIN order_items AS T4 ON T4.order_item_id = T2.order_item_id WHERE T3.shipment_date = T2.shipment_date
SELECT T1.product_name , T2.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.shipment_id JOIN orders AS T3 ON T3.order_id = T2.order_id JOIN products AS T4 ON T3.order_id = T4.product_id
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT order_id , date_order_placed , sum(T1.total_cost) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT order_id , date_order_placed , sum(T1.amount) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(*) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT customer_first_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM orders)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payment_Methods )
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM ORDERS
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = "United States"
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id
SELECT T2.customer_first_name , T1.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM orders JOIN order_items ON orders.order_id = order_items.order_id JOIN products ON products.product_id = order_items.product_id
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT gender_code FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) < 5
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING COUNT(*) >= 2
SELECT date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T2.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.quantity_sold > 3
SELECT T1.product_id , T2.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T2.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING COUNT(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT min(product_price) FROM products)
SELECT name FROM director WHERE director_id IN (SELECT director_id FROM director WHERE age > (SELECT avg(age) FROM director) )
SELECT name FROM director ORDER BY age LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE "%bbc%"
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT Title FROM program ORDER BY Start_Year
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T2.name FROM program AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE T1.title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id GROUP BY T3.director_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age > 60
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT director_id FROM director_admin WHERE name = 'Hank Baskett')
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation , COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3
SELECT city_channel_id , station_name FROM city_channel ORDER BY station_name
SELECT T1.Transmitter , T2.City FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter , T2.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.Erp_kW DESC
SELECT T1.Transmitter , COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T2.Radio_ID
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT T2.Driver_ID , count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) , builder FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) , builder FROM vehicle WHERE builder = 'Zhuzhou'
SELECT T1.vehicle_id FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT build_year , top_speed , power FROM vehicle WHERE build_year = 1996
SELECT build_year , model , builder FROM vehicle
SELECT build_year , model , builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.build_year = 2012
SELECT count(DISTINCT T1.Driver_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = 2012
SELECT count(DISTINCT driver_id) FROM vehicle_driver WHERE vehicle_id IN (SELECT vehicle_id FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.model = 'NASCAR')
SELECT count(DISTINCT driver_id) FROM car_race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.name = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T2.vehicle_id , T1.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.driver_id IN (SELECT driver_id FROM driver WHERE citizenship = 'Ziyang') GROUP BY T1.vehicle_id HAVING count(*) >= 2
SELECT T2.vehicle_id , T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T1.driver_id = T3.driver_id GROUP BY T3.driver_id HAVING count(*) = 2 OR T2.builder = 'ZYIYANG'
SELECT T1.vehicle_id , T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id JOIN driver AS T3 ON T1.driver_id = T3.driver_id WHERE T3.name = "Jeff Gordon" OR count(*) > 2
SELECT T2.vehicle_id , T1.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.driver_id IN (SELECT driver_id FROM driver WHERE name = "Jeff Gordon" ) GROUP BY T1.vehicle_id HAVING count(*) > 2
SELECT count(*) FROM vehicle
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT COUNT(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T1.Name , T1.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Model = "DJ1"
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(DISTINCT driver_id) FROM vehicle_driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams
SELECT count(*) FROM exams
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT Exam_Name , Exam_Date FROM Exams WHERE Subject_Code != "Database"
SELECT exam_date , exam_name FROM Exams WHERE subject_code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN EXAMs AS T2 ON T1.exam_id = T2.exam_id GROUP BY T1.Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN EXAMS AS T2 ON T1.exam_id = T2.exam_id GROUP BY T1.Assessment ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T2.Question_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T2.question_id ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM STUDENTS GROUP BY Gender_MFU
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM STUDENTS WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT DISTINCT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT DISTINCT First_Name FROM Students EXCEPT SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN EXAMS AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.exam_name = "Normal" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN EXAMS AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.exam_name = "Absent"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions_in_Exams AS T2 ON T1.Question_ID = T2.Question_ID JOIN Questions AS T3 ON T2.Question_ID = T3.Question_ID WHERE T3.Type_of_Question_Code = "Normal" INTERSECT SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions_in_Exams AS T2 ON T1.Question_ID = T2.Question_ID JOIN Questions AS T3 ON T2.Question_ID = T3.Question_ID WHERE T3.Type_of_Question_Code = "Absent"
SELECT TYPE_of_Question_CODE FROM Questions GROUP BY TYPE_of_Question_CODE HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM Products
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM Products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = "Monitor"
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT count(*) FROM products
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products AS T1 JOIN products AS T2 ON T1.product_type_code = T2.product_type_code WHERE T1.product_type_code = 'hardware' )
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price LIMIT 1
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
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM Customers
SELECT customer_id , customer_name FROM Customers
SELECT customer_email , customer_phone , customer_address FROM Customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id = "Jeromy"
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id = "Jeromy"
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT t1.customer_id , t1.customer_name , t1.customer_phone , t1.customer_email FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id JOIN Customer_orders AS T3 ON T3.order_id = T1.order_id GROUP BY T3.customer_id
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE product_id IN (SELECT product_id FROM order_items WHERE product_name = "Monitor")
SELECT count(*) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T2.order_date , T1.order_id FROM order_items AS T1 JOIN customers_orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 3 UNION SELECT T2.order_date , T1.order_id FROM order_items AS T1 JOIN customer_orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 6
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT number_of_stories FROM building WHERE completed_year != 1980
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING count(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id GROUP BY T2.region_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT count(*) , T2.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = "Abruzzo"
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT building_id , completed_year FROM building ORDER BY number_of_stories DESC
SELECT channel_details FROM Channels ORDER BY channel_details
SELECT channel_details FROM Channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.service_details FROM Services AS T1 JOIN Customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN Customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T2.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Customer_Details = "Hardy Kutch"
SELECT service_details FROM services GROUP BY service_details HAVING count(*) > 3
SELECT T2.Service_Details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING COUNT(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t3.service_details ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T3.service_details = (SELECT min(T3.service_details) FROM services AS T3 GROUP BY T3.service_details)
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customer_id) , count(DISTINCT customer_details) FROM Customers_and_Services
SELECT count(*) FROM Customers_and_Services
SELECT customer_details FROM Customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" INTERSECT SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Good"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" OR T2.Status_Code = "Good"
SELECT DISTINCT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" AND T2.Status_Code = "bad"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" AND T2.Status_Code = "bad"
SELECT t2.service_details FROM channels AS t1 JOIN customer_interactions AS t2 ON t1.channel_id = t2.channel_id WHERE t1.channel_details = "15 ij"
SELECT T2.Service_Details FROM Channels AS T1 JOIN Customer_Interactions AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T1.Channel_Details = "15 ij"
SELECT T1.customer_details , T1.customer_id , T1.channel_details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.customer_id = T2.customer_id JOIN Channels AS T3 ON T1.channel_id = T3.channel_id WHERE T2.status_code = "Stuck" AND T3.channel_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Customer_Interactions AS T1 JOIN Integration_Platform AS T2 ON T1.customer_interaction_id = T2.customer_interaction_id WHERE T1.status_code = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN integration_platform AS t3 ON t2.customer_interaction_id = t3.customer_interaction_id WHERE t3.integration_platform_details = 'failed'
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Integration_Platform AS T3 ON T2.Customer_Interaction_ID = T3.Customer_Interaction_ID WHERE T3.Integration_Platform_Details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layers GROUP BY Analytical_Layer_Type_Code
SELECT T2.Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer AS T1 JOIN Customers_and_Services AS T2 ON T1.Customers_and_Services_ID = T2.Customers_and_Services_ID GROUP BY T2.Analytical_Layer_Type_Code
SELECT t2.service_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id WHERE t1.status_code = 'unsatisfied'
SELECT T1.Service_Details FROM SERVICES AS T1 JOIN CUSTOMERS_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Status_Code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE model_year = 2013 OR model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE model_year = 2013 OR model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE MODEL_YEAR = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE MODEL_YEAR = 2013
SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT Type_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , COUNT(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , COUNT(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT Type_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY Type_of_powertrain HAVING count(*) >= 2
SELECT Type_of_powertrain , AVG(Annual_fuel_cost) FROM Vehicles GROUP BY Type_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T2.name , sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.model_year FROM renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T1.name , T2.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT teacher_details FROM Teachers WHERE teacher_id IN (SELECT teacher_id FROM Classes WHERE class_details LIKE '%data%' ) EXCEPT SELECT teacher_details FROM Teachers WHERE teacher_id IN (SELECT teacher_id FROM Classes WHERE class_details LIKE '%net%')
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T2.amount_of_loan , T2.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_type_description FROM detentions
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_details
SELECT T2.address_details , T1.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_details
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.behaviour_monitoring_details FROM behaviour_monitoring AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details , count(*) FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Transcript AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3
SELECT T2.bio_data FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM STUDENTS AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , event_date FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code , T1.event_date , T1.student_id , T1.date_of_transcript FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(DISTINCT teacher_id) FROM Classes WHERE student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(DISTINCT T1.teacher_id) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code JOIN Ref_Address_Types AS T3 ON T1.student_id = T3.address_type_code JOIN Students AS T4 ON T1.student_id = T4.student_id JOIN Student_Events AS T5 ON T1.student_id = T5.student_id JOIN Students_Addresses AS T6 ON T5.student_id = T6.student_id JOIN Addresses AS T7 ON T6.address_id = T7.address_id
SELECT detention_type_code , datetime_detention_start , datetime_detention_end FROM DETENTION
SELECT datetime_detention_start , datetime_detention_end FROM DETENTION
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.bio_data FROM STUDENTS AS T1 JOIN student_details AS T2 ON T1.student_details = T2.student_details WHERE T2.student_details LIKE '%Suite%'
SELECT DISTINCT T1.teacher_id , T1.teacher_details , T2.student_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT teacher_id , student_id FROM Classes GROUP BY teacher_id , student_id
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 2
SELECT teacher_id , count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.detention_type_code , T2.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT max(date_of_loan) FROM Student_Loans
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM transcripts AS T1 JOIN student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN TRANSCRIPTS AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_details LIKE '%highest%'
SELECT student_id , amount_of_loan FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T1.bio_data , COUNT(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT count(DISTINCT student_id) FROM detentions
SELECT count(DISTINCT student_id) FROM detentions
SELECT T1.address_type_code , T1.address_type_description FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code , address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.student_id FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.student_loan_id = T2.student_loan_id
SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T2.date_from , T2.date_to FROM Detention AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT max(datetime_detention_start) FROM Detention
SELECT datetime_detention_start FROM DETENTION
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM client
SELECT name , address FROM Client
SELECT title , ISBN , saleprice FROM Book
SELECT title , ISBN , saleprice FROM books
SELECT count(*) FROM books
SELECT count(*) FROM books
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT T2.title , T1.name FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.idauthor
SELECT T1.title , T2.name FROM books AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT idorder , idclient FROM orders
SELECT idorder , idclient FROM orders
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.idauthor GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.idauthor JOIN books AS T3 ON T2.isbn = T3.isbn GROUP BY T1.idauthor
SELECT T1.isbn , count(*) FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idorder
SELECT T1.ISBN , count(*) FROM books_order AS T1 JOIN books AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.isbn , sum(T2.amount) FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T2.idorder
SELECT T2.ISBN , sum(T1.amount) FROM books_order AS T1 JOIN books AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.idorder
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T3.title FROM books_order AS T1 JOIN book AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T3.idorder = T1.idorder GROUP BY T3.idorder ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.idorder ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title , T2.purchaseprice FROM books_order AS T1 JOIN books AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T1.idorder = T3.idorder ORDER BY T1.amount DESC LIMIT 1
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN
SELECT DISTINCT T3.title FROM books_order AS T1 JOIN books AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T1.idorder = T3.idorder
SELECT T1.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient WHERE T2.numcc != "null"
SELECT DISTINCT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idclient
SELECT T1.name , sum(T2.amount) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idorder
SELECT t1.name FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder GROUP BY t1.idclient ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT t1.name FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder JOIN books AS t3 ON t2.isbn = t3.isbn JOIN author AS t4 ON t3.author = t4.author JOIN author_book AS t5 ON t4.idauthor = t5.idauthor JOIN client AS t6 ON t5.isbn = t6.idclient WHERE t1.idclient = t6.idclient ORDER BY t1.idorder DESC LIMIT 1
SELECT title FROM books WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM books WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM books
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchasePrice) , avg(salePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(abs(salePrice - purchasePrice)) FROM books
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM Book WHERE Title = "The Road Not Taken" AND Author = "George Orwell"
SELECT avg(SalePrice) FROM BOOK WHERE Author = (SELECT idAuthor FROM Author WHERE name = 'George Orwell')
SELECT saleprice FROM book WHERE title = "Plato"
SELECT saleprice FROM books WHERE title LIKE '%Plato%'
{"sql": "SELECT T1.title FROM books AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN book AS T3 ON T2.ISBN = T3.ISBN WHERE T2.idAuthor = (SELECT idAuthor FROM author WHERE name = \"George Orwell\") AND T3.saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title = (SELECT title FROM books WHERE author = (SELECT idauthor FROM author WHERE name = \"George Orwell\") AND saleprice = (SELECT max(saleprice) FROM books WHERE title
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.author = T3.idAuthor WHERE T3.name = 'George Orwell' ORDER BY T4.saleprice LIMIT 1
SELECT T2.Title FROM Author AS T1 JOIN Books_order AS T2 ON T1.idAuthor = T2.idAuthor JOIN Book AS T3 ON T3.ISBN = T2.ISBN WHERE T1.name = "Plato" AND T3.purchaseprice < (SELECT avg(SalePrice) FROM Book)
SELECT t1.title FROM book AS t1 JOIN author AS t2 ON t1.idauthor = t2.idauthor WHERE t2.name = "Plato" AND t1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.author = T3.idauthor WHERE T1.title = "Pride and Prejudice"
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.author = T3.idauthor WHERE T1.title = "Pride and Prejudice"
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T1.Name LIKE '%Plato%'
SELECT T2.title FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.idauthor WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN books AS T3 ON T2.ISBN = T3.ISBN WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder JOIN books AS t3 ON t2.isbn = t3.isbn WHERE t3.title = "Pride and Prejudice"
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books_order WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM books_order WHERE title = "The Little Prince")
SELECT idorder FROM orders WHERE idorder IN (SELECT T1.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.ISBN = T3.ISBN WHERE T3.title = "Pride and The Love" INTERSECT SELECT T1.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.ISBN = T3.ISBN WHERE T3.title = "The Little Prince" INTERSECT SELECT T1.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.ISBN = T3.ISBN WHERE T3.title = "Pride and The Love")
SELECT T1.isbn FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder WHERE T2.idclient = (SELECT idclient FROM orders WHERE name = 'Peter Doe') INTERSECT SELECT T1.isbn FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder WHERE T2.idclient = (SELECT idclient FROM orders WHERE name = 'James Smith')
SELECT T1.ISBN FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder WHERE T2.idclient = (SELECT idclient FROM orders WHERE name = 'Peter Doe') INTERSECT SELECT T1.ISBN FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder WHERE T2.idclient = (SELECT idclient FROM orders WHERE name = 'James Smith')
SELECT T1.title FROM books AS T1 JOIN orders AS T2 ON T1.ISBN = T2.ISBN WHERE T2.idclient = 101 EXCEPT SELECT T1.title FROM books AS T1 JOIN orders AS T2 ON T1.ISBN = T2.ISBN WHERE T2.idclient = 102
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = (SELECT idclient FROM orders WHERE name = 'Peter Doe') EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = (SELECT idclient FROM orders WHERE name = 'James Smith')
SELECT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient WHERE T1.dateorder = "Pride and Prejudice"
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN books_order AS t3 ON t2.idorder = t3.idorder JOIN author AS t4 ON t4.ISBN = t3.ISBN WHERE t4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , book_id , count(*) FROM book GROUP BY book_id
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T2.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Rank FROM review ORDER BY Pages ASC LIMIT 1
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating ASC
SELECT T2.Title , T1.Audio FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , card_credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = 'England' OR nationality = 'Australia'
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT customer_id , card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC
SELECT T2.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.Quantity DESC
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT name FROM member WHERE nationality != 'England'
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Club_Name , T2.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.overall_ranking > 100
SELECT T2.Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Year_Join < 2018
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = "Houston"
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.age) FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T2.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_details FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT T2.collection_subset_details FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_subset_name = 'Top collection'
SELECT T2.Document_subset_name FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT DISTINCT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM documents_in_collections
SELECT DISTINCT document_object_id FROM Document_Objects
SELECT T1.parent_document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Marlin'
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Description = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Parent_Document_Object_ID WHERE T1.Owner = 'Marlin'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner = 'Marlin'
SELECT DISTINCT T1.Description FROM Document_Objects AS T1 JOIN COLLECTION_SUBSETS AS T2 ON T1.Document_Object_ID = T2.Related_Collection_ID
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM Document_Objects)
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id IS NULL
SELECT T2.parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.parent_document_object_id GROUP BY T1.parent_document_object_id
SELECT parent_document_object_id , count(*) FROM Document_Objects GROUP BY parent_document_object_id
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT T2.collection_description FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best"
SELECT collection_description FROM Collections WHERE collection_name = 'Best'
SELECT parent_collection_id FROM Collections WHERE collection_name = "Nice"
SELECT DISTINCT parent_collection_id FROM Collections WHERE collection_name = "Nice"
SELECT collection_name FROM collections EXCEPT SELECT T1.collection_name FROM collections AS T1 JOIN collections AS T2 ON T1.parent_collection_id = T2.collection_id
SELECT collection_name FROM Collections EXCEPT SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.parent_collection_id = T2.collection_id
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_Objects GROUP BY document_object_id HAVING count(*) > 1)
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM COLLECTION_SUBSET_MEMBERS AS T1 JOIN COLLECTIONS AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Best"
SELECT T2.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID WHERE T1.Owner = 'Ransom'
SELECT T1.Related_Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID WHERE T2.Owner = "Ransom"
SELECT collection_subset_id , count(*) , collection_subset_name FROM Collection_Subsets GROUP BY collection_subset_id
SELECT collection_subset_id , collection_subset_name , count(*) FROM collection_subsets GROUP BY collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT T1.Document_Object_ID , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Related_Document_Object_ID = T2.Document_Object_ID GROUP BY T1.Related_Document_Object_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.Related_document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_subset_id , count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Related_Document_Object_ID = T2.Document_Object_ID WHERE T1.Related_document_object_id IN (SELECT T3.Related_document_object_id FROM Document_Objects AS T3 JOIN Document_Objects AS T4 ON T3.Related_document_object_id = T4.Document_Object_ID WHERE T4.Related_document_object_id IN (SELECT T5.Related_document_object_id FROM Document_Objects AS T5 JOIN Document_Objects AS T6 ON T5.Related_document_object_id = T6.Document_Object_ID GROUP BY T5.Related_document_object_id HAVING count(*) >= 2 AND count(*) <= 4)
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID WHERE T2.Owner = "Braeden"
SELECT DISTINCT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Document_Object_ID = T2.Related_Document_Object_ID WHERE T1.Owner = "Braeden"
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden'
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.owner = 'Braeden'
SELECT T1.document_subset_id , T2.document_subset_name , COUNT(*) FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Related_Document_Object_ID = T2.Document_Subset_ID GROUP BY T1.Related_Document_Object_ID
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM document_subsets AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.parent_document_object_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T2.document_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id
SELECT T2.Document_Object_ID , T1.Document_Subset_ID , T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Objects AS T2 ON T1.Document_Subset_ID = T2.Related_Document_Object_ID
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T1.collection_id = T3.collection_id JOIN document_subsets AS T4 ON T2.document_object_id = T4.document_subset_id JOIN document_objects AS T5 ON T2.document_object_id = T5.document_object_id WHERE T5.owner = 'Ransom'
SELECT t1.collection_name FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.owner = 'Ransom'
SELECT T2.collection_id , count(*) , T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT count(*) , T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT T2.document_object_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(DOCT_OBJECT_ID) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT T2.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.collection_name , T2.collection_id , COUNT(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T2.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_members.Related_document_object_id JOIN Collections AS T3 ON T3.collection_id = T2.collection_subset_members.Related_collection_id WHERE T2.document_subset_details = "Best" AND T3.collection_name = "Best" AND T1.collection_id IN (SELECT T2.collection_id FROM Collection_subsets AS T2 JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T2.document_subset_details = "Best" AND T3.collection_name = "Best")
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T1.document_subset_id = (SELECT T1.document_subset_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' AND T3.collection_name = 'Best' AND T1.document_subset_name = 'Best for 2000')
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_members.Related_document_object_id JOIN Collections AS T3 ON T3.collection_id = T2.collection_subset_members.Related_collection_id WHERE T3.collection_name = "Best" EXCEPT SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_members.Related_document_object_id JOIN Collections AS T3 ON T3.collection_id = T2.collection_subset_members.Related_collection_id WHERE T3.collection_name = "Best"
SELECT DISTINCT document_object_id FROM Document_Objects WHERE document_object_id IN (SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.parent_document_object_id = T2.document_subset_id WHERE T2.collection_subset_name = 'Best' EXCEPT SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.parent_document_object_id = T2.document_subset_id WHERE T2.collection_subset_name = 'Best for 2000')
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.parent_document_object_id = T2.document_object_id JOIN Document_Subsets AS T3 ON T1.related_document_object_id = T3.document_subset_id WHERE T3.document_subset_name = "Best" AND T3.document_subset_details = "2000" UNION SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Related_document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T3.collection_subset_name = 'Best' UNION SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Related_document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T3.collection_subset_id = T2.collection_subset_id WHERE T3.collection_subset_name = 'Best for 2000'
SELECT DISTINCT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(DISTINCT T2.collection_id) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Best'
SELECT T2.collection_subset_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = "Best"
SELECT T2.collection_subset_id FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_subset_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T2.voice_sound_quality , T2.rhythm_tempo , T2.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , original_artist , language FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT participant_id , name , popularity FROM participants ORDER BY sum(performances_score)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.english_translation = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT T1.id FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.name = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performances AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performances AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM City
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM City WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE country = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = "Canada"
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT T2.fname , T2.lname FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T1.country = "China"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT Fname , major FROM student WHERE city_code = 'Baltimore'
SELECT count(*) , city_name FROM city GROUP BY city_name
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code
SELECT count(*) , city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY city_name
SELECT T2.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1
SELECT T2.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code ORDER BY count(*) LIMIT 1
SELECT T2.city_name FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T2.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code HAVING count(*) >= 3
SELECT count(*) FROM city WHERE state = (SELECT T1.city_name FROM city AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING sum(T1.city_name) > 5)
SELECT count(*) , T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T2.state HAVING count(*) > 5
SELECT StuID FROM Student WHERE city_code != 'USA'
SELECT StuID FROM student WHERE city_code != 'USA'
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE city_code = 'USA'
SELECT distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t1.city_name = "BAL" INTERSECT SELECT distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t1.city_name = "CHI"
SELECT distance FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t1.city_name = 'BAL' AND t3.city_name = 'CHI'
SELECT T1.distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T3.city_name = "Boston" AND T2.city2_code = "Newark"
SELECT distance FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.city_name = "Boston" AND T3.city_name = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T2.city_code FROM city AS T1 JOIN city_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T2.city1_code ORDER BY distance DESC LIMIT 2
SELECT city_code FROM city ORDER BY distance DESC LIMIT 1
SELECT city_code FROM city WHERE city_name = 'New York City' INTERSECT SELECT city_code FROM city WHERE city_name = 'Los Angeles'
SELECT city_code FROM city WHERE city_name = 'City' AND distance > (SELECT avg(distance) FROM city)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT DISTINCT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code - 1 WHERE T1.city_name = "BAL"
SELECT sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code - T2.city2_code WHERE T1.city_name = 'BAL'
SELECT avg(DISTANCE) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T3.city_name = 'Boston'
SELECT avg(DISTANCE) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.city_name = "Boston"
SELECT city_name FROM city ORDER BY distance ASC LIMIT 1
SELECT city_name FROM city ORDER BY distance ASC LIMIT 1
SELECT city_name FROM city ORDER BY distance DESC LIMIT 1
SELECT T2.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = 'Boston' ORDER BY T2.distance DESC LIMIT 1
SELECT city_code , sum(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T2.city_code , sum(T1.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T2.city_name , avg(T1.distance) FROM city AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code
SELECT T2.city_name , avg(T1.distance) FROM city AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code
SELECT T1.distance FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code JOIN direct_distance AS T3 ON T1.city_code = T3.city1_code WHERE T2.fname = 'Linda' AND T2.lname = 'Smith' INTERSECT SELECT T1.distance FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code JOIN direct_distance AS T3 ON T1.city_code = T3.city1_code WHERE T2.fname = 'Tracy' AND T2.lname = 'Kim'
SELECT T2.distance FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Tracy" INTERSECT SELECT T2.distance FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "Linda Smith"
SELECT t1.fname , t1.lname FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t3.city_code = t2.city1_code WHERE t3.city_name = "Los Angeles" AND t2.distance = (SELECT max(distance) FROM direct_distance WHERE city2_code = t3.city_code)
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.Fname = "Linda"
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = 'Linda'
SELECT * FROM sailors WHERE age > 30
SELECT name FROM sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT DISTINCT T3.bid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "102"
SELECT DISTINCT bid FROM Reserves
SELECT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailers WHERE age != (SELECT min(age) FROM sailers)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > ( SELECT min( age ) FROM sailors WHERE rating > 7 )
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 2
SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T2.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.sid FROM sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "103"
SELECT t3.name FROM boats AS t1 JOIN reserves AS t2 ON t1.bid = t2.bid JOIN sailors AS t3 ON t2.sid = t3.sid WHERE t1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T1.rating > 2
SELECT T2.name , T2.id FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.id WHERE T3.rating >= 3
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors WHERE age = (SELECT max(age) FROM sailors)
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(T1.rating) , max(T1.age) FROM sailors AS T1 GROUP BY T1.age
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 50 GROUP BY T2.bid
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T1.bid
SELECT count(*) , T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T2.bid
SELECT T2.bid , T1.sid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age > 1 GROUP BY T3.sid
SELECT T1.rating , avg(T2.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "Red" GROUP BY T1.rating
SELECT T1.rating , avg(T2.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = "red"
SELECT count(*) FROM boats WHERE color = "red"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM Reserves WHERE color = 'Red')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM reserves WHERE color = 'red')
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM sailors
SELECT t2.name FROM Reserves AS t1 JOIN Boats AS t2 ON t1.bid = t2.bid JOIN Sailors AS t3 ON t1.sid = t3.sid WHERE t2.name = "Melon"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T3.sid = T1.sid WHERE T2.name = "Melon"
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone WHERE Earpads != 'Not in' AND Earpads != 'More than 2'
SELECT CLASS , count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE earpads > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT count(Earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , CLASS FROM headphone GROUP BY CLASS
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != "plastic"
SELECT Earpads FROM headphone WHERE Construction != 'Plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T1.Name , count(*) FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T1.Quantity FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT T3.Name FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T1.Headphone_ID = T3.Headphone_ID WHERE T3.Class != "Headphone"
SELECT Model FROM headphone EXCEPT SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT Neighborhood FROM store EXCEPT SELECT T1.Name FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID
SELECT Neighborhood FROM store EXCEPT SELECT T1.N Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T1.Headphone_ID = T3.Headphone_ID WHERE T2.Quantity = 0
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = 'NAACL'
SELECT count(*) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t1.name = "Columbia University"
SELECT count(*) FROM paper WHERE venue = "Columbia University" AND YEAR = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Harvard University"
SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Harvard University'
SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Mckeown"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Mckeown"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id JOIN Author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" JOIN Author AS T4 ON T1.author_id = T4.author_id WHERE T4.name = "Rambow" AND T4.name = "Owen"
SELECT T2.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id NOT IN (SELECT author_id FROM Author_list WHERE name = 'Rambow')
SELECT T2.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = (SELECT author_id FROM Author WHERE name = "Mckeown") EXCEPT SELECT T2.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id = (SELECT author_id FROM Author WHERE name = "Rambow")
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT T2.author_id FROM author AS T2 WHERE T2.name = "Mckeown" OR T2.name = "Rambow", "Owen")
SELECT T2.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM Author WHERE name = "Mckeown") UNION SELECT T2.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM Author WHERE name = "Rambow")
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) DESC
SELECT name FROM affiliation ORDER BY count(*)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT name FROM author WHERE count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title LIKE "A00-1002%"
SELECT count(*) FROM CITATION AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 100102
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.title = 'D12-1027'
SELECT count(*) FROM CITATION AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT T2.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.paper_id , count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T2.cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper WHERE paper_id IN (SELECT T2.cited_paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T2.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.title = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id WHERE T1.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T3.author_id = T2.author_id JOIN affiliation AS T4 ON T4.affiliation_id = T3.affiliation_id WHERE T4.name = "Mckeown" AND T4.name = "Kathleen"
SELECT count(*) FROM affiliation AS t1 JOIN author AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN author_list AS t3 ON t2.author_id = t3.author_id JOIN paper AS t4 ON t3.paper_id = t4.paper_id WHERE t4.title = "Mckeown , Kathleen"
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.venue , T2.year FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Mckeown" AND T1.email = "Kathleen"
SELECT venue , YEAR FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = "Mckeown , Kathleen")
SELECT venue , YEAR FROM paper WHERE title LIKE '%Columbia University%'
SELECT venue , YEAR FROM paper WHERE title LIKE '%Columbia University%'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T2.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.affiliation_id , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND name = 'Columbia University'
SELECT count(*) FROM paper WHERE YEAR >= 2009 OR YEAR = 2008
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = 'Stanford University')
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = 'Stanford University')
SELECT title FROM paper WHERE paper_id IN (SELECT T1.paper_id FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1)
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" OR T2.name = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.title = 'Mckeown , Kathleen'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title LIKE '%Mckeown%' AND T3.year = (SELECT max(Y2.year) FROM author AS Y1 JOIN author_list AS Y2 ON Y1.author_id = Y2.author_id JOIN paper AS Y3 ON Y2.paper_id = Y3.paper_id WHERE Y3.title LIKE '%Mckeown%')
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper EXCEPT SELECT T1.paper_id , T1.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T1.paper_id
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , YEAR , venue FROM paper GROUP BY YEAR , venue
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT sum(t2.title) , t1.affiliation_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.affiliation_id
SELECT count(*) , T1.affiliation_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id
SELECT T2.title FROM CITATION AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT count(DISTINCT author_id) FROM author_list WHERE author_id NOT IN (SELECT T1.author_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM author_list WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY cited_paper_id HAVING sum(citations) > 50)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.title = "NAACL" INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.title = "ACL"
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title LIKE '%NAACL%' AND T2.year = 2009 INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.title LIKE '%ACL%' AND T2.year = 2009
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE affiliation_id NOT IN (SELECT affiliation_id FROM paper WHERE venue = 'ACL') )
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_Name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT count(*) , conference_name FROM conference GROUP BY conference_name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT DISTINCT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT T2.institution_id , count(*) FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution EXCEPT SELECT T1.Institution_ID FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT institution_name FROM institution EXCEPT SELECT T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age) , min(age) FROM staff
SELECT t3.conference_name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID JOIN staff AS t3 ON t2.staff_id = t3.staff_id WHERE t3.nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'speaker' INTERSECT SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff INTERSECT SELECT name FROM staff
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id = 101 AND T2.conference_id = 102
SELECT t3.name FROM conference_participation AS t1 JOIN conference AS t2 ON t1.Conference_ID = t2.Conference_ID JOIN staff AS t3 ON t1.staff_ID = t3.staff_ID WHERE t2.year = 2003 OR t2.year = 2004
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T1.staff_ID = T3.staff_ID WHERE T2.year >= 2003 OR T2.year <= 2004
SELECT T1.Conference_Name , T2.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name , T2.Year
SELECT T1.Conference_Name , T2.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT t1.Conference_Name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID GROUP BY t2.Conference_ID ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name , location FROM institution WHERE institution_id NOT IN (SELECT T1.staff_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2004)
SELECT institution_name , location FROM institution WHERE institution_id NOT IN (SELECT T1.staff_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004)
SELECT pilot_name FROM PilotSkills ORDER BY age LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age ASC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM pilotSkills WHERE age < 30
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = "Piper Cub" AND T1.age < 35
SELECT pilot_name FROM PilotSkills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT T2.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14'
SELECT location FROM hangar WHERE plane_name = 'F-14'
SELECT count(DISTINCT location) FROM Hangar
SELECT count(DISTINCT location) FROM Hangar
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Jones" AND age = 32
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = "B-52" AND age < 35
SELECT count(*) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age < 35 AND T2.plane_name = 'B-52'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' GROUP BY pilot_name ORDER BY age LIMIT 1
SELECT plane_name FROM Hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Hangar WHERE LOCATION = 'Chicago'
SELECT count(*) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM PilotSkills WHERE pilot_name = "Smith" AND age = 41
SELECT count(DISTINCT plane_name) FROM Hangar
SELECT count(DISTINCT plane_name) FROM Hangar
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14' AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'F-14' AND age < 30
SELECT T1.pilot_name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter' AND T1.age > 35 OR T1.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT DISTINCT T1.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT DISTINCT T1.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' INTERSECT SELECT DISTINCT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilotskills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = 'Boston'
SELECT t1.pilot_name FROM Hangar AS t1 JOIN PilotSkills AS t2 ON t1.plane_name = t2.plane_name WHERE LOCATION = 'Austin' INTERSECT SELECT t1.pilot_name FROM Hangar AS t1 JOIN PilotSkills AS t2 ON t1.plane_name = t2.plane_name WHERE LOCATION = 'Boston'
SELECT DISTINCT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' OR T2.location = 'F-14 Fighter'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , plane_name FROM Hangar GROUP BY plane_name
SELECT count(*) , plane_name FROM Hangar GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT T2.location , count(*) , avg(T1.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT T1.location , count(*) , avg(T1.age) FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35)
SELECT plane_name , count(*) FROM PilotSkills WHERE age < 35 GROUP BY plane_name
SELECT T2.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T2.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T2.pilot_name , T2.age FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = "Austin"
SELECT T1.pilot_name , T1.age FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = "Austin"
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14')
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills WHERE plane_name = 'Piper Cub'
SELECT count(*) FROM pilotskills WHERE plane_name = 'Piper Cub' AND age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district WHERE Area_km > (SELECT min(Area_km) FROM district ORDER BY Area_km LIMIT 3)
SELECT district_id , name , government_website FROM district ORDER BY population
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speak_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Start_year < 2004
SELECT T2.District_ID , T1.Name , count(*) FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 1 INTERSECT SELECT T2.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 2
SELECT T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman EXCEPT SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID
SELECT T1.population , avg(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 0
SELECT title FROM Sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM Sculptures WHERE LOCATION = "226"
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM ARTISTS WHERE birthYear > 1850
SELECT fname , lname FROM ARTISPS WHERE birthyear > 1850
SELECT title , YEAR FROM Sculptures WHERE LOCATION != "226"
SELECT title , YEAR FROM sculptures WHERE LOCATION != "226"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT fname , lname FROM Artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT birthyear FROM artists ORDER BY birthyear ASC LIMIT 1
SELECT birthyear FROM artists ORDER BY birthyear ASC LIMIT 1
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = "240"
SELECT sum(t1.title) FROM paintings AS t1 JOIN artists AS t2 ON t1.painterid = t2.artistid WHERE t2.artistid = 240
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.deathyear = (SELECT max(deathyear) FROM Paintings)
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.artistID = T2.artistID WHERE T2.deathYear - birthYear >= (SELECT deathYear - birthYear FROM Paintings ORDER BY deathYear DESC LIMIT 1)
SELECT T2.title , T2.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T2.title , T2.year FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.birthYear < 1850
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE birthyear < 1850
SELECT T2.location , T2.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT LOCATION , mediumOn FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE fname = "Pablo"
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.lname , T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid
SELECT T2.fname , T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" INTERSECT SELECT T2.fname , T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "lithographic"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT t1.birthyear FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t2.year = 1884 AND t2.medium = "canvas"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "medium" AND T1.location = 241
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "Oil" AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT LOCATION , count(*) FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT T2.title FROM artworks AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year > 1910
SELECT painterID FROM paintings WHERE medium = "medium oil" AND location = "240"
SELECT painterID FROM paintings WHERE medium = "Oil" AND location = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE galleryID = 240)
SELECT painterID FROM paintings ORDER BY birthYear DESC LIMIT 1
SELECT paintingID FROM paintings ORDER BY birthYear LIMIT 1
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid JOIN sculptures AS T3 ON T2.painterid = T3.sculptorid WHERE T3.title LIKE '%female%'
SELECT T2.fname , T2.lname FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorid = T2.artistid WHERE T1.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT T1.title , T2.title FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title , T2.title FROM sculptures AS T1 JOIN paintings AS T2 ON T1.sculptorID = T2.painterID WHERE T2.year BETWEEN 1900 AND 1950
SELECT T2.title , T1.title FROM sculptures AS T1 JOIN paintings AS T2 ON T1.sculptorid = T2.painterid WHERE T1.sculptorid = 222
SELECT T2.title FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.artistID = 222
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT t1.fname FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid JOIN sculptures AS t3 ON t3.sculptorid = t1.artistid GROUP BY t1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE height_mm < 600 OR width_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 INTERSECT SELECT paintingid FROM paintings WHERE height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT DISTINCT LOCATION FROM paintings WHERE medium = 'on panels' INTERSECT SELECT DISTINCT LOCATION FROM sculptures WHERE medium = 'on canvas'
SELECT location FROM paintings WHERE YEAR < 1885 INTERSECT SELECT location FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT AVG(height_mm) , AVG(width_mm) FROM Paintings WHERE medium = "Oil" AND location = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "Oil" AND location = "241"
SELECT max(height_mm) , max(paintingID) FROM paintings WHERE YEAR < 1900
SELECT height_mm , paintingID FROM paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , year FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterID , fname , lname FROM paintings GROUP BY painterID ORDER BY fname
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY fname
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.artistid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) <= 3
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT t1.deathyear FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.deathyear ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE location = "240" ORDER BY width_mm DESC LIMIT 1
SELECT height_mm , paintingID FROM paintings WHERE location = "240" ORDER BY width_mm DESC LIMIT 1
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE artistID = 240)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(year) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T2.fname , T2.lname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID GROUP BY T1.painterID ORDER BY count(*) DESC LIMIT 1
SELECT paintingID , LOCATION , title FROM Paintings WHERE medium = 'Oil' ORDER BY year
SELECT paintingid , LOCATION , title FROM paintings ORDER BY year
SELECT title , YEAR , LOCATION FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.year , T1.location , T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.title ASC
SELECT T1.lname , T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.lname , T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T2.fname , T2.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid JOIN Sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T1.fname = "artist" AND T1.lname = "not sculpted"
SELECT location FROM paintings WHERE YEAR < 1885 AND medium != "medium on canvas"
SELECT location FROM paintings WHERE title != 'canvas' AND year < 1885
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT DISTINCT winning_team , winning_driver FROM race ORDER BY winning_team
{"sql": "SELECT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT DISTINCT
SELECT DISTINCT Winning_driver FROM race WHERE pole_position != "Junior Strous"
SELECT DISTINCT Winning_driver FROM race WHERE Winning_driver != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(age) , min(age) FROM driver
SELECT max(age) , min(age) FROM driver
SELECT COUNT(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT DISTINCT driver_name FROM driver ORDER BY driver_name DESC
SELECT DISTINCT driver_name FROM driver ORDER BY driver_name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Driver_Name , T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT race_name FROM race WHERE driver_id = (SELECT driver_id FROM driver WHERE age >= 26)
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver EXCEPT SELECT Driver_Name FROM driver WHERE Constructor = 'Bugatti'
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT DISTINCT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT DISTINCT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT DISTINCT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT DISTINCT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) >= 2
SELECT DISTINCT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT DISTINCT t1.driver_name FROM driver AS t1 JOIN race AS t2 ON t1.driver_id = t2.driver_id WHERE t2.pole_position = "James Hinchcliffe" INTERSECT SELECT DISTINCT t1.driver_name FROM driver AS t1 JOIN race AS t2 ON t1.driver_id = t2.driver_id WHERE t2.pole_position = "Carl Skerlong"
SELECT DISTINCT T2.Driver_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position = (SELECT Pole_Position FROM race WHERE Driver_Name = 'James Hinchcliffe' INTERSECT SELECT Pole_Position FROM race WHERE Driver_Name = 'Carl Skerlong')
SELECT DISTINCT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
SELECT DISTINCT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
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
SELECT count(DISTINCT name) FROM languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T2 ON T1.language_id = T2.id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.id GROUP BY T1.id
SELECT T2.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id
SELECT t3.name , t1.name FROM official_languages AS t1 JOIN countries AS t2 ON t1.country_id = t2.id JOIN languages AS t3 ON t1.language_id = t3.id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE country_id IN (SELECT country_id FROM official_languages WHERE language_id = "english")
SELECT avg(overall_score) FROM countries WHERE country_id IN (SELECT country_id FROM official_languages WHERE language_id IN (SELECT name FROM languages WHERE name = 'English') )
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 3
SELECT T2.name , avg(T1.overall_score) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT DISTINCT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT DISTINCT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM addresses
SELECT country , town_city FROM addresses
SELECT T1.count(*) , T2.count(*) FROM properties AS T1 JOIN addresses AS T2 ON T1.property_address_id = T2.address_id
SELECT T1.count(*) , T1.count(*) , T1.count(*) FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
{"sql": "SELECT T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_id = (SELECT T1.feature_id FROM Features AS T1 JOIN Property_Features AS T
SELECT T2.feature_description FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id JOIN features AS T3 ON T2.feature_id = T3.feature_id WHERE T1.property_type_code = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT sum(room_count) FROM properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR parking_lots = 1
SELECT T1.age_category_code , T1.age_category_description FROM Ref_age_categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%mother%'
SELECT T1.age_category_description FROM Ref_user_categories AS T1 JOIN users AS T2 ON T1.user_category_code = T2.user_category_code WHERE T2.first_name LIKE '%Mother%'
SELECT t1.first_name FROM users AS t1 JOIN properties AS t2 ON t1.user_id = t2.owner_user_id GROUP BY t1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties WHERE property_type_code = "gardens"
SELECT avg(room_count) FROM properties WHERE property_type_code = 'Garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN property_features AS T3 ON T2.property_id = T3.property_id JOIN rooms AS T4 ON T4.room_type_code = T3.feature_id WHERE T4.room_type_code = "swimming pool"
SELECT town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN rooms AS T3 ON T2.property_id = T3.property_id WHERE T3.room_type_code = "swimming pool"
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT T1.user_id , T2.search_string FROM User_Searches AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY search_seq HAVING count(search_seq) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_seq DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , datestamp FROM user_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T3.user_id FROM Users AS T3 JOIN User_Property_History AS T4 ON T3.user_id = T4.user_id GROUP BY T3.user_id HAVING count(*) <= 2)
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Users AS T3 ON T2.owner_user_id = T3.user_id WHERE T2.owner_user_id NOT IN (SELECT T4.user_id FROM User_Property_History AS T4 GROUP BY T4.user_id HAVING count(T4.user_id) <= 2)
SELECT T1.user_category_code , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code = T2.user_category_code JOIN User_Property_History AS T3 ON T2.user_id = T3.user_id JOIN User_Searches AS T4 ON T3.user_id = T4.user_id WHERE T4.search_string = (SELECT search_string FROM User_Searches ORDER BY search_datetime LIMIT 1)
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime LIMIT 1
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 41 ORDER BY first_name
SELECT count(DISTINCT search_string) FROM User_Searches
SELECT count(*) FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id WHERE T1.is_buyer = 1
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT date_registered FROM users WHERE login_name = 'ratione'
SELECT first_name , middle_name , last_name , is_seller FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_buyer = 1 AND is_seller = 1
SELECT T2.line_1_number_building , T2.line_2_number_street , T2.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "senior"
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE age_category_code = 31 AND other_address_details LIKE '%senior%'
SELECT count(*) FROM Property_Features WHERE count_in_property_features >= 2
SELECT count(*) FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id HAVING count(*) >= 2
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T1.owner_user_id , count(*) FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id , count(*) FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name LIKE '%single%' OR T2.last_name LIKE '%student%'
SELECT sum(price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.first_name LIKE 'S' OR T2.last_name LIKE 'T'
SELECT datestamp , property_name FROM Property_Photos ORDER BY datestamp
SELECT datestamp , property_name FROM User_Property_History JOIN Properties ON User_Property_History.property_id = Properties.property_id ORDER BY datestamp
SELECT property_type_description FROM properties GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT property_type_description , property_type_code FROM properties GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T2.country FROM users AS T1 JOIN addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = "Robbie"
SELECT T2.country FROM users AS T1 JOIN addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = "Robbie"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN addresses AS T3 ON T2.property_address_id = T3.address_id WHERE T3.town_city = T2.property_address_id
SELECT T2.first_name , T2.last_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
{"sql": "SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSEct SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T2.user_id FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN User_Searches AS T3 ON T1.user_id
SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = "Carbon CC"
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T1.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.material = 'Racing' GROUP BY T1.id HAVING count(*) >= 4
SELECT T2.cyclist_id , T1.name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id WHERE T2.nation = 'Russia' UNION SELECT DISTINCT T2.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id WHERE T2.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year < 2015)
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result > '4:21.558'
SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T2.product_name , T2.price FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T1.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT flavor , max(Price) FROM goods WHERE food = 'cake'
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT flavor , price FROM goods ORDER BY price ASC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.customer_id WHERE flavor = "lemon" AND food = "cake"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.id = T3.id WHERE T3.flavor = "lemon"
SELECT food , count(*) FROM goods GROUP BY food
SELECT food , count(*) FROM goods GROUP BY food
SELECT T2.id FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T3.ordinal = T1.ordinal JOIN goods AS T4 ON T4.id = T3.item WHERE T4.Food = "bakery" GROUP BY T2.id HAVING COUNT(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.LastName FROM items AS T1 JOIN receipts AS T2 ON T1.Ordinal = T2.Item JOIN customers AS T3 ON T3.Id = T2.CustomerId GROUP BY T3.LastName HAVING COUNT(*) > 10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) > 10
SELECT count(DISTINCT flavor) FROM goods WHERE food = "Cake"
SELECT count(DISTINCT Flavor) FROM goods
SELECT flavor FROM goods WHERE food = "Croissant"
SELECT Flavor FROM goods WHERE Food = 'Croissant'
SELECT DISTINCT item FROM items AS T1 JOIN receipts AS T2 ON T1.Ordinal = T2.Ordinal WHERE T2.customerid = 15
SELECT DISTINCT item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.ReceiptNumber WHERE T2.customerid = 15
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT ReceiptNumber FROM items WHERE Flavor = 'Cake' INTERSECT SELECT ReceiptNumber FROM items WHERE Flavor = 'Cookie'
SELECT receiptnumber FROM items WHERE flavor = 'cake' INTERSECT SELECT receiptnumber FROM items WHERE flavor = 'cookie'
SELECT T1.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.firstName = "LOGAN" AND T2.Food = "Croissant"
{"sql": "SELECT T3.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Id = T2.Id JOIN receipts AS T3 ON T1.Item = T3.ReceiptNumber WHERE T2.Food = \"Croissant\" AND T1.Item = \"Croissant\" AND T2.Flavor = \"French\" AND T1.Food = \"French\" AND T2.Food = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor = \"French\" AND T1.Item = \"Croissant\" AND T1.Food = \"French\" AND T2.Flavor
SELECT T2.ReceiptNumber , T2.Date FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt ORDER BY T1.Price LIMIT 1
SELECT T1.ReceiptNumber , T1.Date FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt ORDER BY T2.Date DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Food , count(*) FROM goods GROUP BY Food
SELECT count(*) , food FROM goods GROUP BY food
SELECT Food , avg(Price) FROM goods GROUP BY Food
SELECT avg(Price) , Food FROM goods GROUP BY Food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10
SELECT flavor FROM goods WHERE price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT ReceiptNumber FROM goods WHERE Price > 13
SELECT DISTINCT T2.Receipt FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.price > 13
SELECT T1.date FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 15
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.Ordinal WHERE T1.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT lastname FROM customers ORDER BY lastname
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods WHERE flavor = "good" ORDER BY id
SELECT DISTINCT id FROM goods
SELECT receipt FROM receipts WHERE customerid = 12 OR flavor = 'apple pie'
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Id = T2.Id WHERE T2.Flavor = "apple" UNION SELECT T1.ReceiptNumber FROM items AS T1 JOIN customers AS T2 ON T1.Id = T2.Id WHERE T2.Id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Id = T2.Id WHERE T2.Price > 10 UNION SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T4 ON T3.CustomerId = T4.Id WHERE T4.Item = "good" AND T4.Price > 10
SELECT receiptnumber FROM receipts WHERE date > '2010-01-01' OR price > 10
SELECT T2.id FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date = (SELECT min(date) FROM receipts)
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "blackberry" OR Flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT food FROM goods WHERE flavor = 'cheese' ORDER BY price LIMIT 1
SELECT flavor , max(price) , avg(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT flavor , max(price) , avg(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) , min(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(Price) , max(Price) , Food FROM goods ORDER BY Food
SELECT Date FROM receipts ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid ORDER BY count(*) DESC LIMIT 1
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , date FROM receipts GROUP BY date
SELECT count(*) , date FROM receipts GROUP BY date
SELECT t1.firstname , t1.lastname FROM customers AS t1 JOIN goods AS t2 ON t1.id = t2.customerid WHERE flavor = 'apple' AND Food = 'Tart'
SELECT t1.firstname + " " + t1.lastname FROM customers AS t1 JOIN items AS t2 ON t1.id = t2.customerid JOIN goods AS t3 ON t2.id = t3.id WHERE t3.flavor = "apple" AND t3.food = "tart"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods WHERE food = 'cake' ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.Flavor = "chocolate" EXCEPT SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.Flavor = "chocolate" GROUP BY T1.Item HAVING COUNT(*) > 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE flavor = "chocolate" GROUP BY T1.item HAVING count(*) <= 10
SELECT flavor FROM goods WHERE food = "cake" EXCEPT SELECT flavor FROM goods WHERE food = "tart"
SELECT flavor FROM goods WHERE food = 'Cakes' EXCEPT SELECT flavor FROM goods WHERE food = 'Tart'
SELECT flavor , food FROM goods GROUP BY flavor ORDER BY count(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Food = T2.Id GROUP BY T1.Food ORDER BY COUNT(*) DESC LIMIT 3
SELECT customerid FROM receipts WHERE sum(Price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE sum(T2.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING avg(T2.price) > 5
SELECT T1.id , avg(T2.price) FROM goods AS T2 JOIN items AS T1 ON T2.id = T1.item GROUP BY T2.id HAVING avg(T2.price) > 5
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T1.Ordinal = T3.id GROUP BY T1.Date HAVING SUM(T3.price) > 100
SELECT T2.Date FROM goods AS T1 JOIN receipts AS T2 ON T1.Id = T2.ReceiptNumber GROUP BY T2.Date HAVING sum(T1.Price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Laps FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T2.Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT DISTINCT T1.Driver FROM driver AS T1 JOIN team_driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT DISTINCT driver , country FROM driver
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Capital = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country WHERE T1.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT country FROM driver ORDER BY Points DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make
SELECT make , count(*) FROM driver GROUP BY make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Driver_ID FROM team_driver)
SELECT Team FROM team EXCEPT SELECT T2.Team FROM team_driver AS T1 JOIN team AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT country FROM driver WHERE make = "Dodge" INTERSECT SELECT country FROM driver WHERE make = "Chevrolet"
SELECT Country FROM driver WHERE Car_# = (SELECT Car_# FROM driver WHERE Make = 'Dodge') INTERSECT SELECT Country FROM driver WHERE Car_# = (SELECT Car_# FROM driver WHERE Make = 'Chevrolet')
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country FROM driver)
SELECT Country FROM driver EXCEPT SELECT Country FROM country
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID ORDER BY count(*) DESC LIMIT 1
SELECT manager , sponsor FROM team ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT T2.Manager , T2.Car_Owner FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING COUNT(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT name FROM institution ORDER BY Founded
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM CHAMPIONSHIP AS T1 JOIN INSTITUTION AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Name , T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Nickname FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY COUNT(*) DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T2.Institution_ID HAVING count(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT count(*) FROM institution WHERE affiliation = 'Public'
SELECT sum(T1.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT Affiliation FROM Institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM Institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Founded , COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT T2.Nickname FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT T2.Nickname FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT * FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE LOCATION = "New York"
SELECT DISTINCT contents FROM boxes WHERE LOCATION = "New York"
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T2.code , avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT avg(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(Value) FROM boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T2.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' OR T1.location = 'New York'
SELECT DISTINCT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' UNION SELECT T1.contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'New York'
SELECT contents FROM boxes WHERE warehouse = "Chamal\" AND warehouse = "New York"
SELECT contents FROM boxes WHERE warehouse != (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes WHERE warehouse = (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT DISTINCT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT DISTINCT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT DISTINCT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE contents = "Rocks" EXCEPT SELECT DISTINCT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE contents = "Scissors"
SELECT DISTINCT T1.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT DISTINCT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" OR T2.contents = "Scissors"
SELECT T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" INTERSECT SELECT T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Scissors"
SELECT DISTINCT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' INTERSECT SELECT DISTINCT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = "Rocks")
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code ORDER BY t1.capacity DESC LIMIT 1
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T1.value) > 150
SELECT avg(T2.value) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE avg(T2.value) > 150
SELECT sum(T1.value) , count(*) , T1.contents FROM boxes AS T1 JOIN boxes AS T2 ON T1.contents = T2.contents GROUP BY T1.contents
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT LOCATION , sum(capacity) , avg(capacity) , max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT T1.Location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.Warehouse GROUP BY T1.Location
SELECT T2.Location , max(T1.Value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.Code = T2.Warehouse GROUP BY T1.Location
SELECT T2.code , count(*) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT count(*) , T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE contents = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes
SELECT T2.code , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse
SELECT T2.code , T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE LOCATION = 'Chicago'
SELECT DISTINCT T1.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE LOCATION = 'Chicago'
SELECT count(*) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT T2.value , T1.location , count(*) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity < 0
SELECT T2.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING count(*) > T2.capacity
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT DISTINCT home_confederation FROM university
SELECT DISTINCT home_confederation FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY enrollment LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T1.major_name , T1.major_ranking FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T3.major_id = T2.major_id WHERE T1.university_name = "Augustana College"
SELECT T1.rank , T2.major_name FROM major_ranking AS T1 JOIN major AS T2 ON T1.major_id = T2.major_id WHERE university_id = (SELECT T1.university_id FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE university_name = "Augustana College" )
SELECT t1.university_name , t1.city , t1.state FROM university AS t1 JOIN major_ranking AS t2 ON t1.university_id = t2.university_id JOIN major AS t3 ON t2.major_id = t3.major_id WHERE t3.major_name = "Accounting" AND t2.rank = 1
SELECT university.name , university.city , university.state FROM university JOIN major_ranking ON university.University_ID = major_ranking.University_ID JOIN major ON major.Major_ID = major_ranking.Major_ID WHERE university.University_ID = 1 AND major_ranking.rank = 2
{"sql": "SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = (SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name =
SELECT t1.University_Name FROM university AS t1 JOIN major_ranking AS t2 ON t1.University_ID = t2.University_ID ORDER BY t2.Major_ID DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T3.major_id = T2.major_id WHERE T3.major_name = 'none'
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = 'Accounting' AND T3.Major_Name = 'Urban Education'
SELECT university_name FROM university WHERE university_name = "Accounting" INTERSECT SELECT university_name FROM university WHERE university_name = "Urban Education"
SELECT T2.University_Name , T1.overall_rank FROM university AS T1 JOIN overall_rank AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = 'Wisconsin'
SELECT university_name , rank FROM university WHERE state = 'Wisconsin'
SELECT university_name FROM university ORDER BY research_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY research_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY reputation_point
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.rank >= 3
SELECT university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_ID IN (SELECT major_id FROM major WHERE major_name = "Accounting" GROUP BY major_id ORDER BY count(*) DESC LIMIT 3)
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.total <= 5
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT T2.University_Name , T2.Citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY reputation_point DESC LIMIT 3
SELECT university_name , citation_point FROM university ORDER BY reputation_point DESC LIMIT 3
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND Enrollment < 3000
SELECT State FROM university GROUP BY State HAVING count(*) >= 2 AND Enrollment < 3000
SELECT title FROM Movies WHERE rating = "null"
SELECT title FROM movies WHERE rating = "null"
SELECT title FROM movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating LIKE "%G%"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = "Odeon"
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.title , T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT t1.name) FROM movietheaters AS t1 JOIN movies AS t2 ON t1.movie = t2.code
SELECT count(DISTINCT title) FROM movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon" OR T2.name = "Imperial"
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code JOIN MovieTheaters AS T3 ON T1.Movie = T3.Code WHERE T1.Name = "Odeon" AND T2.Name = "Imperial"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = "Odeon")
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = "Odeon"
SELECT title FROM Movies ORDER BY title ASC
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , rating FROM Movies GROUP BY rating
SELECT count(*) , rating FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating = "null"
SELECT count(*) FROM Movies WHERE Rating = "null"
SELECT name FROM MovieTheaters WHERE Movie IN (SELECT code FROM movies)
SELECT name FROM MovieTheaters WHERE code IN (SELECT movie FROM movies)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM Movies)
SELECT name FROM MovieTheaters WHERE movie NOT IN (SELECT code FROM movies)
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.code = T2.code WHERE T2.rating = 'G'
SELECT name FROM MovieTheaters WHERE movie IN (SELECT T1.code FROM movies AS T1 JOIN filmtheaters AS T2 ON T1.code = T2.movie WHERE rating = 'G' )
SELECT title FROM Movies
SELECT title FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM movies WHERE rating = 0
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies EXCEPT SELECT t2.title FROM movies AS t1 JOIN movietheaters AS t2 ON t1.code = t2.movie WHERE t2.movie = "none"
SELECT T2.Recipient FROM PACKAGE AS T1 JOIN SHIPMENT AS T2 ON T1.Shipment = T2.ShipmentID ORDER BY T1.Weight DESC LIMIT 1
SELECT T2.name FROM package AS T1 JOIN client AS T2 ON T1.Recipient = T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT sum(weight) FROM package AS T1 JOIN client AS T2 ON T1.shipment = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT salary , position FROM Employee WHERE name = "Turanga Leela"
SELECT salary , position FROM Employee WHERE name = "Turanga Leela"
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT LEVEL FROM HAS_CLEARANCE
SELECT T1.level FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid
SELECT packagenumber FROM shipment AS t1 JOIN client AS t2 ON t1.shipment = t2.accountnumber JOIN package AS t3 ON t3.shipment = t1.shipment WHERE t2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT packagenumber FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT T2.PackageNumber FROM SHIPMENT AS T1 JOIN PACKAGE AS T2 ON T1.Shipment = T2.Shipment WHERE T1.Manager = (SELECT Manager FROM EMPLOYEE WHERE Name = 'Leo Wong')
SELECT * FROM PACKAGE WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong') OR recipient = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT DISTINCT packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipment = T2.shipment WHERE T1.manager = 'Leo Wong' OR T1.manager = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T1.Recipient = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentID JOIN employee AS T3 ON T2.manager = T3.employeeID JOIN client AS T4 ON T4.accountnumber = T3.employeeid WHERE T4.name = "Ogden Wernstrom" AND T4.name = "Leo Wong"
SELECT contents FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'John Zoidfarb')
SELECT contents FROM package WHERE sender = (SELECT name FROM Employee WHERE salary = (SELECT min(salary) FROM Employee) AND manager = 'John Zoidfarb')
SELECT T1.PackageNumber , T2.Weight FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name = 'John'
SELECT packagenumber , weight FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'John')
SELECT packagenumber , weight FROM Package ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.Recipient GROUP BY T1.accountnumber ORDER BY count(*) LIMIT 1
SELECT min(packagenumber) , min(sender) FROM PACKAGE
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM Planet ORDER BY name
SELECT name , coordinates FROM Planet ORDER BY name
SELECT shipmentid FROM shipment WHERE manager = (SELECT employeeid FROM Employee WHERE name = 'Phillip J. Fry')
SELECT shipmentid FROM shipment WHERE manager = (SELECT employeeid FROM Employee WHERE name = 'Phillip J Fry')
SELECT Date FROM Shipment
SELECT Date FROM SHIPMENT
SELECT ShipmentID FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T1.Name = "Mars"
SELECT ShipmentID FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T1.Name = "Mars"
SELECT shipmentid FROM shiptment WHERE planet = "Mars" AND manager = "TURANGA Leela"
SELECT ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T3.EmployeeID = T1.Manager WHERE T2.Name = "Mars" AND T3.Name = "Turanga Leela"
SELECT shipmentid FROM shipment WHERE planet = "Mars" OR manager = "Tulip Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.manager = T3.employeeid WHERE T2.name = 'Mars' AND T3.name = 'Turanga Leela'
SELECT T2.Name , sum(T1.Shipment) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name
SELECT count(*) , T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.name
SELECT t1.name FROM planet AS t1 JOIN shipment AS t2 ON t1.planetid = t2.planet GROUP BY t2.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.employeeid FROM Employee AS T1 JOIN SHIPMENT AS T2 ON T1.employeeid = T2.Manager
SELECT count(*) , T2.Manager FROM shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID GROUP BY T2.Manager
SELECT sum(weight) FROM shipment AS t1 JOIN package AS t2 ON t1.shipmentid = t2.shipment WHERE t1.planet = "Mars"
SELECT sum(package.shipment) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "mars"
SELECT sum(T1.weight) , T2.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipment GROUP BY T2.planet
SELECT sum(weight) , T1.name FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN PLAN AS T3 ON T2.plan = T3.planid GROUP BY T3.name
SELECT T2.Name FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.Planet = T2.Planet JOIN planet AS T3 ON T1.PlanetID = T3.PlanetID WHERE T2.Weight > 30
SELECT T2.Name FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN PLAN AS T3 ON T2.Planet = T3.PlanetID WHERE T1.Weight > 30
SELECT T2.PackageNumber FROM SHIPMENT AS T1 JOIN PACKAGE AS T2 ON T1.Shipment = T2.Shipment WHERE T1.Planet = "OMICRON PERIUS 8" AND T2.Sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = "Omicron Persei 8" AND T1.sender = "Zapp Brannigan"
SELECT T2.PackageNumber FROM PLANET AS T1 JOIN SHIPMENT AS T2 ON T1.PlanetID = T2.Planet JOIN PACKAGE AS T3 ON T2.Shipment = T3.Shipment WHERE T1.Name = "Omicron Persei 8" OR T3.Sender = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" OR T2.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.level = "M"
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT T2.name FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T1.level = "Omega III"
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = "Omega III" AND T2.level = "III"
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet HAVING COUNT(*) = 1
SELECT T1.name FROM Planet AS T1 JOIN Has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employeeid IN (SELECT employeeid FROM has_clearance GROUP BY employeeid HAVING count(*) = 1)
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee)
SELECT count(*) FROM Employee EXCEPT SELECT count(*) FROM has_clearance WHERE planet = 'mars'
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT Units_sold_Millions FROM game WHERE Developers != "Nintendo"
SELECT Units_sold_Millions FROM game WHERE Developers != "Nintendo"
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT platform_name , platform_id FROM platform ORDER BY download_rank ASC LIMIT 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(RANK_OF_THE_YEAR) , min(RANK_OF_THE_YEAR) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT player_name FROM player ORDER BY player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT player_name , College FROM player ORDER BY rank_of_the_year DESC
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT t1.player_name , t1.rank_of_the_year FROM game_player AS t1 JOIN game AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t1.player_id = t3.player_id WHERE t2.title = "Super Mario World"
SELECT t3.player_name , t2.rank_of_the_year FROM game AS t1 JOIN game_player AS t2 ON t1.game_id = t2.game_id JOIN player AS t3 ON t2.player_id = t3.player_id WHERE t1.title = "Super Mario World"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Auburn'
SELECT avg(T2.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = "Guard"
SELECT avg(T1.Units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_id = T2.Game_id JOIN player AS T3 ON T2.Player_id = T3.Player_id WHERE T3.Position = "Guard"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title , T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , count(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY SUM(Units_sold_Millions) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = 'Oklahoma' OR T3.College = 'Auburn'
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = "Guard")
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE POSITION = "Guard")
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT T2.name FROM press AS T1 JOIN author AS T2 ON T1.press_id = T2.press_id WHERE T1.year_profits_billion > 10000000 OR T1.month_profits_billion = 1000000
SELECT name FROM press WHERE YEAR_PRO profits_billion > 15000000 OR month_profits_billion > 1000000
SELECT avg(year_profits_billion) , max(year_profits_billion) FROM press
SELECT avg(year_profits_billion) , max(year_profits_billion) , press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
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
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "MM" INTERSECT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T1.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.title , T2.name , T3.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T2.Title , T1.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name
SELECT count(*) , T1.Name FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING sum(T1.Sale_Amount) > 1000
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING sum(T1.sale_amount) > 1000
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY sale_amount DESC LIMIT 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY sale_amount DESC LIMIT 1
SELECT T2.name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id JOIN press AS t3 ON t3.press_id = t2.press_id WHERE t3.name = "Accor"
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T3.press_id = T2.press_id WHERE T3.name = "Accor"
SELECT name , YEAR_PROFIT_billion FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) >= 2)
SELECT T2.name , T2.year_profits_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM AUTHORS
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM AUTHORS
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT T2.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.author_name = "Bianka" Cummings
SELECT T1.author_name , T2.other_details FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = "Travel to China"
SELECT T2.author_name , count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name GROUP BY T2.author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name GROUP BY T2.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9;
SELECT process_name FROM Business_Processes WHERE process_id = 9
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_Outcomes
SELECT count(*) FROM Process_Status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100;
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM documents_process_result WHERE process_id IN (SELECT process_id FROM documents_process_result GROUP BY process_id HAVING count(*) > 1)
SELECT process_id FROM Documents_Processes WHERE process_outcome_code = "list"
SELECT document_id FROM Documents_processes WHERE process_outcome_code NOT IN (SELECT process_outcome_code FROM process_outcomes)
SELECT process_id FROM Business_processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT process_outcome_description , process_status_description FROM documents_processes WHERE document_id = 0
SELECT T2.process_name FROM Documents AS T1 JOIN Business_Processes AS T2 ON T1.process_id = T2.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM documents_processes AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id JOIN documents_processes AS T3 ON T1.process_id = T3.process_id WHERE T1.document_id = 0 AND T3.process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Ref_Staff_Roles WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T2.agency_details , T1.agency_id FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T2.client_details , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T2.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_details , T2.agency_id FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT DISTINCT agency_id FROM Agencies WHERE agency_id NOT IN (SELECT agency_id FROM Clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM invoices
SELECT count(*) FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT T1.client_id , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client_id , T1.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T2.client_id , T3.agency_id , T4.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT T2.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T1.agency_id , T1.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT DISTINCT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T2.payment_id , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM Invoices EXCEPT SELECT T1.invoice_id , T2.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT count(*) FROM payments
SELECT count(*) FROM payments
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Invoices
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM Staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT count(*) , meeting_outcome FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM meetings GROUP BY client_id
SELECT T2.meeting_type , count(*) FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T2.meeting_type
SELECT count(*) , meeting_type FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT count(*) , T1.meeting_id FROM staff_in_meetings AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT T1.staff_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.staff_id FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T2.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id JOIN Meetings AS T3 ON T1.client_id = T3.client_id
SELECT T1.staff_id , T2.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id JOIN Meetings AS T3 ON T2.meeting_id = T3.meeting_id WHERE T3.purpose_of_meeting LIKE '%s%'
SELECT T2.staff_id , T1.staff_details FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_id IN (SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id HAVING count(*) >= 1) AND T2.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id WHERE T1.meeting_outcome = 'Attend'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Attend' INTERSECT SELECT T3.client_id , T3.sic_code , T3.agency_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id WHERE T4.invoice_status = 'Invoice'
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 JOIN Staff_in_Meetings AS T3 ON T1.meeting_id = T3.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T1.client_id , T1.staff_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
