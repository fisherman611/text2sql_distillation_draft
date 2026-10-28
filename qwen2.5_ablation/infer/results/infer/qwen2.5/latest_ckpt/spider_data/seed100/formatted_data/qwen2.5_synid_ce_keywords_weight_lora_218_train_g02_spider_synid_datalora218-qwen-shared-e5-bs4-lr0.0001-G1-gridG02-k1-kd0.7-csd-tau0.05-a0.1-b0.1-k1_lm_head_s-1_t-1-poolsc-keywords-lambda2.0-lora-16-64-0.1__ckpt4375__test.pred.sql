SELECT count(*) FROM club
SELECT count(*) FROM club AS T1;
SELECT name FROM club ORDER BY name
SELECT name FROM club ORDER BY name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT name FROM player ORDER BY wins_count
SELECT name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000;
SELECT Country FROM player WHERE Earnings > 1200000;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC LIMIT 1000000;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) >= 2;
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club EXCEPT SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id
SELECT name FROM club EXCEPT SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000;
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000;
SELECT count(DISTINCT country) FROM player AS T1;
SELECT count(DISTINCT country) FROM player AS T1;
SELECT Earnings FROM player WHERE Country IN ("Australia", "Zimbabwe")
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T2 JOIN orders AS T1 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T2 JOIN orders AS T1 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM ORDER_ITEMS AS T2 JOIN orders AS T1 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T2.order_status_code , T1.order_id FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY min(T2.order_item_status_code) LIMIT 1 OR count(*) > 1;
SELECT T2.date_order_placed , T3.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T3.order_id HAVING count(*) > 1 ORDER BY T2.date_order_placed ASC LIMIT 1;
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2 ORDER BY T1.date_order_placed ASC LIMIT 2
SELECT T2.order_id , T2.date_order_placed FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(DISTINCT T1.product_id) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY order_id ORDER BY sum(product_price) ASC LIMIT 1;
SELECT T1.order_id , sum(T2.order_item_price) FROM Order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.order_item_price) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code;
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
{ "sql": "SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T1.order_id = T3.order_id"} {"sql": "SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T1.order_id = T3.order_id"}
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN order_items AS T3 ON T1.shipment_id = T3.shipment_id
SELECT T3.product_name , T2.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN order_items AS T3 ON T1.shipment_id = T3.shipment_id WHERE T2.date_order_placed != \"null\";
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T3.product_name , T3.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.date_order_placed IN (SELECT T4.shipment_date FROM shipments AS T4 JOIN order_items AS T5 ON T4.order_item_id = T5.order_item_id) ORDER BY T3.product_name ASC LIMIT 1000;
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 0
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.gender_code = 'Female'
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.customer_id IN (SELECT customer_id FROM customers WHERE gender_code = 'Female')
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T1.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT invoice_status_code FROM invoices WHERE invoice_date < (SELECT max(invoice_date) FROM invoices) ORDER BY invoice_date ASC LIMIT 1000000;
SELECT T1.order_id , T1.date_order_placed , sum(T2.total_cost) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.total_cost) > 0 ORDER BY sum(T2.total_cost) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.order_id , T1.date_order_placed , sum(T2.order_item_amount) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_item_amount) > 0 ORDER BY sum(T2.order_item_amount) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM orders WHERE order_status_code = 'Completed' OR order_status_code = 'Shipped' OR order_status_code = 'Delivered' ORDER BY date_order_placed ASC LIMIT 1000000;
SELECT count(DISTINCT customer_id) FROM orders;
SELECT count(*) FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS AS T1
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT DISTINCT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%';
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T3.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id;
SELECT T3.customer_first_name , T2.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T3.customer_first_name , T2.product_name ORDER BY T3.customer_first_name , T2.product_name ASC LIMIT 1000;
SELECT count(*) FROM shipments AS T1 JOIN order_items AS T2 ON T1.shipment_id = T2.shipment_id GROUP BY T1.shipment_id;
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(product_price) FROM products;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T3.product_name HAVING count(*) >= 1 ORDER BY avg(T2.product_price) DESC LIMIT 1;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 0;
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3;
SELECT T2.product_id , T2.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2;
SELECT T2.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_size , product_description FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_size , product_description FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%' OR Internet LIKE '%BBC%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel AS T1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Director_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name , T2.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T2.Channel_ID HAVING COUNT(*) > 1;
SELECT count(*) , T1.Name FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID;
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
SELECT T1.Name FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN director AS T3 ON T2.Director_ID = T3.Director_ID WHERE T3.Age < 40 AND T3.Age > 60;
SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T2.name = 'Hank Baskett' )
SELECT count(*) FROM radio AS T1;
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW BETWEEN 150 AND 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 0
SELECT affiliation FROM city_channel ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) >= 4;
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T1.transmitter , T3.city FROM city_channel AS T3 JOIN city_channel_radio AS T1 ON T1.city_channel_id = T3.city_channel_id JOIN radio AS T2 ON T2.radio_id = T1.radio_id
SELECT T1.transmitter , T3.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id ORDER BY T1.ERP_kW DESC;
SELECT T1.transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.radio_id;
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Top_Speed > 6000 ORDER BY Power DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship LIKE "%United States%"
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(T1.Power) , avg(T1.Power) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY COUNT(*) LIMIT 1;
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996 ORDER BY Top_Speed DESC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996 ORDER BY Top_Speed DESC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012;
SELECT count(DISTINCT T1.Driver_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012;
SELECT count(*) FROM driver WHERE Racing_Series = "NASCAR"
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000 {}
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT Model FROM vehicle GROUP BY Model HAVING sum(total_production) > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T2.Vehicle_ID , T2.Model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T2.Vehicle_ID , T2.Model FROM vehicle AS T2 JOIN driver AS T3 ON T2.Vehicle_ID = T3.Driver_ID WHERE T3.Citizenship = 'Ziyang' GROUP BY T2.Vehicle_ID HAVING COUNT(*) > 1
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Build_Year = T4.Racing_Series WHERE T4.Build_Year = "Ziyang"
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon" OR COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = \"Jeff Gordon\" OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = max(Top_Speed)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , count(*) FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 0
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 0
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Vehicle_ID = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT Driver_ID FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1;
SELECT count(*) FROM Exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != 'Database'
SELECT exam_date , exam_name FROM EXAMS WHERE subject_code <> 'Database'
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_question_code , COUNT(*) FROM questions GROUP BY TYPE_of_question_code
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_id = T2.valid_answer_id WHERE T2.comments = "Normal"
SELECT DISTINCT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.student_answer_id = T2.valid_answer_id WHERE T2.question_id IN (SELECT question_id FROM questions WHERE type_of_question_code = 'Normal')
SELECT count(DISTINCT Comments) FROM Student_answers;
SELECT count(DISTINCT Comments) FROM Student_answers AS T1
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Student_answer_text ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_id = T2.valid_answer_id GROUP BY T1.student_answer_text ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.email_adress , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_answer DESC;
SELECT T1.email_adress , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2;
SELECT T1.First_Name FROM STUDENTS AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2;
SELECT Valid_Answer_Text FROM VALID_ANSWERS GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT Valid_Answer_Text FROM VALID_ANSWERS GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT last_name FROM students WHERE gender_mfu <> 'M'
SELECT Last_Name FROM Students WHERE Gender != \"M\";
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu;
SELECT gender_mfu , count(*) FROM students GROUP BY gender_mfu HAVING count(*) > 100
SELECT last_name FROM students WHERE gender_mfu = 'F' OR gender_mfu = 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_answers)
SELECT T1.Satisfactory_YN FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = "Normal" INTERSECT SELECT T1.Satisfactory_YN FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = "Absent"
SELECT T1.Comments FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = "Normal" INTERSECT SELECT T1.Comments FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = "Absent"
SELECT TYPE_OF_Question_Code FROM QUESTIONS GROUP BY TYPE_OF_Question_Code HAVING COUNT(*) >= 3;
SELECT TYPE_OF_Question_CODE FROM QUESTIONS GROUP BY TYPE_OF_Question_CODE HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
{ "sql": "SELECT count(*) FROM addresses AS T1"} {"sql": "SELECT count(*) FROM addresses AS T1"}
SELECT count(*) FROM addresses AS T1;
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT count(*) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS t1;
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS T1
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers
SELECT count(*) FROM customers AS T1;
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT t1.address_details , t2.customer_phone , t2.customer_email FROM customers AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t2.customer_name = "Jeromy"
SELECT T1.address_details , T2.customer_phone , T2.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = 'Jeromy'
SELECT count(*) , payment_method_code FROM customers GROUP BY payment_method_code;
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code HAVING count(*) > 0
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers GROUP BY customer_name ORDER BY count(*) LIMIT 1;
SELECT customer_name FROM customers ORDER BY count(*) LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS t1;
SELECT count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy" ORDER BY T2.order_date ASC
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code;
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = \"Monitor\"
SELECT count(DISTINCT T1.customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.order_status_code = 'Completed'
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T2.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 3 OR sum(T2.order_quantity) > 6
SELECT order_id , order_date FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t1.order_id HAVING count(*) > 3 OR sum(count(*) ) > 6
SELECT count(*) FROM building
SELECT count(*) FROM building AS T1;
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980 AND completed_year != 1980;
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(Population) FROM region AS T1;
SELECT avg(Population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000;
SELECT Capital FROM region WHERE AREA > 10000;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5;
SELECT Name FROM region ORDER BY Area DESC LIMIT 5;
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.Name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year HAVING COUNT(*) > 0
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 EXCEPT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15;
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 10000000;
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC;
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM services
SELECT count(*) FROM services AS t1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 3;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T2.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t2.service_id = (SELECT service_id FROM services GROUP BY service_id ORDER BY count(*) LIMIT 1)
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.service_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services;
SELECT count(*) FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%'
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%'
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" OR T2.status_code = "good"
SELECT T3.Service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.Services_and_Channels_Details = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad" INTERSECT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T1.service_details FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_details = "Hardy Kutch" AND T1.service_id = ( SELECT service_id FROM customers_and_services AS T3 JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.customer_details = "Hardy Kutch" AND T3.service_id = "bad")
SELECT T3.service_details FROM channels AS T1 JOIN customer_interactions AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = \"Stuck\" AND T2.services_and_channels_details = \"bad\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE '%Success%'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = "Fail"
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id EXCEPT SELECT t3.customer_details FROM customers AS t3 JOIN customer_interactions AS t4 ON t3.customer_id = t4.customer_id
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM channels AS T1 JOIN customers_and_services AS T2 ON T1.channel_id = T2.channels_and_channels_details JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T3.service_details = 'unsatisfied' UNION SELECT T1.service_details FROM channels AS T1 JOIN customers_and_services AS T2 ON T1.channel_id = T2.channels_and_channels_details JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T3.service_details = 'unsatisfied'
SELECT T1.service_details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id WHERE T1.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE services_and_channels_details != "unsatisfied" )
SELECT count(*) FROM Vehicles AS T1;
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1;
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN ( 2013 , 2014 )
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year BETWEEN 2013 AND 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014;
SELECT count(*) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(Amount) , max(Amount) , avg(Amount) FROM Vehicles AS T1 WHERE T1.Type_of_powertrain = 'Diesel' AND T1.Cost_per_25_miles != 'Null'
SELECT min(Amount) , max(Amount) , avg(Amount) FROM Vehicles AS T1 WHERE T1.type_of_powertrain = 'Diesel' AND T1.cost_per_25_miles != '0.00'
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate;
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate;
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0 Total hours of renting for each vehicle.
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM Vehicles EXCEPT SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id;
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2;
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2;
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T2vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Classes AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Detention AS T3 ON T2.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN_CLASSES AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN_CLASSES AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) AND student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.teacher_details , T2.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.teacher_details , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_id = T3.address_id
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_id = T3.address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_addresses AS T2 ON T1.address_id = T2.address_id
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"}
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"}
SELECT T1.behaviour_monitoring_details , COUNT(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"3\"
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"Behaviour Monitoring\" GROUP BY T1.student_id HAVING count(*) = 3 {}
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 1
SELECT count(*) , T1.event_type_code , T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
{ "sql": "SELECT T1.achievement_type_description , T2.achievement_details FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code"} {"sql": "SELECT T1.achievement_type_description , T2.achievement_details FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code"}
SELECT count(*) FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements) AND T2.student_id NOT IN (SELECT student_id FROM Students)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
{ "sql": "SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"} {"sql": "SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"}
{ "sql": "SELECT T1.achievement_type_code , T2.achievement_type_description , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"} {"sql": "SELECT T1.achievement_type_code , T1achievement_type_description , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"}
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%' OR student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id IN ( SELECT student_id FROM_classes )
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T1.class_details = T2.class_details {}
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans;
SELECT min(date_of_loan) FROM Student_Loans;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_loan LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT student_id FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1 )
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1;
SELECT T2.teacher_details FROM TRANSCRIPTS AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id JOIN STUDENTS AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id;
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > 0
SELECT T1.student_id , T2.bio_data , COUNT(*) FROM Students AS T2 JOIN Classes AS T1 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(DISTINCT student_id) FROM Detention AS T1
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans) AND student_details != 'student loan'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.student_id IN ( SELECT T2.student_id FROM Students AS T3 JOIN Students_Addresses AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id HAVING count(*) = 2 )
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.address_id = T3.address_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT datetime_detention_start FROM Detention AS T1;
SELECT name FROM author
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name ASC
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T2.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T2.author HAVING count(*) >= 0
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT count(*) , isbn FROM books_order GROUP BY isbn ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sum(T2.amount) , T1.isbn FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn HAVING sum(T2.amount) > 500 ORDER BY sum(T2.amount) DESC LIMIT 1000000;
SELECT sum(amount) , isbn FROM books_order GROUP BY isbn;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM Books_order AS T1 JOIN Book AS T2 ON T1.Isbn = T2.Isbn GROUP BY T2.Title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.title HAVING count(*) > 500;
SELECT DISTINCT T1.Title FROM BOOK AS T1 JOIN Books_Order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.DateOrder != \"\";
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1;
SELECT DISTINCT idclient FROM orders;
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM book;
SELECT max(SalePrice) , min(SalePrice) FROM BOOK;
SELECT avg(purchaseprice) , avg(saleprice) FROM book;
SELECT avg(purchaseprice) , avg(saleprice) FROM book AS T1;
SELECT max(saleprice - purchaseprice) FROM book;
SELECT max(saleprice - purchaseprice) FROM book;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T2.saleprice) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'George Orwell'
SELECT avg(T2.saleprice) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'George Orwell'
SELECT T2.saleprice FROM author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T1.author = 'Plato'
SELECT T2.saleprice FROM author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T1.author = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell' ORDER BY T4.saleprice LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE purchaseprice < (SELECT avg(saleprice) FROM book) AND author = 'Plato'
SELECT T1.Title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato' AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T1.Name FROM AUTHOR AS T1 JOIN BOOK AS T2 ON T1.idAuthor = T2.author WHERE T2.Title = 'Pride and Prejudice'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T1.Name LIKE '%Plato%'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN author_book AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = 'Pride and prejudice'
SELECT idorder FROM book WHERE title = "Pride and Prejudice" UNION SELECT idorder FROM book WHERE title = "The Little Prince"
SELECT idorder FROM orders WHERE dateorder NOT IN (SELECT dateorder FROM books ORDER BY title = 'Pride' INTERSECT SELECT dateorder FROM books ORDER BY title = 'Prejudice') UNION SELECT idorder FROM orders WHERE dateorder NOT IN (SELECT dateorder FROM books ORDER BY title = 'The Little Prince')
SELECT T2.isbn FROM books_order AS T1 JOIN order AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T3.idclient = T2.idclient WHERE T3.name = 'Peter Doe' AND T3.name = 'James Smith' ORDER BY T2.isbn ASC;
SELECT T2.isbn FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN client AS T3 ON T1.idclient = T3.idclient WHERE T3.name = 'Peter Doe' AND T3.name = 'James Smith' ORDER BY T2.isbn ASC;
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T1.idclient = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = \"Pride and Prejudice\"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN author AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.purchaseprice = T4.saleprice WHERE T4.title = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , RELEASE FROM book
SELECT max(chapters) , min(chapters) FROM book AS T1;
SELECT title FROM book WHERE TYPE <> "Poet"
SELECT avg(Rating) FROM review;
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.chapters DESC LIMIT 1;
SELECT title FROM book ORDER BY Pages ASC LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1;
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = \"Novel\"
SELECT TYPE , count(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC;
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T2.Book_ID ORDER BY COUNT(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book AS T1;
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer ORDER BY Name ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality HAVING COUNT(*) >= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM customer WHERE Card_Credit < 50 EXCEPT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Dish_Name = 'Credit card' AND T1.Card_Credit > 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Dish_Name = 'Credit card' AND T1.Card_Credit < 75;
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_id = T3.dish_id ORDER BY T1.quantity DESC
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name ORDER BY T2.Name ASC;
SELECT T1.Name , SUM(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY SUM(T2.Quantity) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1;
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name HAVING sum(T1.quantity) > 1;
SELECT DISTINCT manager FROM branch AS T1;
SELECT count(DISTINCT manager) FROM branch AS T1;
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2;
SELECT T1.Name , T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.overall_ranking > 100;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2018;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = \"Houston\")
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID;
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT t1.collecrtion_subset_details FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t1.collection_name = 'Top collection'
SELECT t1.collecrtion_subset_details FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM document_objects WHERE OWNER = 'Marlin'
SELECT document_object_id FROM document_objects WHERE owner = \"Marlin\"
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT OWNER FROM Document_objects WHERE DESCRIPTION LIKE '%Braeden Collection%'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_object_id WHERE T2.Owner = 'Marlin' AND T1.Owner = (SELECT Owner FROM Document_Objects WHERE Document_object_id IN (SELECT Parent_Document_Object_id FROM Document_Objects WHERE Owner = 'Marlin'))
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Subset_ID WHERE T2.Document_Subset_Name LIKE '%Marlin%' AND T1.Owner != 'Owner'
SELECT DISTINCT description FROM document_objects AS t1 WHERE t1.parent_document_object_id NOT IN (SELECT parent_document_object_id FROM document_objects AS t2 WHERE t2.description = t1.description)
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != 0
SELECT count(*) FROM Document_objects WHERE owner = 'Marlin'
SELECT count(*) FROM document_objects WHERE owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM document_objects WHERE parent_document_object_id != (SELECT document
SELECT document_object_id FROM document_objects WHERE parent_document_object_id IS NULL
SELECT T1.document_id , count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT count(*) , parent_document_object_id FROM Document_objects WHERE document_object_id IN ( SELECT parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id HAVING count(*) > 1 ) GROUP BY parent_document_object_id;
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT Collection_Description FROM Collections WHERE Collection_Name LIKE '%Best%'
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Nice" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Nice" ORDER BY T1.collection_name DESC LIMIT 1;
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Nice' UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Nice'
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT document_object_id FROM documents_in_collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = \"Ransom\" GROUP BY document_object_id HAVING count(*) >= 1
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.document_subset_name = 'Ransom' AND T1.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , parent_document_object_id FROM document_objects GROUP BY parent_document_object_id;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id ORDER BY count(*) LIMIT 1;
SELECT count(*) , document_object_id FROM document_subsets GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT count(*) , document_object_id FROM document_subsets AS t1 JOIN collection_subsets AS t2 ON t1.document_subset_id = t2.document_subset_id GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Owner FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Braeden" AND T1.owner IN (SELECT T1.Owner FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Braeden")
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Document_object_id = T2.document_object_id WHERE T2.document_subset_details = 'Braeden' AND T1.owner NOT IN (SELECT owner FROM Document_Objects WHERE owner = 'Braeden')
Braeden = (Braeden , 1) UNION ALL Braeden = (Braeden , 2) UNION ALL Braeden = (Braeden , 3) UNION ALL Braeden = (Braeden , 4) UNION ALL Braeden = (Braeden , 5) UNION ALL Braeden = (Braeden , 6) UNION ALL Braeden = (Braeden , 7) UNION ALL Braeden = (Braeden , 8) UNION ALL Braeden = (Braeden , 9) UNION ALL Braeden = (Braeden , 10) UNION ALL Braeden = (Braeden , 11) UNION ALL Braeden = (Braeden , 12) UNION ALL Braeden = (Braeden , 13) UNION ALL Braeden = (Braeden , 14) UNION ALL Braeden = (Braeden , 15) UNION ALL Braeden = (Braeden , 16) UNION ALL Braeden = (Braeden , 17) UNION ALL Braeden = (Braeden , 18) UNION ALL Braeden = (Braeden , 19) UNION ALL Braeden = (Braeden , 20) UNION ALL Braeden = (Braeden , 21) UNION ALL Braeden = (Braeden , 22) UNION ALL Braeden = (Braeden , 23) UNION ALL Braeden = (Braeden , 24) UNION ALL Braeden = (Braeden , 25) UNION ALL Braeden = (Braeden , 26) UNION ALL Braeden = (Braeden , 27) UNION ALL Braeden = (Braeden , 28) UNION ALL Braeden = (Braeden , 29) UNION ALL Braeden = (Braeden , 30) UNION ALL Braeden = (Braeden , 31) UNION ALL Braeden = (Braeden , 32) UNION ALL Braeden = (Braeden , 33) UNION ALL Braeden = (Braeden , 34) UNION ALL Braeden = (Braeden , 35) UNION ALL Braeden = (Braeden , 36) UNION ALL Braeden = (Braeden , 37) UNION ALL Braeden = (Braeden , 38) UNION ALL Braeden = (Braeden , 39) UNION ALL Braeden = (Braeden , 40) UNION ALL Braeden = (Braeden , 41) UNION ALL Braeden = (Braeden , 42) UNION ALL Braeden = (Braeden , 43) UNION ALL Braeden = (Braeden , 44) UNION ALL Braeden = (Braeden , 45) UNION ALL Braeden = (Braeden , 46) UNION ALL Braeden = (Braeden , 47) UNION ALL Braeden = (Braeden , 48) UNION ALL Braeden = (Braeden , 49) UNION ALL Braeden = (Braeden , 50) UNION ALL Braeden = (Braeden , 51) UNION ALL Braeden = (Braeden , 52) UNION ALL Braeden = (Braeden , 53) UNION ALL Braeden = (Braeden , 54) UNION ALL Braeden = (Braeden , 55) UNION ALL Braeden = (Braeden , 56) UNION ALL Braeden = (Braeden , 57) UNION ALL Braeden = (Braeden ,
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden'
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id ;
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id , document_subset_name;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom' AND T1.collection_name != '';
SELECT count(*) , T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.document_object_id IN ( SELECT T4.document_object_id FROM document_subsets AS T4 JOIN documents_in_collections AS T5 ON T4.document_subset_id = T5.document_subset_id JOIN collections AS T6 ON T5.collection_id = T6.collection_id WHERE T6.collection_name = "Best" )
SELECT DISTINCT T1.document_subset_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = "Best for 2000" INTERSECT SELECT DISTINCT T3.document_subset_id FROM document_subsets AS T3 JOIN document_subset_members AS T4 ON T3.document_subset_id = T4.document_subset_id WHERE T3.collection_subset_name = "Best"
SELECT collection_id FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.document_object_id IN ( SELECT document_object_id FROM document_subsets AS t3 WHERE t3.document_subset_name = \"2000\") EXCEPT SELECT collection_id FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.document_object_id IN ( SELECT document_object_id FROM document_subsets AS t3 WHERE t3.document_subset_name = \"2000\")
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best for 2000'
SELECT t1.document_object_id FROM document_subsets AS t1 JOIN documents_in_collections AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = "Best" AND t1.document_object_id IN ( SELECT t1.document_object_id FROM document_subsets AS t1 JOIN documents_in_collections AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = "Best" ) UNION SELECT t1.document_object_id FROM document_subsets AS t1 JOIN documents_in_collections AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = "Best" AND t1.document_object_id IN ( SELECT t1.document_object_id FROM document_subsets AS t1 JOIN documents_in_collections AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = "Best" )
SELECT DISTINCT T1.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000' UNION SELECT DISTINCT T1.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.collection_subset_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM Collections WHERE Collection_Name = 'Best' AND Parent_Collection_ID NOT IN (SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = 'Best')
SELECT count(DISTINCT collection_id) FROM collection_subsets AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN collections AS t3 ON t2.related_collection_id = t3.collection_id WHERE t3.collection_name = "Best in"
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID WHERE T1.Collection_Name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%";
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score AS T1
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation LIKE '%All the streets of love%'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1SongsId = T2.id WHERE T2.language = \"english\";
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) ASC LIMIT 1000000;
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = "The Balkan Girls" AND T1.language = "english"
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100;
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language;
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2participant_id JOIN songs AS T3 ON T3.id = T2songs_id WHERE T3.language = 'english' {}
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'pop' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'pop'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city AS T1;
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM student
SELECT count(*) FROM city;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state LIKE 'PA'
SELECT city_name FROM city WHERE state LIKE '%PA%'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT count(*) , state FROM city GROUP BY state HAVING count(*) > 0
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country HAVING count(*) > 0
SELECT count(*) , country FROM city GROUP BY country;
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE country = 'China' )
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = 'Baltimore')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE state = 'Maryland' AND country = 'USA')
SELECT count(*) , country FROM student GROUP BY country;
SELECT count(*) , country FROM student GROUP BY country;
SELECT count(*) , city_code FROM student GROUP BY city_code;
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3;
SELECT T1.state FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.state HAVING count(*) > 5;
SELECT state FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5;
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM STUDENT WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code IN ( SELECT city_code FROM city WHERE country != 'USA' )
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "BAL" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "CHI"
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' AND T1.city1_code = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 34 AND city2_code = 27
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = "Boston" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code AND T1.city2_code = T2.city_code
SELECT T1.city_code , T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code ORDER BY sum(distance) DESC LIMIT 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code ORDER BY sum(distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance) AND T2.city1_code = T2.city2_code UNION SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance) AND T2.city2_code = T2.city1_code;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 GROUP BY T1.city_code HAVING count(*) >= 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000;
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name != 'BAL'
SELECT avg(T3.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.state = 'MA' AND T1.country = 'USA'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' AND T1.city1_code != T2.city_code;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Boston')
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING sum(T2.distance) > 0
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING sum(T2.distance) > 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0.average(distance)城市名 平均距離
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING avg(T2.distance) > 500.average_distances FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING avg(T2.distance) > 500.average_distances
Linda Smith: 835 km Tracy Kim: 674 km
SELECT T3.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T1.fname = \"Linda\" AND T1.lname = \"Smith\" AND T1.advisor = \"Tracy Kim\"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Linda Smith' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Linda Smith' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA' AND T2.lname = 'STUDENT'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA' AND T2.lname = 'JONES'
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30;
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age BETWEEN 0 AND 29;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.bid = 102
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves;
SELECT bid FROM reserves GROUP BY bid HAVING count(*) > 1
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age <> (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1 AND count(*) <= 1
SELECT T1.sid , T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2;
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = "red" UNION SELECT bid FROM boats WHERE color = "blue")
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color IN ('red', 'blue')
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = 'red' OR T1.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROMboats WHERE color = "red" INTERSECT SELECT bid FROMboats WHERE color = "blue")
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' AND T1.day IN (SELECT T3.day FROM Reserves AS T3 JOIN Boats AS T4 ON T3.bid = T4.bid WHERE T4.color = 'blue')
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 GROUP BY T1.sid HAVING COUNT(*) >= 1;
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3 GROUP BY T1.sid HAVING COUNT(*) >= 1;
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1;
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM Sailors AS T1;
SELECT count(*) FROM sailors AS T1;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT count(*) FROM sailors WHERE name LIKE 'D%' OR name LIKE 'd%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%' OR name LIKE '%D'
SELECT avg(rating) , max(age) FROM Sailors AS T1
SELECT avg(rating) , max(age) FROM sailors AS T1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name;
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid HAVING count(*) > 50 {}
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T2.bid HAVING count(*) > 4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid HAVING count(*) > 1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM Reserves GROUP BY sid HAVING count(*) > 1) GROUP BY T2.name;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROMboats WHERE color = \"red\" GROUP BY T1.rating ) GROUP BY T1.rating;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROM Boats WHERE color = \"red\") GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating DESC , age ASC
SELECT name , rating , age FROM sailors ORDER BY rating ASC , age ASC
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.age BETWEEN 20 AND 30;
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE color = 'red')
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE color = 'red' ORDER BY rating DESC LIMIT 1)
SELECT max(rating) FROM Sailors AS T1;
SELECT max(rating) FROM Sailors AS T1;
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name = \"Melon\"
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.name = \"Melon\"
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT MODEL FROM headphone ORDER BY price DESC LIMIT 1;
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT DISTINCT model FROM headphone ORDER BY model ASC LIMIT 1000000;
SELECT DISTINCT model FROM headphone ORDER BY model ASC
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(DISTINCT Earpads) FROM headphone AS T1
SELECT count(DISTINCT Earpads) FROM headphone AS T1;
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT count(*) FROM headphone AS T1 JOIN stock AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY price LIMIT 1;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY Price LIMIT 1;
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\"
SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic' UNION SELECT Earpads FROM headphone WHERE Construction = 'Plastic' {}
SELECT耳pad FROM headphone WHEREConstruction <> 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT name FROM store ORDER BY date_opened ASC
SELECT name FROM store ORDER BY date_opened
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) > 0
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) != 0
SELECT T2.name , count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id HAVING sum(T1.quantity) > 0 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 3947864 Store : Headphones Total Quantity : 39
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock WHERE headphone_id IN (SELECT headphone_id FROM headphone))
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT MODEL FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Headphone_ID ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT count(*) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t1.name = "Woodman"
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t1.name = \"Woodman\"
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT t1.store_id FROM stock AS t1 JOIN headphone AS t2 ON t1.headphone_id = t2.headphone_id)
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper AS T1;
SELECT count(*) FROM paper AS t1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
SELECT count(*) FROM paper WHERE YEAR = \"2000\" AND venue = \"NAACL\"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = \"Columbia University\" AND T1.year = 2009;
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009;
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT venue FROM paper ORDER BY YEAR ASC
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T2.title , T1.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = "Harvard University"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKenna"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown"
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.awfulness_id = T3.agency_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.awfulness_id = T3.agency_id WHERE T3.name = 'Columbia University'
SELECT T2.title , T1 AFFILIATION_ID FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T3 AFFILIATION_ID = T1.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T2.title , T1 AFFILIATION_ID FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T3 AFFILIATION_ID = T1.affiliation_id WHERE T3.name = 'Columbia'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'k Kathleen AND T4.name = 'Rambow' AND T4.email = 'o Owen'
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = \"Mckeown\" AND T1.email = \"Kathleen\" INTERSECT SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = \"Rambow\" AND T1.email = \"Owen\"
SELECT T2.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKenna" EXCEPT SELECT T2.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Rambow"
SELECT T2.title , T2.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" EXCEPT SELECT T2.title , T2.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "Rambow"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKenna" OR T1.name = "Rammow"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2 AFFILIATION_ID IN (SELECT T3.affiliation_id FROM affiliation AS T3 JOIN author AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = "Kathleen") UNION SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Rambow" AND T2 AFFILIATION_ID IN (SELECT T3.affiliation_id FROM affiliation AS T3 JOIN author AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.name = "Owen")
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 1000000;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1;
SELECT T2.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1 {}
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = \"A00-1002\"
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id WHERE t2.cited_paper_id = t1.paper_id AND t2.year = 2003 AND t2.visitor_paper_id = 12 - 1027;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 'D12-1027'
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT T2.title , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = \"Mckeown , Kathleen\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Mckeown\" AND T3.email = \"email\" UNION SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Kathleen\" AND T3.email = \"email\"
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author AS t3 ON t2.paper_id = t3.paper_id WHERE t3.name = "McKeown" AND t3.email = "kathleen@unba.edu"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Mckeown\" AND T3.email = \"mckeown@myemail.com\" UNION SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Kathleen\" AND T3.email = \"kathleen@myemail.com\"
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id IN ( SELECT author_id FROM author WHERE name = \"Mckeown , Kathleen\")
SELECT T3.venue , T3.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown" AND T3.email = "kathleen@vt.edu"
SELECT T2.venue , T2.year FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Columbia University"
Columbia University has published 1 paper titled "Columbia University". The venue of this paper is "Columbia University" and the year is 2014.
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Columbia University" AND T1.year < 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Columbia University" AND T1.year < 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "Stanford University" AND T1.year >= 2000 AND T1.year <= 2009;
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.paper_id = t2.paper_id WHERE t2.name = "Stanford University" AND t1.year >= 2000 AND t1.year <= 2009;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2.email = "Kathleen"
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.author_name = "Mckeown" AND T2.paper_id IN ( SELECT T3.paper_id FROM author AS T3 JOIN paper AS T4 ON T3.paper_id = T4.paper_id WHERE T4.title = "Kathleen's novel")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN ( SELECT T3.paper_id FROM paper AS T3 JOIN author AS T4 ON T3.paper_id = T4.paper_id WHERE T4.name = 'Mckeown' AND T4.email = 'kathleen' GROUP BY T3.paper_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN ( SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.cited_paper_id WHERE T4.journal = "Journal of Statistics Education" AND T4.cited_paper_id = "Mckeown , Kathleen") GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%' OR title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%' OR title LIKE '%Translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , YEAR , venue FROM paper GROUP BY YEAR , venue;
SELECT count(*) , affiliation_id FROM author_list GROUP BY affiliation_id;
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1 AFFILIATION_ID = T2 AFFILIATION_ID GROUP BY T1.name HAVING count(*) > 0
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id HAVING cited_paper_id > 50)
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING COUNT(*) > 50)
SELECT T2.name FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author_list AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009 AND T2.venue = \"NAACL\" AND T2.title = \"ACL\";
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = NAACL INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T2.year = 2009 AND T2.venue = ACL;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = "ACL"))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE venue = "ACL"))
SELECT count(*) FROM conference AS T1;
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , count(*) FROM conference GROUP BY Conference_Name HAVING count(*) >= 1 {}
SELECT count(*) , conference_name FROM conference GROUP BY conference_name;
SELECT YEAR , count(*) FROM conference GROUP BY YEAR HAVING count(*) > 0
SELECT count(*) FROM conference WHERE YEAR != '1900' AND YEAR != '2000'
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2;
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , location , founded FROM institution
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900;
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) >= 1000000
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) > 1000
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT Name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT Name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff AS T1
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'A' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2005 AND T2.role = 'N'
SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.Conference_Name = "ACL" INTERSECT SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.Conference_Name = "NACCL"
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T3.conference_id = T2.conference_id WHERE T3.year = 2003 OR T3.year = 2004;
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id HAVING count(*) > 0
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID HAVING count(*) > 0
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.name , T1.nationality FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id = "null"
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.institution_id WHERE T4.conference_id IN (SELECT conference_id FROM conference WHERE YEAR = 2004)
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.institution_id WHERE T4.conference_id IN (SELECT conference_id FROM conference WHERE YEAR = 2004)
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1 OFFSET 0;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC LIMIT 1000;
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC;
SELECT * FROM pilot_skills WHERE age BETWEEN 0 AND 29;
SELECT * FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = "Piper Cub"
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 1970 AND T1.plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT LOCATION) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32;
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T2.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40;
SELECT count(*) FROM pilotskills WHERE age > 40;
SELECT count(*) FROM hangar AS t1 JOIN pilot_skills AS t2 ON t1.plane_name = t2.plane_name WHERE t2.age < 35 AND t2.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name JOIN pilot AS T3 ON T1.pilot_name = T3.pilot_name WHERE T3.age < 35 AND T2.plane_name = "B-52"
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub" ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilotskills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Chicago"
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41;
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41;
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name AS T3;
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age BETWEEN 41 AND 99 OR age BETWEEN 0 AND 29;
SELECT count(*) FROM pilotskills WHERE age BETWEEN 41 AND 99;
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1(plane_name) = 'B-52 Bomber'
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" INTERSECT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "B-52 Bomber"
SELECT avg(age) , min(age) FROM PilotSkills WHERE pilot_name != 'null'
SELECT avg(age) , min(age) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "New York City"
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' OR T2.location = 'F-14 Fighter'
SELECT avg(age) , T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING avg(age) > 0
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) != 0;
SELECT count(*) , plane_type FROM hangar GROUP BY plane_type
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC;
SELECT T2.pilot_name , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING max(T1.age) > 30 ORDER BY T1.plane_name ASC, T2.pilot_name ASC;
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 1
SELECT count(*) , max(age) , pilot_name FROM PilotSkills GROUP BY pilot_name HAVING count(*) > 1000000
SELECT count(*) , avg(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING count(*) > 0
SELECT count(*) , T2.location , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1;
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1;
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1000;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub" ORDER BY T1.age DESC;
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.model = 'F-14 Fighter')
SELECT DISTINCT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name LIKE '%Bomber%'
SELECT DISTINCT T1.plan_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' AND T1.age > (SELECT age FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.location = 'Piper Cub') + 1
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' AND T1.age > (SELECT min(age) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1 OFFSET 0;
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district AS T1;
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3;
SELECT district_id , name , government_website FROM district ORDER BY population ASC
SELECT Name FROM district WHERE Government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Spouse_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1;
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T2.Start_year < 2004;
SELECT T1.Name , COUNT(*) , T2.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 0
SELECT T3.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T1.Rank_position = 1 AND T2.District_ID IN ( SELECT T3.District_ID FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T1.Rank_position = 2 )
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.population) , avg(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.district_id HAVING sum(T2.points) > 0
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY birthyear ASC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY birthyear DESC LIMIT 1;
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT t1.title , t2.location FROM sculptures AS t1 JOIN paintings AS t2 ON t1.sculptorID = t2.painterID
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT DISTINCT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM Sculptures WHERE LOCATION <> '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226;
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculpture ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT lname , fname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthyear FROM artists ORDER BY deathyear LIMIT 1 OFFSET 0;
SELECT birthyear FROM artists ORDER BY birthyear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY deathyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = \"gallery 240\"
SELECT count(*) FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t1.birthyear > t2.deathyear ORDER BY t1.birthyear DESC LIMIT 1;
SELECT T1.lname , COUNT(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid ORDER BY max(T2.deathyear) DESC LIMIT 1;
SELECT T2.title , T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = 'Mary'
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary' AND T2.lname = 'Smith'
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = \"Pablo\";
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = 'Pablo' AND T2.lname = 'Pablo'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid HAVING count(*) >= 2 {}
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title != T3.title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'medium oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"lithographic\"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = \"canvas\";
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'medium' AND T2.location = 'gallery 241'
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" AND T2.location = 241;
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium;
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium HAVING avg(height_mm) != 'null'
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 1000
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR > 1910;
SELECT DISTINCT painterID FROM paintings WHERE medium = \"medium\" AND LOCATION = \"gallery 240\";
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium oil\" AND LOCATION = \"gallery 240\"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = "canvas" ORDER BY height_mm ASC LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings ORDER BY birthyear ASC LIMIT 1 OFFSET 0;
SELECT paintingid FROM paintings ORDER BY birthyear ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT t1.fname , t1.lname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid WHERE t2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC;
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY LENGTH ASC;
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950;
SELECT title , medium FROM paintings WHERE YEAR >= 1900 AND YEAR <= 1950;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR > 1930 UNION SELECT LOCATION FROM paintings WHERE YEAR < 1884
SELECT LOCATION FROM Paintings WHERE YEAR > 1930 UNION SELECT LOCATION FROM Paintings WHERE YEAR < 1885
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000;
SELECT paintingid FROM paintings WHERE height_mm > 500 AND width_mm < 2000;
SELECT DISTINCT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE medium = 'on panel' AND mediumON = 'on canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930;
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 'gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = \"oil\" AND LOCATION = \"241\"
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid;
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) >= 1 HEIGHT.mm ASC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR;
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR HAVING max(height_mm) > 0 AND max(width_mm) > 0
SELECT avg(height_mm) , avg(width_mm) , painterID FROM Paintings GROUP BY painterID ORDER BY painterID ASC;
SELECT avg(height_mm) , avg(width_mm) , painterID FROM Paintings GROUP BY painterID ORDER BY painterID ASC;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.birthyear , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4 {}
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1;
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY paintingid HAVING paintingid = 240)
SELECT height_mm , paintingid FROM paintings WHERE LOCATION = \"Gallery 240\" ORDER BY height_mm DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE paintingid = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings GROUP BY YEAR HAVING gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = \"oil\" ORDER BY YEAR ASC
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR , paintingid , title ASC;
SELECT paintingID , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT paintingID , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.medium = \"sculpture\"
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures) AND artistid NOT IN (SELECT sculptorid FROM paintings)
SELECT LOCATION FROM Paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM Paintings WHERE medium = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position != \"Junior Strous\") AND driving_name != \"Junior Strous\"
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != \"Junior Strous\";
SELECT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age > 20;
SELECT DISTINCT Entrant FROM driver WHERE Age > 19;
SELECT max(age) , min(age) FROM driver
SELECT max(Age) , min(Age) FROM driver AS T1;
SELECT count(DISTINCT engine) FROM driver WHERE age BETWEEN 30 AND 19;
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING COUNT(*) > 0
SELECT count(*) , T1.Driver_id FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Drivers_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING COUNT(*) >= 2;
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT Driver_Name FROM driver WHERE Constructor <> 'Bugatti'
SELECT Driver_Name FROM driver WHERE Constructor <> 'Bugatti' AND Driver_Name NOT IN (SELECT Driver_Name FROM driver WHERE Constructor = 'Bugatti')
SELECT count(*) , constructor FROM driver GROUP BY constructor HAVING count(*) > 1000;
SELECT count(*) , constructor FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30;
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30;
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1;
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" AND T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' AND T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN ( SELECT Driver_ID FROM race WHERE Pole_Position = \"James Hinchcliffe\" )
SELECT count(*) FROM languages
SELECT count(*) FROM languages AS T1
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1;
SELECT avg(justice_score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE name <> 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM countries WHERE name = 'Norway' )
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT count(DISTINCT language_id) FROM official_languages AS T1;
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1;
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"english\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = 'english')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.language_id ORDER BY avg(T1.overall_score) DESC;
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY avg(T1.overall_score) DESC;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN ( SELECT T1.language_id FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id )
SELECT name FROM countries WHERE id NOT IN (SELECT T1.country_id FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score > 95 INTERSECT SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score < 90 {}
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score > 95 EXCEPT SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score < 90
SELECT county , town_city FROM addresses
SELECT country , town_city FROM addresses
SELECT T1.town_city , T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.town_city , T1.county_state_province;
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
{ "sql": "SELECT feature_description FROM features WHERE feature_name = \"rooftop\""} {"result": "The feature rooftop describes the roof of a property."}
{ "sql": "SELECT feature_description FROM features WHERE feature_name = \"rooftop\""} {"result": "The description of the feature 'rooftop' is: A roof is a flat-topped structure used on buildings with roofs."}
SELECT T2.feature_name , T2.feature_description FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.property_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.feature_name , T2.feature_description FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties;
SELECT min(room_count) FROM Properties AS T1;
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) , user_category_code FROM users WHERE user_category_code IN ( SELECT user_category_code FROM users WHERE user_category_code IN ( SELECT user_category_code FROM Ref_age_categories WHERE age_category_description = \"Mother\" ) )
SELECT age_category_code FROM users WHERE user_category_code IN (SELECT user_category_code FROM users WHERE user_category_code LIKE '%Mother%')
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 'Y'
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.feature_name = \"garden\"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool' AND T1.town_city IN (SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool')
SELECT property_id , price_min FROM properties ORDER BY price_min LIMIT 1;
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(*) FROM (SELECT DISTINCT room_size FROM rooms)
SELECT count(DISTINCT room_size) FROM rooms AS T1;
SELECT user_id , search_string FROM User_searches GROUP BY user_id HAVING count(*) >= 2;
SELECT user_id , search_seq FROM User_searches GROUP BY user_id HAVING count(*) >= 2;
SELECT max(search_datetime) FROM user_searches WHERE search_string != ''
SELECT max(search_datetime) FROM user_searches AS T1 WHERE search_string != ''
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM user_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T1.user_id FROM Properties AS T2 JOIN User_Property_History AS T3 ON T2.property_id = T3.property_id GROUP BY T1.zip_postcode HAVING count(*) >= 2)
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2 )
SELECT T1.search_string , T2.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM user_searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_age_categories AS T1 JOIN users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_id IN (SELECT user_id FROM user_searches ORDER BY search_datetime ASC LIMIT 1)
SELECT T1.age_category_code FROM Ref_age_categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = 'Senior Citizen' ORDER BY first_name ASC;
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1 AND T1.search_string != ''
SELECT count(*) FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1;
SELECT date_registered FROM users WHERE login_name = \"rige\"
SELECT date_registered FROM users WHERE login_name = \"ratione\"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
{ "sql": "SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.other_user_id WHERE T2.age_category_code = \"Senior\""} {"sql": "SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.other_user_id WHERE T2.age_category_code = \"Senior\""}
{ "sql": "SELECT T1.line_1_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN users AS T2 ON T1.other_user_details = T2.login_name WHERE T2.age_category_code = \"Senior\""} {"sql": "SELECT T1.line_1_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN users AS T2 ON T1.other_user_details = T2.login_name WHERE T2.age_category_code = \"Senior\""}
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id GROUP BY T2.property_id HAVING count(*) >= 2;
SELECT count(DISTINCT property_id) FROM Property_Features GROUP BY property_id HAVING count(*) >= 2;
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id;
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , T1.user_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY owner_user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN ( SELECT user_id FROM users WHERE is_buyer = 'Yes' AND is_seller = 'No') OR owner_user_id IN ( SELECT user_id FROM users WHERE is_buyer = 'No' AND is_seller = 'Yes')
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM Users WHERE is_buyer = 1 UNION SELECT user_id FROM Users WHERE is_seller = 1)
[ {"date_stamp": "2006-04-19", "property_name": "A"}, {"date_stamp": "2005-07-28", "property_name": "B"}, {"date_stamp": "2005-05-15", "property_name": "C"}, {"date_stamp": "2006-03-14", "property_name": "D"} ]
[ { "date_stamp": "2017-04-05", "property_name": "Bicycle Store" }, { "date_stamp": "2018-06-19", "property_name": "Bike Shop" }, { "date_stamp": "2017-04-06", "property_name": "Bike Shop" }, { "date_stamp": "2017-04-05", "property_name": "Bicycle Store" } ]
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM Rooms GROUP BY room_size HAVING count(*) > 0
SELECT count(*) , room_size FROM Rooms GROUP BY room_size HAVING count(*) > 0
Robbie lives in the town city of Robbie, County State Province.
Robbie belongs to the town city of Robbie. Therefore, the country in which he lives is Robbie.
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT address_id FROM addresses WHERE town_city = T2.town_city )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name IN ( SELECT T3.property_name FROM Properties AS T3 JOIN Users AS T4 ON T3.owner_user_id = T4.user_id WHERE T4.is_buyer = 1 ) AND T4.is_buyer = 1
SELECT T1.search_string FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer != 1 AND T2.is_seller != 1;
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 AND count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780;
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike;
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015;
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4;
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1;
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT T1.id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.purchase_year > 2015 )
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558' ;
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' AND T2.bike_id IN ( SELECT T4.bike_id FROM bike AS T4 JOIN cyclists_own_bikes AS T5 ON T4.id = T5.bike_id JOIN cyclist AS T6 ON T5.cyclist_id = T6.id WHERE T6.name = 'Antonio Tauler')
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT T1.id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id ASC;
SELECT T2.flavor , T1.price FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id ORDER BY T1.price DESC LIMIT 1;
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T2.price DESC LIMIT 1;
SELECT T1.flavor , T2.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor IN (SELECT flavor FROM goods GROUP BY flavor ORDER BY sum(price) ASC LIMIT 1)
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T2.price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor LIKE '%Apple%'
SELECT id FROM goods WHERE price < 3;
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\";
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "Lemon"
SELECT count(*) , food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY food HAVING count(*) > 0;
SELECT T2.food , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T2.food HAVING count(*) > 0
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) >= 15 AND food = 'Bakery'
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15;
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10 AND food = 'bakery'
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10;
SELECT count(DISTINCT item) FROM items WHERE food = \"Cake\"
SELECT count(DISTINCT flavor) FROM goods WHERE food = 'Cake'
SELECT DISTINCT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T1.customerid = 15;
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T1.customerid = T3.id WHERE T3.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id WHERE T2.Flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id WHERE T2.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id WHERE T2.Flavor = \"Cakes\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id WHERE T2.Flavor = \"Cookies\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.LastName = \"LOGAN\" AND T1.Item.Food = \"Croissant\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.LastName = \"Logan\" AND T1.item IN (SELECT T3.item FROM goods AS T3 JOIN items AS T4 ON T3.id = T4.item WHERE T4.flavor = \"Croissant\")
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id ORDER BY T2.price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT Item FROM items GROUP BY Item ORDER BY count(*) ASC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , food FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food HAVING count(*) != 0
SELECT avg(price) , food FROM goods GROUP BY food HAVING avg(price) != 'null'
SELECT avg(price) , food FROM goods GROUP BY food HAVING avg(price) != 0;
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10;
SELECT flavor FROM goods WHERE price > 10;
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < ( SELECT max(price) FROM goods WHERE flavor = 'Tart' )
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id JOIN goods AS T3 ON T2.id = T3.id WHERE T3.Price > 13;
SELECT DISTINCT T2.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T3.Price > 13;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT T1.Price , T2.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.price LIKE "%70%"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE flavor = 'good' ORDER BY id ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT id FROM goods
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.id WHERE T2.Flavor = \"Apple\" OR T1.customerid = 12
SELECT T2.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.firstname = \"Apple\" OR T1.CustomerID = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT Receipt FROM receipts ORDER BY Date LIMIT 1 OR EXISTS (SELECT T2.Price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 10)
SELECT receiptnumber FROM receipts WHERE date < ( SELECT min(date) FROM receipts ) AND price > 10 UNION SELECT receiptnumber FROM receipts WHERE item IN ( SELECT id FROM goods WHERE price > 10 )
SELECT id FROM goods WHERE price >= 3 AND price <= 7;
SELECT id FROM goods WHERE price >= 3 AND price <= 7;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = "Cheese"
SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Cheese" ORDER BY T2.price ASC LIMIT 1
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor ASC
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food ASC
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date;
SELECT T1.Date , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.date HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "Tart" AND T3.flavor = "Apple"
SELECT T2.firstname , T2.lastname FROM items AS T1 JOIN customers AS T2 ON T1.id = T2.id WHERE T1.flavor = "Apple"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Tart")
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Tart")
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) GROUP BY id HAVING count(*) > 2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Cakes" ORDER BY T1.flavor
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM goods WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) <= 10;
SELECT T2.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = \"Chocolate\" GROUP BY T2.item HAVING count(*) <= 10;
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT flavor FROM goods WHERE food = "Tart"
SELECT flavor FROM goods WHERE food != 'Tart'
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.Item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T2.item ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T1.id , T2.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.id HAVING avg(T2.price) > 5;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T3.Price > 100 GROUP BY T2.Date HAVING count(*) > 100;
SELECT T2.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.id HAVING sum(T2.price) > 100;
SELECT count(*) FROM driver AS T1;
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT make , COUNT(*) FROM driver WHERE points > 150 GROUP BY make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Laps) FROM driver WHERE age < 20;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T2.Driver_ID IN (SELECT Driver_ID FROM driver WHERE Car_# = "Buddy Arrington")
SELECT T2.Make FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID WHERE T1.Driver_ID IN (SELECT Driver_ID FROM driver WHERE Car_# = "Buddy Arrington") AND T2.Make != "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver AS T1
SELECT max(Points) , min(Points) FROM driver AS T1;
SELECT count(*) FROM driver WHERE points BETWEEN 0 AND 149;
SELECT count(*) FROM driver WHERE points < 150;
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 100000000
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = 'Dublin'
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Capital WHERE T2.Capital = "Dublin"
SELECT avg(age) FROM driver WHERE country IN ( SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = "English")
SELECT Country FROM country WHERE Country_id IN (SELECT Country FROM driver WHERE Points > 150)
SELECT Country FROM driver WHERE Points > 150;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT count(*) , Make FROM driver GROUP BY Make HAVING count(*) >= 1;
SELECT make , count(*) FROM driver GROUP BY make;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Make FROM team_driver GROUP BY Make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2;
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution AS T1;
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded
SELECT name FROM institution ORDER BY founded
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1;
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT Stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT name , nickname FROM institution
SELECT T1.name , T2.nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id
SELECT Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.enrollment LIMIT 1;
SELECT name FROM institution ORDER BY enrollment LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC LIMIT 1000000;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING COUNT(*) >= 1 {}
SELECT sum(T2.Number_of_championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1 AFFILIATION = 'Public'
SELECT sum(t2.Number_of_championships) FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id WHERE t1.adhesion = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT name FROM institution ORDER BY capacity DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM institution ORDER BY capacity DESC
Vancouver : 10000 Calgary : 20000
SELECT Enrollment FROM institution WHERE City IN ("Vancouver", "Calgary")
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT * FROM warehouses
SELECT * FROM Warehouses
SELECT DISTINCT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT Contents FROM Boxes WHERE Value > 150;
SELECT Contents FROM Boxes WHERE Value > 150;
SELECT T2.code , avg(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS t1;
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1;
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT avg(Contents) , max(Contents) , Contents FROM Boxes GROUP BY Contents;
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(value) FROM boxes;
SELECT avg(value) FROM boxes AS t1;
SELECT DISTINCT contents FROM boxes AS t1;
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes AS T1;
SELECT count(DISTINCT contents) FROM boxes AS T1;
SELECT DISTINCT LOCATION FROM Warehouses AS T1;
SELECT count(DISTINCT LOCATION) FROM warehouses
{ "sql": "SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'"} {"sql": "SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'"}
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" UNION SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "Chicago" OR T2.location = "New York"
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = "Chicago" OR T2.location = "New York"
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'Chicago' INTERSECT SELECT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" OR T2.contents = \"Scissors\"
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' UNION SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > ( SELECT max(value) FROM boxes WHERE contents = 'Scissors' )
SELECT sum(value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150;
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents HAVING count(*) > 0
SELECT sum(value) , count(*) FROM boxes GROUP BY contents;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) FROM warehouses AS T1;
SELECT sum(capacity) FROM Warehouses AS T1;
SELECT T2.location , max(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location;
SELECT T2.location , max(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location HAVING max(T1.value) != 0
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT location) FROM warehouses WHERE code IN (SELECT warehouse FROM boxes GROUP BY warehouse HAVING contents = 'Rocks')
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT code , location FROM boxes
SELECT T1.code , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT t1.contents) , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.location;
SELECT count(DISTINCT t1.contents) , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.location;
SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT code FROM warehouses WHERE code IN ( SELECT warehouse FROM boxes GROUP BY warehouse HAVING count(*) > capacity )
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE STATE = "IL" OR STATE = "OH"
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1;
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT * FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T1.home_conference = 'Home'
SELECT DISTINCT home_conference FROM university AS T1;
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT STATE FROM university GROUP BY STATE ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1;
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code ASC
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T2.Major_Name , T3.Rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = \"Augustana College\";
SELECT T1.Rank , T2.Major_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T3.university_name = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T2.rank = 1;
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" ORDER BY T2.rank ASC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1 )
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking ORDER BY rank DESC LIMIT 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education'
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education'
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" ORDER BY T2.rank DESC LIMIT 3;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T2.rank >= 3;
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank < 5;
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > (SELECT max(reputation_point) FROM overall_ranking)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM Movies GROUP BY movie HAVING avg(rating) > 1)
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM Movies GROUP BY movie)
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T2.Rating >= 8.5 AND T2.Rating <= 9.0
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.movie IN ( SELECT movie FROM MovieTheaters GROUP BY movie HAVING count(*) > 0 )
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Movie IN ( SELECT Movie FROM MovieTheaters GROUP BY Movie ORDER BY count(*) DESC LIMIT 1 )
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating LIKE 'G%'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != \"\" AND T2.Title != \"\"
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating > 3)
SELECT count(DISTINCT movie) FROM MovieTheaters WHERE movie != 'null'
SELECT count(DISTINCT title) FROM Movies AS T1;
SELECT count(DISTINCT name) FROM Movietheaters
SELECT count(DISTINCT code) FROM MovieTheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Cinema Odeon' OR T1.Name = 'Cinema Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon' INTERSECT SELECT T2.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon')
SELECT title FROM Movies ORDER BY title ASC
SELECT title FROM movies ORDER BY title ASC
SELECT title FROM Movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie GROUP BY T2.movie ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie GROUP BY T2.movie ORDER BY count(*) DESC LIMIT 1;
SELECT Rating , count(*) FROM Movies GROUP BY Rating HAVING count(*) > 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Rating , COUNT(*) FROM Movies GROUP BY Rating HAVING COUNT(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM Movies WHERE rating != \"null\"
SELECT count(*) FROM Movies WHERE rating != \"null\";
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name HAVING COUNT(*) > 0 {}
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name HAVING COUNT(*) >= 1;
SELECT Name FROM MovieTheaters WHERE Movie != SELECT Code FROM Movies;
SELECT name FROM MovieTheaters WHERE movie NOT IN (SELECT code FROM Movies)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT title FROM Movies
SELECT title FROM movies
SELECT count(DISTINCT rating) FROM movies AS T1
SELECT count(DISTINCT rating) FROM movies
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT recipient FROM package ORDER BY weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T2.Weight) FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T1.Name = 'Leo Wong'
SELECT sum(T2.Weight) FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T1.Name = \"Leo Wong\";
SELECT POSITION FROM employee WHERE name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , POSITION FROM EMPLOYEE WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = "Turanga Leela"
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT DISTINCT POSITION FROM employee WHERE POSITION = "Physician"
SELECT DISTINCT LEVEL FROM Has_clearance
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = \"Leo Wong\";
SELECT packagenumber FROM package WHERE recipient = 'Leo Wong' AND sender = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\";
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'Leo Wong' OR T2.recipient = 'Leo Wong'
SELECT DISTINCT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient UNION SELECT DISTINCT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = \"Leo Wong\";
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT T2.Contents FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender WHERE T1.Name = "John Zoidfarb"
John Zoidfarb contains the following contents: {"Contents": "Earth", "Weight": "4500kg", "Sender": "John Zoidfarb", "Recipient": "Earth"}
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = 'John' ORDER BY T2.weight DESC LIMIT 1;
John = "Client.Name" FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T2.Sender = "John" OR T2.Sender = "John" AND T2.Weight > (SELECT max(weight) FROM PACKAGE WHERE sender = "John")
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , min(recipient) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid GROUP BY T2.shipmentid ORDER BY min(weight) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber HAVING count(*) > 1 {}
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber HAVING COUNT(*) > 1 {}
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT Name , Coordinates FROM Planet ORDER BY Name ASC
SELECT T2.ShipmentID FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Phillip J. Fry'
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = \"Phillip J Fry\";
SELECT date FROM shipment AS T1;
SELECT date FROM Shipment AS T1;
SELECT ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet IN (SELECT PlanetID FROM Planet WHERE Name = "Mars")
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars" AND T1.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars" AND T1.manager = "Turanga Leela"
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetid FROM planet WHERE name = "Mars") OR manager IN (SELECT employeeid FROM employee WHERE name = "Turanga Leela")
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY sum(T2.shipmentid) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name HAVING count(*) > 0;
SELECT count(*) , T2.name FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name HAVING count(*) > 0
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = "Mars"
SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmenttotal WHERE T1.planet = "Mars"
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name HAVING sum(T2.weight) > 0 Total weight of package shipped on each planet . SHOW THE NAME OF EACH PLANET .
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY sum(T2.weight) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet HAVING sum(T2.weight) > 30;
SELECT T1.Name FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name HAVING sum(T2.Weight) > 30;
SELECT T2.packagenumber FROM shipment AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" AND T2.shipping = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber JOIN shipment AS T3 ON T1.shipment = T3.shipmentid WHERE T2.name = 'Zapp Brannigan' AND T3.planet = 'Omicron Persei 8'
SELECT T2.packagenumber FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT T1.Employee FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars")
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet_id WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.employee IN (SELECT employee FROM has_clearance GROUP BY employee HAVING count(*) = 1)
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.PlanetID = T2.Planet AND T2.Employee = T2.Employee WHERE T2.Level = 1;
SELECT Name FROM Employee WHERE Salary >= 5000 AND Salary <= 10000
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet_id WHERE T2.name = 'Mars' )
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planet WHERE T2.name = 'Mars')
SELECT count(*) FROM game_game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id
SELECT title , developers FROM game ORDER BY Units_sold_Millions DESC;
SELECT title , developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1;
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1;
SELECT count(*) FROM player WHERE rank_of_the_year < 3;
SELECT count(*) FROM player WHERE rank_of_the_year <= 3;
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC;
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = \"Super Mario World\"
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = \"Super Mario World\"
SELECT DISTINCT T1.Dev Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\";
SELECT T2.Devices FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = \"Auburn\";
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\";
SELECT avg(T2.Units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.Position = \"Guard\"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
{ "sql": "SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district IN ('Asia', 'USA')"} {"sql": "SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district IN ('Asia', 'USA')"}
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT count(*) , Franchise FROM game GROUP BY Franchise HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Franchise FROM game GROUP BY Franchise;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2;
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(DISTINCT Game_ID) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T2.College = \"Auburn\"
game_title = (SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" OR T3.College = \"Auburn\")
SELECT DISTINCT Franchise FROM game AS T1;
SELECT count(DISTINCT Franchise) FROM game
SELECT Title FROM game WHERE Game_ID NOT IN ( SELECT T1.Game_ID FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.Position = 'Guard' )
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT T1.Game_ID FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.Position = 'Guard')
SELECT name FROM press ORDER BY YEAR_Profits_billion DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM press ORDER BY YEAR_PROFIT_billion DESC
SELECT name FROM press WHERE YEAR_profits_billion > 15 OR MONTH_profits_billion > 1000000
SELECT name FROM press WHERE YEAR_PROFIT_billion > 1500000 OR MONTH_PROfits_billion > 1000000
SELECT avg(month_profits_billion) , max(year_profits_billion) FROM press AS T1;
SELECT avg(yearly_profits_billion) , max(yearly_profits_billion) , name FROM press GROUP BY name;
SELECT T1.Name FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID ORDER BY T2.Month_Profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 OR SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT count(*) FROM author WHERE age BETWEEN 1 AND 29;
SELECT count(*) FROM author WHERE age BETWEEN 0 AND 29;
SELECT avg(age) , gender FROM author GROUP BY gender HAVING avg(age) != 0
SELECT gender , avg(age) FROM author GROUP BY gender HAVING avg(age) != 0 {}
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , book_series FROM book GROUP BY book_series;
SELECT count(*) , book_series FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"MM\" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"LT\"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM author AS T2 JOIN book AS T1 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1 {}
SELECT T1.Title , T2.Name , T1.Book_Series FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.Title , T2.Name , T1.Price FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T2.sale_amount) > 0 {}
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id ORDER BY sum(T2.sale_amount) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name HAVING count(*) > 1000;
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.Name , T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name , T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE title = "Accor")
SELECT name FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author AS T1 JOIN press AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Accor")
SELECT T1.name , T2.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2;
SELECT T1.name , T2.month_profits_billion , T2.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors AS T1
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents AS T1;
SELECT t1.staff_name FROM authors AS t1 JOIN documents AS t2 ON t1.author_name = t2.author_name WHERE t2.document_id = 4;
SELECT T1.staff_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.staff_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.staff_name = "Bianka Cummings"
SELECT T1.author_name , T2.other_details FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = "Travel to China"
SELECT count(*) , author_name FROM documents GROUP BY author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2;
SELECT count(*) FROM Business_Processes AS T1
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT T1.process_name FROM Business_Processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_outcome_code = "next" AND T1.process_id = 9
SELECT count(*) FROM Process_outcomes AS T1;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status AS T1;
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff AS T1;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles AS T1;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_processes AS T1 JOIN Business_Processes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_name != \"\" AND T2.process_name != \"null\"
SELECT process_id FROM Documents_processes GROUP BY process_id HAVING count(*) >= 1
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM documents_processes WHERE process_id NOT IN (SELECT process_id FROM documents_processes)
SELECT T3.process_outcome_description , T3.process_status_description FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN process_outcomes AS T3 ON T2.process_outcome_code = T3.process_outcome_code WHERE T1.document_id = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id HAVING count(*) >= 1;
SELECT count(*) FROM documents AS t1 JOIN staff_in_processes AS t2 ON t1.document_id = t2.document_id WHERE t2.process_id = 9 AND t1.document_id = 0
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id HAVING count(*) > 0
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3;
SELECT count(*) FROM agencies AS T1;
SELECT count(*) FROM agencies AS T1;
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM clients
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2;
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0;
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices AS T1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT client_id , count(*) FROM Invoices GROUP BY client_id HAVING count(*) > 0
SELECT count(*) , client_id FROM invoices GROUP BY client_id;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T2.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , purpose_of_meeting FROM meetings
SELECT meeting_type , other_details FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings AS T1
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.invoice_details FROM payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.invoice_details FROM payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT invoice_id FROM payments )
SELECT count(*) FROM Payments AS T1;
SELECT count(*) FROM payments AS T1;
SELECT T1.payment_id , T2.invoice_id , T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments AS T1;
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id;
SELECT count(*) , invoice_id FROM payments GROUP BY invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff AS T1;
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome HAVING count(*) >= 1
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome HAVING count(*) >= 1
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT T1.meeting_type , count(*) FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id HAVING count(*) >= 1;
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) > 1
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM invoices AS T3 JOIN clients AS T4 ON T3.client_id = T4.client_id
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agency_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id GROUP BY T3.client_id HAVING count(*) = 1 {}
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 AND T2.meeting_outcome = 'Yes'
{ "sql": "SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.start_date_time , T3.end_date_time , T4.client_details , T4.staff_details FROM Meetings AS T3 JOIN Clients AS T4 ON T3.client_id = T4.client_id UNION SELECT T5.start_date_time , T5.end_date_time , T6.client_details , T6.staff_details FROM Meetings AS T5 JOIN Clients AS T6 ON T5.client_id = T6.client_id UNION SELECT T7.start_date_time , T7.end_date_time , T8.client_details , T8.staff_details FROM Meetings AS T7 JOIN Clients AS T8 ON T7.client_id = T8.client_id UNION SELECT T9.start_date_time , T9.end_date_time , T10.client_details , T10.staff_details FROM Meetings AS T9 JOIN Clients AS T10 ON T9.client_id = T10.client_id UNION SELECT T11.start_date_time , T11.end_date_time , T12.client_details , T12.staff_details FROM Meetings AS T11 JOIN Clients AS T12 ON T11.client_id = T12.client_id UNION SELECT T13.start_date_time , T13.end_date_time , T14.client_details , T14.staff_details FROM Meetings AS T13 JOIN Clients AS T14 ON T13.client_id = T14.client_id UNION SELECT T15.start_date_time , T15.end_date_time , T16.client_details , T16.staff_details FROM Meetings AS T15 JOIN Clients AS T16 ON T15.client_id = T16.client_id UNION SELECT T17.start_date_time , T17.end_date_time , T18.client_details , T18.staff_details FROM Meetings AS T17 JOIN Clients AS T18 ON T17.client_id = T18.client_id UNION SELECT T19.start_date_time , T19.end_date_time , T20.client_details , T20.staff_details FROM Meetings AS T19 JOIN Clients AS T20 ON T19.client_id = T20.client_id UNION SELECT T21.start_date_time , T21.end_date_time , T22.client_details , T22.staff_details FROM Meetings AS T21 JOIN Clients AS T22 ON T21.client_id = T22.client_id UNION SELECT T23.start_date_time , T23.end_date_time , T24.client_details , T24.staff_details FROM Meetings AS T23 JOIN Clients AS T24 ON T23.client_id = T24.client_id UNION SELECT T25.start_date_time , T25.end_date_time , T26.client_details , T26.staff_details FROM Meetings AS T25 JOIN Clients AS T26 ON T25.client_id = T26.client_id UNION SELECT T27.start_date_time , T27.end_date_time , T28.client_details , T28.staff_details FROM Meetings AS T27 JOIN Clients AS T28 ON T27.client_id = T28.client_id UNION SELECT T29.start_date_time , T29.end_date_time , T30.client_details , T30.staff_details FROM Meetings AS T29 JOIN Clients AS T30 ON T29.client_id = T30.client_id UNION SELECT T31.start_date_time , T31.end_date_time , T32.client_details , T32.staff_details FROM Meetings AS T31 JOIN Clients AS T32 ON T31.client_id = T32.client_id UNION SELECT T33.start_date_time , T33.end_date_time , T34.client_details
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id
