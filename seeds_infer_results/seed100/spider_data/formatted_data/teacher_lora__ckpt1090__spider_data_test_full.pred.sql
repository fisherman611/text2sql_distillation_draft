SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT name FROM club WHERE manufacturer != "Nike"
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Captain FROM club GROUP BY Captain HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM Player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN invoices AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T1.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T3 ON T1.customer_id = T3.customer_id JOIN order_items AS T4 ON T3.order_id = T4.order_id GROUP BY T1.customer_id HAVING sum(T4.quantity) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T2.date_order_placed FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 UNION SELECT T2.date_order_placed FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING min(T1.date_order_placed) = min(T2.date_order_placed)
SELECT T2.date_order_placed FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 UNION SELECT T2.date_order_placed FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) = 1 ORDER BY T2.date_order_placed LIMIT 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers EXCEPT SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products EXCEPT SELECT T1.product_id , T2.product_name , T2.product_price , T2.product_color FROM orders AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T2.order_id , T2.date_order_placed FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT T2.order_id , T2.date_order_placed FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.order_id , sum(T1.product_price * T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T2.order_id ORDER BY sum(T1.product_price * T3.product_price) LIMIT 1
SELECT T1.date_order_placed , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id ORDER BY sum(T3.product_price) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T3.order_id = T1.order_id GROUP BY T2.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id GROUP BY T1.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T3.product_name , T2.shipment_date FROM Shipment_Items AS T1 JOIN Shipments AS T2 ON T1.shipment_id = T2.shipment_id JOIN Products AS T3 ON T1.order_item_id = T3.product_id
SELECT T1.product_name , T4.shipment_date FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipment_items AS T3 ON T2.order_item_id = T3.order_item_id JOIN shipments AS T4 ON T3.shipment_id = T4.shipment_id
SELECT T1.order_item_status_code , T3.shipment_tracking_number FROM Order_items AS T1 JOIN shipment_items AS T2 ON T1.order_item_id = T2.order_item_id JOIN shipments AS T3 ON T2.shipment_id = T3.shipment_id
SELECT T3.order_item_status_code , T4.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 JOIN shipment_items AS T3 ON T1.order_item_id = T3.order_item_id AND T3.shipment_id = T2.shipment_id WHERE T1.order_item_status_code = "Ordered" INTERSECT SELECT T3.order_item_status_code , T4.shipment_tracking_number FROM order_items AS T1 JOIN shipments AS T2 JOIN shipment_items AS T3 ON T1.order_item_id = T3.order_item_id AND T3.shipment_id = T2.shipment_id WHERE T1.order_item_status_code = "Shipped"
SELECT T3.product_name , T3.product_color FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id JOIN shipment_items AS T4 ON T2.order_item_id = T4.order_item_id JOIN shipments AS T5 ON T4.shipment_id = T5.shipment_id WHERE T5.shipment_date != "null"
SELECT DISTINCT T1.product_name , T1.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.order_item_id JOIN shipments AS T3 ON T3.shipment_id = T2.shipment_id
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 JOIN customers AS T3 ON T2.customer_id = T3.customer_id AND T2.order_status_code = "Complete" WHERE T3.gender_code = "F"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN customers AS T2 JOIN orders AS T3 JOIN order_items AS T4 ON T2.customer_id = T3.customer_id AND T3.order_id = T4.order_id AND T4.product_id = T1.product_id WHERE T2.gender_code = 'Female'
SELECT T1.invoice_status_code FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN Orders AS T3 ON T3.order_id = T2.order_id WHERE T3.order_status_code != "Shipped"
SELECT T1.invoice_status_code FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number WHERE T2.order_id NOT IN (SELECT order_id FROM orders WHERE order_status_code = 'Shipped')
SELECT T1.order_id , T1.date , T3.total_cost FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > ( SELECT avg(product_price) FROM products )
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = "USA"
SELECT T3.customer_first_name , T2.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id
SELECT T3.customer_first_name , T2.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id
SELECT count(DISTINCT T3.product_id) FROM shipments AS T1 JOIN shipment_items AS T2 ON T1.shipment_id = T2.shipment_id JOIN order_items AS T3 ON T2.order_item_id = T3.order_item_id
SELECT count(DISTINCT T1.product_id) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipment_items AS T3 ON T2.order_item_id = T3.order_item_id
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(t3.product_price) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id
SELECT avg(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T2.date_order_placed FROM customer_payment_methods AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE "%bbc%"
SELECT count(*) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id HAVING count(*) > 1
SELECT T1.name , count(*) FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT t1.name , t1.internet FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id GROUP BY t3.Name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t3.channel_id JOIN program AS t3 ON t2.director_id = t3.director_id WHERE t2.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director AS t2 ON t1.channel_id = t3.channel_id JOIN program AS t3 ON t2.director_id = t3.director_id WHERE t2.age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT T1.channel_id , T2.name FROM director AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id WHERE T1.name = "Hank Baskett"
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T2.Transmitter , T1.City FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.ID = T2.City_channel_ID
SELECT T2.Transmitter , T1.Station_name FROM city_channel AS T1 JOIN radio AS T2 ON T1.City_channel_id = city_channel_radio.City_channel_id AND T2.Radio_ID = city_channel_radio.Radio_ID ORDER BY ERP_kW DESC
SELECT T2.Transmitter , COUNT(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T2.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT count(*) , Driver_ID FROM vehicle_driver GROUP BY Driver_ID ORDER BY count(*) ASC LIMIT 1
SELECT driver_id , count(*) FROM vehicle_driver GROUP BY driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012
SELECT count(DISTINCT T1.Driver_ID) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT avg(Top_Speed) FROM vehicle
SELECT avg(Top_Speed) FROM vehicle
SELECT DISTINCT T3.Name FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T1.Driver_ID = T3.Driver_ID WHERE T2.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT model , build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) >= 2 UNION SELECT vehicle_id , model FROM vehicle WHERE builder = 'Ziyang'
SELECT T1.vehicle_id , T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 UNION SELECT T3.vehicle_id , T3.model FROM vehicle AS T3 WHERE T3.Builder = 'Ziyang'
SELECT T3.Vehicle_ID , T3.model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id GROUP BY T3.Vehicle_ID HAVING count(*) > 2 UNION SELECT T3.Vehicle_ID , T3.model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T2.Name = 'Jeff Gordon'
SELECT T3.vehicle_id , T3.model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) > 2 UNION SELECT T3.vehicle_id , T3.model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T2.Name = "Jeff Gordon"
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name ASC
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM EXAMS
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT DISTINCT subject_code FROM Exams ORDER BY subject_code
SELECT exam_name , exam_date FROM Exams WHERE subject_code != "Database"
SELECT exam_date , exam_name FROM Exams WHERE subject_code != "Database"
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_QUESTION_CODE , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_QUESTION_CODE
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT first_name FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Answers)
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_OF_QUESTION_CODE FROM QUESTIONS GROUP BY TYPE_OF_QUESTION_CODE HAVING COUNT(*) >= 3
SELECT TYPE_OF_QUESTION_CODE FROM QUESTIONS GROUP BY TYPE_OF_QUESTION_CODE HAVING COUNT(*) >= 3
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
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
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
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1)
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = 'Jeromy'
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = 'Jeromy'
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id JOIN customer_orders AS t3 ON t2.order_id = t3.order_id WHERE t1.product_name = "Monitor"
SELECT sum(t3.order_quantity) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_type_code = 'MONITOR'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 UNION SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3
SELECT T2.order_id , T2.order_date FROM order_items AS T1 JOIN customer_orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 3 UNION SELECT T2.order_id , T2.order_date FROM order_items AS T1 JOIN customer_orders AS T2 ON T1.order_id = T2.order_id WHERE T1.order_quantity > 6
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
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.name , T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Address , T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT avg(T1.Number_of_Stories) FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = "Abruzzo"
SELECT count(*) , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.name
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT customer_details FROM customers EXCEPT SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.service_id ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers_and_services
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" UNION SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T1.Status_Code = "good"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" UNION SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN customer_interactions AS T4 ON T2.customers_and_services_id = T4.customers_and_services_id WHERE T4.services_and_channels_details = "good"
SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN customers AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" INTERSECT SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN customers AS T3 ON T1.Customer_ID = T3.Customer_ID WHERE T1.Status_Code = "bad"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" INTERSECT SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN customer_interactions AS T4 ON T3.service_id = T4.service_id AND T4.customer_id = T1.customer_id WHERE T4.status_code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT * FROM customer_interactions AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T1.service_id = T3.service_id JOIN channels AS T4 ON T1.channel_id = T4.channel_id WHERE T1.status_code = "Stuck" AND T4.channel_details = "bad" AND T3.service_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND services_and_channels_details = "bad"
SELECT count(*) FROM integration_platform
SELECT count(*) FROM integration_platform WHERE integration_platform_details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT T1.customer_details FROM customers AS T1 JOIN integration_platform AS T2 ON T1.customer_id = T3.customer_id JOIN customer_interactions AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T2.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM Services EXCEPT SELECT T1.service_details FROM Customers_and_Services AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT name , TYPE_OF_POWERTRAIN , Annual_fuel_cost FROM Vehicles WHERE model_year = 2013 OR model_year = 2014
SELECT name , TYPE_OF_POWERTRAIN , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate >= highway_fuel_economy_rate
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM discount
SELECT T2.name , sum(T1.total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T2.name FROM Renting_history AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.id GROUP BY T2.id HAVING count(*) >= 2
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT t1.name FROM discount AS t1 JOIN renting_history AS t2 ON t1.id = t2.discount_id GROUP BY t2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM discount AS t1 JOIN renting_history AS t2 ON t1.id = t2.discount_id GROUP BY t2.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT T2.name , T2.type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT TYPE_of_powertrain , avg(City_fuel_economy_rate) , avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_OF_POWERTRAIN , avg(City_fuel_economy_rate) , avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T2.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T2.teacher_id FROM Teachers AS T1 JOIN CLASSES AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T3 ON T1.student_id = T3.student_id JOIN Ref_Address_Types AS T2 ON T3.address_type_code = T2.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T2.student_id = T3.student_id JOIN Students_Addresses AS T3 ON T3.student_id = T2.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T2.student_id = T3.student_id JOIN Students_Addresses AS T3 ON T3.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details , COUNT(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id , T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3 INTERSECT SELECT T1.student_id , T1.bio_data , T1.student_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING count(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING count(*) = 3
SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING T2.behaviour_monitoring_details = ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_description , T2.event_type_code FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T3 ON T1.event_type_code = T3.event_type_code JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT COUNT(DISTINCT T2.teacher_id) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(DISTINCT T1.teacher_id) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.class_details , T1.teacher_id , T1.student_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T3 ON T1.teacher_id = T3.teacher_id JOIN Students AS T2 ON T2.student_id = T3.student_id
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM CLASSES GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , count(*) FROM CLASSES GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T2.date_of_transcript FROM Student_Loans AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T2.student_id = T3.student_id ORDER BY T3.amount_of_loan DESC LIMIT 1
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Transcripts AS T3 ON T3.student_id = T1.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Transcripts AS T3 ON T3.student_id = T1.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.datetime_detention_start , datetime_detention_end FROM Detention AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM Author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , isbn , saleprice FROM Book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM book
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author AS T2 ON T1.Author = T2.idAuthor
SELECT T1.Title , T2.name FROM Book AS T1 JOIN AUTHOR AS T2 ON T1.Author = T2.idAuthor
SELECT T1.idorder , T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idclient = T2.idclient
SELECT T1.idorder , T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name , COUNT(*) FROM AUTHOR AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.idAuthor = T2.Author GROUP BY T1.idAuthor
SELECT T1.Name , COUNT(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.Author GROUP BY T1.idAuthor
SELECT idisbn , count(*) FROM Books_order GROUP BY idisbn
SELECT T1.isbn , count(*) FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT idisbn , sum(amount) FROM books_order GROUP BY idisbn
SELECT T1.isbn , sum(T2.amount) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT t1.title , t1.purchaseprice FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY sum(t2.amount) DESC LIMIT 1
SELECT T1.Title FROM Book AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN
SELECT DISTINCT T3.Title FROM books_order AS T1 JOIN orders AS T2 ON T1.IdOrder = T2.IdOrder JOIN book AS T3 ON T1.ISBN = T3.ISBN WHERE T2.DateExped < "2015-02-05"
SELECT DISTINCT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name , COUNT(*) FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.IdClient = T2.IdClient GROUP BY T2.IdClient
SELECT T1.Name , COUNT(*) FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.IdClient = T2.IdClient GROUP BY T1.IdClient
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , sum(T3.amount) FROM CLIENT AS T1 JOIN orders AS T2 ON T1.IdClient = T2.IdClient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.IdClient
SELECT T1.Name , sum(T3.amount) FROM CLIENT AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_order AS T3 ON T2.IdOrder = T3.IdOrder GROUP BY T1.IdClient
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN books_order AS t3 ON t2.idorder = t3.idorder GROUP BY t1.idclient ORDER BY sum(t3.amount) DESC LIMIT 1
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN books_order AS t3 ON t2.idorder = t3.idorder GROUP BY t1.idclient ORDER BY sum(t3.amount) DESC LIMIT 1
SELECT DISTINCT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT DISTINCT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT Name FROM CLIENT WHERE idclient NOT IN (SELECT idclient FROM Orders)
SELECT Name FROM CLIENT WHERE IdClient NOT IN (SELECT IdClient FROM Orders)
SELECT max(saleprice) , min(saleprice) FROM book
SELECT max(saleprice) , min(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT max(saleprice) - min(purchaseprice) FROM book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "George Orwell"
SELECT avg(saleprice) FROM book AS T1 JOIN author AS T2 ON T1.author = T2.name WHERE T2.name = "George Orwell"
SELECT T1.saleprice FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.name WHERE T3.name = "Plato"
SELECT T1.SalePrice FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = "Plato"
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE author = "George Orwell" ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE author = "Plato" AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE author = "Plato" AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT Author FROM Book WHERE Title = "Pride and Prejudice"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T2.title = "Pride and Prejudice"
SELECT T1.Title FROM Book AS T1 JOIN AUTHOR AS T2 ON T1.Author = T2.idAuthor WHERE T2.Name LIKE '%Plato%'
SELECT T2.Title FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T1.Title = "Pride and Prejudice"
SELECT count(*) FROM books_order AS T1 JOIN book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Title = "Pride and Prejudice"
SELECT idorder FROM books_order WHERE isbn IN (SELECT isbn FROM book WHERE title = "Pride and Prejudice" INTERSECT SELECT isbn FROM book WHERE title = "The Little Prince")
SELECT idorder FROM books_order WHERE isbn IN (SELECT isbn FROM book WHERE title = "Pride and Prejudice" INTERSECT SELECT isbn FROM book WHERE title = "The Little Prince")
SELECT T4.ISBN FROM CLIENT AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_order AS T3 ON T2.IdOrder = T3.IdOrder JOIN Book AS T4 ON T3.ISBN = T4.ISBN WHERE T1.Name = "Peter Doe" INTERSECT SELECT T4.ISBN FROM CLIENT AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient JOIN Books_order AS T3 ON T2.IdOrder = T3.IdOrder JOIN Book AS T4 ON T3.ISBN = T4.ISBN WHERE T1.Name = "James Smith"
SELECT T4.ISBN FROM authors AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN books_order AS T3 ON T2.isbn = T3.isbn JOIN orders AS T4 ON T3.idorder = T4.idorder JOIN client AS T5 ON T4.idclient = T5.idclient WHERE T5.name = "Peter Doe" INTERSECT SELECT T4.ISBN FROM authors AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN books_order AS T3 ON T2.isbn = T3.isbn JOIN orders AS T4 ON T3.idorder = T4.idorder JOIN client AS T5 ON T4.idclient = T5.idclient WHERE T5.name = "James Smith"
SELECT T4.Title FROM Books_Order AS T1 JOIN Orders AS T2 ON T1.IdOrder = T2.IdOrder JOIN Client AS T3 ON T3.IdClient = T2.IdClient JOIN Book AS T4 ON T4.ISBN = T1.ISBN WHERE T3.Name = "Peter Doe" EXCEPT SELECT T4.Title FROM Books_Order AS T1 JOIN Orders AS T2 ON T1.IdOrder = T2.IdOrder JOIN Client AS T3 ON T3.IdClient = T2.IdClient JOIN Book AS T4 ON T4.ISBN = T1.ISBN WHERE T3.Name = "James Smith"
SELECT T4.Title FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T3.idclient = T2.idclient JOIN book AS T4 ON T4.isbn = T1.isbn WHERE T3.name = "Peter Doe" EXCEPT SELECT T4.Title FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T3.idclient = T2.idclient JOIN book AS T4 ON T4.isbn = T1.isbn WHERE T3.name = "James Smith"
SELECT DISTINCT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN books_order AS t3 ON t2.idorder = t3.idorder JOIN book AS t4 ON t3.isbn = t4.isbn WHERE t4.title = "Pride and Prejudice"
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN books_order AS t3 ON t2.idorder = t3.idorder JOIN book AS t4 ON t3.isbn = t4.isbn WHERE t4.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book WHERE TYPE != "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1
SELECT Rank FROM review WHERE Book_ID = (SELECT Book_ID FROM book ORDER BY Pages ASC LIMIT 1)
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank LIMIT 1
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rating
SELECT T1.Title , T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T3.Club_Name , T2.Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T1.Club_ID = T3.Club_ID
SELECT Team_Leader FROM club WHERE Overall_Ranking > 100
SELECT T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id WHERE T1.Year_Join < 2018
SELECT T2.Name FROM club AS T1 JOIN member AS T2 ON T1.Club_ID = T3.Club_ID JOIN club_leader AS T3 ON T2.Member_ID = T3.Member_ID WHERE T1.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T2.Age) FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_name FROM collection_subsets
SELECT Collection_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT Collection_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM Document_Subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT OWNER FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = 'Marlin'
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = "Marlin"
SELECT DISTINCT description FROM Document_objects
SELECT count(DISTINCT description) FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT count(*) FROM Document_Objects WHERE OWNER = "Marlin"
SELECT document_object_id FROM document_objects EXCEPT SELECT parent_document_object_id FROM document_objects
SELECT document_object_id FROM document_objects WHERE parent_document_object_id != document_object_id
SELECT parent_document_object_id , count(*) FROM Document_Objects GROUP BY parent_document_object_id
SELECT count(*) , Parent_Document_Object_ID FROM Document_Objects GROUP BY Parent_Document_Object_ID
SELECT collection_name FROM Collections
SELECT collection_name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.parent_collection_id WHERE T2.collection_name = "Nice"
SELECT collection_name FROM collections WHERE collection_name = "Nice"
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.related_collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t1.collection_name = "Best has"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.related_collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = "Best"
SELECT t1.document_object_id FROM Document_Objects AS t1 JOIN Document_Subset_Members AS t2 ON t1.document_object_id = t2.document_object_id JOIN Document_Subsets AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t3.document_subset_name = "Ransom"
SELECT document_object_id FROM document_objects WHERE OWNER = "Ransom"
SELECT collection_subset_id , collection_subset_name , count(*) FROM collections_subset_members AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY collection_subset_id
SELECT collection_subset_id , collection_subset_name , count(*) FROM collections_collection_subset_members AS t1 JOIN collection_subsets AS t2 ON t1.collection_subset_id = t2.collection_subset_id GROUP BY collection_subset_id
SELECT document_object_id , count(*) FROM Document_Objects WHERE parent_document_object_id != "null" GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id , count(*) FROM Document_Objects WHERE parent_document_object_id != "null" GROUP BY document_object_id
SELECT document_object_id , count(*) FROM Document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id , count(*) FROM Document_subset_members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT document_object_id , count(*) FROM Document_Subset_Members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT DISTINCT OWNER FROM Document_Objects WHERE document_object_id IN ( SELECT document_object_id FROM Document_Objects WHERE OWNER = "Braeden" )
SELECT DISTINCT OWNER FROM Document_Objects WHERE Document_Object_ID IN (SELECT document_object_id FROM Document_Objects WHERE OWNER = "Braeden" UNION SELECT related_document_object_id FROM Document_Subset_Members WHERE document_object_id IN (SELECT document_object_id FROM Document_Objects WHERE OWNER = "Braeden"))
SELECT DISTINCT document_subsets.document_subset_name FROM document_subsets JOIN document_subset_members ON document_subsets.document_subset_id = document_subset_members.document_subset_id JOIN document_objects ON document_subset_members.related_document_object_id = document_objects.document_object_id WHERE document_objects.owner = "Braeden"
SELECT DISTINCT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_Objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT related_document_object_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000'
SELECT T2.document_subset_name , T1.document_object_id FROM Document_subset_members AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT DISTINCT T2.Document_Subset_Name , T1.Related_Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID
SELECT DISTINCT T1.collection_name FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.Owner = "Ransom "
SELECT t3.collection_name FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t1.owner = 'Ransom'
SELECT count(*) , document_object_id FROM Documents_in_Collections GROUP BY document_object_id
SELECT document_object_id , count(*) FROM Documents_in_Collections GROUP BY document_object_id
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT t1.document_object_id FROM Documents_in_Collections AS t1 JOIN Collections AS t2 ON t1.Collection_ID = t2.Collection_ID WHERE t2.collection_name = "Best"
SELECT count(DOC_OBJECT_ID) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T3.collection_name = "Best" JOIN documents_in_collections AS T4 ON T4.document_object_id = T3.collection_id WHERE T2.document_subset_name = "Best for 2000"
SELECT DISTINCT document_object_id FROM Document_Subset_Members WHERE document_subset_id IN (SELECT document_subset_id FROM Document_Subsets WHERE document_subset_name = "Best for 2000") INTERSECT SELECT DISTINCT document_object_id FROM Collection_Subset_Members WHERE collection_subsets_id IN (SELECT collection_subsets_id FROM Collection_Subsets WHERE collection_subsets_name = "Best")
SELECT document_object_id FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = "Best" EXCEPT SELECT document_object_id FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.related_document_object_id = t3.document_object_id WHERE t1.document_subset_name = "Best for 2000"
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id JOIN collection_subset_members AS T4 ON T3.collection_id = T4.related_collection_id JOIN collection_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE T3.collection_name = "Best" EXCEPT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id JOIN collection_subset_members AS T4 ON T3.collection_id = T4.related_collection_id JOIN collection_subsets AS T5 ON T4.collection_subset_id = T5.collection_subset_id WHERE T5.collection_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_ID = T2.document_subset_ID WHERE T2.document_subset_name = "Best for 2000" UNION SELECT document_object_id FROM collection_subset_members AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_ID = T2.collection_subset_ID WHERE T2.collection_subset_name = "Best"
SELECT DISTINCT T3.document_object_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T1.document_subset_name = 'Best for 2000' UNION SELECT DISTINCT T3.document_object_id FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.related_collection_id JOIN document_objects AS T3 ON T2.collection_id = T1.collection_id WHERE T1.collection_name = 'Best'
SELECT collection_name FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = "Best"
SELECT collection_name FROM collections WHERE collection_name LIKE "%Best%"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.related_collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = 'Best'
SELECT DISTINCT t3.collection_subset_name FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t1.collection_name = "Best"
SELECT collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.related_collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT id , name , popularity FROM participants ORDER BY count(*)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T2.id = T1.songs_id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T3.id , T3.name FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id JOIN songs AS T3 ON T1.songs_id = T3.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score );
SELECT T1.language , avg(T2.rhythm_tempo) FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = "english"
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT count(DISTINCT country) FROM city
SELECT count(DISTINCT country) FROM city
SELECT city_name , city_code , state , country FROM City
SELECT city_name , city_code , state , country FROM City
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE state = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE state = 'USA' ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT country , count(*) FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = 'MD'
SELECT fname , lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE state = 'MD'
SELECT count(*) FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE country = 'China'
SELECT count(*) FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE country = 'China'
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT fname , major FROM student WHERE city_code = "Baltimore"
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT T1.country , count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT t1.state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1
SELECT t1.country FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT T2.city_name FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T2.city_name FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T2.state FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code GROUP BY T2.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.country = 'USA'
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = "F" AND city_code IN (SELECT city_code FROM city WHERE state = "PA")
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = "BAL" AND city2_code = "CHI"
SELECT distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Boston") AND city2_code = (SELECT city_code FROM city WHERE city_name = "Newark")
SELECT distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Boston") AND city2_code = (SELECT city_code FROM city WHERE city_name = "Newark")
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT city1_code , city2_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT city1_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code , city2_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance < 1000 LIMIT 2
SELECT DISTINCT city1_code FROM direct_distance WHERE distance < 1000
SELECT sum(distance) FROM direct_distance WHERE city1_code = "BAL" OR city2_code = "BAL"
SELECT sum(distance) FROM direct_distance WHERE city1_code = 'BAL'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT t3.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t1.city_name = 'Chicago' ORDER BY t2.distance LIMIT 1
SELECT t2.city_name FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code WHERE t1.city1_code = "Chi" ORDER BY t1.distance LIMIT 1
SELECT T3.city_name FROM Direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN city AS T3 ON T1.city2_code = T3.city_code WHERE T2.city_name = 'Boston' ORDER BY T1.distance DESC LIMIT 1
SELECT T3.city_name FROM Direct_distance AS T1 JOIN Direct_distance AS T2 ON T1.city1_code = T2.city1_code JOIN City AS T3 ON T3.city_code = T1.city1_code WHERE T1.city2_code = "Boston" ORDER BY T1.distance DESC LIMIT 1
SELECT city1_code , (SELECT sum(distance) FROM direct_distance WHERE city1_code != city2_code) FROM direct_distance GROUP BY city1_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT t3.distance FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN student AS t3 ON t2.city2_code = t3.city_code WHERE t1.fname = "Linda" AND t1.lname = "Smith" AND t3.fname = "Tracy" AND t3.lname = "Kim"
SELECT distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Linda Smith") AND city2_code = (SELECT city_code FROM city WHERE city_name = "Tracy Kim")
SELECT t1.fname , t1.lname FROM student AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code JOIN city AS t3 ON t2.city2_code = t3.city_code WHERE t3.city_name = 'Linda Smith' ORDER BY t2.distance LIMIT 1
SELECT T3.fname , T3.lname FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN student AS T3 ON T1.city2_code = T3.city_code JOIN city AS T4 ON T4.city_code = T3.city_code WHERE T4.city_name = "Linda Smith" ORDER BY T1.distance DESC LIMIT 1
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = "Linda"
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = "Linda"
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT DISTINCT bid FROM Reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM Sailors WHERE age > (SELECT min(age) FROM Sailors)
SELECT sid FROM sailors EXCEPT SELECT sid FROM sailors WHERE age = (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM Sailors WHERE age > (SELECT max(age) FROM Sailors WHERE rating > 7)
SELECT DISTINCT name FROM Sailors WHERE age < (SELECT max(age) FROM Sailors WHERE rating > 7)
SELECT DISTINCT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid
SELECT DISTINCT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = 'red' OR T1.color = 'blue'
SELECT DISTINCT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T3.sid , T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT DISTINCT T3.sid , T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT sid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT sid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT T3.sid , T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' INTERSECT SELECT T3.sid , T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'blue'
SELECT T3.sid , T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' INTERSECT SELECT T3.sid , T3.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT name , sid FROM Sailors WHERE rating > 2 INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid
SELECT DISTINCT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.rating >= 3
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(rating) , max(age) FROM Sailors
SELECT count(*) , T1.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT bid , count(*) FROM Reserves GROUP BY bid HAVING count(*) > 1
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid > 1 GROUP BY T1.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name
SELECT avg(T1.age) , T1.rating FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' GROUP BY T1.rating
SELECT T3.rating , avg(T3.age) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' GROUP BY T3.rating
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE sid IN (SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red'))
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE sid IN (SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red'))
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.name = 'Melon'
SELECT DISTINCT T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.name = 'Melon'
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT model FROM headphone ORDER BY model
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT model FROM headphone ORDER BY earpads DESC LIMIT 2
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT AVG(Price) , Construction FROM headphone GROUP BY Construction
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction != 'Plastic'
SELECT model FROM headphone WHERE construction != 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT COUNT(*) , neighborhood FROM store GROUP BY neighborhood
SELECT T2.Name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.name ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.Name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T2.name
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock WHERE quantity = 0)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone EXCEPT SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT t1.model FROM headphone AS t1 JOIN stock AS t2 ON t1.headphone_id = t2.headphone_id GROUP BY t1.headphone_id ORDER BY sum(t2.quantity) DESC LIMIT 1
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.neighborhood = 'Woodman'
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.neighborhood = 'Woodman'
SELECT neighborhood FROM store EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id
SELECT DISTINCT neighborhood FROM store EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Columbia University' AND T3.year = 2009
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Columbia University' AND T3.year = 2009
SELECT name , address FROM Affiliation
SELECT name , address FROM Affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT t1.title , t3.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Harvard University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown'
SELECT t3.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'Mckeown'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford' INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' AND t3.name = 'Kathleen' INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Rambow' AND t3.name = 'Owen'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' AND t2.author_id IN ( SELECT author_id FROM author AS t4 WHERE t4.name = 'Rambow' )
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' EXCEPT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Rambow'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' EXCEPT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Rambow'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'Mckeown' OR t3.name = 'Rambow'
SELECT t3.title , t2.paper_id FROM author_list AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t1.paper_id = t3.paper_id WHERE t2.name = 'Mckeown' OR t2.name = 'Kathleen' OR t2.name = 'Rambow' OR t2.name = 'Owen'
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.name ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t2.author_id HAVING count(*) = 1
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t2.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM Paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation WHERE cited_paper_id = 'D12-1027'
SELECT count(*) FROM citation WHERE cited_paper_id = 'D12-1027'
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id , count(*) FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T2.cited_paper_id FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT T1.title , T2.cited_paper_id , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = "Mckeown , Kathleen"
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t1.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T2.paper_id = T3.paper_id JOIN author AS T4 ON T3.author_id = T4.author_id WHERE T4.name = 'Mckeown , Kathleen'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T2.paper_id = T3.paper_id JOIN author AS T4 ON T3.author_id = T4.author_id WHERE T4.name = 'Mckeown , Kathleen'
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN citation AS t3 ON t2.paper_id = t3.paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Author AS T1 JOIN Citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.venue , T3.year FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown , Kathleen'
SELECT T3.venue , T3.year FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Mckeown , Kathleen'
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t3.author_id WHERE t2.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t1.year = 2009 GROUP BY t3.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name , T2.affiliation_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T2.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Columbia University' AND T3.year <= 2009
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Columbia University' AND T3.year =< 2009
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Stanford University' AND T3.year BETWEEN 2000 AND 2009
SELECT count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Stanford University' AND T3.year BETWEEN 2000 AND 2009
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown , Kathleen"
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown , Kathleen"
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.paper_id IN (SELECT t2.paper_id FROM author AS t3 JOIN author_list AS t4 ON t3.author_id = t4.author_id WHERE t3.name = 'Mckeown , Kathleen ' INTERSECT SELECT t2.paper_id FROM author AS t5 JOIN author_list AS t6 ON t5.author_id = t6.author_id WHERE t5.name = 'Mckeown , Kathleen ')}
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.paper_id IN (SELECT t2.paper_id FROM author AS t3 JOIN author_list AS t4 ON t3.author_id = t4.author_id JOIN paper AS t5 ON t4.paper_id = t5.paper_id WHERE t5.title LIKE '%Mckeown , Kathleen%' GROUP BY t4.paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.author_id HAVING count(*) > 50 )
SELECT count(*) FROM author_list WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN citation AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.author_id HAVING count(*) > 50 )
SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.venue = 'NAACL' AND t2.year = 2009 INTERSECT SELECT t1.name FROM author AS t1 JOIN paper AS t2 ON t1.author_id = t2.author_id WHERE t2.venue = 'ACL' AND t2.year = 2009
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.venue = 'NAACL' AND T2.year = 2009 INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.venue = 'ACL' AND T2.year = 2009
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.venue = 'ACL'
SELECT name FROM author EXCEPT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.venue = 'ACL'
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT Conference_Name , COUNT(*) FROM conference GROUP BY Conference_Name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T2.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age) , min(age) FROM staff
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = 'Canada'
SELECT T3.Conference_Name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.Conference_ID = T3.Conference_ID WHERE T2.Nationality = 'Canadian'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2005 INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2006
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'ACL' INTERSECT SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.conference_name = 'NACCL'
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T3.name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name , T1.year
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T2.Conference_Name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT T2.Conference_Name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name = 'ACL') )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name = 'ACL') )
SELECT name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004)
SELECT name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004)
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT pilot_name FROM pilotskills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT LOCATION FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT LOCATION FROM hangar WHERE plane_name = "F-14 Fighter"
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT DISTINCT plane_name FROM pilotskills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilotskills WHERE age < 35 AND plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub' )
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub' )
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM hangar WHERE LOCATION = 'Chicago'
SELECT count(*) FROM hangar WHERE LOCATION = 'Chicago'
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM pilotskills WHERE pilot_name = 'Smith' AND age = 41)
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Smith'
SELECT count(*) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM Pilotskills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT location FROM hangar ORDER BY plane_name
SELECT DISTINCT location FROM hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilots WHERE age < 30 OR age > 40
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age > 35 UNION SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'F-14 Fighter' AND age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age > 35 OR plane_name = 'F-14 Fighter' AND age < 30
SELECT pilot_name FROM pilots WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilots WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE LOCATION = 'Austin' INTERSECT SELECT plane_name FROM hangar WHERE LOCATION = 'Boston')
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM Pilskills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14'
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT count(*) , location FROM hangar GROUP BY location
SELECT plane_name , count(*) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , pilot_name FROM PilotSkills GROUP BY plane_name ORDER BY max(age) DESC
SELECT DISTINCT plane_name , pilot_name FROM PilotSkills WHERE age = (SELECT min(age) FROM PilotSkills GROUP BY plane_name) ORDER BY plane_name
SELECT pilot_name , plane_name , max(age) FROM pilotskills GROUP BY plane_name
SELECT plane_name , pilot_name FROM pilotskills WHERE age = (SELECT min(age) FROM pilotskills GROUP BY plane_name)
SELECT max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM pilotskills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT T1.location , avg(T2.age) , count(*) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM (SELECT pilot_name , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35)
SELECT plane_name , count(*) FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilots WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT District_ID , name , government_website FROM district ORDER BY Population
SELECT name FROM district WHERE government_website LIKE "%gov%"
SELECT District_ID , name FROM district WHERE Population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(age) , avg(points) FROM spokesman WHERE rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.Start_year < 2004
SELECT T3.name , count(*) FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id JOIN district AS T3 ON T1.district_id = T3.district_id GROUP BY T1.district_id
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T2.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 1 INTERSECT SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T2.spokesman_id = T3.spokesman_id WHERE T3.rank_position = 2
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(T1.Population) , avg(T1.Population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings WHERE YEAR = (SELECT min(YEAR) FROM paintings)
SELECT title , LOCATION FROM paintings WHERE YEAR = (SELECT min(YEAR) FROM paintings)
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT title , YEAR FROM Sculptures WHERE location != 'gallery 226'
SELECT title , YEAR FROM sculptures WHERE LOCATION != "gallery 226"
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2 sculptorID WHERE T2.year > 1920
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT fname , lname FROM artists ORDER BY deathyear - birthyear LIMIT 1
SELECT fname , lname FROM artists ORDER BY deathyear - birthyear DESC LIMIT 1
SELECT deathyear - birthyear FROM Artists ORDER BY deathyear - birthyear LIMIT 1
SELECT deathYear - birthYear FROM Artists ORDER BY deathYear - birthYear LIMIT 1
SELECT fname , deathYear - birthYear FROM Artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT fname , deathYear - birthYear FROM Artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = "gallery 240"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Raphael" AND T2.lname = "Santi"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear - T2.birthyear DESC LIMIT 1
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.deathyear - T2.birthyear = (SELECT max(deathyear) - min(birthyear) FROM artists)
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT avg(T2.width_mm) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT location , mediumOn FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithograph'
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.mediumon = "canvas"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = "gallery 241"
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = 'oil' AND T2.location = 'gallery 241'
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium UNION SELECT count(*) , medium FROM sculptures GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , location FROM paintings WHERE YEAR < 1900 GROUP BY location
SELECT count(*) , location FROM paintings WHERE YEAR < 1900 GROUP BY location
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT title FROM paintings WHERE medium = "oil" AND YEAR > 1910
SELECT DISTINCT painterID FROM paintings WHERE medium = "oil" AND location = "gallery 240"
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = "oil" AND T1.location = "gallery 240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE mediumon = "canvas")
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE mediumon = 'canvas')
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE paintingID IN (SELECT paintingID FROM paintings WHERE LOCATION = "gallery 240"))
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY width_mm + height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950 UNION SELECT title FROM sculptures WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT title FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950 UNION SELECT title FROM sculptures WHERE YEAR >= 1900 AND YEAR <= 1950
SELECT title FROM paintings WHERE painterID = 222 UNION SELECT title FROM sculptures WHERE sculptorID = 222
SELECT title FROM paintings WHERE painterID = 222 UNION SELECT title FROM sculptures WHERE sculptorID = 222
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT painterID FROM paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT location FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 AND width_mm < 2000
SELECT LOCATION FROM Paintings WHERE mediumOn = "panel" INTERSECT SELECT LOCATION FROM Paintings WHERE mediumOn = "canvas"
SELECT LOCATION FROM Paintings WHERE mediumOn = "panel" INTERSECT SELECT LOCATION FROM Paintings WHERE mediumOn = "canvas"
SELECT location FROM paintings WHERE YEAR < 1885 INTERSECT SELECT location FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = "241"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND location = "gallery 241"
SELECT max(height_mm) , paintingID FROM paintings WHERE YEAR < 1900
SELECT height_mm , paintingID FROM Paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname , T1.lname ORDER BY T1.fname , T1.lname
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname , T1.lname ORDER BY T1.fname , T1.lname
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname , T1.lname ORDER BY count(*) LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname , T1.lname ORDER BY count(*) ASC LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE location = "gallery 240" ORDER BY width_mm DESC LIMIT 1
SELECT height_mm , paintingID FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE location = "gallery 240")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(year) FROM paintings WHERE painterid IN (SELECT artistid FROM artists WHERE lname = "Van Gogh"))
SELECT paintingID FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE location = 'gallery 240')
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 1
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY year
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT location , title , YEAR FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID EXCEPT SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT fname , lname FROM Artists EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT location FROM paintings WHERE YEAR < 1885 EXCEPT SELECT location FROM paintings WHERE mediumon = "canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT T2.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_id = T2.Driver_id WHERE T1.Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE Age < 20 OR Age > 30
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_Name
SELECT T2.driver_name , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_name
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING count(*) >= 2
SELECT T1.Driver_Name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING count(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.age >= 26
SELECT driver_name FROM driver WHERE constructor != "Bugatti"
SELECT driver_name FROM driver WHERE constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT driver_name FROM driver EXCEPT SELECT T2.driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE pole_position = "James Hinchcliffe"
SELECT driver_name FROM driver EXCEPT SELECT T2.driver_name FROM pole_position AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.driver_name = "James Hinchcliffe"
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
SELECT count(DISTINCT T1.id) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T3.name , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id
SELECT T2.name , T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id
SELECT T3.name , count(*) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T3.name
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(T2.overall_score) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T3.name = "English"
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id GROUP BY T1.name ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id GROUP BY T1.id ORDER BY avg(T3.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages EXCEPT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T2.property_id
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM FEATURES WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.feature_name , t1.feature_description FROM features AS t1 JOIN property_features AS t2 ON t1.feature_id = t2.feature_id GROUP BY t2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = '1'
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = '1'
SELECT DISTINCT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN USERS AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%Mother%' OR T2.middle_name LIKE '%Mother%' OR T2.last_name LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.other_user_details LIKE '%Mother%'
SELECT t2.first_name FROM properties AS t1 JOIN users AS t2 ON t1.owner_user_id = t2.user_id GROUP BY t1.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T1.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM properties AS t1 JOIN property_features AS t2 ON t1.property_id = t2.property_id JOIN features AS t3 ON t2.feature_id = t3.feature_id WHERE t3.feature_name = 'garden'
SELECT avg(T1.room_count) FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id JOIN features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.feature_name = 'Garden'
SELECT DISTINCT T2.town_city FROM Property_Features AS T1 JOIN Ref_Features AS T2 ON T1.feature_id = T2.feature_id JOIN Properties AS T3 ON T1.property_id = T3.property_id WHERE T2.feature_name = "swimming pool"
SELECT DISTINCT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN property_features AS T3 ON T2.property_id = T3.property_id JOIN features AS T4 ON T3.feature_id = T4.feature_id WHERE T4.feature_name = 'swimming pool'
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT DISTINCT T1.zip_postcode FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN users AS T3 ON T2.owner_user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) > 2
SELECT DISTINCT T1.zip_postcode FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id JOIN users AS T3 ON T2.owner_user_id = T3.user_id GROUP BY T3.user_id HAVING count(*) > 2
SELECT T1.category , T2.user_id FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.user_category_code GROUP BY T2.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN USERS AS T2 ON T1.age_category_code = T2.age_category_code JOIN USER_SEARCHES AS T3 ON T2.user_id = T3.user_id ORDER BY T3.search_datetime LIMIT 1
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code JOIN User_Searches AS T3 ON T2.user_id = T3.user_id ORDER BY T3.search_datetime LIMIT 1
SELECT login_name FROM Users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 'T'}
SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 't'
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = '1'
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = '1'
SELECT T2.line_1_number_building , T2.line_2_number_street , T2.town_city FROM Users AS T1 JOIN Addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.age_category_code = "Senior Citizen"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "senior"
SELECT count(*) FROM properties AS t1 JOIN property_features AS t2 ON t1.property_id = t2.property_id GROUP BY t1.property_id HAVING count(*) >= 2
SELECT count(*) FROM properties AS t1 JOIN property_features AS t2 ON t1.property_id = t2.property_id GROUP BY t1.property_id HAVING count(*) >= 2
SELECT T1.property_id , count(*) FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT property_id , count(*) FROM Property_Photos GROUP BY property_id
SELECT T2.user_id , count(*) FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.user_id
SELECT T2.owner_user_id , count(*) FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.owner_user_id
SELECT sum(T2.price_max) FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_category_code = "single" OR T1.user_category_code = "student"
SELECT sum(T2.price_max) FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN Ref_User_Categories AS T3 ON T1.user_category_code = T3.user_category_code WHERE T3.age_category_description = 'Single mother' OR T3.age_category_description = 'Student'
SELECT T2.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T2.datestamp
SELECT T2.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T2.datestamp
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.property_type_description , T1.property_type_code FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T2.country FROM Users AS T1 JOIN Addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = "Robbie"
SELECT T2.first_name , T2.middle_name , T2.last_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id JOIN addresses AS T3 ON T1.property_address_id = T3.address_id WHERE T2.user_id = T3.user_address_id
SELECT DISTINCT T1.first_name , T1.last_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN addresses AS T3 ON T2.property_address_id = T3.address_id WHERE T3.town_city = "Bolton"
SELECT search_string FROM User_Searches WHERE user_id NOT IN ( SELECT owner_user_id FROM Properties )
SELECT search_string FROM User_Searches WHERE user_id NOT IN ( SELECT user_id FROM Properties )
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT last_name , user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , RESULT FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T1.bike_id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.nation = 'Russia' OR T2.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 );
SELECT DISTINCT T3.product_name FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.result < '4:21.558'
SELECT T3.product_name , T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Bradley Wiggins' INTERSECT SELECT T3.product_name , T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Antonio Tauler'
SELECT name , nation , RESULT FROM cyclist EXCEPT SELECT T1.name , T1.nation , T1.RESULT FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T3.product_name = 'racing bike'
SELECT product_name FROM bike WHERE material LIKE "%fiber%"
SELECT T1.id , count(*) FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT food , flavor FROM goods WHERE price = (SELECT max(price) FROM goods)
SELECT id , flavor FROM goods WHERE food = "cake" ORDER BY price DESC LIMIT 1
SELECT food , flavor FROM goods ORDER BY price LIMIT 1
SELECT id , flavor FROM goods ORDER BY price LIMIT 1
SELECT id FROM goods WHERE Flavor = "Apple"
SELECT Id FROM goods WHERE Flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T2.customerid FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN receipts AS T3 ON T3.receiptnumber = T2.receipt WHERE T1.flavor = "Lemon" AND T1.food = "cake"
SELECT DISTINCT T3.customerid FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN receipts AS T3 ON T3.receiptnumber = T2.receipt WHERE T1.flavor = "lemon"
SELECT T3.Food , count(*) FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id GROUP BY T3.Food
SELECT T4.food , count(*) FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id GROUP BY T3.food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.ordinal = T2.receipt JOIN goods AS T4 ON T4.id = T3.item WHERE T4.food = "bakery" GROUP BY T1.id HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T3.LastName FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt JOIN customers AS T3 ON T1.CustomerId = T3.Id JOIN goods AS T4 ON T2.Item = T4.Id WHERE T4.Food = "bakery" GROUP BY T1.CustomerId HAVING count(*) > 10
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.ordinal = T2.id JOIN goods AS T4 ON T4.id = T3.item WHERE T4.food = "bakery" GROUP BY T1.id HAVING count(*) > 10
SELECT count(*) FROM goods WHERE food = "Cake"
SELECT count(*) FROM goods WHERE food = "Cake"
SELECT DISTINCT food FROM goods WHERE food = "Croissant"
SELECT DISTINCT flavor FROM goods WHERE food = "croissant"
SELECT DISTINCT T3.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T1.CustomerId = 15
SELECT DISTINCT T3.food FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id WHERE T1.customerid = 15
SELECT food , avg(price) , max(price) , min(price) FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "Cookie"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "Cake" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "Cookie"
SELECT T3.ReceiptNumber FROM customers AS T1 JOIN items AS T2 JOIN goods AS T3 ON T1.id = T2.ordinal AND T2.item = T3.id WHERE T1.lastname = "LOGAN" AND T3.food = "Croissant"
SELECT T3.ReceiptNumber FROM customers AS T1 JOIN items AS T2 JOIN goods AS T3 ON T1.id = T2.customerid AND T3.id = T2.item WHERE T1.lastname = "Logan" AND T3.food = "croissant"
SELECT T2.receiptnumber , T2.date FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T1.price DESC LIMIT 1
SELECT T2.receiptnumber , T2.date FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T1.price DESC LIMIT 1
SELECT T2.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber GROUP BY T2.Item ORDER BY count(*) ASC LIMIT 1
SELECT T2.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt GROUP BY T2.Item ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , food FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT id FROM goods WHERE price < 5 AND Flavor = "Apricot"
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10
SELECT flavor FROM goods WHERE price > 10 AND food = 'Cake'
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.price > 13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 13
SELECT T4.date FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.receiptnumber = T1.receipt WHERE T2.price > 15
SELECT T4.date FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.receiptnumber = T1.receipt WHERE T2.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT flavor , price FROM goods WHERE id = 70
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE food = "Yes" ORDER BY id
SELECT DISTINCT id FROM goods ORDER BY id
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "pie" AND T3.Flavor = "apple" UNION SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T1.CustomerId = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = "pie" AND T3.Flavor = "apple" UNION SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T1.CustomerId = 12
SELECT latest_date , receiptnumber FROM (SELECT date , receiptnumber , receiptnumber , max(date) AS latest_date FROM receipts GROUP BY receiptnumber)
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1
SELECT T1.earliest , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 10 UNION SELECT T1.earliest , T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id ORDER BY T1.date ASC LIMIT 1
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 10 UNION SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id ORDER BY T1.Date LIMIT 1
SELECT id FROM goods WHERE food = "Cookie" OR food = "Cake" AND price BETWEEN 3 AND 7
SELECT Id FROM goods WHERE food = "Cookie" OR food = "Cake" AND price BETWEEN 3 AND 7
SELECT t1.firstname , t1.lastname FROM customers AS t1 JOIN receipts AS t2 ON t1.id = t2.customerid ORDER BY t2.date LIMIT 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR price = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR food = "blueberry"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT min(price) FROM goods WHERE flavor = "cheese"
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT min(Price) , max(Price) FROM goods WHERE Food = 'Food'
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT T1.firstname , T1.lastname , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT Date , count(DISTINCT customerid) FROM receipts GROUP BY Date
SELECT date , count(*) FROM receipts GROUP BY date
SELECT t3.firstname , t3.lastname FROM goods AS t1 JOIN items AS t2 ON t1.id = t2.item JOIN customers AS t3 ON t3.id = t2.ordinal WHERE t1.flavor = "apple" AND t1.food = "Tart"
SELECT T3.FirstName , T3.LastName FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN receipts AS T3 ON T3.customerid = T2.customerid WHERE T1.flavor = "apple" AND T1.food = "Tarts"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = "Tart") AND food = "Cake"
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE Food = "Tart") AND Food = "Cake"
SELECT id FROM goods WHERE price > (SELECT avg(price) * 2 FROM goods)
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id , food , TYPE FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods WHERE food = 'Cake' ORDER BY flavor
SELECT id , flavor FROM goods WHERE food = 'Cake' ORDER BY flavor
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "chocolate" EXCEPT SELECT item FROM items GROUP BY item HAVING count(*) > 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'chocolate' GROUP BY T1.item HAVING count(*) <= 10
SELECT DISTINCT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT DISTINCT flavor FROM goods WHERE food = "Tart"
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT flavor FROM goods WHERE food = "Tart"
SELECT T1.flavor , T1.food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T2.item ORDER BY count(*) DESC LIMIT 3
SELECT T2.food FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T1.item ORDER BY count(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.ordinal JOIN goods AS T4 ON T3.item = T4.id GROUP BY T1.id HAVING sum(T4.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.id = T3.id JOIN goods AS T4 ON T3.item = T4.id GROUP BY T1.id HAVING sum(T4.price) > 150
SELECT T3.customerId FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN receipts AS T3 ON T3.receiptnumber = T2.receipt GROUP BY T3.customerId HAVING avg(T1.price) > 5
SELECT avg(T3.Price) , T3.id FROM items AS T1 JOIN goods AS T2 JOIN receipts AS T3 ON T1.item = T2.id AND T1.receipt = T3.receiptnumber GROUP BY T3.id HAVING avg(T3.price) > 5
SELECT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T2.item = T3.id GROUP BY T1.date HAVING sum(T3.price) > 100
SELECT T2.date FROM items AS T1 JOIN receipts AS T2 ON T1 receipt = T2.receiptnumber JOIN goods AS T3 ON T1.item = T3.id GROUP BY T2.date HAVING sum(T3.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT Make , count(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , COUNT(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
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
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Capital = "Dublin"
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Capital = "Dublin"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Official_native_language = "English"
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T1.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T2.Points = (SELECT max(Points) FROM driver)
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T2.Points = (SELECT max(Points) FROM driver)
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
SELECT Country FROM country WHERE Country_Id NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT T2.Manager , T2.Sponsor FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T2.Team_ID HAVING COUNT(*) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T2.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT name FROM institution ORDER BY name ASC
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY founded ASC
SELECT name FROM institution ORDER BY founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Enrollment LIMIT 1
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T2.Institution_ID ORDER BY count(*) DESC
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING count(*) >= 1
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution
SELECT count(DISTINCT province) FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT T1.Contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = "New York"
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(VALUE) , warehouse FROM boxes GROUP BY warehouse
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
SELECT DISTINCT LOCATION FROM warehouses
SELECT DISTINCT LOCATION FROM warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT DISTINCT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks" EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Scissors"
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = 'Rocks' EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = 'Scissors'
SELECT DISTINCT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' OR T2.contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = "Rocks" OR contents = "Scissors"
SELECT T1.Location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Rocks" INTERSECT SELECT T1.Location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = "Scissors"
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.Contents = "Rocks" INTERSECT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.Contents = "Scissors"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code ORDER BY T2.capacity DESC LIMIT 1
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code ORDER BY T2.capacity DESC LIMIT 1
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT avg(T1.value) , T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T1.value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , location FROM warehouses GROUP BY location
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(VALUE) , warehouse FROM boxes GROUP BY warehouse
SELECT max(value) , warehouse FROM boxes GROUP BY warehouse
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT T1.location) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity = 0
SELECT T2.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.capacity > T2.capacity
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT count(*) FROM university WHERE state = "Illinois" OR state = "Ohio"
SELECT count(*) FROM university WHERE State = "Illinois" OR State = "Ohio"
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference , COUNT(*) FROM university GROUP BY Home_Conference
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY sum(Enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY avg(Enrollment) ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.rank , T1.major_name FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.university_name = "Augustana College"
SELECT T2.rank , T2.major_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_ID = T2.university_ID WHERE T1.university_name = "Augustana College"
SELECT T1 university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_ID = T2.university_ID JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" AND T2.rank = 1
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank = 1 GROUP BY T1.University_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank = 1 GROUP BY T2.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT university_name FROM university EXCEPT SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1
SELECT university_name FROM university EXCEPT SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1
SELECT T3.University_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T3.University_ID = T1.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T3.University_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T3.University_ID = T1.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name , T2.Rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "WI"
SELECT T2.University_Name , T1.rank FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.State = "WI"
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Research_point DESC LIMIT 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" AND T2.rank >= 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" AND T2.rank >= 3
SELECT sum(T2.Enrollment) FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank <= 5
SELECT sum(T2.Enrollment) FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank <= 5
SELECT T1.University_Name , T2.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY Reputation_point DESC LIMIT 3
SELECT T2.University_Name , T1.Citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Rating FROM Movies)
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Code FROM MovieTheaters)
SELECT title FROM movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(DISTINCT movie) FROM movie_theaters
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT movie) FROM movie_theaters
SELECT count(DISTINCT movie) FROM movie_theaters
SELECT count(DISTINCT name) FROM movie_theaters
SELECT count(DISTINCT name) FROM movietheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT DISTINCT T2.name FROM movies AS T1 JOIN movie_theaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.name = "Odeon" INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.name = "Imperial"
SELECT movie FROM movie_theaters WHERE name = 'Odeon' INTERSECT SELECT movie FROM movie_theaters WHERE name = 'Imperial'
SELECT DISTINCT title FROM movies EXCEPT SELECT T2.title FROM movie_theaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon'
SELECT DISTINCT title FROM movies EXCEPT SELECT T2.title FROM movie_theaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.code = 'Odeon'
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T2.name FROM MovieTheaters AS T1 JOIN MovieTheaters AS T2 ON T1.movie = T2.movie GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM MovieTheaters AS T1 JOIN MovieTheaters AS T2 ON T1.movie = T2.movie GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT rating , count(*) FROM movies GROUP BY rating
SELECT rating , count(*) FROM movies GROUP BY rating
SELECT count(*) FROM movies WHERE rating != "null"
SELECT count(*) FROM movies WHERE rating != "null"
SELECT DISTINCT T2.Name FROM Movie AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT DISTINCT name FROM MovieTheaters
SELECT Name FROM MovieTheaters WHERE Movie = 0
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT DISTINCT T2.name FROM movies AS T1 JOIN movie_theaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT title FROM movies
SELECT DISTINCT TITLE FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT DISTINCT rating FROM Movies
SELECT * FROM movies WHERE rating = "Unrated"
SELECT * FROM movies WHERE rating = "Unrated"
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Recipient FROM Package ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient ORDER BY T2.weight DESC LIMIT 1
SELECT sum(weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong"
SELECT sum(weight) FROM Package WHERE sender IN (SELECT accountnumber FROM Client WHERE name = "Leo Wong")
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(Salary) FROM Employee WHERE POSITION = 'intern'
SELECT avg(Salary) FROM Employee WHERE POSITION = 'intern'
SELECT max(T1.Level) FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T2.Position = "Physician";
SELECT T1.employeeid , T1.name , T1.position , T2.level FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employeeid WHERE T1.position = 'Physician'
SELECT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE employeeID IN (SELECT employeeid FROM employee WHERE name = "Leo Wong") )
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender WHERE T1.Name = "Leo Wong"
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = "Leo Wong"
SELECT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN shipment AS T3 ON T3.shipmentID = T1.shipment JOIN employee AS T4 ON T4.employeeid = T3.manager WHERE T4.name = "Leo Wong"
SELECT * FROM employee AS T1 JOIN package AS T2 ON T1.employeeid = T2.sender OR T1.employeeid = T2.recipient WHERE T1.name = "Leo Wong"
SELECT DISTINCT T2.PackageNumber FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender OR T1.EmployeeID = T2.Recipient WHERE T1.Name = "Leo Wong"
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender JOIN Client AS T3 ON T2.Recipient = T3.AccountNumber WHERE T1.Name = "Ogden Wernstrom" INTERSECT SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender JOIN Client AS T3 ON T2.Recipient = T3.AccountNumber WHERE T1.Name = "Leo Wong"
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender JOIN Client AS T3 ON T2.Recipient = T3.AccountNumber WHERE T1.Name = "Ogden Wernstrom" AND T3.Name = "Leo Wong"
SELECT T1.contents FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber JOIN employee AS T3 ON T3.employeeid = T2.employeeid WHERE T3.name = "John Zoidfarb"
SELECT T1.contents FROM Package AS T1 JOIN Client AS T2 ON T1.sender = T2.accountnumber JOIN Employee AS T3 ON T3.employeeid = T2.employeeid WHERE T3.name = "John Zoidfarb"
SELECT T1.PackageNumber , T1.Weight FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber JOIN Employee AS T3 ON T3.EmployeeID = T2.EmployeeID WHERE T3.Name LIKE "%John%" ORDER BY T1.Weight DESC LIMIT 1
SELECT packageNumber , WEIGHT FROM Package WHERE Sender IN (SELECT AccountNumber FROM Client WHERE Name LIKE '%John%') ORDER BY WEIGHT DESC LIMIT 1
SELECT packagenumber , WEIGHT FROM Package ORDER BY WEIGHT ASC LIMIT 3
SELECT PackageNumber , Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT T1.name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T1.recipient ORDER BY count(*) ASC LIMIT 1
SELECT Recipient , Sender FROM Package GROUP BY Recipient , Sender ORDER BY count(*) ASC LIMIT 1
SELECT T1.name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM Planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name
SELECT ShipmentID FROM shipment WHERE manager = (SELECT employeeid FROM employee WHERE name = 'Phillip J. Fry')
SELECT ShipmentID FROM shipment WHERE manager = (SELECT employeeid FROM employee WHERE name = "Phillip J Fry")
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM shipment WHERE planet = "Mars" AND manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = 'Mars' AND T2.name = 'Turanga Leela'
SELECT shipmentid FROM shipment WHERE planet = "Mars" OR manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = 'Mars' AND T2.name = 'Turanga Leela'
SELECT T2.name , count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.name
SELECT T2.name , count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , count(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T2.Manager
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
SELECT sum(T1.weight) FROM Package AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.name = 'Mars'
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Mars"
SELECT sum(T2.weight) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetID = T2.planet GROUP BY T1.name
SELECT sum(T2.weight) , T1.name FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipment GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN package AS T3 ON T3.shipment = T1.shipmentid GROUP BY T2.name HAVING sum(T3.weight) > 30
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN package AS T3 ON T3.shipment = T1.shipmentid GROUP BY T1.planet HAVING sum(T3.weight) > 30
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid JOIN employee AS T4 ON T2.manager = T4.employeeid WHERE T3.name = "Omicron Persei 8" AND T4.name = "Zapp Brannigan"
SELECT count(*) FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid JOIN shipment AS T3 ON T3.manager = T2.employeeid JOIN package AS T4 ON T4.shipment = T3.shipmentid JOIN planet AS T5 ON T5.planetid = T3.planet WHERE T2.name = "Zapp Brannigan" AND T5.name = "Omicron Persei 8"
SELECT T2.PackageNumber FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Planet = "Omicron Persei 8" OR T2.Sender = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" OR T2.sender = "Zapp Brannigan"
SELECT PackageNumber , WEIGHT FROM Package WHERE WEIGHT BETWEEN 10 AND 30
SELECT packageNumber , WEIGHT FROM Package WHERE WEIGHT BETWEEN 10 AND 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM Has_clearance WHERE planet = "Mars")
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = "Mars"
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.name = "Omega III"
SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omega III"
SELECT T2.name FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.employee = T3.employeeid GROUP BY T1.planet HAVING count(*) = 1
SELECT T2.name FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T1.planet HAVING count(*) = 1
SELECT name FROM Employee WHERE salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employee FROM has_clearance WHERE planet = "Mars")
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employee FROM has_clearance WHERE planet = "Mars" );
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , developers FROM game ORDER BY unit_sold_Millions DESC
SELECT title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT platform_id , platform_name FROM platform WHERE download_rank = 1
SELECT platform_id , platform_name FROM platform WHERE download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name , T3.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.player_name , T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T3.Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Auburn"
SELECT DISTINCT T3.Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Auburn"
SELECT avg(T3.Units_sold_Millions) FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.Position = "Guard"
SELECT avg(T2.units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.Position = "Guard"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = 'Asia' OR T1.Market_district = 'USA'
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T3.Game_ID = T1.Game_ID WHERE T2.College = "Oklahoma" INTERSECT SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T3.Game_ID = T1.Game_ID WHERE T2.College = "Auburn"
SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = "Oklahoma" OR T2.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game EXCEPT SELECT T3.title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.position = "Guard"
SELECT title FROM game EXCEPT SELECT T3.title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.Position = "Guard"
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press WHERE Month_Profits_billion > 15 OR Year_Profits_billion > 15
SELECT name FROM press WHERE Month_Profits_billion > 1 OR Year_Profits_billion > 15
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) , name FROM press GROUP BY name
SELECT name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Book_Series , COUNT(*) FROM book GROUP BY Book_Series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Title , T3.Name , T2.Name FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID JOIN author AS T3 ON T1.Author_ID = T3.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.Name , COUNT(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id ORDER BY t2.sale_amount DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id ORDER BY t2.sale_amount DESC LIMIT 1
SELECT T1.Name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T2.name = "Accor")
SELECT name FROM author EXCEPT SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.press_id = T3.press_id WHERE T3.name = "Accor"
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT count(*) FROM authors
SELECT DISTINCT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id = 4;
SELECT author_name FROM Documents WHERE document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = "Era Kerluke"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT count(*) , author_name FROM Documents GROUP BY author_name
SELECT author_name FROM Documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT process_name FROM Business_Processes WHERE process_id = ( SELECT next_process_id FROM Business_Processes WHERE process_id = 9 )
SELECT count(*) FROM Process_outcomes
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
SELECT count(DISTINCT document_id) FROM Documents_Processes
SELECT DISTINCT document_id FROM Documents_processs
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_Processes
SELECT process_id FROM business_processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT T3.process_outcome_description , T4.process_status_description FROM Documents_Processes AS T1 JOIN Business_Processes AS T2 ON T1.process_id = T2.process_id JOIN Process_outcomes AS T3 ON T1.process_outcome_code = T3.process_outcome_code JOIN Process_Status AS T4 ON T1.process_status_code = T4.process_status_code WHERE T1.document_id = 0
SELECT T2.process_name FROM Documents AS T1 JOIN Business_Processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Travel to Brazil"
SELECT count(*) , T1.process_id FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id GROUP BY T1.process_id
SELECT count(*) FROM Staff_in_Processes WHERE document_id = 0 AND process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_details , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details , sic_code FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(invoice_id) >= 2
SELECT invoice_status , COUNT(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM invoices GROUP BY invoice_status
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status , T1.invoice_details , T1.client_id , T2.client_details , T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T1.client_id , T2.client_details , T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , purpose_of_meeting FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT T2.payment_id , T2.payment_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T2.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT T2.invoice_id , T1.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T2.agency_details FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT meeting_id , count(*) FROM Staff_in_Meetings GROUP BY meeting_id
SELECT staff_id , count(*) FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_Meetings )
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT staff_id , staff_details FROM Staff WHERE staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE "%s%"
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Invoices AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN invoices AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T4.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id JOIN Staff AS T4 ON T2.staff_id = T4.staff_id
SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T4.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id JOIN Staff AS T4 ON T2.staff_id = T4.staff_id
