SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name
SELECT name FROM club ORDER BY name ASC
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID HAVING COUNT(*) > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC;
SELECT manufacturer , count(*) FROM club GROUP BY manufacturer
SELECT count(*) , manager FROM club GROUP BY manager
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000;
SELECT count(DISTINCT country) FROM player AS T1;
SELECT count(DISTINCT country) FROM player AS T1;
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY min(T2.order_item_status_code) ASC LIMIT 1 UNION SELECT date_order_placed FROM orders GROUP BY date_order_placed HAVING count(*) > 1 {}
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code != 'Cancelled' {}
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM orders GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2 ORDER BY T1.date_order_placed ASC LIMIT 2000;
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.order_id , (SELECT sum(T2.product_price) FROM products AS T2 JOIN order_items AS T1 ON T2.product_id = T1.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT T2.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T1.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T2.order_id = T3.order_id
SELECT T1.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T2.shipment_id = T3.order_id
SELECT T3.product_name , T2.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T1.shipment_id = T3.shipment_id
SELECT T3.product_name , T2.date_order_placed FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN order_items AS T3 ON T1.shipment_id = T3.shipment_id
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T3.product_name , T3.product_color FROM products AS T3 JOIN order_items AS T2 ON T3.product_id = T2.product_id JOIN shipments AS T1 ON T1.shipment_id = T2.shipment_id WHERE T2.order_item_status_code = \"Shipped\" ORDER BY T2.date_order_placed ASC LIMIT 100;
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN customer_items AS T2 ON T1.order_id = T2.order_id WHERE T1.customer_id IN (SELECT customer_id FROM customers WHERE gender_code = 'Female')
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T2.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT invoice_status_code FROM invoices WHERE invoice_date = "null"
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , T1.date_order_placed , sum(T2.total_amount_paid) FROM orders AS T1 JOIN invoices AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders {}
SELECT count(*) FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS ORDER BY order_item_status_code ASC
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods AS T1;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM orders)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN products AS T3 ON T2.customer_id = T3.product_id
SELECT T2.customer_first_name , T4.product_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id
SELECT count(*) FROM shipments AS T1 JOIN shipment_items AS T2 ON T1.shipment_id = T2.shipment_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(product_price) FROM products
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) >= 1
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 0;
SELECT email_address , town_city , county FROM customers ORDER BY gender_code ASC LIMIT 1;
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT gender_code FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 {}
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 {}
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_size , product_description FROM products WHERE product_price BETWEEN (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM (SELECT DISTINCT digital_terrestrial_channel FROM channel)
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.name , t2.url FROM channel AS T1 JOIN program AS t2 ON T1.channel_id = t2.channel_id GROUP BY t2.channel_id HAVING count(*) > 1
SELECT count(*) , t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM director WHERE age >= 30 AND age <= 60
channels_with_both_directors = (c1.name , c2.name) WHERE c1.age < 40 AND c2.age > 60)
SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM director_admin AS T1 JOIN channel AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T1.director_id = T3.director_id WHERE T3.name = 'Hank Baskett' )
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T1.transmitter , T3.city FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id
SELECT T1.transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id ORDER BY T1.EP_kW DESC
SELECT T3.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id GROUP BY T3.id
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN ( SELECT radio_id FROM city_channel_radio )
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship LIKE '%United States%'
SELECT Name FROM driver WHERE Citizenship LIKE '%United States%'
SELECT T1.driver_id , count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = \"Zhuzhou\"
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012;
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Build_Year = 2012 {}
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT Model FROM vehicle GROUP BY Model HAVING sum(Top_Speed) > 150 UNION SELECT Model FROM vehicle GROUP BY Model HAVING sum(total_production) > 100
SELECT Model FROM vehicle WHERE Total_Production > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 INTERSECT SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN vehicle_driver AS T4 ON T3.Vehicle_ID = T4.Vehicle_ID WHERE T4.Driver_ID = 3
Two vehicles can be built by Ziyang if there are exactly two vehicle drivers who built them. The model of such a vehicle would be the one with the highest build year among those two vehicles. Otherwise, no vehicle will meet both criteria. Here's how you could do it: Two vehicles can be built by Ziyang if there are exactly two vehicle drivers who built them. The model of such a vehicle would be the one with the highest build year among those two vehicles. Otherwise, no vehicle will meet both criteria. SQL: SELECT T1.Vehicle_ID , T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) = 2 INTERSECT SELECT T1.Vehicle_ID , T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = \"Ziyang\" GROUP BY T2.Vehicle_ID HAVING COUNT(*) = 2;
More than 2 Driver: SELECT T1.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 Driven by Jeff Gordon: SELECT T1.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Name = 'Jeff Gordon' GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
More than 2 Driver: SELECT T1.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 Jeff Gordon: SELECT T1.Vehicle_ID , T1.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Name = 'Jeff Gordon' GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , count(*) FROM driver GROUP BY Racing_Series HAVING count(*) >= 1000000
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
exam_names = (SELECT exam_name FROM exams WHERE subject_code != 'Database') SELECT exam_name , exam_date FROM exams WHERE subject_code NOT IN (SELECT subject_code FROM exams WHERE subject_code = 'Database')
SELECT exam_date , exam_name FROM EXAMS WHERE subject_code <> 'Database'
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM EXAMS WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Student_Answers AS T2 ON T1.Student_Answer_Text = T2.Student_Answer_Text WHERE T1.Comments = "Normal"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text FROM Student Answers ORDER BY COUNT(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.first_name , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.email_address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING count(*) >= 2 {}
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT T2.valid_answer_text FROM valid_answers AS T1 JOIN student_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T2.question_id ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU <> 'M'
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Student_Answers AS T2 ON T1.Comments = T2.Comments WHERE T1.Comments = "Normal" AND T2.Comments = "Absent"
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.comments = T2.valid_answer_text WHERE T2.question_id IN ( SELECT T3.question_id FROM questions AS T3 JOIN exams AS T4 ON T3.exam_id = T4.exam_id WHERE T4.exam_name = "Normal" INTERSECT SELECT T3.question_id FROM questions AS T3 JOIN exams AS T4 ON T3.exam_id = T4.exam_id WHERE T4.exam_name = "Absent")
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT product_price FROM products WHERE product_type_code = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products;
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1;
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products WHERE product_type_code IN (SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY product_price)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = 'Jeromy'
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code ASC LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders AS T1;
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.customer_id = 'Jeromy'
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id WHERE t2.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id JOIN customer_orders AS t3 ON t2.order_id = t3.order_id WHERE t1.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_type_code = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 3 OR sum(T2.order_quantity) > 6
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 UNION SELECT order_id , order_date FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6
SELECT count(*) FROM building
SELECT count(*) FROM building AS T1;
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980 AND Completed_Year != 1980 END IF;
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(Population) FROM region AS T1;
SELECT avg(Population) FROM region AS t1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Name FROM region ORDER BY Area DESC LIMIT 5;
SELECT Name FROM region ORDER BY Area DESC LIMIT 5;
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
completed_years = (SELECT completed_year FROM building WHERE number_of_stories > 20 UNION SELECT completed_year FROM building WHERE number_of_stories < 15)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 EXCEPT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15.
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 1000000;
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t2.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) , t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = \"Hardy Kutch\" OR T2.status_code = \"good\"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T2.status_code = "good"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" INTERSECT SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id JOIN channels AS T4 ON T2.channel_id = T4.channel_id WHERE T3.service_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Successful'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = \"Success\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details != \"Success\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = "Fail"
SELECT customers_and_services_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers WHERE customer_details != "unsatisfied") INTERSECT SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id WHERE T4.customer_id IN ( SELECT customer_id FROM customers WHERE customer_details != "unsatisfied")
SELECT T1.service_details FROM services AS T1 JOIN customer_services AS T2 ON T1.service_id = T2.service_id WHERE T2.services_and_channels_details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
SELECT name , TYPE_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year IN (2013 , 2014)
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013;
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 AND TYPE_of_powertrain IN (SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014)
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(Amount) , max(Amount) , avg(Amount) FROM Vehicles AS T1;
SELECT min(Amount) , max(Amount) , avg(Amount) FROM Vehicles AS T1;
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Average_annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2 {}
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers WHERE membership_credit = (SELECT max(membership_credit) FROM customers)
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM DISCOUNT
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id
SELECT name FROM vehicles WHERE id NOT IN ( SELECT T1.vehicles_id FROM renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id )
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2 {}
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC;
Sort(Renting_history.total_hours) DESC;
SELECT T1.name FROM DISCOUNT AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30.0
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain HAVING avg(city_fuel_economy_rate) != 0 AND avg(highway_fuel_economy_rate) != 0
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1 {}
Teachers who teach some class whose detail has the substring 'data' but do not teach a class whose detail contains the prefix 'net' are: Teacher Details: Teacher Details : 'data' OR Teacher Details : 'net' OR Teacher Details : 'data' AND Teacher Details : 'net'
Teachers who teach a class with the substring 'data' in its detail but do not teach a class with the prefix 'net' in its detail: Teacher Details\nSELECT T1.teacher_details FROM Teachers AS T1 JOIN_CLASSES AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN_CLASSES AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_LOANS)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type
SELECT T1.student_details , T4.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code JOIN Addresses AS T4 ON T3.address_type_code = T4.address_type_code
SELECT T1.student_details , T4.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code JOIN Address AS T4 ON T4.address_id = T2.address_id
SELECT T1.address_details , T2.bio_data FROM addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_details != ""
SELECT T1.address_details , T2.bio_data FROM addresses AS T1 JOIN students_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.student_id = T3.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.behaviour_monitoring_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 3 {}
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_description , T2.event_type_code FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_description , T2achievement_details FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Students AS T1 JOIN Achievement_Types AS T2 ON T1.student_id = T2.student_id)
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T3.teacher_id FROM Classes AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id) UNION SELECT count(*) FROM Teachers WHERE teacher_id IN (SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT T3.teacher_id FROM Classes AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id))
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.achievement_type_description , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T2.Achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T1.teacher_id = T2.teacher_id {}
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id
SELECT teacher_id , COUNT(*) FROM Classes GROUP BY teacher_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) LIMIT 1;
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T2.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans;
SELECT min(date_of_loan) FROM Student_Loans;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(student_details) FROM Students)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript ASC LIMIT 1;
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1;
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T2 JOIN Classes AS T1 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T2 JOIN Classes AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details != \"\" AND T2.student_details != \"null\"；
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_type_description FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T3.bio_data FROM Student_Loans AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.address_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1;
SELECT datetime_detention_start FROM Detention
SELECT name FROM author
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM book
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM client
SELECT count(*) FROM client
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor
SELECT idorder , name FROM client AS T1
SELECT idorder , name FROM client AS T1
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT count(*) , isbn FROM books_order GROUP BY isbn
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) != 0 {}
SELECT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.ISBN ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn ORDER BY T2.amount DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.amount != 0;
SELECT DISTINCT T1.Title FROM book AS T1 JOIN books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.amount != 0
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder != \"null\" GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
Count(*) AS T1 FROM orders GROUP BY idclient;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) ASC
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECTisbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT avg(PurchasePrice) , avg(SalePrice) FROM Book
SELECT avg(PurchasePrice) , avg(SalePrice) FROM Book AS T1
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT max(SalePrice - PurchasePrice) FROM BOOK ORDER BY SalePrice - PurchasePrice DESC LIMIT 1;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT T2.SalePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idBook = T2.isbn WHERE T1.Name = "Plato"
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1;
SELECT title FROM book WHERE author = 'Plato' AND purchaseprice < (SELECT avg(saleprice) FROM book)
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Author = 'Plato' AND T1.SalePrice < (SELECT avg(SalePrice) FROM BOOK)
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T2.title = \"Pride and Prejudice\"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T2.title = 'Pride and Prejudice'
SELECT T1.Title FROM book AS T1 JOIN author_book AS T2 ON T1.ISBN = T2.ISBN JOIN author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM books AS T1 JOIN orders AS T2 ON T1.isbn = T2.idorder WHERE T1.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'Pride and prejudice'
SELECT idorder FROM books_order WHERE title = \"Pride and Prejudice\" UNION SELECT idorder FROM books_order WHERE title = \"The Little Prince\"
SELECT idorder FROM books_order WHERE isbn IN (SELECT T1.isbn FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Pride') INTERSECT SELECT idorder FROM books_order WHERE isbn IN (SELECT T1.isbn FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Prejudice') INTERSECT SELECT idorder FROM books_order WHERE isbn IN (SELECT T1.isbn FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'The Little Prince')
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' AND T2.amount > 100 AND T3.idclient = 'James Smith' ORDER BY T1.isbn ASC;
SELECT T1.isbn FROM book AS T1 JOIN orders AS T2 ON T1.isbn = T2.idorder JOIN author AS T3 ON T1.author = T3.idauthor WHERE T2.idclient = 'Peter Doe' AND T3.name = 'James Smith' ORDER BY T1.isbn ASC;
SELECT T2.Title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.author = T3.idauthor WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.Title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.author = T3.idauthor WHERE T1.idclient = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T1.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T3.isbn = T2.idorder WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) , title FROM book GROUP BY title
SELECT title FROM book WHERE TYPE <> 'Poet'
SELECT avg(Rating) FROM review AS T1;
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT rank FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id ORDER BY T2.pages LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating DESC LIMIT 1;
SELECT avg(T1.readers_in_million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.type = \"Novel\"
SELECT TYPE , count(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT title , audio FROM book ORDER BY readers_in_million DESC LIMIT 1000000;
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book AS T1;
SELECT TYPE , TITLE FROM book WHERE Book_ID NOT IN ( SELECT Book_ID FROM review )
SELECT count(*) FROM customer ORDER BY Nationality
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Name FROM customer ORDER BY LEVEL_OF_Membership
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1.0 {}
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MembersHIP DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T1.Card_Credit < 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T1.Card_Credit > 75;
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN branch AS T3 ON T1.branch_id = T3.branch_id
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name ORDER BY sum(T2.Quantity) ASC;
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.quantity) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Quantity > 1 {}
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T3.Name , T2.Club_Name FROM club_leader AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T1.Club_ID = T3.Club_ID
SELECT T3.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID JOIN member AS T3 ON T2.Member_ID = T3.Member_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Name FROM club_leader AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id WHERE T1.Year_Join < 2018
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T3.Club_ID = T2.Club_ID WHERE T3.Club_Name = \"Houston\"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
Both Nationalities: member WHERE Age > 22 AND Nationality = 'USA' INTERSECT Both Nationalities: member WHERE Age < 19 AND Nationality = 'Mexico'
SELECT avg(T1.age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id;
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id
SELECT collection_subset_name FROM collection_subsets
SELECT t1.collecrtion_subset_details FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t1.collection_name = "Top collection"
SELECT t3.collection_subset_details FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subset_members AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t2.collection_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM document_objects WHERE owner = 'Marlin' ORDER BY parent_document_object_id ASC LIMIT 1;
SELECT document_object_id FROM document_objects WHERE OWNER = \"Marlin\"
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = "Braeden Collection"
SELECT OWNER FROM Document_objects WHERE description = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Subset_ID WHERE T2.document_subset_name = 'Marlin' AND T1.Owner != ''
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_document_object_id = T2.document_subset_id WHERE T2.owner = 'Marlin' UNION SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_document_object_id = T2.document_subset_id WHERE T2.owner != 'Marlin'
SELECT DISTINCT description FROM document_objects
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != "null"
SELECT count(*) FROM document_objects WHERE OWNER = "Marlin"
Marlin has 1 document in their collection: 2018-05-13 14:07:14.986441-04:00 So the count of documents owned by Marlin is 1.
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_objects)
SELECT document_object_id FROM Document_objects WHERE parent_document_object_id != 0
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.document_object_id
SELECT count(*) , T1.Parent_Document_Object_ID FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id GROUP BY T1.Parent_Document_Object_ID
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN document_objects AS t3 ON t2.document_subset_id = t3.document_object_id WHERE t3.collection_name = "Nice" AND t2.parent_collection_id != null ORDER BY t2.parent_collection_id ASC LIMIT 1;
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Nice\" UNION SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.parent_collection_id = (SELECT collection_id FROM collections WHERE collection_name = \"Nice\")
SELECT collection_name FROM collections WHERE parent_collection_id IS NULL
SELECT collection_name FROM collections WHERE parent_collection_id IS NULL
SELECT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subsets GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.collection_subset_name = \"child collection\"
SELECT count(*) FROM collections AS t1 JOIN document_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.collection_subset_id IN (SELECT collection_subset_id FROM collection_subsets WHERE collection_name = \"child\")
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom' ORDER BY T1.document_object_id ASC;
SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_subsets AS T1 JOIN Collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , document_object_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT count(*) , document_object_id FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id GROUP BY t2.document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.owner = 'Braeden' AND T1.document_object_id IN (SELECT document_object_id FROM Document_Objects WHERE owner = 'Braeden')
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = 'Braeden' AND T2.document_subset_details = 'Related Documents'
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden' GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = "Braeden"
SELECT document_subset_id , document_subset_name , count(*) FROM document_subsets GROUP BY document_subset_id HAVING count(*) > 1;
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subset_members AS T3 ON T2.collection_subset_id = T3.collection_subset_id JOIN documents_in_collections AS T4 ON T3.document_object_id = T4.document_object_id WHERE T4.owner = 'Ransom'
SELECT t3.collection_name FROM documents_in_collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id JOIN collections AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t1.owner = "Ransom"
SELECT count(*) , T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id
SELECT count(*) , t1.document_object_id FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id GROUP BY t1.document_object_id
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT document_object_id FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(DISTINCT document_object_id) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T2.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T2.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_object_id FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.document_subset_details = "Best" AND T2.collection_id IN (SELECT collection_id FROM collections WHERE collection_name = "Best")
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best for 2000" INTERSECT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best"
SELECT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" AND T2.collection_id NOT IN ( SELECT T4.collection_id FROM document_subset_members AS T4 JOIN document_subset_members AS T5 ON T4.document_subset_id = T5.document_subset_id WHERE T5.document_object_id = ( SELECT T6.document_object_id FROM document_objects AS T6 JOIN documents_in_collections AS T7 ON T6.document_object_id = T7.document_object_id JOIN collections AS T8 ON T7.collection_id = T8.collection_id WHERE T8.collection_name = \"Best\" AND T2.collection_id = T8.collection_id ) AND T2.collection_id = T8.collection_id WHERE T2.collection_year = 2000 {}
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" EXCEPT SELECT DISTINCT T4.document_object_id FROM document_objects AS T4 JOIN document_subsets AS T5 ON T4.document_object_id = T5.document_subset_id JOIN collections AS T6 ON T5.collection_id = T6.collection_id WHERE T6.collection_name = "Best for 2000"
SELECT document_object_id FROM collections WHERE collection_name = "Best" UNION SELECT document_object_id FROM document_subsets WHERE document_subset_details = "Best"
SELECT DISTINCT document_subset_id FROM document_subset_members AS t1 JOIN document_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.collection_name = "Best for 2000" UNION SELECT DISTINCT document_subset_id FROM document_subset_members AS t1 JOIN document_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T2.collection_name = \"Best\"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM Collections WHERE collection_name = \"Best\"
SELECT count(DISTINCT collection_id) FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_subset_name = "Best in"
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN collections AS t3 ON t3.collection_id = t2.collection_id WHERE t3.collection_name = "Best"
SELECT count(*) FROM songs WHERE name LIKE '%Love%'
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score AS T1;
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = "All the streets of love"
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "english"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.score = 5 OR T2.score = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2Songs.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score )
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language;
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2songs_id WHERE T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%";
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2Songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state LIKE "PA%"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code = 'China'
SELECT count(*) FROM student WHERE city_code = 'China'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT fname , major FROM student WHERE city_code = 'Baltimore'
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code;
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) >= 6;
SELECT StuID FROM student WHERE city_code != 'USA'
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA'))
BAL : 0 CHI : 147.698
BAL : CHI Distance = 0 km
Boston -> Newark -> 540.0 kilometers
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code AND T1.city2_code = T2.city_code
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code AND T1.city2_code = T2.city_code
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM direct_distance)
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code ORDER BY T1.distance DESC LIMIT 1;
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance > (SELECT avg(distance) FROM direct_distance) INTERSECT SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance < (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance < 1000;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'BAL'
SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = 'BAL'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' AVG(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'Boston'
SELECT avg(distance) FROM direct_distance WHERE city1_code NOT IN (SELECT city_code FROM city WHERE city_name = 'Boston')
Closest_city_to_chicago = (SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1)
SELECT T3.city_name FROM direct_distance AS T1 JOIN city AS T3 ON T1.city2_code = T3.city_code JOIN city AS T4 ON T1.city1_code = T4.city_code WHERE T4.state = 'IL' AND T1.distance = (SELECT distance FROM direct_distance WHERE city2_code = 'Chicago') ORDER BY T1.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code ORDER BY sum(T2.distance) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING avg(T2.distance) != 0.0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
Linda Smith : 50.34 miles Tracy Kim : 78.95 miles
Distance_between_city(Linda Smith , Tracy Kim ) = 304.59 kilometers
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Linda Smith' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT distance FROM direct_distance WHERE city1_code = 'Linda Smith' ORDER BY distance DESC LIMIT 1)
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA' AND T2.lname = 'DANIEL'
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name , age FROM sailers WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid = (SELECT sid FROM sailors WHERE sid = 102)
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT sid FROM sailors WHERE rating != (SELECT min(rating) FROM sailors) {}
SELECT DISTINCT name FROM sailors WHERE age > (SELECT age FROM sailors WHERE rating > 7 ORDER BY age DESC LIMIT 1)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT age FROM sailors WHERE rating > 7 ORDER BY age LIMIT 1) UNION SELECT DISTINCT name FROM sailors WHERE rating > 7 {}
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1;
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2 {}
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue')
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue')
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' UNION SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue' UNION SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'green' OR T2.color = 'yellow'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROM Boats WHERE color = 'red' UNION SELECT bid FROM Boats WHERE color = 'blue' )
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' INTERSECT SELECT bid FROM boats WHERE color = 'blue')
SELECT sid FROM reserves WHERE bid IN ( SELECT bid FROM boats WHERE color = 'red' INTERSECT SELECT bid FROM boats WHERE color = 'blue' )
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 GROUP BY T1.sid HAVING COUNT(*) >= 1
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 GROUP BY T1.sid HAVING COUNT(*) > 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM sailors
SELECT count(*) FROM Sailors
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%' OR name LIKE 'd%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors AS T1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T2.age > 1 GROUP BY T3.name;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM Boats WHERE color = \"red\") GROUP BY T1.rating HAVING count(*) >= 1
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT T3.bid FROMboats AS T3 JOIN RedBoat AS T4 ON T3.bid = T4.bid ) GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30;
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.day = 'red' AND T1.rating > (SELECT min(T1.rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM Boats WHERE color = 'red'))
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT min(T1.rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT max(rating) FROM Sailors AS T1;
SELECT max(rating) FROM Sailors AS T1;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOINboats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = (SELECT bid FROM boats WHERE name = \"Melon\")
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT MODEL FROM headphone ORDER BY PRICE DESC LIMIT 1;
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1 OFFSET 0;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) < 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT CLASS , count(*) FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) FROM (SELECT DISTINCT earpads FROM headphone)
SELECT count(DISTINCT earpads) FROM headphone AS T1 {}
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price LIMIT 1 OFFSET 0;
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT avg(price) , construction FROM headphone GROUP BY construction HAVING construction != \"null\"
SELECT avg(price) , construction FROM headphone GROUP BY construction HAVING AVG(price) != 0
SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\"
SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" {}
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT name FROM store ORDER BY date_opened ASC
SELECT Name FROM store ORDER BY Date_Opened
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT T1.name , count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id HAVING sum(T1.quantity) > 0
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock WHERE headphone_id IN (SELECT headphone_id FROM headphone))
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) > 1)
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT MODEL FROM headphone WHERE HEADPHONE_ID NOT IN ( SELECT HEADPHONE_ID FROM stock )
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT count(*) FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id WHERE t2.name = "Woodman"
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) > 1)
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper AS t1;
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = "2000" AND venue = "NAACL"
SELECT count(*) FROM paper WHERE YEAR = '2000' AND venue = 'NAACL'
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = "Columbia University" AND t1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009 {}
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR ASC
SELECT DISTINCT venue FROM paper ORDER BY YEAR ASC
SELECT T2.title , T1.paper_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = 'Harvard University')
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.name = 'McKeown'
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = 'McKeown'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Stanford University\" AND t2.paper_id IN ( SELECT t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Columbia University\")
SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = "Stanford" INTERSECT SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = "Columbia University"
SELECT t3.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'McKeown' AND t1.author_id IN (SELECT author_id FROM author_list WHERE name = 'Rambow')
SELECT T3.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'McKeown' AND T2.year = 1988 AND T2.title = 'A Study of the Effects of the New Drug on Blood Pressure'
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = \"McKeown\" ) EXCEPT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Rambow\" )
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKeown' EXCEPT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Rambow'
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = \"Mckeown\" OR T3.name = \"Owen\" OR T3.name = \"Rambow\"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Mckeown', 'Kathleen') UNION SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Rambow', 'Owen')
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) ASC LIMIT 1000000;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ORDER BY count(*) ASC FROM author_list GROUP BY affiliation_id ORDER BY count(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id WHERE t1.cited_paper_id = (SELECT paper_id FROM paper WHERE title = 'A00-1002')
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id WHERE t2.paper_id = (SELECT paper_id FROM paper WHERE title = 'D12-1027')
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id WHERE t2.title = \"D12-1027\"
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.paper_id , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
Top 10 most cited papers with their citation counts: SELECT t3.title , t2.cited_paper_id FROM paper AS t3 JOIN citation AS t2 ON t3.paper_id = t2.paper_id GROUP BY t2.cited_paper_id ORDER BY count(*) DESC LIMIT 10;
Citations = (SELECT t1.cited_paper_id , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10)
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.author_id WHERE T3.name = 'McKeown' AND T3.email = 'Kathleen McKeown'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t3.author_id = t1.author_id WHERE t3.name = 'McKeown' AND t3.email = 'kathleen@mywebsite.com'
SELECT count(*) FROM citation AS T1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'McKeown' AND t3.email = 'kathleen@mckeown.com'
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author AS t3 ON t3.author_id = t2.author_id WHERE t3.name = \"Mckeown\" AND t3.email = \"mckeown@mywebsite.com\"
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = \"McKeown\" AND T2.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Kathleen\")
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'McKeown' AND T2.author_id IN (SELECT author_id FROM author_list WHERE name = 'Kathleen')
SELECT venue , YEAR FROM paper WHERE title = "Columbia University"
SELECT venue , YEAR FROM paper WHERE title LIKE "%Columbia University%"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.paper_id = t2 AFFILIATION_ID WHERE t2.name = "Columbia University" AND t1.year <= 2009 {}
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.paper_id = t2.paper_id WHERE t2.name = "Columbia University" AND t1.year < 2009 {}
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2 AFFILIATION_ID WHERE T2.name = \"Stanford University\" AND YEAR BETWEEN 2000 AND 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = \"Stanford University\") AND t1.year BETWEEN 2000 AND 2009;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'McKeown' AND T1.author_id = 59 WHERE T1.name = 'Kathleen'
SELECT count(*) FROM collaboration AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = \"McKeown\" AND T1.collaborator = \"Kathleen\"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.paper_id IN ( SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.cited_paper_id WHERE T4.paper_id = ( SELECT T5.paper_id FROM paper AS T5 JOIN author_list AS T6 ON T5.author_id = T6.author_id WHERE T6.name = 'Mckeown' AND T6.paper_id = ( SELECT T7.paper_id FROM paper AS T7 JOIN author_list AS T8 ON T7.author_id = T8.author_id WHERE T8.name = 'Kathleen' ) ) GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN ( SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id WHERE T3.title = \"KMcKeown\") GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name;
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT t2.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING COUNT(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING max(cited_paper_id) > 50 )
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = 'NAACL' UNION SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = 'ACL'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = 'ACL' {}
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = 'ACL'))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM paper WHERE venue = "ACL"))
SELECT count(*) FROM conference
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
Count(*) AS T1 SELECT count(*) , T2.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T2.Conference_ID;
SELECT count(*) , Conference_Name FROM conference GROUP BY Conference_Name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR HAVING YEAR != 1999;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900 {}
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900;
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name;
SELECT T2.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T2.institution_name
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT Name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
MAX(Age) MIN(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff
SELECT T3.Conference_Name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T1.Nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'A' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'N'
SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.Conference_Name = \"ACL\" INTERSECT SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.Conference_Name = \"NACCL\"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE YEAR = 2003 OR YEAR = 2004 {}
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004 {}
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference AS T4 ON T3.institution_id = T4.institution_id WHERE T4.year != 2004 {}
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN ( SELECT T1.institution_id FROM conference_participation AS T1 JOIN institution AS T2 ON T1.staff_id = T2.institution_id WHERE T1.year = 2004 )
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = "Piper Cub"
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills;
SELECT count(DISTINCT LOCATION) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32;
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.planet = "Bomber"
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT plane_name FROM hangar WHERE plane_name IN (SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) LIMIT 1)
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE t1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
sorted_pilots = (SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC)
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name ASC
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age BETWEEN 41 AND 99 OR age BETWEEN 0 AND 29;
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
Pilots who own planes Piper Cub and B-52 Bomber are pilotskills table where plane_name is 'Piper Cub' and 'B-52 Bomber' respectively. So the query would be: SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.plane_name = 'B-52 Bomber'
SELECT T1.name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills WHERE plane_name = 'F-14 Fighter'
"Piper Cub" OR "F-14 Fighter" pilot_names = "Piper Cub", "F-14 Fighter" pilot_names = "Piper Cub"
SELECT avg(age) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) != 0;
SELECT avg(age) , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name;
SELECT count(*) , plane_type FROM hangar GROUP BY plane_type
SELECT count(*) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) >= 0
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.pilot_name = T2.pilot_name ORDER BY T1.plane_name
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC , T2.plane_name
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.pilot_name = T2.pilot_name ORDER BY T2.age DESC
SELECT max(age) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 1
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name
SELECT count(*) , avg(age) , city FROM pilotskills GROUP BY city HAVING count(*) > 1
SELECT count(*) , T1.location , avg(T2.age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT count(*) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT T1.location FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1;
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1;
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE age > (SELECT age FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1) ORDER BY pilot_name ASC;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'New York' AND T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC;
SELECT count(*) FROM pilot_skills WHERE age < (SELECT age FROM pilot_skills WHERE plane_name = 'F-14 Fighter' ORDER BY age LIMIT 1) + 1
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT T1.name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name LIKE '%Bomber%'
SELECT DISTINCT T1.plane_name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3;
sorted_districts = (SELECT district_id , name , government_website FROM district ORDER BY population ASC)
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1;
SELECT name , points FROM spokesman WHERE age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004;
SELECT T3.name , T2.district_id FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T2.spokesman_id = T3.spokesman_id
SELECT T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T1.Rank_position = 1 AND T1.Rank_position = 2;
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT T1.district_id FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id)
SELECT name FROM spokesman WHERE spaxesman_id NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING sum(t2.points) != 0;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures WHERE LOCATION = \"gallery 226\"
SELECT T1.title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorid = T2.artistid WHERE T2.artistid IN (226)
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT t1.title , t2.location FROM sculptures AS t1 JOIN artists AS t2 ON t1.sculptorID = t2.artistID
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM Artists WHERE birthyear > 1850
SELECT fname , lname FROM Artists WHERE birthYear > 1850;
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226;
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) > 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920 {}
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthYear FROM artists ORDER BY deathYear LIMIT 1 OFFSET 0;
SELECT birthyear FROM artists ORDER BY deathyear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY deathyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = \"gallery 240\"
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T1.birthyear DESC LIMIT 1;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.deathyear DESC LIMIT 1;
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Mary\";
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Mary\";
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T1.location , T2.mediumType FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = \"Pablo\"
SELECT T1.location , T1.mediumOn FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = 'Pablo'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN artists AS T3 ON T3.artistid = T2.sculptorid WHERE T1.fname != "" AND T1.lname != ""
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"medium oil\" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"lithographic\"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"lithographic\"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = \"canvas\";
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"medium\" AND T2.location = \"gallery 241\" GROUP BY T1.fname HAVING count(*) >= 3 AND count(*) <= 5;
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" AND T2.location = 241;
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium ASC
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 1
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) != 0;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT DISTINCT painterID FROM paintings WHERE medium = \"medium\" AND mediumOn = \"oil\" AND LOCATION = 240;
SELECT DISTINCT painterid FROM paintings WHERE medium = \"oil\" AND LOCATION = 240;
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = "canvas" ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\") AND LOCATION != \"gallery 240\"
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings ORDER BY YEAR LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
ORDER BY height_mm ASC DISTINCT title
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000;
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950;
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950; SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 INTERSECT SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorid = T4.artistid WHERE T4.artistid = 222
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 INTERSECT SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorid = T4.artistid WHERE T4.artistid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930;
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000;
SELECT paintingid FROM paintings WHERE height_mm > 500 AND width_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = 'on panel' AND medium = 'on canvas'
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'panel'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = \"oil\" AND LOCATION != \"gallery 241\"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND mediumOn = 241;
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) >= 1
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid ORDER BY max(height_mm) DESC LIMIT 1;
MAX(height_mm) , MAX(width_mm) FROM paintings GROUP BY YEAR;
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR;
SELECT avg(height_mm) , avg(width_mm) , title FROM paintings GROUP BY painterID ORDER BY title ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.birthyear , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE gallery = 240)
SELECT height_mm , paintingid FROM paintings WHERE LOCATION = \"240\" ORDER BY width_mm DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE gallery = 240) AND paintingid NOT IN (SELECT paintingid FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE YEAR > 1900 ORDER BY height_mm DESC LIMIT 1)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings ORDER BY YEAR DESC LIMIT 1 OFFSET (1900 - YEAR) / 2 + 1)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = \"oil\" ORDER BY YEAR ASC
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT fname , lname FROM artists WHERE artistid NOT IN ( SELECT T1.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID INTERSECT SELECT T1.artistID FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID)
SELECT LOCATION FROM paintings WHERE YEAR < 1884 AND medium != \"canvas\"
SELECT location FROM paintings WHERE YEAR < 1885 AND medium != 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
ORDER BY winning_team ASC ORDER BY driver_id ASC
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position != "Junior Strous"
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Pole_Position != 'Junior Strous' {}
sorted(Constructor) BY age ASC Driver_Name ORDER BY age ASC Driver_Name FROM driver ORDER BY age ASC Driver_Name
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age NOT BETWEEN 20 AND 30;
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T2.driver_name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T2.driver_name , T1.race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name;
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
Constructor_counts = (select constructor , count(*) FROM driver GROUP BY constructor)
SELECT count(*) , constructor FROM driver GROUP BY constructor
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30;
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30;
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T3.driver_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN driver AS T3 ON T1.driver_id = T3.driver_id WHERE T1.Pole_Position = \"James Hinchcliffe\" AND T1.Pole_Position = \"Carl Skerlong\"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT count(*) FROM languages
SELECT count(*) FROM (SELECT distinct name FROM languages)
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1;
SELECT avg(justice_score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM official_languages WHERE language_id = (SELECT id FROM languages WHERE name = 'Norway'))
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM official_languages WHERE language_id = (SELECT id FROM languages WHERE name = 'Norway'))
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages AS T1
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1;
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1;
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T2.id HAVING count(*) >= 2 {}
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = \"English\";
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T2.overall_score) DESC;
sorted_by_avg_overall_score := ( SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY avg(T2.overall_score) DESC )
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score > 95 INTERSECT SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.county_state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T2.feature_name , T2.feature_description FROM Feature AS T2 JOIN Property_Features AS T1 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM (SELECT parking_lots FROM Properties GROUP BY parking_lots HAVING count(*) = 1 UNION SELECT garage_yn FROM Properties GROUP BY garage_yn HAVING count(*) = 1)
SELECT count(*) FROM (SELECT parking_lots FROM Properties GROUP BY parking_lots HAVING count(*) = 1 UNION SELECT parking_lots FROM Properties GROUP BY garage_yn HAVING count(*) = 1)
SELECT T1.age_category_description FROM Ref_age_categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE '%Mother%' OR T2.last_name LIKE '%Mother%'
SELECT user_category_code FROM users WHERE user_address_id IN ( SELECT address_id FROM addresses WHERE line_1_number_building = 'Mother' )
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool'
SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1;
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms AS T1
SELECT T1.user_id , T2.search_string FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_searches ORDER BY search_datetime DESC LIMIT 1;
SELECT search_datetime FROM User_searches ORDER BY search_datetime DESC LIMIT 1;
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_id NOT IN (SELECT T3.property_id FROM properties AS T3 JOIN user_property_history AS T4 ON T3.property_id = T4.property_id GROUP BY T3.property_id HAVING count(*) >= 2)
SELECT T1.zip_postcode FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_id NOT IN (SELECT T3.property_id FROM properties AS T3 JOIN user_property_history AS T4 ON T3.property_id = T4.property_id GROUP BY T3.property_id HAVING count(*) >= 2)
SELECT T1.user_id , T1.search_string FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM Users AS T1 JOIN User Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name = (SELECT T2.first_name FROM User_searches AS T3 JOIN Users AS T4 ON T3.user_id = T4.user_id ORDER BY T3.search_datetime ASC LIMIT 1)
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = 'Senior Citizen' ORDER BY first_name ASC
Sorted_login_names_of_senior_citizens = (SELECT login_name FROM users WHERE age_category_code = 'Senior') ORDER BY first_name ASC
Total_searches = (SELECT count(*) FROM User Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1) + (SELECT count(*) FROM User Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 0)
SELECT count(*) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rione\"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Y'
{ "sql": "SELECT T1.address_id , T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = \"Senior\""} {"sql": "SELECT T1.address_id , T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = \"Senior\""}
SELECT T1.line_1_building , T1.line_2_street , T1.town_city FROM Addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = "senior citizen"
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT count(*) , T1.property_id FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id;
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , owner_user_id FROM Properties GROUP BY owner_user_id;
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN ( SELECT user_id FROM users WHERE is_buyer = 1 UNION SELECT user_id FROM users WHERE is_seller = 1 )
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_buyer = 'yes' OR is_buyer = 'student')
SELECT T1.date_on_market , T2.property_name FROM Properties AS T2 JOIN User_Property_History AS T1 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.date_on_market , T2.property_name FROM Properties AS T2 JOIN User_Property_History AS T1 ON T1.property_id = T2.property_id ORDER BY T1.date_on_market
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.property_type_description , T2.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM Rooms GROUP BY room_size
SELECT count(*) , room_size FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = 'Robbie'
Robbie出生于英国英格兰郡。 因此，他所在的国家是： England , United Kingdom .
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT address_id FROM addresses GROUP BY address_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_address_id IN (SELECT T3.user_address_id FROM Users AS T3 JOIN Properties AS T4 ON T3.user_id = T4.owner_user_id)
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT user_id FROM User_property_history )
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT user_id FROM properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 {}
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780;
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT name , heat , nation FROM cyclist AS T1
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015;
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
Distinct T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1;
SELECT count(*) FROM cyclists_own_bikes WHERE purchase_year <= 2016 {}
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558' {}
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id IN ( SELECT id FROM cyclist AS T3 WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT id FROM cyclist AS T4 WHERE T4.name = 'Antonio Tauler')
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id ASC
SELECT T1.flavor , max(T2.price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.food GROUP BY T1.flavor ORDER BY max(T2.price) DESC LIMIT 1
SELECT T1.id , T2.flavor FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id ORDER BY T2.price DESC LIMIT 1;
SELECT T1.flavor , T2.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = 'cookie' ORDER BY T2.price ASC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor LIKE 'Apple'
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price BETWEEN 0 AND 2.99;
SELECT id FROM goods WHERE price BETWEEN 0 AND 2
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Lemon"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Lemon"
SELECT T2.food , count(*) FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.food HAVING count(*) > 0
SELECT T1.id , count(*) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.date BETWEEN '2009-03-18' AND '2009-03-19' GROUP BY T1.id HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.food = 'bakery' GROUP BY T2.id HAVING count(*) > 10;
SELECT T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10
SELECT count(*) FROM (SELECT DISTINCT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = \"Cake\")
SELECT count(*) FROM (SELECT DISTINCT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Cake')
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT flavor FROM goods WHERE food LIKE '%croissant%'
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Cake\" AND T2.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.id WHERE T2.flavor = \"Cakes\" AND T2.flavor = \"Cookies\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T2.lastname = \"LOGAN\" AND T3.food = \"Croissant\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T2.lastname = 'Logan' AND T3.food = 'Croissant'
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T2.price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Price = (SELECT max(Price) FROM items)
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , food FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 10
SELECT flavor FROM goods WHERE price > 10;
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price > 13
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price > 13;
SELECT T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.price > 15;
SELECT T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT Price , Id FROM goods WHERE Id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE flavor = 'good' ORDER BY price ASC
SELECT DISTINCT id FROM goods ORDER BY id
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.id JOIN goods AS T3 ON T2.item = T3.id WHERE T3.Flavor = "Apple" OR T1.customerId = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.id JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Apple\" OR T1.customerid = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR max(price) > 10
SELECT receiptnumber FROM receipts WHERE date < (SELECT min(date) FROM receipts) INTERSECT SELECT receiptnumber FROM goods WHERE price > 10;
SELECT id FROM goods WHERE price >= 3 AND price <= 7;
SELECT id FROM goods WHERE price >= 3 AND price <= 7;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id
SELECT T2.firstname , T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "Tart" AND T3.food = "Apple"
SELECT T2.firstname , T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Apple"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price < (SELECT price FROM goods WHERE flavor = 'Croissant' ORDER BY price ASC LIMIT 1)
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM items WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) GROUP BY id HAVING count(*) > 2
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor FROM goods WHERE food = "Cakes" ORDER BY flavor ASC
SELECT id , flavor FROM goods ORDER BY flavor ASC
items WHERE flavor = 'Chocolate' AND receipt IN (SELECT receipt FROM receipts GROUP BY receipt HAVING count(*) < 11)
SELECT T2.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Chocolate" GROUP BY T2.item HAVING count(*) <= 10
SELECT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT flavor FROM goods WHERE food = 'Tart'
SELECT flavor FROM goods WHERE food = 'Cakes' EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Tart'
SELECT food FROM goods GROUP BY food ORDER BY count(*) DESC LIMIT 3;
SELECT item FROM items WHERE receipt IN (SELECT receiptnumber FROM receipts GROUP BY receiptnumber ORDER BY count(*) DESC LIMIT 3)
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING avg(T2.price) > 5;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT date FROM receipts GROUP BY date HAVING sum(price) > 100;
SELECT T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.date HAVING sum(T2.price) > 100 {}
SELECT count(*) FROM driver
SELECT count(*) FROM driver AS T1;
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make;
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20.0
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE points BETWEEN 0 AND 149;
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = \"Dublin\"
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = \"Dublin\")
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = \"English\")
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = \"English\")
SELECT Country FROM driver WHERE Points > 150;
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver GROUP BY Country HAVING max(Points) >= 150)
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT count(*) , Make FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution AS T1;
SELECT Name FROM institution ORDER BY Name
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY founded ASC
ORDER BY founded ASC
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(enrollment) , min(enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1;
SELECT affiliation FROM institution WHERE city <> "Vancouver"
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1;
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1;
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT nickname FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id ORDER BY t2.enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC LIMIT 1000000;
ORDER BY NUMBER_OF_CHAMPIONS DESC FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ASC T3 FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.number_of_championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id HAVING count(*) >= 1
SELECT sum(t2.Number_of_championships) FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id WHERE t1.facility = 'Public'
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation HAVING count(*) > 1000000
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT nickname FROM championship ORDER BY capacity DESC
ORDER BY capacity DESC FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT Enrollment FROM institution WHERE City = "Vancouver" UNION SELECT Enrollment FROM institution WHERE City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
No such province found. Institutions founded before 1920 and after 1950 do not overlap with each other.
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = "New York")
SELECT contents FROM boxes WHERE value > 150;
SELECT contents FROM boxes WHERE value > 150
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes AS T1 WHERE T1.code IN (SELECT code FROM boxes GROUP BY code)
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1;
SELECT avg(contents) , max(contents) , contents FROM boxes GROUP BY contents HAVING count(*) > 1
SELECT avg(Contents) , max(Contents) , Contents FROM Boxes GROUP BY Contents;
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1 OFFSET 0;
SELECT avg(Value) FROM Boxes AS T1;
SELECT avg(Value) FROM Boxes AS T1;
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes AS t1;
SELECT count(DISTINCT contents) FROM boxes;
SELECT DISTINCT LOCATION FROM Warehouses
SELECT count(DISTINCT LOCATION) FROM Warehouses
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" OR LOCATION = "New York")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" UNION SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' OR T1.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
Chicago : contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'Chicago' New York : contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" INTERSECT SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT t1.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t1.contents = \"Rocks\" OR t1.contents = \"Scissors\"
SELECT DISTINCT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" OR T1.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" AND T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\";
SELECT Code , Contents FROM Boxes ORDER BY Value ASC
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT distinct contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > ( SELECT max(value) FROM boxes WHERE contents = 'Scissors' )
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150;
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) FROM boxes GROUP BY contents;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses AS T1;
SELECT sum(capacity) FROM warehouses AS T1;
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location ORDER BY max(T1.value) DESC LIMIT 1000000;
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location ORDER BY max(T1.value) DESC LIMIT 1;
SELECT count(*) , t1.code FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t1.warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT location) FROM warehouses WHERE capacity > 1000 AND store_type = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'Rocks'
SELECT code , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT count(*) , t1.code FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.code;
SELECT count(*) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT code FROM warehouses WHERE capacity - count(*) > 0
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE contents NOT IN (SELECT contents FROM boxes WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT count(*) FROM university WHERE STATE = "IL" OR STATE = "Ohio"
SELECT count(*) FROM university WHERE STATE = 'IL' OR STATE = 'Ohio'
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT home_conference FROM university WHERE home_conference != "Home Conference"
SELECT DISTINCT home_conference FROM university
SELECT count(*) , home_conference FROM university GROUP BY home_conference HAVING count(*) >= 1000 AND count(*) <= 999999999;
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT STATE FROM university GROUP BY STATE ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT T1.Conference FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.Conference ORDER BY sum(T2.Total) ASC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) LIMIT 1;
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T3.major_name , T2.rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = 'Augustana College'
SELECT T3.major_name , T3.rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.maj_id = T2.maj_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.university_name = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" AND T2.rank = 1;
SELECT T3.university_name , T3.city , T3.state FROM university AS T3 JOIN major_ranking AS T2 ON T3.university_id = T2.university_id JOIN major AS T1 ON T2.major_id = T1.maj_id WHERE T1.major_name = \"Accounting\" ORDER BY T2.rank DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank ASC LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM overall_ranking AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T1.rank = 1 )
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM overall_ranking AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1 )
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id = ( SELECT T3.major_id FROM major AS T3 JOIN university AS T4 ON T3.university_id = T4.university_id WHERE T4.university_name = 'Accounting' )
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T2.major_name = \"Accounting\" AND T3.rank >= 3 {}
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank <= 5.0 {}
SELECT sum(enrollment) FROM university WHERE university_id IN ( SELECT university_id FROM overall_ranking WHERE rank <= 5 )
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > (SELECT max(reputation_point) FROM overall_ranking)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT Title FROM Movies WHERE Rating != "null"
SELECT title FROM Movies WHERE rating != "null"
SELECT title FROM Movies WHERE rating LIKE 'G'
SELECT title FROM Movies WHERE rating LIKE 'G%'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' AND T1.movie theater code = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != '' AND T2.Title IN (SELECT T2.Title FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Title HAVING COUNT(*) > 1)
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != '' AND T2.Title IN (SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.Code WHERE T4.Title != '')
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name IN (SELECT Name FROM MovieTheaters GROUP BY Name HAVING COUNT(*) > 1)
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT count(DISTINCT movie) FROM MovieTheaters;
SELECT count(DISTINCT title) FROM movies;
SELECT count(DISTINCT code) FROM Movietheaters;
SELECT count(DISTINCT code) FROM Movietheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T1.Name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating IN ('G', 'PG')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' INTERSECT SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' AND T1.movie = (SELECT T2.movie FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.movie = T4.code WHERE T3.name = 'Imperial')
No movie was found in the theaters named Odeon.
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Rating ASC
SELECT Title FROM Movies ORDER BY Rating
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE rating != \"null\";
SELECT count(*) FROM Movies WHERE Rating != \"null\";
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title IN (SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.Code)
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title IN (SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.Code)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT T1.name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT T1.Name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT Title FROM Movies
SELECT title FROM movies
SELECT count(DISTINCT rating) FROM Movies
SELECT count(DISTINCT rating) FROM movies
SELECT * FROM Movies WHERE Rating != "Rating"
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM Movietheaters)
SELECT recipient FROM package ORDER BY weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.recipient = 'Leo Wong' AND T2.sender = 'Leo Wong'
SELECT sum(T2.Weight) FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Sender = \"Leo Wong\"
SELECT POSITION FROM employee WHERE Name = "Amy Wong"
SELECT POSITION FROM employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = "Physician"
SELECT LEVEL FROM has_clearance
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\"
Leo Wong has sent 1 package. The package number is 1.
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = 'Leo Wong'
Leo Wong's package number is 1234567890.
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T2.recipient = T3.employeeid WHERE T3.name = 'Leo Wong' OR T2.sender = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T1.shipment = (SELECT shipmentid FROM shipment WHERE manager = "Leo Wong")
{"sql": "SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = \"Ogden Wernstrom\" AND T1.shipment = (SELECT shipmentid FROM shiptransfer AS T4 WHERE T4.manager = (SELECT shipmentid FROM shiptransfer AS T5 WHERE T5.manager = (SELECT shipmentid FROM shiptransfer AS T6 WHERE T6.manager = (SELECT shipmentid FROM shiptransfer AS T7 WHERE T7.manager = (SELECT shipmentid FROM shiptransfer AS T8 WHERE T8.manager = (SELECT shipmentid FROM shiptransfer AS T9 WHERE T9.manager = (SELECT shipmentid FROM shiptransfer AS T10 WHERE T10.manager = (SELECT shipmentid FROM shiptransfer AS T11 WHERE T11.manager = (SELECT shipmentid FROM shiptransfer AS T12 WHERE T12.manager = (SELECT shipmentid FROM shiptransfer AS T13 WHERE T13.manager = (SELECT shipmentid FROM shiptransfer AS T14 WHERE T14.manager = (SELECT shipmentid FROM shiptransfer AS T15 WHERE T15.manager = (SELECT shipmentid FROM shiptransfer AS T16 WHERE T16.manager = (SELECT shipmentid FROM shiptransfer AS T17 WHERE T17.manager = (SELECT shipmentid FROM shiptransfer AS T18 WHERE T18.manager = (SELECT shipmentid FROM shiptransfer AS T19 WHERE T19.manager = (SELECT shipmentid FROM shiptransfer AS T20 WHERE T20.manager = (SELECT shipmentid FROM shiptransfer AS T21 WHERE T21.manager = (SELECT shipmentid FROM shiptransfer AS T22 WHERE T22.manager = (SELECT shipmentid FROM shiptransfer AS T23 WHERE T23.manager = (SELECT shipmentid FROM shiptransfer AS T24 WHERE T24.manager = (SELECT shipmentid FROM shiptransfer AS T25 WHERE T25.manager = (SELECT shipmentid FROM shiptransfer AS T26 WHERE T26.manager = (SELECT shipmentid FROM shiptransfer AS T27 WHERE T27.manager = (SELECT shipmentid FROM shiptransfer AS T28 WHERE T28.manager = (SELECT shipmentid FROM shiptransfer AS T29 WHERE T29.manager = (SELECT shipmentid FROM shiptransfer AS T30 WHERE T30.manager = (SELECT shipmentid FROM shiptransfer AS T31 WHERE T31.manager = (SELECT shipmentid FROM shiptransfer AS T32 WHERE T32.manager = (SELECT shipmentid FROM shiptransfer AS T33 WHERE T33.manager = (SELECT shipmentid FROM shiptransfer AS T34 WHERE T34.manager = (SELECT shipmentid FROM shiptransfer AS T35 WHERE T35.manager = (SELECT shipmentid FROM shiptransfer AS T36 WHERE T36.manager = (SELECT shipmentid FROM shiptransfer AS T37 WHERE T37.manager = (SELECT shipmentid FROM shiptransfer AS T38 WHERE T38.manager = (SELECT shipmentid FROM shiptransfer AS T39 WHERE T39.manager = (SELECT shipmentid FROM shiptransfer AS T40 WHERE T40.manager = (SELECT shipmentid FROM shiptransfer AS T41 WHERE T41.manager = (SELECT
SELECT T1.Contents FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T1.Sender = "John Zoidfarb"
SELECT T1.contents FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T2.recipient = T3.accountnumber WHERE T3.name = 'John Zoidfarb'
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name LIKE '%John%' ORDER BY T2.weight DESC LIMIT 1;
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name LIKE '%John%' OR T2.name LIKE '%John%'
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
Most Packages: The client who sent the most packages is Client with AccountNumber 12345 and the number of packages is 1000.
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , min(sender) FROM package GROUP BY sender ASC
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT coordinates FROM planet WHERE name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Phillip J. Fry'
SELECT T2.shipmentid FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetID FROM planet WHERE name = 'Mars')
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T2.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars" AND T1.manager = "Turanga Leela"
SELECT T2.shipmentid FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.planet = T2.planet WHERE T1.level = 'Management' OR T2.plant = 'Mars'
SELECT T2.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = 'Mars' AND T2.name = 'Turanga Leela'
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Planet ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT sum(T1.Weight) FROM package AS T1 JOIN shipment AS T2 ON T1.Shipment = T2.ShipmentID WHERE T2.Planet = 'Mars'
SELECT T1.name , T3.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.shipmentweight > 30 GROUP BY T1.planetname ORDER BY sum(T2.shipmentweight) DESC LIMIT 1;
SELECT T1.Name FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.PlanetHID HAVING sum(T2.Weight) > 30
SELECT T2.packagenumber FROM shipment AS T1 JOIN has_clearance AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T1.planet WHERE T3.name = "Omicron Persei 8" AND T2.position = "Manager" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planetID FROM planet WHERE name = "Omicron Persei") AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = "Omicron Persei" AND T1.shipmentid IN (SELECT T3.shipmentid FROM shipment AS T3 JOIN package AS T4 ON T3.shipmentid = T4.shipmentid WHERE T4.recipient = "Zapp Brannigan")
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
No one can enter the Mars planet without having clearance. So, there are no employees who don't have clearance in Mars. The list of names will remain unchanged: {}
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T1.planet = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planet_id WHERE T3.name = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planet = T2.planet GROUP BY T1.planet HAVING count(*) = 1
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Level = "Clear"
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' )
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
MAX(Rank_of_the_year) = 100 MIN(Rank_of_the_year) = 0
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1;
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.Player_name , T2.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.Title = "Super Mario World"
SELECT T2.Player_name , T2.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_id = T2.Game_id WHERE T1.Title = "Super Mario World"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN platform AS T3 ON T3.Platform_ID = T2.Platform_ID WHERE T3.College = \"Auburn\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT franchise , count(*) FROM game GROUP BY franchise HAVING count(*) > 100
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_id FROM game_player)
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" INTERSECT SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Oklahoma" OR T3.College = "Auburn"
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN ( SELECT game_id FROM game_player WHERE rank_of_the_year = 'Guard' )
No games are played by players who play the Guard position. Therefore, there are no games that do not have any player playing the Guard position. The title of such a game would be an empty string. Thus, the title of such a game is: ""
SELECT name FROM press ORDER BY YEAR_PROfits_billion DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE YEAR_profits_billion > 15 UNION SELECT name FROM press WHERE MONTH_profits_billion > 100000000
SELECT name FROM press WHERE YEAR_PROFIT_billion > 1500000 UNION SELECT name FROM press WHERE month_profits_billion > 1000000
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press AS T1
SELECT avg(Yearly_profit_billion) , max(Yearly_profit_billion) , name FROM press GROUP BY name
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age BETWEEN 0 AND 29.99;
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT title FROM book ORDER BY release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series HAVING count(*) > 0
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT book_series FROM book WHERE Sale_Amount > 1000 INTERSECT SELECT book_series FROM book WHERE Sale_Amount < 500 END IF {}
SELECT Book_Series FROM books_above_1000 EXCEPT SELECT Book_Series FROM books_below_500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"MM\" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"LT\"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"MM\" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"LT\"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING COUNT(*) > 1
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id ORDER BY count(*) DESC;
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1000
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id IN (SELECT press_id FROM press WHERE name = \"Accor\"))
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\")
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T1.name , T1.year_of_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors
SELECT DISTINCT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT * FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.staff_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T2.staff_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT count(*) , author_name FROM Documents GROUP BY author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM business_processes
SELECT next_process_id , process_name , process_description FROM Process_outcomes WHERE process_outcome_code = (SELECT process_outcome_code FROM Process_outcomes WHERE process_id = 9)
SELECT T1.process_name FROM Process_outcomes AS T1 JOIN Process_statuses AS T2 ON T1.process_status_code = T2.process_status_code WHERE T2.process_status_description = \"Completed\" AND T2.process_id = (SELECT process_id FROM processes WHERE process_id = 9) + 1
SELECT count(*) FROM process_outcomes
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id GROUP BY T2.process_id HAVING count(*) > 0
SELECT process_id FROM documents_processes GROUP BY process_id HAVING count(*) >= 1;
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM Process_outcomes WHERE process_outcome_code != 'Failed' EXCEPT SELECT process_id FROM Documents
SELECT T3.process_outcome_description , T3.process_status_description FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN process_outcomes AS T3 ON T2.process_outcome_code = T3.process_outcome_code JOIN process_statuses AS T4 ON T2.process_status_code = T4.process_status_code WHERE T1.document_id = 0
SELECT T1.process_name FROM business_processes AS T1 JOIN documents_processes AS T2 ON T1.process_id = T2.process_id JOIN documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT count(*) , process_id FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.process_id = 9
SELECT count(*) , staff_id FROM Staff_in_Processes GROUP BY staff_id;
SELECT count(*) , staff_role_code FROM staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.staff_id = 3;
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM clients
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT count(*) , agency_id FROM clients GROUP BY agency_id
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.client_id = T2.staff_id
SELECT T1.client_details , T2.staff_details FROM clients AS T1 JOIN staff_in_meetings AS T2 ON T1.client_id = T2.client_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code
SELECT count(*) , sic_code FROM clients GROUP BY sic_code
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details , agency_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM INVOICES
SELECT T1.invoice_id , T2.invoice_status , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM INVOICES GROUP BY client_id
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T2.agent_details , T3.client_details , T4.agency_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN agencies AS T3 ON T1.client_id = T3.client_id JOIN staffs AS T4 ON T2.agency_id = T4.agency_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T3.client_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT meeting_type , staff_details FROM Meetings
SELECT * FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT invoice_id , invoice_status FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff
SELECT count(*) FROM staff AS T1;
SELECT count(*) , agency_id FROM staff GROUP BY agency_id
SELECT count(*) , agency_id FROM staff GROUP BY agency_id
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT count(*) , client_id FROM meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT count(*) , T1.client_id FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*) , meeting_type FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id , T2.meeting_outcome , T2.meeting_type , T1.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id WHERE T2.client_id IN ( SELECT client_id FROM clients )
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT staff_id) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.invoice_details FROM invoices AS T3 JOIN clients AS T4 ON T3.client_id = T4.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING COUNT(*) >= 1 AND NOT EXISTS ( SELECT 1 FROM Staff WHERE staff_details LIKE '%s%' )
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agency_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id GROUP BY T3.client_id HAVING count(*) != 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_type = "invoice" GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details , T3.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN clients AS T3 ON T1.client_id = T3.client_id
