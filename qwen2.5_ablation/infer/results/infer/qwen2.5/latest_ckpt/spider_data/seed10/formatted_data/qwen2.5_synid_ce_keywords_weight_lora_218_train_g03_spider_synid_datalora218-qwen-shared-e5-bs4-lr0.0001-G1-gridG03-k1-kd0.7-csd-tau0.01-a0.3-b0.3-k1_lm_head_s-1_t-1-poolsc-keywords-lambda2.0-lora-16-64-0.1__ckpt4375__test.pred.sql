SELECT count(*) FROM club
"SELECT count(*) FROM club AS t1"
SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
club(name) WHERE manufacturer <> "Nike"
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count
SELECT Name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
Sorting by Earnings descending, select Player_ID from player order by Earnings DESC LIMIT 1
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce'
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY AVG(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer
count(*) AS t1 JOIN club AS t2 ON t1.club_id = t2.club_id GROUP BY t2.manufacturer HAVING count(*) > 0
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club EXCEPT SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000;
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1;
SELECT count(DISTINCT Country) FROM player AS T1;
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T2 JOIN orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T2 JOIN orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 2 INTERSECT SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 3
SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.date_order_placed ORDER BY min(T2.order_item_status_code) LIMIT 1;
SELECT T2.date_order_placed , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.date_order_placed HAVING count(*) >= 2 ORDER BY T2.date_order_placed ASC LIMIT 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.order_id , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum (product_price) FROM order_items GROUP BY order_id ORDER BY sum (product_price) ASC LIMIT 1
SELECT T1.order_item_total_sum , T2.order_item_total_sum FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_item_total_sum ORDER BY sum(T1.order_item_total_sum) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS t1 JOIN orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.gender_code;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT T2.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T2 JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id
SELECT T1.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T1.customer_id = T3.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT invoice_status_code , invoice_date , shipment_date FROM invoices
SELECT T3.product_name , T2.shipment_date FROM shipments AS T2 JOIN orders AS T1 ON T2.order_id = T1.order_id JOIN order_items AS T3 ON T2.shipment_id = T3.shipment_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.shipment_date != \"null\";
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id ORDER BY T2.shipment_tracking_number ASC
SELECT T2.product_name , T2.product_color FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T3.order_id = T1.order_id WHERE T3.shipment_date IS NOT NULL ORDER BY T1.date_order_placed ASC LIMIT 1000;
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id WHERE T1.order_id IN ( SELECT order_id FROM orders )
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.gender_code = 'Female'
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.gender_code = \"F\"
SELECT invoice_status_code FROM invoices WHERE invoice_date != (SELECT min(date_order_placed) FROM orders)
SELECT invoice_status_code FROM invoices WHERE invoice_date IS NULL INTERSECT SELECT invoice_status_code FROM orders WHERE order_status_code != 'Shipped'
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.order_id , T1.date_order_placed , sum(T2.total_amount_paid) FROM orders AS T1 JOIN invoices AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id
SELECT count(*) FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS ORDER BY order_item_status_code ASC
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size , product_price FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM (SELECT DISTINCT product_name FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id
SELECT count(*) FROM shipments AS T1 JOIN shipment_items AS T2 ON T1.shipment_id = T2.shipment_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id WHERE T2.date_order_placed != 'null'
SELECT avg(product_price) FROM products AS T1;
SELECT avg(product_price) FROM products AS T1
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id.average_price = avg(T3.product_price)
SELECT email_address , town_city , county FROM customers ORDER BY count(*) ASC LIMIT 1;
SELECT email_address , town_city , county FROM customers WHERE gender_code IN ( SELECT gender_code FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1 )
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T2.product_description FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.order_item_status_code = 'Shipped' GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T2.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < ( SELECT max(product_price) FROM products )
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM (SELECT DISTINCT digital_terrestrial_channel FROM channel)
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.Name , T2.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1
SELECT T1.Name , COUNT(*) FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM director WHERE age >= 30 AND age <= 60
channel1 = (SELECT T1.Name FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T2.Is_first_director = True AND T2.Age < 40 INTERSECT SELECT T1.Name FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T2.Is_first_director = True AND T2.Age > 60)
SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id JOIN channel AS T3 ON T2.channel_id = T3.channel_id WHERE T1.name = 'Hank Baskett' )
SELECT count(*) FROM radio AS T1;
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
max(ERP_kW) FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio AS T1
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) >= 4;
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T3.transmitter , T2.city FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.id
SELECT T1.transmitter , T3.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id ORDER BY T1.EP_Raw DESC
Count(*) AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.radio_id HAVING count(*) > 0
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT MODEL FROM vehicle WHERE Top_Speed > 6000 ORDER BY Power DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.build_year = 2012;
SELECT count(DISTINCT T1.Driver_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT MODEL FROM vehicle WHERE Total_Production > 100 UNION SELECT MODEL FROM vehicle WHERE Top_Speed > 150
SELECT MODEL , BUILD_YEAR FROM vehicle WHERE MODEL LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Vehicle_ID = T4.Driver_ID WHERE T4.Citizenship = 'Ziyang'
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Build_Year = 'Ziyang' GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2;
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = \"Jeff Gordon\" GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 ) UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 )
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver GROUP BY driver_id HAVING COUNT(*) > 1)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams AS T1;
SELECT count(*) FROM exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
Distinct Subject_Code FROM EXAMS ORDER BY Subject_Code ASC
SELECT exam_name , exam_date FROM exams WHERE subject_code != 'Database'
SELECT exam_date , exam_name FROM exams WHERE subject_code != 'Database'
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_OF_Question_Code , count(*) FROM Questions GROUP BY TYPE_OF_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id WHERE T2.question_text LIKE "%Normal%"
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id WHERE T2.question_text = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T2.Student_Answer_Text FROM Questions AS T1 JOIN Student_Answers AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T2.Student_Answer_Text ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.student_answer_id = T2.valid_answer_id GROUP BY T1.student_answer_text ORDER BY count(*) DESC
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.first_name , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
Sort by Date_of_Answer DESC FROM Student_Answers ORDER BY Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT T2.valid_answer_text FROM questions AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T2.valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
Count(*) AS gender_count GROUP BY gender_mfu;
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Student_Answer_ID = T2.Valid_Answer_ID WHERE T2.Comments = \"Normal\" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Student_Answer_ID = T2.Valid_Answer_ID WHERE T2.Comments = \"Absent\"
SELECT T1.Comments FROM Student_Answers AS T1 JOIN Student_Answers AS T2 ON T1.Comments = T2.Comments WHERE T1.Comments = "Normal" AND T2.Comments = "Absent"
SELECT TYPE_OF_Question_Code FROM Questions GROUP BY TYPE_OF_Question_Code HAVING count(*) >= 3;
SELECT TYPE_OF_Question_Code FROM QUESTIONS GROUP BY TYPE_OF_Question_Code HAVING count(*) >= 3
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
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products;
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS T1
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
count(*) AS count_total FROM (SELECT product_type_code , count(*) FROM products GROUP BY product_type_code)
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT count(DISTINCT payment_method_code) FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS T1
SELECT count(*) FROM customer_orders AS T1;
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
ORDER BY order_status_code ASC COUNT(*) AS count FROM customer_orders GROUP BY order_status_code;
ORDER_STATUS_CODE COUNT(*) FROM customer_orders GROUP BY order_status_code;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
most_frequent_order_status_code = (SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = \"Monitor\"
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_type_code = 'Monitor'
SELECT count(*) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = 'Monitor'
SELECT count(DISTINCT T1.customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_type_code = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 3 UNION SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T2.order_quantity) > 6
SELECT order_id , order_date FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t1.order_id HAVING sum(t2.order_quantity) > 6 UNION SELECT order_id , order_date FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t1.order_id HAVING count(*) >= 3;
SELECT count(*) FROM building
SELECT count(*) FROM building AS T1;
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980 AND Completed_Year != 1975 AND Completed_Year != 1960 AND Completed_Year != 1950 AND Completed_Year != 1940 AND Completed_Year != 1930 AND Completed_Year != 1920 AND Completed_Year != 1910 AND Completed_Year != 1900 AND Completed_Year != 1990 AND Completed_Year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980 AND Completed_Year != 1970;
SELECT avg(Population) FROM region AS T1;
SELECT avg(Population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
max(capital) AS T1 FROM region ORDER BY population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Number_of_Stories FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID WHERE T1.Name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15;
Building(Completed_Year) > 20 AND Building(Completed_Year) < 15 INTERSECT BUILDING(Completed_Year) > 20 AND BUILDING(Completed_Year) < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 1000000000
SELECT Channel_Details FROM Channels ORDER BY Channel_Details ASC
SELECT Channel_details FROM channels ORDER BY Channel_details ASC
SELECT count(*) FROM (SELECT DISTINCT service_details FROM services)
SELECT count(*) FROM services AS T1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
most_common_analytical_layer_type_code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_details ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.service_id IN ( SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1 )
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers_and_services AS T1 JOIN channels AS T2 ON T1.service_id = T2.channel_id UNION SELECT count(*) FROM customers AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id;
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_details = \"Hardy Kutch\" OR T2.services_and_channels_details = \"good\"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.service_details = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_details = "Hardy Kutch" AND T2.services_and_channels_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_details = "Hardy Kutch" AND T2.services_and_channels_details = "bad"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = "Success"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.integration_platform_id = T3.integration_platform_id WHERE T3.status_code = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.services_details = 'unsatisfied' UNION SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id WHERE T4.services_details = 'unsatisfied'
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_Channels_Details = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
{ "sql": "SELECT name , type_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014"
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE model_year BETWEEN 2014 AND 2013;
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014 GROUP BY TYPE_OF_POWERTRAIN HAVING count(*) >= 2
powertrain_type_count = count(*) GROUP BY powertrain_type;
POWERTRAIN_TYPE_COUNT = count(*) GROUP BY POWER_TRAIN_TYPE
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles AS T1
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles AS T1 WHERE T1.type_of_powertrain = 'Diesel'
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate;
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM DISCOUNT
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T1.id;
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1</code>
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T2.total_hours > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2 {}
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.student_id FROM Student_LOANS AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id )
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) AND student_id NOT IN (SELECT student_id FROM Student_LOANS)
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 )
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_details FROM Students AS T1 JOIN Addresses AS T2 ON T1.student_address_id = T2.address_id
SELECT T1.student_details , T1.bio_data FROM Students AS T1 JOIN Students_addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_type_code = \"Event\";
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.event_type_code , T2.student_id , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
Achievement Type Description: A description of an achievement type. Ref_Achievement_Type Achievement Type Code: A code representing an achievement type. Achievements achievement_details: An achievement details describing an achievement type. Student_ID Student ID: The ID of the student who achieved the achievement.
Achievement Type Description: \n\n1. Achievement Type 0 - No Achievement\n2. Achievement Type 1 - Award\n3. Achievement Type 2 - Completion\n4. Achievement Type 3 - Critical Achievement\n5. Achievement Type 4 - Demonstration\n6. Achievement Type 5 - Feedback\n7. Achievement Type 6 - General Achievement\n8. Achievement Type 7 - Honor\n9. Achievement Type 8 - Intellectual Achievement\n10. Achievement Type 9 - Milestone Achievement\n11. Achievement Type 10 - Narrative Achievement\n12. Achievement Type 11 - Performance Achievement\n13. Achievement Type 12 - Progress Achievement\n14. Achievement Type 13 - Public Achievement\n15. Achievement Type 14 - Project Achievement\n16. Achievement Type 15 - Self-Award\n17. Achievement Type 16 - Superlative Achievement\n18. Achievement Type 17 - Technical Achievement\n19. Achievement Type 18 - Travel Achievement\n20. Achievement Type 19 - Value Achievement\n21. Achievement Type 20 - Weighted Achievement\n22. Achievement Type 21 - Word Achievement
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id)
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM transcripts
SELECT T1.achievement_type_code , T2.award_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
Achievements: { "type_code": "1", "achievement_details": "Details", "date_achievement": "Date" }
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id JOIN Classes AS T3 ON T1.teacher_id = T3.class_id WHERE T3.class_details = T2.class_details
SELECT T2.teacher_details , T3.student_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN TRANSLACTIONS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans
SELECT min(date_of_loan) FROM Student_Loans AS T1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(student_details) FROM Students) ORDER BY T2.student_details ASC LIMIT 1;
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript ASC LIMIT 1;
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript ASC LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student Loans GROUP BY student_id
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id;
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details != \"\"
SELECT count(DISTINCT student_id) FROM Detention;
SELECT T1.address_type_code , T2.address_details FROM Students_addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T2 JOIN Students_Addresses AS T1 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_date != \"null\" EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.date_of_loan != \"null\"
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2 )
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2 )
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1;
SELECT datetime_detention_start FROM Detention AS T1;
SELECT Name FROM AUTHOR
SELECT Name FROM Author
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM books
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM client
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM Author AS T1 JOIN Books_Order AS T2 ON T1.idauthor = T2.idorder GROUP BY T1.idauthor HAVING count(*) > 0
Count(*) AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author GROUP BY T1.name HAVING count(*) > 0
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
Count(*) AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn HAVING count(*) > 0
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) != 0;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn ORDER BY T2.amount DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.idorder != 0 ORDER BY T1.purchaseprice ASC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder > (SELECT min(dateorder) FROM books_order)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
Count(*) AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T2.idclient HAVING count(*) > 0
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient HAVING sum(T2.amount) > 0
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idorder JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
max(saleprice) , min(saleprice) FROM book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK WHERE title = 'Book'
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(PurchasePrice) , avg(SalePrice) FROM book AS T1
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.saleprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name = "Plato"
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = \"Plato\"
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN authors AS T3 ON T3.idauthor = T2.idauthor WHERE T3.name = \"George Orwell\" ORDER BY T1.saleprice ASC LIMIT 1;
SELECT t2.title FROM author_book AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn WHERE t1.author = 'George Orwell' ORDER BY t2.saleprice ASC LIMIT 1
SELECT title FROM book WHERE purchaseprice < (SELECT avg(saleprice) FROM book) AND author = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato' AND T1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT t1.name FROM author AS t1 JOIN books_order AS t2 ON t1.idauthor = t2.idorder JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t3.title = "Pride and Prejudice"
SELECT t1.name FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.author JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t3.title = "Pride and Prejudice"
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idauthor WHERE T3.Name LIKE '%Plato%'
PlatoAuthors = (SELECT T1.name FROM author AS T1 JOIN books_order AS T2 ON T1.id_author = T2.id_author WHERE T2.isbn IN (SELECT T3.isbn FROM book AS T3 JOIN author_book AS T4 ON T3.isbn = T4.isbn WHERE T4.author = 'Plato'))_titles = [T2.title FROM books_order AS T2 JOIN PlatoAuthors AS T1 ON T2.id_order = T1.id_order]
SELECT count(*) FROM books_order AS t1 JOIN author_book AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t3.title = "Pride and Prejudice"
SELECT count(*) FROM books_order AS t1 JOIN author_book AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t3.title = 'Pride and Prejudice' ORDER BY t1.dateorder ASC LIMIT 1000000
SELECT idorder FROM books ORDER BY title ASC LIMIT 1 UNION SELECT idorder FROM books ORDER BY title ASC LIMIT 1 WHERE title = \"Pride and Prejudice\" INTERSECT SELECT idorder FROM books ORDER BY title ASC LIMIT 1 UNION SELECT idorder FROM books ORDER BY title ASC LIMIT 1 WHERE title = \"The Little Prince\"
SELECT T1.idorder FROM books_order AS T1 JOIN author_book AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice' AND T4.title = 'The Little Prince' INTERSECT SELECT T1.idorder FROM books_order AS T1 JOIN author_book AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'The Little Prince' AND T4.title = 'Pride and Prejudice'
SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.bookisbn = T4.isbn WHERE T1.idclient = 'Peter Doe' AND T2.amount > 100 INTERSECT SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.bookisbn = T4.isbn WHERE T1.idclient = 'James Smith' AND T2.amount > 100
SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN client AS T4 ON T1.idclient = T4.idclient WHERE T4.name = \"Peter Doe\" AND T5.name = \"James Smith\" ORDER BY T2.amount DESC
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T2.isbn = T4.isbn WHERE T1.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T2.isbn = T4.isbn WHERE T1.name = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder LIKE '%Pride and Prejudice%'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T2.idorder = T3.idorder WHERE T3.title = 'Pride and Prejudice'
SELECT count(*) FROM book
Ascending Order Books Titles: SELECT Title FROM book ORDER BY Title ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
book WHERE title != "Poet"
SELECT avg(Rating) FROM review AS T1;
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT Rank FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Pages LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.Type = \"Novel\"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC LIMIT 1000000000
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50;
SELECT count(DISTINCT TYPE) FROM book AS T1;
SELECT TYPE , Title FROM book EXCEPT SELECT T1.Type , T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT count(*) FROM customer AS T1;
SELECT count(*) FROM customer ORDER BY Name ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ascending_name = (SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC)
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN (\"England\", \"Australia\")
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1.0
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1.0;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity < 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity > 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN dish AS T3 ON T1.Dish_Name = T3.Dish_Name ORDER BY T1.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name ORDER BY sum(T1.Quantity) ASC
SELECT T1.Name , SUM(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY SUM(T2.Quantity) DESC
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1;
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch AS T1;
SELECT DISTINCT manager FROM branch AS T1;
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
ascending_name = sorted(member.Name)
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
Joining the leader table with the club table gives us all the information we need. Join the leader table on member_id, and join the club table on club_id. This will give us the name of the leader and the name of the club they joined.
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2017
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T3.Club_ID = T2.Club_ID WHERE T3.club_name = \"Houston\"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
both_member = filter(member.age > 22) & filter(member.age < 19)
SELECT avg(T1.age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id;
club_name LIKE '%state%'
SELECT T1.collection_subset_name FROM collection_subsets AS T1
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_subset_details FROM Collection_subsets WHERE Collection_subset_name = "Top collection"
SELECT t2.collection_subset_details FROM document_subsets AS t1 JOIN collection_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t1.document_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN COLLECTION_SUBSET_MEMBERS AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Subset_ID = T2.Parent_Document_Subset_ID WHERE T2.document_subset_name = 'Marlin' INTERSECT SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Subset_ID = T2.Parent_Document_Subset_ID WHERE T2.document_subset_name != 'Marlin'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_Subset_Members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.owner = 'Marlin' AND T1.parent_document_object_id IN ( SELECT T4.parent_document_object_id FROM Document_Objects AS T4 JOIN Document_Subset_Members AS T5 ON T4.document_object_id = T5.document_object_id JOIN Collection_Subset_Members AS T6 ON T5.collection_subset_id = T6.collection_subset_id WHERE T6.owner = 'Marlin')
SELECT DISTINCT Description FROM Document_Objects;
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID IN (SELECT Parent_Document_Object_ID FROM Document_Objects)
SELECT count(*) FROM document_objects WHERE OWNER = 'Marlin'
SELECT count(*) FROM document_objects WHERE OWNER = 'Marlin'
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_subsets)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_subsets)
SELECT T1.document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
Count(*) , parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id HAVING count(*) > 1
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.parent_subset_id = (SELECT collection_subset_id FROM collections WHERE collection_name = 'Nice')
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.parent_subset_id = (SELECT collection_id FROM collections WHERE collection_name = \"Nice\")
SELECT collection_name FROM collections WHERE collection_id NOT IN ( SELECT parent_collection_id FROM collection_subsets)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM Document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.collection_subset_name = \"child\"
SELECT document_object_id FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.owner = 'Ransom' ORDER BY T1.document_subset_id ASC LIMIT 1;
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T1.owner = \"Ransom\"
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , document_object_id FROM Document_objects GROUP BY document_object_id;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT count(*) , T1.document_subset_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id JOIN Collection_Subset_Members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.owner = 'Braeden' AND T1.document_object_id IN (SELECT document_object_id FROM document_subset_members WHERE related_document_object_id IN (SELECT document_object_id FROM document_objects WHERE owner = 'Braeden'))
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.owner = 'Braeden' AND T1.document_object_id IN ( SELECT document_object_id FROM Document_subset_members AS T3 JOIN collection_subsets AS T4 ON T3.collection_subset_id = T4.collection_subset_id WHERE T4.collection_name = 'Braeden' )
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden'
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden'
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_id;
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T2.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name , T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_object_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.owner = 'Ransom'
count(*) , T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING count(*) > 0
COUNT(*) AS count FROM document_objects AS t1 JOIN collection_subsets AS t2 ON t1.document_object_id = t2.collection_id GROUP BY t1.document_object_id
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT t1.document_object_id) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t1.collection_name = "Best"
most_documents_collection = (SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id FROM document_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = "Best" AND T1.document_subset_details = "Best for 2000"
SELECT DISTINCT T1.document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Best for 2000" INTERSECT SELECT DISTINCT T1.document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.collection_subset_name = "Best"
SELECT T1.document_object_id FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = \"Best\" EXCEPT SELECT T1.document_object_id FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"2000\"
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_subset_name = 'Best for 2000'
SELECT T1.document_object_id FROM document_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = \"Best\" UNION SELECT T1.document_object_id FROM document_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\" AND T1.document_subset_details = \"Best\" AND T1.document_subset_name = \"Best\"
{'Best for 2000': {'document_subset_id': '7198', 'collection_subset_id': '6543'}, {'Best': {'document_subset_id': '7198', 'collection_subset_id': '6543'}}
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_object_id IN (SELECT T4.document_object_id FROM documents_in_collections AS T4 JOIN collection_subsets AS T5 ON T4.collection_id = T5.collection_id WHERE T5.collection_name = "Best")
SELECT count(*) FROM Collections WHERE collection_name = \"Best\" AND collection_id IN (SELECT collection_id FROM Collection_subset_members AS T1 JOIN DOCUMENT_SUBSET_MEMBERS AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.collection_subset_id IN (SELECT collection_subset_id FROM collection_subset_members AS T3 JOIN document_subset_members AS T4 ON T3.document_subset_id = T4.document_subset_id WHERE T4.document_object_id = collection_ids.best_document_object_id)))
SELECT count(DISTINCT collection_id) FROM collection_subsets WHERE collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collections AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_name = "Best in"
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collections AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_name = "Best"
SELECT count(*) FROM songs WHERE name LIKE '%Love%'
ascending_lexicographical_order_songs(songs.id)
SELECT name , language FROM songs
max(voice_sound_quality) - min(voice_sound_quality)
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "english"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING COUNT(DISTINCT T2.songs_id) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = "The Balkan Girls" AND T1.language = "english"
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1 Songs with most participants are the ones with the highest number of participants in their group (i.e., most popular).
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 9 OR stage_presence BETWEEN 7 AND 10.
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language HAVING avg(T1.rhythm_tempo) != 0
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'good' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'good'
SELECT name FROM songs WHERE name LIKE "%Is%";
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT state) FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city AS t1;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state LIKE 'PA'
SELECT city_name FROM city WHERE state LIKE "%PA%"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT count(DISTINCT state) FROM city GROUP BY state HAVING count(*) >= 2
most_state_most_city = city_name , state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code IN (SELECT city_code FROM city WHERE city_name = "MD")
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT fname , major FROM student WHERE city_code IN (SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT count(*) , country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country HAVING count(*) > 0
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 0
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT count(*) , country FROM student GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country != 'USA'))
BAL <-> CHI = 0 miles
BAL -> City(city_name) CHI -> City(city_name) direct_distance(BAL , CHI ).distance = 963
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
Boston到Newark的距离是430英里。
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS t1 JOIN direct_distance AS t2 ON t1.city1_code = t2.city1_code AND t1.city2_code = t2.city2_code
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN direct_distance AS T2 ON T1.city1_code = T2.city1_code AND T1.city2_code = T2.city2_code
SELECT T1.city_code , T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance = (SELECT max(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance) GROUP BY T1.city_code HAVING count(*) >= 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 INTERSECT SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' UNION SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name NOT IN (SELECT city_name FROM city)
SELECT avg(T3.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON T2.city2_code = T3.city_code WHERE T1.city_name = "Boston"
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = city_code AND city2_code = city_code AND city1_code = city_code) ORDER BY T1.longitude DESC LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING sum(T2.distance) >= 1000000
sum(distance) AS t1 , city_code AS t2 FROM direct_distance GROUP BY t2 HAVING sum(distance) != 0
SELECT avg(T1.distance) , T2.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY T2.city_name HAVING avg(T1.distance) > 0.01
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0.5
"SELECT T1.longitude , T1.latitude FROM direct_distance AS T1 JOIN student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = 'Linda' AND T2.lname = 'Smith' UNION SELECT T1.longitude , T1.latitude FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = 'Tracy' AND T2.lname = 'Kim' "
SELECT T3.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.fname = 'Linda' AND T1.lname = 'Smith' INTERSECT SELECT T3.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.fname = 'Tracy' AND T1.lname = 'Kim'
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = T3.city2_code AND T3.city_name = "Linda Smith" ORDER BY T2.distance LIMIT 1;
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Linda Smith' ORDER BY T2.distance LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = \"Linda\"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30;
SELECT name , age FROM Sailors WHERE age < 30;
SELECT name , age FROM sailors WHERE age < 30 AND age > 29
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1;
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1;
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.day = 1 AND T2.bid = 102;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves GROUP BY bid HAVING count(DISTINCT sid) > 1
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%' OR name LIKE '%E%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors) EXCEPT SELECT sid FROM sailors WHERE age = (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1 AND count(*) <= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue')
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = "red" UNION SELECT bid FROM boats WHERE color = "blue")
SELECT T2.name , T1.sid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" OR T1.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SID = (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' INTERSECT SELECT bid FROM boats WHERE color = 'blue'))
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROM boats WHERE color = "red" INTERSECT SELECT bid FROM boats WHERE color = "blue")
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves WHERE bid IN (SELECT bid FROM Boats))
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 AND T2.bid IN (SELECT bid FROM Boats)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.day != \"null\"
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM Sailors AS T1;
SELECT count(*) FROM sailors AS T1;
SELECT avg(age) FROM sailors WHERE rating = 7.0;
SELECT avg(age) FROM sailors WHERE rating = 7.0;
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%' OR name LIKE 'd%'
SELECT avg(rating) , max(age) FROM sailors AS T1;
SELECT avg(rating) , max(age) FROM sailors AS T1;
count(*) AS T1 FROM Reserves GROUP BY bid;
Count(*) AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.bid;
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T1.bid HAVING count(*) > 100
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid HAVING count(*) >= 1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN ( SELECT sid FROM reserves GROUP BY sid HAVING count(*) > 1 ) GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name HAVING count(*) > 0
SELECT count(*) , T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name HAVING count(*) > 1
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM boats WHERE color = \"red\") GROUP BY T1.rating;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROMboats WHERE color = \"red\") GROUP BY T1.rating HAVING avg(T2.age) > 0
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
between_age_20_to_30 = (SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.age BETWEEN 20 AND 30)
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT rating FROM Sailors WHERE rating < (SELECT rating FROM boats WHERE color = 'red') ORDER BY rating DESC LIMIT 1)
SELECT T2.name FROM Sailors AS T2 JOIN Reserves AS T1 ON T2.sid = T1.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' AND T2.rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (
SELECT max(rating) FROM sailors AS T1;
SELECT max(rating) FROM sailors AS T1;
SELECT T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.name = \"Melon\"
SELECT T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.name = \"Melon\"
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT model FROM headphone ORDER BY model ASC
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) < 2
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS HAVING count(*) > 1
SELECT CLASS , count(*) FROM headphone WHERE price > 200 GROUP BY CLASS HAVING count(*) > 1
SELECT count(DISTINCT earpads) FROM headphone AS T1{}
SELECT count(DISTINCT Earpads) FROM headphone AS T1;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Earpads FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Earpads ORDER BY count(*) DESC LIMIT 2
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY Price LIMIT 1 OFFSET 0 ;
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price LIMIT 1
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT DISTINCT earpads FROM headphone WHERE construction <> 'Plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
sorted_store_names = sorted(store , 1)
sorted(store)
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood LIKE "%Tarzana%"
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(DISTINCT neighborhood) FROM store AS T1
count(*) AS t1 FROM store GROUP BY t1.neighborhood;
store.count(*) AS count , neighborhood AS neighborhood FROM store GROUP BY neighborhood HAVING count(*) > 0
most headphones = count(*) FROM stock GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM stock GROUP BY headphone_id ORDER BY count(*) DESC LIMIT 1) GROUP BY T1.store_id HAVING sum(T2.quantity) > 0
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id)
SELECT name FROM store WHERE store_id NOT IN ( SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1 )
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t1.name = \"Woodman\"
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1)
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1)
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM paper
SELECT count(*) FROM paper AS T1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = "NAACL"
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = \"NAACL\"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
sorted_paper = sorted(Paper , 1) ORDER BY YEAR ASC
Distinct(venue) BY YEAR ORDER BY YEAR ASC
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id JOIN affiliation AS T3 ON T1 AFFILIATION_ID = T3 AFFILIATION_ID WHERE T3.name = 'Harvard University'
SELECT T3.title , T3.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2 AFFILIATION_ID JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKeown\"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = \"McKeown\"
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t2.paper_id IN ( SELECT t4.paper_id FROM paper AS t4 JOIN author_list AS t5 ON t4.paper_id = t5.paper_id JOIN affiliation AS t6 ON t5.affiliation_id = t6.affiliation_id WHERE t6.name = 'Columbia University')
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Stanford\" INTERSECT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Columbia University\"
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Mckeown", T1.author_id = "Kathleen" INTERSECT SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Rambow", T1.author_id = "Owen"
SELECT T3.title , T3.paper_id FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id JOIN Paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen" AND T3.paper_id = "Rambow"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = \"McKeown\") EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Rambow\")
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKewn\" EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"Rambow\"
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.name = 'Kathleen' OR T3.name = 'Rambow' AND T3.name = 'Owen'
SELECT T3.title , T2.paper_id FROM Author_list AS T1 JOIN Paper AS T3 ON T1.paper_id = T3.paper_id JOIN AUTHOR AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'McKeown' AND T2.name = 'Owen' OR T2.name = 'Rambow' AND T2.name = 'Owen'
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1000000000
ORDER BY count(*) AS num_papers FROM author_list GROUP BY author_id ORDER BY num_papers ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY T2.paper_id ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50;
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = A00-1002
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.paper_id = 12-1027
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027;
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1 ID : t1.paper_id , COUNT(*) : t1.paper_id
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "McKeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "McKeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "McKeown" AND T2.email = "Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = 'McKeown' AND T2.email = 'Kathleen'
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1 LIMIT 1
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKeown\" AND T1.author_id = T2.author_id WHERE T1.name = \"Kathleen\"
SELECT T2.venue , T2.year FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = 'Columbia University'
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper WHERE YEAR < 2009 AND affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = "Columbia")
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year < 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = "Stanford University" AND T1.year BETWEEN 2000 AND 2009
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.year = t2.year WHERE t2.name = \"Stanford University\" AND t1.year >= 2000 AND t1.year <= 2009
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T1.paper_id IN ( SELECT paper_id FROM citation AS T3 JOIN author AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T4.name = "Kathleen")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Kathleen' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown , Kathleen' GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
counts = {} for venue , YEAR in paper.venue , paper.year : counts[venue] = counts.get(venue) + 1 print(counts)
SELECT count(*) , name FROM affiliation GROUP BY name;
Count(*) AS count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.affiliation_id HAVING count(*) > 0
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING COUNT(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.cited_paper_id > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING COUNT(*) > 50)
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.paper_id IN (SELECT T3.paper_id FROM Paper AS T3 JOIN Citation AS T4 ON T3.paper_id = T4.paper_id WHERE T4.year = 2009 AND T4.cited_paper_id IN (SELECT T5.paper_id FROM Paper AS T5 JOIN Citation AS T6 ON T5.paper_id = T6.paper_id WHERE T6.year = 2009))
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = \"NAACL\" INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = \"ACL\"
SELECT name FROM AUTHOR WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = \"ACL\")
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = \"ACL\")
SELECT count(*) FROM conference
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
count(*) , conference_name FROM conference GROUP BY conference_name HAVING count(*) > 0
count(*) AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T2.conference_name HAVING count(*) > 0
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2;
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution AS T1
foundations_between_1850_and_1900 = count(*) WHERE founded BETWEEN 1850 AND 1900;
count(*) BETWEEN 1850 AND 1900 IN institution.Founded
most_recent_founded = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) >= 1000000
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) > 1000
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
max(Age) = 65 , min(Age) = 30 FROM staff WHERE Nationality = 'United States'
max(Age) , min(Age) FROM staff AS T1
SELECT T3.conference_name FROM conference AS T3 JOIN staff_participation AS T2 ON T3.conference_id = T2.conference_id JOIN staff AS T1 ON T2.staff_id = T1.staff_id WHERE T1.nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Naccl'
SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year IN (2003 , 2004)
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004;
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name , T1.Year
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2004)
SELECT institution_name , location FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id WHERE T2.year = 2004)
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < ( SELECT avg(age) FROM pilot_skills ) ORDER BY age ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT pilot_name FROM pilot_skills ORDER BY age ASC LIMIT 1000;
SELECT * FROM pilot_skills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30;
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 34 AND T2.plane_name = "Piper Cub"
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT LOCATION) FROM hangar AS T1;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40;
SELECT count(*) FROM pilot_skills WHERE age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name JOIN pilot AS T3 ON T2.plane_name = T3.plane_name WHERE T3(plane_name) = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilot_skills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilot_skills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilot_skills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilotskills AS t2 ON t1.plane_name = t2.plane_name GROUP BY t2.plane_name ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T2.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name AS T3 WHERE T3.age != 0;
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
sorted_pilot_names_by_age: SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
sorted_location = (SELECT LOCATION FROM Hangar ORDER BY plane_name)
SELECT DISTINCT location FROM hangar ORDER BY plane_name
SELECT DISTINCT T1.plane_type FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.pilot_name ASC
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name ASC
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT name , age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub" AND T1.age > 35 UNION SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "F-14 Fighter" AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' INTERSECT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name AS T3
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
"SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1 plane_name = 'Piper Cub' OR T1 plane_name = 'F-14 Fighter'";
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
Planes_type_count = { "plane_name": "plane_name", count: 0 }
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING count(*) > 0
SELECT T1.name , T2.plane_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC
SELECT DISTINCT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC
SELECT T1.name , T2.type FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC , T2.type ;
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT max(T1.age) , T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.pilot_name HAVING max(T1.age) != 0
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) >= 1
SELECT count(*) , avg(age) , T1.city FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.city HAVING avg(age) != 0
SELECT count(*) , T2.location , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35.
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35;
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1;
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY name ASC
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub' ORDER BY age ASC) ORDER BY T1.pilot_name ASC;
SELECT count(*) FROM pilot_skills WHERE age < (SELECT max(age) FROM pilot_skills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE AREA_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(Population) FROM district WHERE AREA_km >= (SELECT max(Area_km) FROM district) ORDER BY AREA_km DESC LIMIT 3;
sorted_districts = sorted(district, key=lambda x: x.Population)
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area > 3000
SELECT Spokesman_id , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1.
SELECT name , points FROM spokesman WHERE age < 40;
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Spokesman_id FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T3.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T2.Start_year < 2004 GROUP BY T3.Name HAVING COUNT(*) > 1
SELECT count(*) , T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID GROUP BY T3.District_ID HAVING count(*) > 0
SELECT T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T1.Rank_position = 1 AND T2.District_ID IN ( SELECT T4.District_ID FROM spokesman AS T4 JOIN spokesman_district AS T5 ON T4.Spokesman_ID = T5.Spokesman_ID WHERE T5.Rank_position = 1 ) INTERSECT SELECT T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T1.Rank_position = 2 AND T2.District_ID IN ( SELECT T4.District_ID FROM spokesman AS T4 JOIN spokesman_district AS T5 ON T4.Spokesman_ID = T5.Spokesman_ID WHERE T5.Rank_position = 1 )
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT T1.population + t2.population , avg(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 0
SELECT t1.title FROM sculptures AS t1 JOIN paintings AS t2 ON t1.sculptorid = t2.painterid ORDER BY t2.year DESC LIMIT 1;
SELECT t1.title FROM sculptures AS t1 JOIN paintings AS t2 ON t1.year = t2.year ORDER BY t2.year DESC LIMIT 1;
SELECT title , location FROM paintings ORDER BY YEAR DESC LIMIT 1;
OldestPaintings(paintingID) WHERE YEAR = (SELECT max(YEAR) FROM paintings) AND LOCATION = LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT t1.title , t2.location FROM sculptures AS t1 JOIN paintings AS t2 ON t1.sculptorid = t2.painterid
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226;
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthyear FROM artists ORDER BY deathyear ASC LIMIT 1;
SELECT birthyear FROM artists ORDER BY deathyear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY deathyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = 'gallery 240'
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear DESC LIMIT 1;
SELECT T1.painterid , COUNT(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear = (SELECT max(birthyear) FROM artists) GROUP BY T1.painterid ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary'
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary'
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T1.location , T2.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Pablo\"
SELECT T2.location , T2.mediumOn FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = \"Pablo\"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title = T3.title AND T2.medium = T3.medium
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.medium = "painter" AND T3.medium = "sculptor"
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT painterid FROM paintings WHERE medium = \"medium\") INTERSECT SELECT fname , lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium = \"lithographic\")
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" AND T2.medium = \"lithographic\"
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.mediumOn = "canvas"
year = 1884 AND T1.birthYear = T2.birthYear
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"medium\" AND T2.location = 241;
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = 241 AND T2.medium = \"oil\"
SELECT count(*) , medium FROM paintings GROUP BY medium
counts = [paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures , paintings , sculptures ,
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium ASC
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR <= 1900 GROUP BY LOCATION HAVING count(*) > 1
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium\" AND LOCATION = 240;
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium\" AND LOCATION = 240 AND title != \"null\"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE LOCATION = \"gallery 240\" AND YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY width_mm DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000000000000000
Between 1900 and 1950, we can create paintings and sculptures from the given range. We will create paintings by adding titles with year 1900 through 1950 to the paintings table, and create sculptures by adding titles with year 1900 through 1950 to the sculptures table. Here is the combined list: Paintings: 1900-1950 Sculpts: 1900-1950 Both paintings and sculptures created between 1900 and 1950 would have the same titles as they were added to their respective tables.
Between 1900 and 1950, paintings and sculptures were created by artists born after 1875 (inclusive) and 1924 (exclusive). Therefore, the query can be written as: SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear > 1875 AND T2.birthyear < 1924 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorid = T4.artistid WHERE T4.birthyear > 1875 AND T4.birthyear < 1924
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1 ID Paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear < 1900 GROUP BY T2.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1884 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930;
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 2000 INTERSECT SELECT paintingid FROM paintings WHERE height_mm BETWEEN 0 AND 499
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = \"on panel\" INTERSECT SELECT LOCATION FROM paintings WHERE medium = \"on canvas\"
SELECT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1930 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1885 AND 2000
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1930 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1886 AND 1930)
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 'place of gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1;
SELECT height_mm , painterid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1;
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID ASC
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.fname , T1.lname , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = \"gallery 240\" GROUP BY paintingid ORDER BY min(width_mm) DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY LOCATION HAVING LOCATION = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE YEAR > 1900 ORDER BY height_mm DESC LIMIT 1)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR >= 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT year , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid`
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures) INTERSECT SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT painterid FROM paintings)
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'Canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = \"canvas\"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position != \"Junior Strous\" EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"Junior Strous\"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position != 'Junior Strous' AND T2.Winning_driver != 'Junior Strous'
sorted_by_age_constructor = (SELECT constructor FROM driver ORDER BY age ASC)
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20 AND Age <= 300;
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver AS T1;
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
COUNT(*) AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) > 0
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.age ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
driver(Driver_Name) EXCEPT SELECT driver_name FROM driver WHERE constructor = \"Bugatti\"
driver.Driver_Name NOT IN (SELECT Driver_Name FROM driver WHERE Constructor = 'Bugatti')
constructor_count = count(*) FROM driver GROUP BY constructor;
constructor_count = count(*) FROM driver AS T1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1(Constructor) IN (SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30;
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"James Hinchcliffe\" AND T2.Pole_Position = \"Carl Skerlong\"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "Carl Skerlong"
SELECT driver_name FROM driver WHERE driver_id NOT IN ( SELECT T1.driver_id FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position = \"James Hinchcliffe\")
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT count(*) FROM languages
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE "%ish%";
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1;
SELECT avg(justice_score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE name <> 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT count(*) , T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T2.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"English\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = 'English')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T2.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY avg(T1.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT T1.language_id FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
filter1 = (overall_score > 95) AND (overall_score < 90) filter2 = (overall_score > 95) AND (overall_score < 90) official_languages1 = (SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.overall_score = filter1) INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.overall_score = filter2)
SELECT T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id WHERE T1.overall_score BETWEEN 95 AND 100 INTERSECT SELECT T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id WHERE T1.overall_score BETWEEN 0 AND 89 {}
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM addresses
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.county_state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.feature_name , T2.feature_description FROM Property_features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT min(room_count) FROM properties AS T1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T1.age_category_description LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.user_category_code WHERE T2.first_name LIKE '%Mother%' OR T2.last_name LIKE '%Mother%'
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn != 'No' AVG(T1.room_count)
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1;
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1;
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1;
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(*) FROM (SELECT DISTINCT room_size FROM rooms)
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_searches GROUP BY user_id HAVING count(*) >= 2;
SELECT min(search_datetime) FROM User_searches WHERE search_string != ''
SELECT max(search_datetime) FROM User_searches AS T1 WHERE T1.search_string != ''
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T1.owner_user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2)
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T3.owner_user_id FROM Properties AS T3 JOIN User_Property_History AS T4 ON T3.property_id = T4.property_id GROUP BY T3.owner_user_id HAVING count(*) >= 2)
SELECT T1.user_category_code , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_date ASC LIMIT 1 WHERE T2.search_string = \"first\"
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT login_name FROM users WHERE user_category_code = \"Senior Citizen\" ORDER BY first_name ASC
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1;
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rereq\"
SELECT date_registered FROM Users WHERE login_name = \"ratione\"
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = \"Senior Citizens\"
SELECT T1.building , T1.street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior citizen"
SELECT count(*) FROM ( SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2 )
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) , T1.property_id FROM Property_photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id;
SELECT count(*) , property_id FROM Property_phOTOS GROUP BY property_id;
SELECT count(*) , T1.user_id FROM Users AS T1 JOIN Property_Photos AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN ( SELECT OWNER_USER_ID FROM Users WHERE is_buyer = 'Yes' INTERSECT SELECT OWNER_USER_ID FROM Users WHERE is_buyer = 'No')
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_buyer = true) UNION SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_student = true)
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.date_stamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.date_stamp
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
most_common_property_type = (SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM rooms GROUP BY room_size HAVING count(*) > 1
SELECT count(*) , room_size FROM rooms GROUP BY room_size HAVING count(*) > 0
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT T2.property_address_id FROM Properties AS T2 JOIN Users AS T1 ON T2.owner_user_id = T1.user_id GROUP BY T2.property_address_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name = T1.property_name
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT user_id FROM properties)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 AND count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780;
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
max(weight) , min(weight) FROM bike AS T1
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T2.product_name FROM bike AS T2 JOIN cyclists_own_bikes AS T1 ON T1.bike_id = T2.id WHERE T1.purchase_year > 2015
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclists WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > (SELECT purchase_year FROM cyclists_own_bikes WHERE name = '4:21.558')
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' AND T2.purchase_year = T3.result INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM bikes AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id )
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
cyclists_own_bikes.count(*) ORDER BY cyclist_id ASC
SELECT T1.flavor , max(T2.price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.flavor
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT T1.flavor , T2.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = \"cookie\" ORDER BY T2.price ASC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor LIKE '%Apple%'
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3.0
ids = [id] GOODS WHERE price < 3.0
SELECT DISTINCT T1.customerid FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.item WHERE T3.flavor = "Lemon"
SELECT DISTINCT T1.customerid FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.id WHERE T3.flavor = "Lemon Cake"
Count(*) AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T2.food HAVING count(DISTINCT T1.customerid) > 0
SELECT count(*) , food FROM goods GROUP BY food
SELECT customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date >= '2003-07-15' GROUP BY T1.customerid HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.LastName HAVING COUNT(*) > 10 INTERSECT SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.LastName HAVING COUNT(*) < 10`
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING COUNT(*) > 10;
SELECT count(DISTINCT item) FROM items WHERE food = "Cake"
SELECT count(DISTINCT item) FROM items WHERE food = 'Cake'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT flavor FROM goods WHERE food LIKE 'Croissant'
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food;
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T2.flavor = \"Cake\" AND T2.food = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = \"Cakes\" AND T2.Flavor = \"Cookies\"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T1.lastname = \"LOGAN\" AND T3.flavor = \"Croissant\"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T1.lastname = \"Logan\" AND T3.flavor = \"croissant\"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T2.price DESC LIMIT 1;
SELECT Item FROM items GROUP BY Item ORDER BY count(*) ASC LIMIT 1;
SELECT Item FROM items GROUP BY Item ORDER BY count(*) ASC LIMIT 1;
food_type_count = count(DISTINCT food) FROM goods AS T1
food_type_count = count(*) SELECT food , count(*) FROM goods GROUP BY food HAVING count(*) >= 1
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10.0
SELECT flavor FROM goods WHERE price > 10.0
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price > 13;
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 13;
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15;
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
ids: APP1, APP2, APP3
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE \"70%\"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE food = 'good' ORDER BY id
SELECT DISTINCT id FROM goods WHERE flavor = 'good'
SELECT T1.Receipt FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Item WHERE T2.Flavor = \"Apple\" OR T1.customerid = 12
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Apple\" OR T1.id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT Receipt FROM receipts ORDER BY Date LIMIT 1 OR SELECT Receipt FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 10;
SELECT ReceiptNumber FROM receipts WHERE Date = (SELECT min(Date) FROM receipts ORDER BY Date ASC LIMIT 1) INTERSECT SELECT ReceiptNumber FROM items WHERE Price > 10;
SELECT item FROM goods WHERE price >= 3 AND price <= 7 INTERSECT SELECT item FROM goods WHERE price >= 3 AND price <= 7
SELECT item FROM goods WHERE price >= 3 AND price <= 7 INTERSECT SELECT item FROM goods WHERE price >= 3 AND price <= 7
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor IN ('Blackberry', 'Blueberry')
SELECT avg(price) FROM goods WHERE flavor = \"Blackberry\" OR flavor = \"Blueberry\"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'Food' ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customerid , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date HAVING count(*) >= 1
SELECT count(*) , date FROM receipts GROUP BY date HAVING count(*) > 0
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Tart" AND T3.name = "Apple"
SELECT T2.FirstName , T2.LastName FROM items AS T1 JOIN customers AS T2 ON T1.Item = T2.id JOIN goods AS T3 ON T1.food = T3.id WHERE T3.flavor = "Apple" AND T2.id IN ( SELECT T2.customerid FROM items AS T1 JOIN customers AS T2 ON T1.item = T2.id JOIN goods AS T3 ON T1.food = T3.id WHERE T3.flavor = "Apple")
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE id IN (SELECT item FROM items GROUP BY item HAVING avg(price) >= (SELECT avg(price) FROM goods))
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) AND count(*) > 2
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "Cake" ORDER BY T1.flavor
SELECT T1.id , T2.flavor FROM goods AS T2 JOIN items AS T1 ON T1.food = T2.id ORDER BY T2.flavor
SELECT item FROM goods WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) <= 10;
SELECT T2.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.food WHERE T1.flavor = \"Chocolate\" GROUP BY T2.item HAVING count(*) <= 10
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT flavor FROM goods WHERE food = "Tart"
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = "Tart"
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5.0;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T2.price > 100 GROUP BY T1.date HAVING count(*) >= 100;
SELECT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T1.date HAVING sum(T2.price) > 100
SELECT count(*) FROM driver AS T1;
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make HAVING count(*) > 100
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make HAVING count(*) > 100
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Laps) FROM driver WHERE age < 20.0
SELECT avg(Laps) FROM driver WHERE age < 20.0
SELECT manager , sponsor FROM team ORDER BY car_owner ASC
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1;
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = "Buddy Arrington"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_Nick = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
max(Points) , min(Points) FROM driver AS T1
SELECT count(*) FROM driver WHERE points BETWEEN 0 AND 149.0;
SELECT count(*) FROM driver WHERE points < 150
ascending_order = (SELECT Driver FROM driver ORDER BY Age ASC)
sorted_drivers = sorted(driver, key=lambda x: x.age)
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T1.Driver , T2.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = \"Dublin\";
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(age) FROM driver WHERE country IN ( SELECT country FROM country WHEREOfficial_native_language = \"English\" )
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = \"English\")
SELECT Country FROM country WHERE Country_id IN (SELECT Country FROM driver WHERE Points > 150)
SELECT Country FROM country WHERE Country_id IN ( SELECT Country FROM driver WHERE Points > 150 )
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1
counts = count(*) , make = make , count(*) / counts AS count_per_make FROM driver GROUP BY make HAVING count(*) > 1
Make_count = (SELECT make , count(*) FROM driver GROUP BY make)
most_driver_made = (SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1)
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver FROM driver AS T1 JOIN team_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver ORDER BY count(*) >= 3 HAVING count(*) >= 3;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
find (Country) where Make = \"Dodge\" and Country = (SELECT Country FROM driver WHERE Make = \"Chevrolet\") INTERSECT SELECT Country FROM driver WHERE Make = \"Chevrolet\" AND Make = \"Dodge\"
SELECT sum(Points) , avg(Points) FROM driver AS T1;
total_points = sum(Points) / count(*) avg_points = avg(Points)
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution AS t1;
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Name
ascending founded ORDER BY founded ASC NAME Institution_ID
sorted_by_founded(institution) ORDER BY founded ASC
SELECT city , province FROM institution
SELECT city , province FROM institution
max(enrollment) : 999999999 min(enrollment) : 0
max(enrollment) , min(enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT Stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT name , nickname FROM institution
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
def order_by_championships(championships): sorted_championships = sorted(championships.items(), key=lambda x: x[1], reverse=True) return [t[0] for t in sorted_championships]
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING COUNT(*) >= 1
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) = 1 OR count(*) = 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETTE AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
Count(*) AS T1 , affiliation AS T2 FROM institution GROUP BY affiliation HAVING count(*) > 0
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT name FROM institution ORDER BY capacity DESC
SELECT name FROM institution ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = \"Vancouver\" OR city = \"Calgary\"
SELECT Enrollment FROM institution WHERE City = "Vancouver" UNION SELECT Enrollment FROM institution WHERE City = "Calgary"
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = "New York")
SELECT contents FROM boxes WHERE value > 150;
SELECT contents FROM boxes WHERE value > 150;
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code;
SELECT avg(T1.value) , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS T1;
SELECT avg(capacity) , sum(capacity) FROM warehouses AS T1;
SELECT avg(capacity) , sum(capacity) FROM warehouses AS T1;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(value) FROM boxes AS T1;
SELECT avg(value) FROM boxes AS T1
SELECT DISTINCT contents FROM boxes AS t1;
SELECT count(DISTINCT contents) FROM boxes
count(DISTINCT contents)
SELECT count(DISTINCT contents) FROM boxes AS T1
SELECT DISTINCT LOCATION FROM Warehouses AS T1;
SELECT count(DISTINCT LOCATION) FROM Warehouses AS T1
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" OR LOCATION = "New York")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" UNION SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago") INTERSECT SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" OR T2.contents = "Scissors"
SELECT DISTINCT warehouse FROM boxes WHERE contents IN ('Rocks', 'Scissors')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
boxes WHERE contents LIKE '%Rocks%' AND contents LIKE '%Scissors' LOCATION IN (SELECT location FROM warehouses WHERE code IN (SELECT warehouse FROM boxes GROUP BY warehouse HAVING count(*) = 2))
sorted_boxes = sorted(boxes , contents )
SELECT code , contents FROM boxes ORDER BY value
sorted_boxes = sorted(boxes.items(), key=lambda x: x[1]) # Sort by value lowest_value_box = sorted_boxes[0] # Get the first item from the sorted list (lowest value box)
boxed = min(boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
ORDER BY Contents ASC BOXES Contents ORDER BY Contents ASC
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.warehouse , avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse HAVING avg(T1.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150;
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(value) , count(*) FROM boxes GROUP BY contents;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses AS t1;
SELECT sum(capacity) FROM warehouses AS T1;
SELECT T3.location , max(T2.value) FROM boxes AS T1 JOIN warehouses AS T3 ON T1.warehouse = T3.code JOIN boxes AS T2 ON T1.warehouse = T2.warehouse GROUP BY T3.location
SELECT T1.location , max(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location HAVING max(T2.value) != 0
Count(*) AS t1 FROM Boxes GROUP BY t1.warehouse;
boxes_count = count(*) , warehouses_count = count(DISTINCT warehouse) FROM boxes GROUP BY warehouses_count
SELECT count(DISTINCT location) FROM warehouses WHERE capacity > 100 AND name = \"Rocks\"
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
count(*) AS T1 FROM boxes GROUP BY T1.warehouse;
count(*) AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.warehouse;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT code FROM warehouses WHERE capacity > (SELECT min(capacity) FROM warehouses)
SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses GROUP BY capacity ORDER BY count(*) DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT home_conference FROM university WHERE home_conference != "null"
SELECT DISTINCT home_conference FROM university AS T1;
SELECT count(*) , home_conference FROM university GROUP BY home_conference HAVING count(*) > 1
SELECT count(*) , home_conference FROM university GROUP BY home_conference HAVING count(*) > 1
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING avg(enrollment) >= 5000.0
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000.0
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1;
SELECT home_conference FROM university ORDER BY enrollment LIMIT 1;
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.major_name , T1.rank FROM major AS T2 JOIN major_ranking AS T1 ON T1.major_id = T2.major_id JOIN university AS T3 ON T1.university_id = T3.university_id WHERE T3.university_name = 'Augustana College'
SELECT T2.rank , T1.major_name FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.university_name = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 AND T2.major_id = 118
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.major_id = ( SELECT major_id FROM major WHERE major_name = 'Accounting' ORDER BY rank ASC LIMIT 1 )
SELECT T2.university_name FROM major AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1 GROUP BY T2.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank DESC LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT university_id FROM overall_ranking WHERE rank = 1 )
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM overall_ranking ORDER BY rank DESC LIMIT 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Accounting" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = "Urban Education"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = 'Wisconsin'
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id IN (SELECT major_id FROM major WHERE major_name = 'Accounting')
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Accounting' AND T2.rank >= 3;
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Total < 5000
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank < 5)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point >= 3
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM movies WHERE rating != 'None'
SELECT Title FROM Movies WHERE Rating != "null"
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM Movies AS T2 JOIN MovieTheaters AS T1 ON T2.Code = T1.Movie WHERE T1.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Theater != \"null\"
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name != '' AND T2.Name != 'No'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != 'Blast from Hell'
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT count(DISTINCT title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie;
SELECT count(DISTINCT title) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie;
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizens%'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating IN ('G', 'PG')
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
"SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'";
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T1.Title IN (SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T1.Title IN (SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title ASC
SELECT title FROM movies ORDER BY rating ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM movies ORDER BY rating ASC
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
Count(*) AS rating_counts FROM Movies GROUP BY rating_counts;
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE rating != 'null'
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name NOT IN (SELECT T3.Name FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.Code)
SELECT Name FROM MovieTheaters WHERE Movie != (SELECT Code FROM Movies)
SELECT Name FROM MovieTheaters WHERE Movie NOT IN (SELECT Movie FROM Movies)
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT count(DISTINCT rating) FROM movies AS T1
SELECT count(DISTINCT Rating) FROM Movies
SELECT * FROM Movies WHERE Rating != 'Rating' ORDER BY Rating ASC LIMIT 1000000;
SELECT * FROM Movies WHERE Rating != 'Unrated'
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T2.weight) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = 'Leo Wong'
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name LIKE '%Amy Wong%'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary , Position FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE POSITION = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE POSITION = \"Physician\"
SELECT LEVEL FROM Has_clearance
SELECT T2.packagenumber FROM HAS_CLEARANCE AS T1 JOIN shipment AS T2 ON T1.planet = T2.shipmentid JOIN client AS T3 ON T3.accountnumber = T2.recipient WHERE T3.name = \"Leo Wong\"
LeoWong = (SELECT packagenumber FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong') GROUP BY packagenumber HAVING count(*) >= 1
Leo Wong : Package(4567)
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = "Leo Wong"
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\" UNION SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = \"Leo Wong\"
Leo Wong can send packages to any package number, so we will include all of them in our count. SELECT DISTINCT packagenumber FROM package WHERE sender = 'Leo Wong' OR recipient = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT T1.Contents FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.Recipient = T2.AccountNumber JOIN EMPLOYEE AS T3 ON T1.Sender = T3.EmployeeID WHERE T3.Name = "John Zoidfarb"
SELECT T2.Contents FROM HAS_CLEARANCE AS T1 JOIN package AS T2 ON T1.planet = T2.shipmentid JOIN client AS T3 ON T2.recipient = T3.accountnumber WHERE T3.name = 'John Zoidfarb'
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name LIKE '%John%' ORDER BY T2.weight DESC LIMIT 1
SELECT T1.packagenumber , T1.weight FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%' OR T1.weight > (SELECT min(weight) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name LIKE '%John%')
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight LIMIT 3 ASC ;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
most_packages_client = (SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber ORDER BY COUNT(*) ASC LIMIT 1;
SELECT min(T1.weight) , T2.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T2.name ORDER BY min(T1.weight) ASC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender HAVING COUNT(*) > 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT ShipmentID FROM Shipment WHERE Manager IN (SELECT EmployeeID FROM Employee WHERE Name = 'Phillip J. Fry')
SELECT T2.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Philip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = 'Mars'
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' AND T1.manager = 'Turanga Leela'
SELECT T2.ShipmentID FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" OR T2.manager IN ( SELECT employee FROM has_clearance AS T3 JOIN employee AS T4 ON T3.employee = T4.employeeid WHERE T4.position = "Manager")
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Mars" AND T2.name = "Turanga Leela"
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid HAVING count(*) > 0
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT T1.name , T3.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipmentid GROUP BY T1.name ORDER BY sum(T2.weight) DESC
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE sum(T2.weight) > 30
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet GROUP BY T1.name HAVING sum(T2.weight) > 30
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = 'Zapp Brannigan' AND T2.planet = 'Omicron Persei 8'
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planet FROM planet WHERE name = "Omicron Persei 8") OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = 'Omicron Persei 8' OR T1.sender = 'Zapp Brannigan'
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' )
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = "Omega III"
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = (SELECT planet FROM planet WHERE name = "Omega III")
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.level = 1
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T2.employee FROM has_clearance AS T3 JOIN employee AS T4 ON T3.employee = T4.employeeid)
SELECT Name FROM Employee WHERE Salary >= 5000 AND Salary <= 10000
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary >= 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game
"SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id"
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_Millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 2
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.player_name , T2.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T1.Title = "Super Mario World"
SELECT T2.player_name , T2.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T1.Title = \"Super Mario World\"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
SELECT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\";
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = \"Asia\" OR T1.Market_district = \"USA\"
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district IN ('Asia', 'USA')
count(*) , Franchise FROM game GROUP BY Franchise HAVING count(*) > 0
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.College = \"Oklahoma\" AND T2.player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM game_player WHERE player_id IN ( SELECT player_id FROM
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma College\" OR T3.College = \"Auburn College\"
SELECT count(DISTINCT franchise) FROM game
SELECT count(DISTINCT franchise) FROM game
SELECT title FROM game WHERE game_id NOT IN ( SELECT game_id FROM game_player WHERE POSITION = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = 'Guard')
SELECT name FROM press ORDER BY YEAR_PROfits_billion DESC
sorted_press = sorted(press , 1) DESC
SELECT name FROM press WHERE month_profits_billion > 15000000 UNION SELECT name FROM press WHERE year_profits_billion > 10000000
SELECT name FROM press WHERE year_profit_billion > 15000000 OR month_profit_billion > 10000000
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(YEAR_PROfits_billion) , max(YEAR_PROfits_billion) , name FROM press GROUP BY name;
max(Press_ID) FROM press ORDER BY month_profits_billion DESC LIMIT 1
max(name) FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY year_profits_billion ASC LIMIT 1;
SELECT count(*) FROM author WHERE age < 30.0
SELECT count(*) FROM author WHERE age < 30
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender HAVING count(*) > 1
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender HAVING count(*) > 1
sorted(book, Release_date)
sorted_books = sorted(book , 1) DESC title
series_count = count(*) FROM book GROUP BY book.book_series;
book_series_count = count(*) FROM book GROUP BY book_series;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"MM\" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"LT\"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Author_ID HAVING COUNT(*) > 1
SELECT T1.title , T2.name , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3;
best_books = book.order_by(Sale_Amount) LIMIT 3;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name HAVING count(*) >= 1000;
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id IN (SELECT press_id FROM press WHERE name = \"Accor\"))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = "Accor")
SELECT T1.name , T2.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) >= 3;
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM Authors AS T1;
SELECT author_name FROM authors
SELECT author_name , other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
"SELECT count(*) FROM Documents AS T1"
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes AS T1;
SELECT next_process_id , process_name , process_description FROM Process_outcomes WHERE process_outcome_code = "next" AND process_id = 9
next_process_id = (SELECT next_process_id FROM Process_outcomes AS T1 JOIN Process_status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.process_outcome_description = \"Next\" AND T2.process_status_code = 9)
SELECT count(*) FROM Process_outcomes AS T1;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status AS T1;
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff AS T1;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
Ref_Staff_Roles.staff_role_description = 'HR'
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id
SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID: SELECT process_id FROM documents PROCESS_ID:
SELECT document_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM Documents_Processes)
SELECT process_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM Documents_processes)
SELECT T1.process_outcome_description , T1.process_status_description FROM Process_outcomes AS T1 JOIN Documents_processes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.document_id = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT count(*) , process_id FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM Documents AS T1 JOIN Staff_in_Processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.staff_id = 9
staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id HAVING count(*) >= 1
Count(*) AS T1 JOIN Staff_in_Processes AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3;
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies AS T1;
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM clients
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
Count(*) , agency_id FROM clients GROUP BY agency_id;
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_details , T2.agency_id FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T2.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.client_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code
Count(*) AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T2.sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 1
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM INVOICES AS T1;
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT T1.client_id , T2.client_details FROM clients AS T2 JOIN invoices AS T1 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id , T2.client_details FROM clients AS T2 JOIN invoices AS T1 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
Status Codes: { "invoice_status": [1 => "Completed", 2 => "In Progress", 3 => "Open", 4 => "Closed", 5 => "Draft"] } Count(*) FROM INVOICES GROUP BY invoice_status;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments AS T1;
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT count(*) , invoice_id FROM payments GROUP BY invoice_id;
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff AS T1;
Count(*) AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id;
SELECT count(*) , agency_id FROM staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff_in_meetings AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff_in_meetings AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
meetings_outcome_count = ( SELECT count(*) , meeting_outcome FROM meetings GROUP BY meeting_outcome)
Count(*) AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
Count(*) AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.client_id;
Count(*) AS count(*) , client_id FROM meetings GROUP BY client_id;
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
Count(*) , meeting_id FROM Meetings GROUP BY meeting_id;
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id;
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM Clients AS T3 JOIN Invoices AS T4 ON T3.client_id = T4.client_id;
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IN (SELECT meeting_id FROM Meetings GROUP BY meeting_id HAVING count(*) >= 1) AND T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN invoices AS T3 ON T2.client_id = T3.client_id WHERE T2.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id WHERE T2.invoice_status = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T1.meeting_id = T3.meeting_id
