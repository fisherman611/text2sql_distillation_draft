SELECT count(*) FROM club AS T1;
SELECT count(*) FROM club AS T1
SELECT Name FROM club ORDER BY Name
SELECT name FROM club ORDER BY name ASC
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manager <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
ascending_player_name = (SELECT Name FROM player ORDER BY Wins_count ASC)
SELECT Name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
from player WHERE Earnings > 1200000 GROUP BY Country HAVING count(*) > 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 1 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC LIMIT 1000;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT manufacturer , count(*) FROM club GROUP BY manufacturer HAVING count(*) > 1
count(*) , manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000;
SELECT count(DISTINCT country) FROM player AS T1
SELECT count(DISTINCT country) FROM player AS T1
SELECT Earnings FROM player WHERE Country IN ("Australia", "Zimbabwe")
SELECT Earnings FROM player WHERE Country IN ('Australia', 'Zimbabwe')
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT count(*) , T1.order_status_code , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 0
orders_count = (SELECT T1.order_id , count(*) FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id) order_status_codes = (SELECT T1.order_status_code FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id WHERE T1.order_id = T2.order_id) order_ids = (SELECT T1.order_id , T1.order_status_code FROM orders AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id WHERE T1.order_id = T2.order_id)
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 1 ORDER BY min(T1.date_order_placed) ASC LIMIT 1;
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 ORDER BY T1.date_order_placed ASC LIMIT 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2;
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2;
SELECT T1.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN products AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T1.order_id , sum(T2.order_item_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.order_item_price) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT T2.gender_code , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS t1 JOIN orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id
Invoices.invoice_date , invoices.invoice_status_code , shipments.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T3.product_name , T2.shipment_date FROM shipments AS T2 JOIN orders AS T1 ON T2.order_id = T1.order_id JOIN products AS T3 ON T3.product_id = T2.shipment_id ORDER BY T2.shipment_date ASC;
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T3.product_id = T1.product_id WHERE T2.order_id IN ( SELECT T2.order_id FROM orders AS T2 JOIN shipments AS T1 ON T1.order_id = T2.order_id GROUP BY T2.order_id )
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id ORDER BY T1.order_status_code ASC LIMIT 1
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = \"Shipped\" INTERSECT SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = \"Ordered\"
SELECT T2.product_name , T2.product_color FROM products AS T2 JOIN order_items AS T1 ON T2.product_id = T1.product_id JOIN shipments AS T3 ON T1.order_id = T3.order_id WHERE T3.shipment_id IN (SELECT T4.shipment_id FROM orders AS T4 JOIN orders AS T5 ON T4.order_id = T5.order_id WHERE T5.order_status_code = \"Shipped\")
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id WHERE T1.shipment_date != \"null\";
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM products AS T2 JOIN orders AS T1 ON T1.order_id = (SELECT order_id FROM order_items WHERE customer_id IN (SELECT customer_id FROM customers WHERE gender_code = 'F')) GROUP BY T2.product_name , T2.product_price , T2.product_description HAVING count(*) >= 1 AND count(*) <= 3
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id WHERE T3.gender_code = \"F\"
SELECT invoice_status_code FROM INVOICES WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY order_id HAVING sum(T2.product_price) > 0 ORDER BY sum(T2.product_price) DESC LIMIT 1 ;
SELECT T1.order_id , T2.date_order_placed , sum(T1.order_item_total) FROM orders AS T1 JOIN invoices AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T1.order_item_total) > 0
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) >= 1 AND count(*) <= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM (SELECT DISTINCT order_item_status_code FROM ORDER_ITEMS)
SELECT count(DISTINCT order_item_status_code) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id ORDER BY T2.order_item_status_code ASC;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods AS T1
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
products.product_size WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN products AS T3 ON T1.order_id = T3.order_id;
SELECT T2.customer_first_name , T3.product_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 0
SELECT avg(product_price) FROM products;
SELECT avg(product_price) FROM products AS T1
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING avg(T2.order_item_status_code) > 0.5
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING avg(T2.order_item_status_code) > 0.5
SELECT email_address , town_city , county FROM customers WHERE gender_code = ( SELECT min(gender_code) FROM customers )
SELECT T1.email_address , T2.town_city , T2.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT payment_method_code) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T2.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T2.invoice_number FROM invoices AS T2 JOIN shipments AS T1 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T2.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments AS T1;
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM (SELECT DISTINCT Digital_terrestrial_channel FROM channel)
SELECT title FROM program ORDER BY start_year DESC
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.name , t1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = 'Dracula'
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age > 60 {}
channel_id,name FROM channel WHERE channel_id NOT IN (SELECT T1.channel_id FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.name = 'Hank Baskett')
SELECT count(*) FROM city_channel_radio AS t1 JOIN radio AS t2 ON t1.radio_id = t2.radio_id
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
ascending_order_by_station_name(city_channel.station_name) city_channel.OrderBy_station_name()
SELECT T3.transmitter , T2.city FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id
SELECT T1.transmitter , T3.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel_tv_show AS T3 ON T2.id = T3.city_channel_id JOIN tv_show AS T4 ON T3.tv_show_id = T4.tv_show_id ORDER BY T1.ERP_kW DESC
SELECT T3.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id GROUP BY T3.transmitter
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT MODEL FROM vehicle WHERE TOP_SPEED > 6000 AND POWER > 6000;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship LIKE '%United States%'
SELECT Name FROM driver WHERE Citizenship LIKE "%United States%"
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY count(*) LIMIT 1;
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Build_Year = 2012;
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT MODEL FROM vehicle GROUP BY MODEL HAVING sum(total_production) > 100 UNION SELECT MODEL FROM vehicle WHERE TOP_SPEED > 150;
SELECT MODEL FROM vehicle WHERE Total_Production > 100 UNION SELECT MODEL FROM vehicle WHERE Top_Speed > 150;
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
model_year = "DJ*"
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
Two Drivers: Ziyang and Wang Mingyuan Two Vehicles: Ziyang and Wang Mingyuan Three Vehicles: Ziyang, Wang Mingyuan, and Xiangyang Four Vehicles: Ziyang, Wang Mingyuan, Xiangyang, and Yuhua Five Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Six Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Seven Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Eight Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Nine Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Ten Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Eleven Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twelve Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Fourteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Fifteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Sixteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Seventeen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Eighteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Nineteen Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-One Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Two Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Three Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Four Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Five Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Six Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Sevent Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Eight Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Twenty-Nine Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty-One Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty-Two Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty-Three Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty-four Vehicles: Ziyang, Wang Mingyuan, Xiangyang, Yuhua, and Aihui Thirty-five Vehicles: Ziyang,
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Name = 'Jeff Gordon' GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2
More than 2 driver: SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Name = \"Jeff Gordon\" GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
["SELECT Name FROM driver ORDER BY Name ASC"]
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 1
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1
SELECT count(*) FROM Exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
Distinct(Subject_Code) ASC Exam_Name ORDER BY Subject_Code ASC Exam_Name
SELECT exam_name , exam_date FROM EXAMS WHERE subject_code <> 'Database'
SELECT exam_date , exam_name FROM EXAMS WHERE subject_code <> 'Database'
SELECT exam_date FROM EXAMS WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
Type_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Type_of_Question_Code = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Student_Answer_Text ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Satisfactory_YN ORDER BY COUNT(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID {}
SELECT T1.first_name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.Date_of_Answer ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.first_name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.first_name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM STUDENT_ASSAYS WHERE Satisfactory_YN = 'Yes' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'Yes' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND Student_Answer_Text != 'No' AND
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu;
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu HAVING count(*) >= 1
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_answers)
Both "Normal" and "Absent" have been entered as comments in the questions. Therefore, the student answer text that received both of these comments is "Normal".
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.comments = T2.valid_answer_text WHERE T2.comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.comments = T2.valid_answer_text WHERE T2.comments = \"Absent\"
SELECT TYPE_OF_Question_Code FROM QUESTIONS GROUP BY TYPE_OF_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM Students AS T1;
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products AS t1;
SELECT count(*) FROM products AS T1;
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS T1
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
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code HAVING count(*) > 100
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code HAVING avg(product_price) != 0
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers AS T1;
SELECT count(*) FROM customers AS T1;
SELECT customer_id , customer_name FROM customers AS T1;
SELECT customer_id , customer_name FROM customers
SELECT T1.customer_address , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.customer_name = 'Jeromy'
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.customer_name = 'Jeromy'
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code HAVING count(*) > 100
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
sorted_products = (SELECT product_id , product_type_code FROM products ORDER BY product_name ASC)
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 0
{ "sql": "SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = \"Jeromy\""} {"order_ids": [T1.order_id , T1.order_date , T1.order_status_code] , "order_dates": [T1.order_date , T1.order_date , T1.order_date] , "order_statuses": [T1.order_status_code , T1.order_status_code , T1.order_status_code]}
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = 'Jeromy'
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 0
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = \"Monitor\"
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) > 1
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T2.order_quantity) > 6 OR count(*) > 3
order_id , order_date FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t1.order_id HAVING sum(t2.order_quantity) > 6 UNION SELECT order_id , order_date FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id GROUP BY t1.order_id HAVING count(*) > 3
SELECT count(*) FROM building AS T1;
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT name FROM building ORDER BY number_of_stories ASC;
SELECT Address FROM building ORDER BY Completed_Year DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_building_addresses = (SELECT Address FROM building ORDER BY Completed_Year DESC)
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(population) FROM region AS T1;
SELECT avg(population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE AREA > 10000
region ORDER BY Population DESC LIMIT 1 CAPITAL
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT name FROM region ORDER BY area DESC LIMIT 5
sorted_region = region.sort_by(area) LIMIT 5
SELECT T2.Name , T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING COUNT(*) > 1
SELECT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
region(region_id) AS T1 JOIN building(building_id) ON T1.region_id = T2.region_id WHERE T1.name = "Abruzzo" GROUP BY T2.region_id HAVING count(*) >= 1 AND count(*) <= 50
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
building(building_id) JOIN region ON building.building_id = region.building_id WHERE building.completed_year > 20 INTERSECT building(building_id) JOIN region ON building.building_id = region.building_id WHERE building.completed_year < 15 {}
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT address FROM building AS t1;
SELECT DISTINCT Address FROM building
sorted(completed_year) DESC
sorted_building = (SELECT completed_year FROM building ORDER BY number_of_stories DESC)
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM customers_and_services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
import pandas as pd most_common_analytical_layer_type_code = analytic_layer_type_code.mode()[0] print(most_common_analytical_layer_type_code)
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_details HAVING count(*) > 3
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t2.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.services_id = t3.service_id GROUP BY t3.service_details ORDER BY count(*) LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services AS t1
SELECT count(*) FROM customers_and_services AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id HAVING count(*) >= 1 AND count(*) <= 3
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%'
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = \"Hardy Kutch\" OR T3.customer_details = \"Good\" UNION SELECT T4.service_details FROM services AS T4 JOIN customer_interactions AS T5 ON T4.service_id = T5.service_id JOIN customers AS T6 ON T6.customer_id = T5.customer_id WHERE T6.customer_details = \"Hardy Kutch\" OR T6.customer_details = \"Good\"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" OR t2.status_code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad" INTERSECT SELECT T4.service_details FROM services AS T4 JOIN customers_and_services AS T5 ON T4.service_id = T5.service_id JOIN customers AS T6 ON T5.customer_id = T6.customer_id WHERE T6.customer_details = "Hardy Kutch" AND T5.status_code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT t3.service_details FROM customer_interactions AS t1 JOIN channels AS t2 ON t1.channel_id = t2.channel_id JOIN services AS t3 ON t1.service_id = t3.service_id WHERE t2.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = \"15 ij\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM integration_platform WHERE integration_platform_details = 'Success'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = "Fail"
SELECT customers_and_services_details FROM customers_and_services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Integration_Platform GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE service_id IN ( SELECT service_id FROM services WHERE service_details = 'unsatisfied' ) )
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id WHERE t2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE services_and_channels_details = "Unsatisfied")
SELECT count(*) FROM Vehicles AS T1
SELECT count(*) FROM Vehicles AS T1
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE MODEL_YEAR IN (2013 , 2014)
SELECT name , TYPE_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year >= 2013 AND model_year <= 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 AND model_year = 2013;
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year IN (2013 , 2014) GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT count(*) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
Powertrain | count(*) -- Total count of vehicles per powertrain SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
Most_common_type_of_powertrain = (SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1)
Minimum: Annual_fuel_cost.min() Maximum: Annual_fuel_cost.max() Average: Annual_fuel_cost.avg()
Minimum: min(Amount) , maximum(Amount) , avg(Amount) FROM Vehicles AS T1
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount;
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY sum(T2.total_hours) DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT avg(amount_of_loan) FROM Student_loans AS T1;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2 {}
Two or more classes and less than two detentions: (student_id , bio_data ) SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1 {}
Teachers(Teacher_id , Teacher_details) FROM CLASS WHERE class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN CLASS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_LOANS)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_LOANS)
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_LOANS AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_LOANS AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.teacher_details , T1.teacher_id FROM_CLASSES AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.address_details , T2.bio_data FROM addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id"} {"bio_data": "This is a sample of the student's biography"}
SELECT T1.student_details , T2.bio_data FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"} {"bio_data": "Transcript Details", "date_of_transcript": "Date of Transcript"}
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T2.behaviour_monitoring_details , T1.student_details FROM Behaviour_Monitoring AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id {}
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
most_students = (SELECT T1.event_type_code , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1) SELECT T3.event_type_code , T3.event_type_description FROM Student_Events AS T3 JOIN Ref_Event_Types AS T4 ON T3.event_type_code = T4.event_type_code WHERE T4.event_type_code = T2.event_type_code ;
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.Achievement_Type_Description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Teachers AS T1 JOIN CLASS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id)
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT date_of_transcript , transcript_details FROM transcripts
SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
{ "sql": "SELECT T1.achievement_type_code , T2.student_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.achievement_type_code , T2.student_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id"}
{ "sql": "SELECT datetime_detention_start , datetime_detention_end FROM Detention AS T1"} {"detention_start_time": "2022-03-15 09:00:00", "detention_start_time": "2022-03-15 18:00:00"}
SELECT datetime_detention_start , datetime_detention_end FROM Detention AS T1
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%' OR student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id IN ( SELECT T2.student_id FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id GROUP BY T1.teacher_id HAVING count(*) = 1 )
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Students AS T3 JOIN Classes AS T4 ON T3.student_id = T4.student_id )
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM CLASS_DETAILS GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T2.student_details FROM Students AS T2 JOIN Students AS T1 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T2.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_LOANS )
SELECT min(date_of_loan) FROM Student_Loans AS T1
Min(date_of_loan) FROM Student_Loans AS T1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_loan_id IN (SELECT student_loan_id FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1)
SELECT T3.date_of_transcript FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.date_of_loan = T3.date_of_transcript ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id IN (SELECT student_id FROM Transcripts ORDER BY date_of_transcript ASC LIMIT 1)
SELECT T2.teacher_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id IN (SELECT student_id FROM Transcripts ORDER BY date_of_transcript ASC LIMIT 1)
SELECT sum(amount_of_loan) , student_id FROM Student_loans GROUP BY student_id;
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > 0
{ "sql": "SELECT T1.student_id , T1.student_details , COUNT(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id"} {"students_count": {"student_id": 1 , "student_details": "John Doe" , "course_count": 3}
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 1
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = \"Student Details\"
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id;
SELECT T1.student_address_id , T2.address_type_code FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.student_address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_details FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student Loans)
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id )
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2 )
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*) = 2 )
SELECT min(datetime_detention_start) FROM Detention AS T1
SELECT datetime_detention_start FROM Detention AS T1;
SELECT name FROM AUTHOR AS T1;
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS T1
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS t1;
[ "Name", "Address"] SELECT name , address FROM client ORDER BY name ASC;
[ "Name", "Address"] SELECT name , address FROM client ORDER BY name ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM Author AS T1 JOIN Book AS T2 ON T1.idbook = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT T1.ISBN , count(*) FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT T2.Title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn ORDER BY T2.amount DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 1
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder > '2003-04-15' INTERSECT SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder < '2003-04-15'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient;
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT title FROM book WHERE idorder IS NULL
SELECT title FROM book WHERE idnot IN (SELECT idorder FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT max(SalePrice) , min(SalePrice) FROM BOOK AS T1
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book AS t1
SELECT max(SalePrice - PurchasePrice) FROM Book AS T1;
SELECT max(SalePrice - PurchasePrice) FROM BOOK ORDER BY SalePrice - PurchasePrice DESC LIMIT 1;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T2.SalePrice) FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.Name = \"George Orwell\"
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT T2.SalePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.Name = \"Plato\"
SELECT T2.SalePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.Name = 'Plato'
SELECT T1.Title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.ISBN = T2.ISBN JOIN ORDER AS T3 ON T2.idauthor = T3.idauthor WHERE T2.Name = 'George Orwell' ORDER BY T3.SalePrice LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1;
SELECT title FROM book WHERE author IN (SELECT idauthor FROM author GROUP BY idauthor ORDER BY avg(saleprice) DESC LIMIT 1) AND purchaseprice < (SELECT avg(purchaseprice) FROM book)
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idauthor WHERE T3.Name = 'Plato' AND T1.SalePrice < (SELECT avg(SalePrice) FROM BOOK)
SELECT T2.Name FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T2.Title = "Pride and Prejudice"
SELECT T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T1.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN author_book AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = \"Pride and Prejudice\"
SELECT count(*) FROM orders AS t1 JOIN book AS t2 ON t1.idorder = t2.idorder WHERE t2.title = 'Pride and prejudice' AND t1.dateorder = (SELECT dateexped FROM orders WHERE idclient = (SELECT idclient FROM client WHERE name = 'John') INTERSECT SELECT dateexped FROM orders WHERE idclient = (SELECT idclient FROM client WHERE name = 'Jane') )
SELECT idorder FROM books ORDER BY title LIMIT 2;
SELECT idorder FROM books ORDER BY title IN ('Pride and Prejudice', 'The Little Prince') INTERSECT SELECT idorder FROM books ORDER BY title IN ('Pride and Prejudice', 'The Little Prince')
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith'
Peter Doe : 123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN authors AS T3 ON T2.author = T3.idauthor WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN authors AS T3 ON T2.author = T3.idauthor WHERE T1.idclient = 'James Smith'
Peter Doe ordered a book titled "The Great Dictator" from the author "George Orwell". James Smith ordered a book titled "A Brief History of Time" from the author "Steven Hawking". Neither book was ordered by the other client.
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = 'Pride and Prejudice' AND T2.dateorder != \"\"
SELECT count(*) FROM book AS T1;
SELECT Title FROM book ORDER BY Title
SELECT title FROM book ORDER BY pages DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book AS T1
book WHERE TYPE <> "Poet"
SELECT avg(Rating) FROM review AS T1
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT max(chapters) FROM book GROUP BY title ORDER BY max(chapters) DESC LIMIT 1;
SELECT Rank FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Pages LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1;
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = \"Novel\"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T2.Book_ID ORDER BY COUNT(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
book WHERE Chapters > 75 INTERSECT book WHERE Chapters < 50 {}
SELECT count(DISTINCT TYPE) FROM book AS T1
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT count(*) FROM customer ORDER BY Nationality DESC LIMIT 1;
SELECT count(*) FROM customer AS T1;
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT name FROM customer WHERE nationality IN ('England', 'Australia')
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1
SELECT card_credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality HAVING COUNT(*) > 100
Nationalities as keys: Nationality , count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
both_cards_credit = (SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75)
SELECT T1.Nationality FROM customer AS T1 JOIN customer AS T2 ON T1.Nationality = T2.Nationality WHERE T1.Card_Credit > 50 AND T2.Card_Credit < 75 GROUP BY T1.Nationality HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC
SELECT T2.Name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name ORDER BY sum(T1.quantity) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name ORDER BY sum(T1.Quantity) ASC
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1;
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch AS T1
SELECT DISTINCT manager FROM branch AS T1
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1
ascending_name_of_members = (SELECT Name FROM member ORDER BY Age ASC)
SELECT Name , Nationality FROM member AS T1
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality FROM member GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2;
SELECT T1.Name , T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2018
SELECT T1.name FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id JOIN club AS T3 ON T3.club_id = T2.club_id WHERE T3.club_name = \"Houston\"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
Nationalities of members older than 22 and younger than 19: SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id;
club_name_contains_state = 'state' in club.club_name
[ "Collection_Subset_Name", "Collecrtion_Subset_Name", "Document_subset_name", "Collection_subset_name" ]
SELECT collection_subset_name FROM Collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name LIKE '%Best for 2000%'
SELECT document_object_id FROM Document_objects
SELECT document_object_id FROM Document_objects
SELECT parent_document_object_id FROM Document_objects WHERE OWNER = \"Marlin\";
SELECT document_object_id FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' AND T1.Description != T2.Description
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' AND T1.Owner != 'Marlin'
SELECT DISTINCT description FROM document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM document_subsets)
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != -1
SELECT count(*) FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT count(*) FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT document_object_id FROM Document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM Document_objects)
SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IS NULL
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id
SELECT count(*) , T1.parent_document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.parent_document_object_id HAVING count(*) > 0
SELECT collection_name FROM collections ORDER BY collection_name ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Collection_Name FROM Collections AS T1
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT T1.Parent_Collection_Name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Parent_Collection_ID = T2.Parent_Collection_ID WHERE T2.Collection_Name = "Nice"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_id = T2.collection_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.description = 'Nice'
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM Document_objects GROUP BY document_object_id HAVING count(*) > 1;
SELECT document_object_id FROM Document_subset_members GROUP BY document_object_id HAVING count(*) > 1;
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T1.owner = \"Ransom\"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN DOCUMENT_SUBSET_MEMBERS AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 1
SELECT T1.document_object_id , count(*) FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT T1.document_object_id , count(*) FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.related_document_object_id = T2.related_document_object_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM Document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.related_document_object_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Owner = T2.Owner WHERE T2.Owner = 'Braeden'
Braeden = (SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Owner = T2.Owner WHERE T1.Description != T2.Description AND T1.Other_Details != T2.Other_Details) UNION SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Owner = T2.Owner WHERE T1.Description != T2.Description AND T1.Other_Details != T2.Other_Details AND T1.Owner = 'Braeden'
SELECT T1.document_subset_name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_Objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden' GROUP BY T1.document_subset_name HAVING count(*) >= 1 AND count(*) <= 5
Braeden = (SELECT document_subset_name FROM document_subsets WHERE document_subset_details = 'Owned by Braeden') INTERSECT SELECT document_subset_name FROM document_subsets WHERE document_subset_details = 'Owned by Braeden'
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id HAVING count(DISTINCT document_object_id) > 0
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_subset_members GROUP BY document_subset_id , document_subset_name
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id HAVING count(*) >= 1 AND count(*) <= 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.document_subset_name , T2.document_object_id FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T2.document_object_id HAVING count(*) = 1
SELECT T2.collection_name FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.owner = 'Ransom'
SELECT T3.Collection_Name FROM Documents_in_Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collections AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T1.Owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_subsets AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.collection_name = "Best"
SELECT count(*) FROM document_objects AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_subset_id WHERE T2.document_subset_name = "Best" AND T1.collection_id IN ( SELECT T3.collection_id FROM Collection_subsets AS T3 JOIN Collection_subsets AS T4 ON T3.collection_id = T4.collection_id WHERE T4.collection_name = "Best" )
document_objects_id = (SELECT DISTINCT T1.document_object_id FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000' INTERSECT SELECT DISTINCT T3.document_object_id FROM document_subsets AS T3 JOIN document_objects AS T4 ON T3.document_subset_id = T4.document_subset_id WHERE T3.collection_subset_name = 'Best') UNION (SELECT DISTINCT T1.document_object_id FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best' INTERSECT SELECT DISTINCT T3.document_object_id FROM document_subsets AS T3 JOIN document_objects AS T4 ON T3.document_subset_id = T4.document_subset_id WHERE T3.collection_subset_name = 'Best')
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" AND T2.year = 2000 EXCEPT SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" AND T2.year = 2000
{ "sql": "SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" EXCEPT SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best for 2000\"", }
Best_for_2000 = (SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best' INTERSECT SELECT document_object_id FROM collections WHERE collection_name = 'Best')
document_subset_ids = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000' UNION SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best') union all select document_object_id from documents_in_collections where collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collecrtion_subset_name = 'Best'
SELECT count(*) FROM Collections WHERE Collection_Name = 'Best'
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN COLLECTION_SUBSET_MEMBERS AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = "Best in"
SELECT T1.collecrtion_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
count(*) FROM songs WHERE name LIKE '%Love%'
sorted_songs = sorted(songs.order_by(name).values('name'))
SELECT name , language FROM songs
max_voice_sound_quality = (SELECT max(voice_sound_quality) FROM performance_score) min_voice_sound_quality = (SELECT min(voice_sound_quality) FROM performance_score)
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = "All the streets of love"
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1SongsId = T2.id WHERE T2.language = \"english\"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T2.participant_id HAVING count(*) >= 2;
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = "The Balkan Girls" AND T1.language = "english"
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100 {} >= 7 {} <= 9 {}
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) , languages FROM performance_score GROUP BY languages
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'good' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'good'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT original_artist FROM songs WHERE rhythm_tempo > 5 ORDER BY voice_sound_quality DESC
SELECT count(*) FROM city;
SELECT count(*) FROM city
SELECT distinct state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city;
SELECT count(*) FROM city AS T1
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT T1.latitude , T1.longitude FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state LIKE "%PA%"
Canada = 'country' AND country = 'Canada' COUNT(*) FROM city AS T1 WHERE T1.country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state;
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country;
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = 'Baltimore' )
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Baltimore'
SELECT count(*) , country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 0
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 0
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM STUDENT WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA'))
BAL TO CHI = 309.4 km
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' AND T1.city1_code = 'Boston' INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'NJ' AND T1.city1_code = 'Newark'
SELECT distance FROM direct_distance WHERE city1_code = 401 AND city2_code = 208
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code ORDER BY max(T1.distance) DESC LIMIT 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T2.city1_code ORDER BY sum(T2.distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T2.city1_code HAVING avg(T2.distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING sum(T2.distance) < 1000 INTERSECT SELECT T3.city_code FROM city AS T3 JOIN direct_distance AS T4 ON T3.city_code = T4.city2_code GROUP BY T3.city_code HAVING sum(T4.distance) < 1000
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance < 1000
SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'BAL'
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'BAL'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' INTERSECT SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'CA'
SELECT avg(T3.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code JOIN city AS T3 ON T2.city1_code = T3.city_code WHERE T1.state = 'MA' INTERSECT SELECT avg(T3.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code JOIN city AS T3 ON T2.city1_code = T3.city_code WHERE T1.state = 'MA' AND T1.country = 'USA'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 7 T1.stateclosestto chicago
SELECT T3.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN city AS T3 ON T1.city1_code = T3.city_code WHERE T2.state = 'IL' AND T1.distance = min(distance.distance)
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = city_code AND T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = city_code AND city2_code = city_code) ORDER BY T1.city_name DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code IN (SELECT city_code FROM city WHERE state = 'MA' AND country = 'USA' INTERSECT SELECT city_code FROM city WHERE state = 'MA' AND country = 'USA') ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code HAVING count(*) > 1
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code HAVING sum(T2.distance) != 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING count(*) > 1
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0.5
Linda Smith : 80.4 km Tracy Kim : 73.5 km
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = \"Linda\" AND T3.lname = \"Smith\" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN student AS T3 ON T1.city1_code = T3.city_code WHERE T3.fname = \"Tracy\" AND T3.lname = \"Kim\"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = (SELECT city1_code FROM city WHERE city_name = 'Linda Smith') ORDER BY T2.distance LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance AS T3 JOIN city AS T4 ON T3.city2_code = T4.city_code WHERE T4.city_name = 'Linda Smith')
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 102;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT name FROM sailors WHERE name LIKE '%e%'
Sailors[name LIKE '%e%' OR name LIKE '%E%']
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT sid FROM sailors WHERE id NOT IN (SELECT sid FROM sailors ORDER BY age ASC LIMIT 1)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT age FROM sailors WHERE rating > 7 ORDER BY age DESC LIMIT 1)
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 0
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T2.name HAVING count(*) >= 2
Reserve sid red OR sid blue
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" UNION SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' UNION SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'blue'
{ "sql": "SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT T3.bid FROM Boats AS T3 WHERE T3.color = \"red\" UNION SELECT T3.bid FROM Boats AS T3 WHERE T3.color = \"blue\")"
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = \"red\" INTERSECT SELECT bid FROM boats WHERE color = \"blue\")
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = \"red\" INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = \"blue\"
{ "sql": "SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = \"red\" AND T1.day = \"blue\""
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = \"red\" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = \"blue\"
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT name FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = \"Luis\")
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 AND T2.day != \"null\"
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM Sailors AS T1;
SELECT count(*) FROM Sailors AS T1;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT avg(age) FROM Sailors WHERE rating = 7;
count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors AS T1
SELECT avg(rating) , max(age) FROM sailors AS T1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name;
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id HAVING count(*) > 10
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1 {}
SELECT T2.name , count(*) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1;
SELECT count(*) , T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T2.id;
SELECT T2.name , count(*) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE sid > 1 GROUP BY T2.name
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = \"red\" GROUP BY T1.rating;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = \"red\" GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating ASC , age ASC
SELECT name , rating , age FROM sailors ORDER BY rating DESC , age DESC
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
Sailors.query(resid = 20 <= id && id <= 30) names of boats booked by people aged 20-30.
SELECT name FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE name IN (SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = 'red'))
SELECT name FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE name IN (SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = \"red\") ORDER BY rating DESC LIMIT 1)
SELECT max(rating) FROM Sailors AS T1;
SELECT max(rating) FROM Sailors AS T1
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT name , age FROM Sailors ORDER BY rating DESC
Sorted by rating (decreasing): SELECT name , age FROM sailors ORDER BY rating DESC LIMIT 1000000;
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC
SELECT DISTINCT model FROM headphone ORDER BY model
most_common_class = (SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1)
most_headphones_class = (SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1)
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone AS T1
SELECT count(DISTINCT earpads) FROM headphone AS T1
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT model , CLASS , construction FROM headphone ORDER BY price ASC LIMIT 1;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY PRICE LIMIT 1
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\"
SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
headphones.earpads EXCEPT SELECT earpads FROM headphone WHERE construction = 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
store.sort_by_date_opened: Store ID, name: Store name
sorted(store.date_opened)
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) > 1
count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) != 0
SELECT T1.name , count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id HAVING count(*) >= 1 AND count(*) <= 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock WHERE headphone_id IN (SELECT headphone_id FROM headphone))
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Model FROM headphone AS t1 JOIN stock AS t2 ON t1.Headphone_ID = t2.Headphone_ID GROUP BY t1.Model ORDER BY sum(t2.quantity) DESC LIMIT 1;
store woodman SELECT count(*) FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id WHERE t2.name = 'Woodman'
total_quantity = sum(quantity FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id WHERE t2.name = 'Woodman')
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
store.neighborhood EXCEPT SELECT t1.neighborhood FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t2.headphone_id IN (SELECT headphone_id FROM headphone)
SELECT count(*) FROM author_list AS T1
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper AS T1
SELECT count(*) FROM paper AS T1
SELECT count(*) FROM affiliation AS T1
SELECT count(*) FROM affiliation AS T1
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
Columbia University has one affiliation with the University of California at Los Angeles (UCLA). Therefore, the number of papers published in 2009 by Columbia University is 1.
Columbia University has an affiliation with the Affiliation table which contains information about the university itself. We need to count the number of papers published by authors affiliated with Columbia University in the year 2009. Affiliation table: SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id IN (SELECT affiliation_id FROM Affiliation WHERE name = 'Columbia University') AND T1.year = 2009; The count will give us the desired result.
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
Sorted by YEAR: paper.year ASCvenue AS venue ASCpaper.year ASC
Distinct venues for papers ordered by year: SELECT DISTINCT venue FROM paper ORDER BY YEAR ASC
SELECT T3.title , T2.paper_id FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'Harvard University'
SELECT T3.title , T2.paper_id FROM paper AS T3 JOIN author_list AS T1 ON T3.paper_id = T1.paper_id JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKeown'
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.cited_paper_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.cited_paper_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T2.title , T1.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Stanford' INTERSECT SELECT T2.title , T1.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Columbia University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'Kathleen' AND T3.name = 'Rambow' AND T3.email = 'Owen'
SELECT T3.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'McKeown' AND T3.email = 'kathleen@mckeown.com' INTERSECT SELECT T3.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Rambow' AND T3.email = 'owen@rambow.com'
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = 'Mckeown' EXCEPT SELECT author_id FROM author_list WHERE name = 'Rambow' )
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = 'McKeown') EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = 'Rambow')
SELECT T3.title , T2.paper_id FROM Author AS T1 JOIN Paper AS T3 ON T1.paper_id = T3.paper_id JOIN Author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Mckeown' AND T1.email = 'Kathleen' OR T1.name = 'Rambow' AND T1.email = 'Owen'
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Mckeown' AND T1.email = 'Kathleen' UNION SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Rambow' AND T1.email = 'Owen'
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T1.title = \"D12-1027\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.paper_id , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T2.title , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = 'McKeown , Kathleen'
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.paper_id = 3907
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = 'Mckeown , Kathleen'
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id JOIN author_list AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Mckeown' AND T3.email = 'kathleen@mckeown.com'
SELECT T1.name , count(*) FROM AUTHOR AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = \"Mckeown , Kathleen\" AND T2.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Mckeown , Kathleen\" )
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "McKeown" AND T2.author_id = "Kathleen"
Columbia University has published papers in the following venues and years: Columbia University (Paper): 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2047 (2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047)
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T3.affiliation_id = T1.affiliation_id WHERE T3.name = 'Columbia University'
Most papers in 2009 by an author: SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
Columbia University has 143 papers in or before 2009.
Columbia University has 43 papers published between 1998 and 2009 (inclusive). Therefore, the count of papers it has published during or before 2009 is 43.
Stanford University has 16 papers between 2000 and 2009.
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' AND T1.year BETWEEN 2000 AND 2009
SELECT T2.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T1.email = 'kathleen@mckeown.com'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.author_id IN ( SELECT T1.author_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.paper_id IN ( SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id WHERE T4.cited_paper_id = T4.cited_paper_id AND T4.paper_id = ( SELECT T5.paper_id FROM paper AS T5 JOIN citation AS T6 ON T5.paper_id = T6.paper_id WHERE T6.cited_paper_id = T6.cited_paper_id AND T6.paper_id = ( SELECT T7.paper_id FROM paper AS T7 JOIN citation AS T8 ON T7.paper_id = T8.paper_id WHERE T8.cited_paper_id = T8.cited_paper_id AND T8.paper_id = ( SELECT T9.paper_id FROM paper AS T9 JOIN citation AS T10 ON T9.paper_id = T10.paper_id WHERE T10.cited_paper_id = T10.cited_paper_id AND T10.paper_id = ( SELECT T11.paper_id FROM paper AS T11 JOIN citation AS T12 ON T11.paper_id = T12.paper_id WHERE T12.cited_paper_id = T12.cited_paper_id AND T12.paper_id = ( SELECT T13.paper_id FROM paper AS T13 JOIN citation AS T14 ON T13.paper_id = T14.paper_id WHERE T14.cited_paper_id = T14.cited_paper_id AND T14.paper_id = ( SELECT T15.paper_id FROM paper AS T15 JOIN citation AS T16 ON T15.paper_id = T16.paper_id WHERE T16.cited_paper_id = T16.cited_paper_id AND T16.paper_id = ( SELECT T17.paper_id FROM paper AS T17 JOIN citation AS T18 ON T17.paper_id = T18.paper_id WHERE T18.cited_paper_id = T18.cited_paper_id AND T18.paper_id = ( SELECT T19.paper_id FROM paper AS T19 JOIN citation AS T20 ON T19.paper_id = T20.paper_id WHERE T20.cited_paper_id = T20.cited_paper_id AND T20.paper_id = ( SELECT T21.paper_id FROM paper AS T21 JOIN citation AS T22 ON T21.paper_id = T22.paper_id WHERE T22.cited_paper_id = T22.cited_paper_id AND T22.paper_id = ( SELECT T23.paper_id FROM paper AS T23 JOIN citation AS T24 ON T23.paper_id = T24.paper_id WHERE T24.cited_paper_id = T24.cited_paper_id AND T24.paper_id = ( SELECT T25.paper_id FROM paper AS T25 JOIN citation AS T26 ON T25.paper_id = T26.paper_id WHERE T26.cited_paper_id = T26.cited_paper_id AND T26.paper_id = ( SELECT T27.paper_id FROM paper AS T27 JOIN citation AS T28 ON T27.paper_id = T28.paper_id WHERE T28.cited_paper_id = T28.cited_paper_id AND T28.paper_id = ( SELECT T29.paper_id FROM paper AS T29 JOIN citation AS T30 ON T29
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN (SELECT paper_id FROM paper WHERE title = 'Mckeown , Kathleen' UNION SELECT paper_id FROM paper WHERE title = 'Mckeown , Kathleen') GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
paper_ids_with_translation = [p1, p2, p3] SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
Count the number of papers per venue per year: SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name HAVING count(*) > 0
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING sum(t2.cited_paper_id) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year > 50 )
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T3.title = \"NAACL\" UNION SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T3.title = \"ACL\"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = NAACL INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = ACL
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM paper WHERE venue = \"ACL\"))
SELECT name FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.venue = "ACL" )
SELECT count(*) FROM conference AS T1;
SELECT count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT count(*) , Conference_Name FROM conference GROUP BY Conference_Name HAVING count(*) > 1
SELECT count(*) , conference_name FROM conference GROUP BY conference_name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR HAVING count(*) > 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
from institution WHERE founded BETWEEN 1850 AND 1900 GROUP BY founded HAVING count(*) >= 20 AND count(*) <= 40
foundations_between_1850_and_1900 = (SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900)
most_founded_institution = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) > 100
SELECT T1.name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) > 1
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
{ "sql": "SELECT max(Age) , min(Age) FROM staff AS T1"} {"staff": [max(Age) , min(Age) ]}
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker'
staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'Naccl'
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'A' INTERSECT SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'N' CONCURRENTLY
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id HAVING count(*) >= 100
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id HAVING count(*) > 0
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT name , Nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
University Name: {SELECT T1.institution_name FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T1.institution_name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.institution_id}
University Names and Locations Without Staff Participating in 2004 Conferences: SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 INTERSECT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.institution_id WHERE T4.role = 'staff' AND T4.conference_id = T2.conference_id
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilot_skills WHERE age < 30;
SELECT * FROM pilot_skills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT LOCATION) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32;
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE t1.age < 34;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
youngest_pilot = (SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1)
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41 GROUP BY T2.plane_name HAVING count(*) = 1
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.pilot_name HAVING count(*) > 1
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "Piper Cub" EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = "B-52 Bomber"
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 30 INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber' AND T1.age = 30
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) >= 1 AND count(*) <= 3
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name AS T3
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
Piper Cub: SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills WHERE plane_name = 'F-14 Fighter'
Piper Cub : John Doe F-14 Fighter : Michael Brown
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) != 0
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name HAVING avg(age) != 'null'
SELECT count(*) , plane_type FROM hangars GROUP BY plane_type
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING count(*) >= 1;
SELECT T1.pilot_name , T2.plane_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC
SELECT DISTINCT plane_name , pilot_name FROM pilot_skills ORDER BY plane_name ASC
SELECT T1.plane_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC LIMIT 3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT max(age) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) >= 1
SELECT count(*) , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) > 1
SELECT count(*) , avg(age) , city FROM pilot_skills GROUP BY city HAVING count(*) > 1
SELECT count(*) , T1.location , avg(T2.age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING avg(age) < 35
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1;
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1;
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT max(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT max(age) FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT age FROM pilotskills WHERE plane_name = 'F-14 Fighter' ORDER BY age ASC LIMIT 1)
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY age DESC LIMIT 1)
SELECT count(*) FROM pilot_skills WHERE plane_name = "Piper Cub" AND age > (SELECT min(age) FROM pilot_skills WHERE plane_name = "Piper Cub")
district.name ORDER BY area_km DESC LIMIT 1
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
districts_with_high_area = (SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district))
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district ORDER BY Area_km DESC LIMIT 3;
sorted_districts = sorted(district.items(), key=lambda t: t[2]) for t1, t2 in sorted_districts: print(t1 , t2 , t2.Government_website)
district(name) WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speech_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT T1.name , T1.points FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.district_id IN (SELECT T3.district_id FROM district AS T3) AND T3.population < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t1.district_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.start_year < 2004;
district_id , count(*) , t3.name AS show_district_name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id JOIN spokesman AS t3 ON t2.spokesman_id = t3.spokesman_id GROUP BY t1.district_id HAVING count(*) >= 1
SELECT T3.name FROM district AS T3 JOIN spokesman_district AS T2 ON T3.district_id = T2.district_id JOIN spokesman AS T1 ON T2.spokesman_id = T1.spokesman_id WHERE T1.rank_position = 1 INTERSECT SELECT T3.name FROM district AS T3 JOIN spokesman_district AS T2 ON T3.district_id = T2.district_id JOIN spokesman AS T1 ON T2.spokesman_id = T1.spokesman_id WHERE T1.rank_position = 2 {}
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT T1.spokesman_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING count(*) > 0
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = \"gallery 226\"
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM Sculptures WHERE LOCATION <> 226
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 'gallery 226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) >= 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920 GROUP BY T1.artistid HAVING count(*) >= 1
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthyear FROM artists ORDER BY birthyear LIMIT 1;
SELECT birthYear FROM artists ORDER BY birthYear LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY deathyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = 'gallery 240'
SELECT count(*) FROM paintings WHERE LOCATION = \"gallery 240\"
SELECT count(*) FROM paintings AS t1 JOIN artists AS t2 ON t1.painterid = t2.artistid WHERE t2.birthyear = (SELECT max(birthyear) FROM artists)
SELECT T1.painterid , T2.height_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T1.year DESC LIMIT 1;
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary'
Maryfname = "Mary", lname = "Smith" SELECT T2.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Mary\"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
PabloPainterID = 1 Paintings.medium ON ARTISTS.artistID = PaintingMediumIDmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF paintingmedium TYPE OF painting
Pablo artists have created paintings in various locations and mediums. Here is an example of how we can retrieve this information: SELECT T1.location , T2.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Pablo'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID WHERE T2.title = T3.title AND T2.medium = T3.medium INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID WHERE T2.title = T3.title AND T2.medium = T3.medium AND T2.mediumOn = T3.mediumOn {}
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title != \"null\" AND T3.title != \"null\"
No such artist exists as it cannot have both the medium oil painting AND the lithographic medium at the same time.
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'Oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'Lithographic'
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.mediumOn = 'canvas'
SELECT T2.birthyear FROM artists AS T2 JOIN paintings AS T1 ON T1.painterid = T2.artistid WHERE T1.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = \"gallery 241\" AND T2.medium = \"medium\"
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = 241 AND T2.medium = 'oil'
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM_paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 1
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT DISTINCT painterid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE LOCATION = \"Gallery 240\" INTERSECT SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings WHERE paintingid IN (SELECT paintingid FROM paintings
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium oil\" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT title , year , medium , mediumOn FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title , year , medium , location FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorID = T4.artistID WHERE T4.artistID = 222;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorID = T4.artistID WHERE T4.artistID = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930
Before 1885: None After 1930: Location = "New York City" or Location = "Los Angeles"
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 2000;
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 499999 AND width_mm BETWEEN 2000 AND 300000
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1929 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1930 AND 2000
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 'gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) >= 1
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) = 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
{ "sql": "SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR"
SELECT avg(height_mm) , avg(width_mm) , painterID FROM Paintings GROUP BY painterID ORDER BY painterID ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2 {}
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.fname , T1.lname , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1;
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY width_mm HAVING count(*) = 1) AND LOCATION = 240
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = \"gallery 240\" GROUP BY paintingid HAVING count(*) = 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = \"oil\" ORDER BY YEAR ASC
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorID
SELECT fname , lname FROM artists WHERE artistid NOT IN ( SELECT T1.painterID FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID )
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != 'canvas'
SELECT paintingID FROM paintings WHERE YEAR < 1885 AND medium != 'canvas'
SELECT count(*) FROM race AS T1
SELECT count(*) FROM race AS T1;
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
ORDER BY Winning_team ASC LIMIT 1000 OFFSET 0
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position != \"Junior Strous\"
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position != 'Junior Strous'
sorted(driver(Constructor), driver.age)
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT count(*) FROM (SELECT DISTINCT entrant FROM driver WHERE age >= 20)
SELECT DISTINCT entrant FROM driver WHERE age > 20
max_age = (SELECT max(Age) FROM driver) min_age = (SELECT min(Age) FROM driver)
SELECT max(Age) , min(Age) FROM driver AS T1
driver ENGINE COUNT(*) FROM driver WHERE age BETWEEN 20 AND 100 OR age BETWEEN 0 AND 20;
SELECT count(DISTINCT engine) FROM driver WHERE age > 20 OR age < 30
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T2.driver_name , T1.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.driver_name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.driver_name , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) > 0
SELECT count(*) , T1.driver_id FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.age ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING COUNT(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING COUNT(*) >= 2
driver(race_name) WHERE age >= 26 GROUP BY race_name HAVING count(*) >= 1
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor != 'Bugatti'
constructor_count = (SELECT count(*) , constructor FROM driver GROUP BY constructor)
constructor_count = count(*) FROM driver GROUP BY constructor;
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30;
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe" AND T2.pole_position = "Carl Skerlong" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe" AND T2.pole_position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\" )
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT T1.driver_id FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"James Hinchcliffe\")
SELECT count(*) FROM languages AS T1
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name ASC
languages(name) LIKE '%ish%'
languages(name) WHERE name LIKE "%ish%"
descending_countries = countries ORDER BY overall_score DESC SELECT name FROM countries WHERE id IN (SELECT country_id FROM official_languages GROUP BY country_id ORDER BY count(*) DESC LIMIT 1)
sorted_countries = sorted(countries, key=lambda x: x.overall_score, reverse=True) print(sorted_countries)
SELECT avg(justice_score) FROM countries AS T1
SELECT avg(justice_score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM countries WHERE name = 'Norway' )
SELECT count(*) FROM ( SELECT DISTINCT language_id FROM official_languages )
SELECT count(DISTINCT language_id) FROM official_languages AS T1
SELECT name FROM countries ORDER BY education_score DESC
sorted_countries = countries.order_by(education_score DESC)
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"English\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = 'English')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T3.name FROM languages AS T3 JOIN official_languages AS T1 ON T3.id = T1.language_id GROUP BY T3.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC;
sorted_by_avg_overall_score := ( SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T2.overall_score) DESC)
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 AND T3.overall_score < 90 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 AND T3.overall_score < 90
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T1.overall_score BETWEEN 95 AND 100 EXCEPT SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T1.overall_score BETWEEN 0 AND 84
SELECT country , town_city FROM Addresses AS T1 WHERE T1.line_3_area_locality != \"\" AND T1.zip_postcode != \"\"
{ "sql": "SELECT country , town_city FROM addresses AS T1"} {"sql": "SELECT country , town_city FROM addresses"}
SELECT T1.town_city , T2.property_name FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.town_city
SELECT T1.country , T1.county_state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T2.feature_name , T2.feature_description FROM Feature AS T1 JOIN Property_features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM features AS T1 JOIN property_features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM properties AS T1
SELECT min(room_count) FROM Properties AS T1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_age_categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_code IN (SELECT user_category_code FROM Ref_user_categories WHERE user_category_description = \"mother\")
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_code IN (SELECT user_category_code FROM Users WHERE user_category_description LIKE '%Mother%')
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Ref_Room_Types AS T3 ON T2.room_type_code = T3.room_type_code WHERE T3.room_type_description = 'Garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1;
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id;
SELECT avg(T2.room_size) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(*) FROM (SELECT DISTINCT room_size FROM Rooms)
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User Searches WHERE user_id IN ( SELECT user_id FROM User Searches GROUP BY user_id HAVING count(*) >= 2 )
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT min(search_datetime) FROM user_searches WHERE user_id IN (SELECT user_id FROM user_searches GROUP BY user_id ORDER BY count(*) DESC LIMIT 1)
SELECT search_datetime FROM User Searches ORDER BY search_datetime DESC LIMIT 1;
SELECT search_datetime , search_string FROM user_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN User_Property_History AS T3 ON T1.address_id = T3.property_id GROUP BY T1.zip_postcode HAVING count(*) <= 2
SELECT zip_postcode FROM addresses WHERE NOT (SELECT T1.zip_postcode FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM User_searches GROUP BY user_id HAVING count(*) = 1;
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.user_age_category_code ORDER BY T2.search_string LIMIT 1;
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = 'Senior Citizen' ORDER BY first_name ASC
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1;
SELECT count(*) FROM User_searches WHERE is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rione\"
SELECT date_registered FROM users WHERE login_name = \"ratione\"
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior Citizen"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior Citizen"
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT count(*) FROM ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(DISTINCT T1.feature_id) >= 2 )
SELECT count(*) , T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name HAVING count(*) >= 1
SELECT count(*) , T1.property_id FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) > 0
SELECT count(*) , T1.user_id FROM users AS T1 JOIN property_photos AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT T1.user_id , count(*) FROM users AS T1 JOIN property_phOTOS AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT sum(T2.price_max) FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.is_seller = 0 OR T1.is_buyer = 1
SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_student = 'Y' OR is_buyer = 'Y') UNION SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_student = 'N' AND is_buyer = 'N')
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp ASC
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp ASC
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM rooms GROUP BY room_size;
Count(*) AS count(*) , room_size GROUP BY room_size HAVING count(*) > 0
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = \"Robbie\";
Robbie's country is "United States".
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT T3.property_address_id FROM Addresses AS T3 JOIN Properties AS T4 ON T3.address_id = T4.property_address_id WHERE T4.property_name = T2.property_name )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_address_id IN ( SELECT T3.user_address_id FROM Users AS T3 JOIN Properties AS T4 ON T3.user_id = T4.owner_user_id )
SELECT search_string FROM User Searches WHERE user_id NOT IN ( SELECT owner_user_id FROM Properties )
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT owner_user_id FROM properties)
SELECT T2.last_name , T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.last_name , T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING min(T1.search_seq) <= 2
SELECT T2.last_name , T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T2.last_name , T1.user_id FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780.0
sorted_product = sorted(bike.items(), key=lambda x: x.price) print(sorted_product)
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike WHERE weight != \"null\"
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015 {}
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1;
Distinct T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
distinct T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' AND T3.result = 'Gold' INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler' AND T3.result = 'Gold'
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT id FROM bike WHERE material LIKE '%fiber%'
cyclists_own_bikes.groupby(cyclist_id).count().order_by(cyclist_id)
SELECT max(price) , flavor FROM goods WHERE food = 'Cake' GROUP BY flavor ORDER BY max(price) DESC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1;
SELECT min(price) , flavor FROM goods WHERE food = 'cookie' GROUP BY flavor ORDER BY price ASC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor = "Apple"
items(Flavor = \"Apple\") IDs: SELECT id FROM items WHERE flavor = \"Apple\"
goods(id) WHERE price < 3.0
SELECT id FROM goods WHERE price < 3;
SELECT DISTINCT T1.id FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Lemon\" AND T2.food = \"Cake\"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Lemon"
SELECT count(*) , food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY food HAVING count(*) > 1
food_count = (SELECT count(*) , food FROM goods GROUP BY food)
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10;
SELECT count(*) FROM (SELECT DISTINCT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = 'Cake')
SELECT count(DISTINCT T1.flavor) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id HAVING count(*) >= 1 AND count(*) <= 500
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T2.customerid = 15;
SELECT DISTINCT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T2.customerid = 15;
food = { 'Average': {'Food': avg(price) , 'Maximum': max(price) , 'Minimum': min(price) } }
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T2.lastname = \"LOGAN\" AND T3.food = \"Croissant\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = 'Logan' AND T1.item IN (SELECT T3.id FROM goods AS T3 JOIN items AS T4 ON T3.id = T4.food WHERE T4.price = 7)
SELECT T1.ReceiptNumber , T2.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id ORDER BY T2.price DESC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
food_types = (Flavor , Food ) count(*) AS T1 FROM goods GROUP BY T1.food_types
food_count = goods.food GROUP BY food_type;
SELECT avg(price) , food FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5.00
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
goods where price > 10.00.flavor
goods WHERE price > 10.flavor
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE food = \"Tart\")
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Price > 13;
SELECT DISTINCT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item JOIN customers AS T3 ON T2.customerid = T3.id WHERE T1.Price > 13.00;
SELECT T1.date FROM items AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.price > 15 AND T2.firstname != \"\" AND T2.lastname != \"\"
SELECT T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT flavor , price FROM goods WHERE id IN ( SELECT id FROM goods WHERE price LIKE "%70%")
SELECT id , price FROM goods WHERE id = 70
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE food != 'no' ORDER BY flavor ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT id FROM goods
SELECT T1.Receipt FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = 'Apple' OR T1.customerid = 12 AND T2.Food = 'Pie'
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Apple\" OR T1.customerid = 12
SELECT max(Date) , Date FROM receipts GROUP BY max(Date)
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1;
earliest_date = (SELECT min(Date) FROM receipts) good_with_price_above_10 = (SELECT Receipt FROM receipts WHERE Price > 10) union select receipt from receipts where Date = (SELECT min(Date) FROM receipts) union select receipt from receipts WHERE Date = (SELECT min(Date) FROM receipts)
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts) AND price > 10 OR receiptnumber IN (SELECT receiptnumber FROM goods WHERE price > 10)
items WHERE price >= 3 AND price <= 7 ID 3 Cake ID 4 ID 5 Cookie ID 6 ID 7
items WHERE price >= 3 AND price <= 7 ID COOKIES Cakes BETWEEN 3 AND 7 ID 1 2
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
avg(price) AS avg_price FROM goods WHERE flavor = \"blackberry\" OR flavor = \"blueberry\"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
sorted_by_food_type := (SELECT min(price) , max(price) FROM goods GROUP BY food) ORDER BY food ASC
min_price = min(price) FOR good.food max_price = max(price) FOR good.food SELECT min_price , max_price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.good.food ORDER BY T1.food ASC
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date HAVING count(*) > 0
SELECT count(*) , date FROM receipts GROUP BY date HAVING count(*) > 0
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Tart\" AND T3.price = (SELECT min(price) FROM goods WHERE flavor = \"Tart\")
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = "Apple"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price < (SELECT price FROM goods WHERE flavor = 'croissant' ORDER BY price DESC LIMIT 1)
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) AND count(*) >= 2
sorted_goods := (SELECT id , flavor , food FROM goods ORDER BY price ASC)
sorted_goods := (SELECT id , flavor , food FROM goods ORDER BY price ASC)
SELECT id , flavor FROM goods WHERE food = 'Cake' ORDER BY flavor ASC
items AS T1 JOIN goods AS T2 ON T1.flavor = T2.id ORDER BY T2.flavor ASC
SELECT item FROM goods WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) < 10;
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Chocolate\" GROUP BY T1.id HAVING count(*) <= 10;
Flavors available for Cake but not for Tart are: Banana, Cherry.
items.flavor EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Tart'
SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT item FROM items GROUP BY item ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM (SELECT customerid , id , flavor , food , price FROM goods GROUP BY id HAVING avg(price) > 5)
SELECT customerid , T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5.0
SELECT date FROM receipts GROUP BY date HAVING sum(price) > 100;
SELECT date FROM receipts WHERE receiptnumber IN ( SELECT receiptnumber FROM items GROUP BY receiptnumber HAVING sum(price) > 100 )
SELECT count(*) FROM driver AS T1
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
count(*) , make FROM driver WHERE Points > 150 GROUP BY make;
SELECT avg(age) , make FROM driver GROUP BY make HAVING avg(age) != 'null'
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY car_owner
team.sort_by_car_owner()
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1;
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1;
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = "Buddy Arrington"
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = "Buddy Arrington"
max(points) , min(points) FROM driver AS T1
max(Points) , min(Points) FROM driver AS T1
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = (SELECT Capital FROM country WHERE Capital = \"Dublin\")
SELECT max(Points) FROM driver WHERE Country = (SELECT Capital FROM country WHERE Country = \"Dublin\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT Country FROM driver WHERE Points > 150 GROUP BY Country HAVING max(Points) > 150
SELECT country FROM driver WHERE points > 150 GROUP BY country HAVING count(*) > 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
Country = (SELECT Country FROM driver ORDER BY Points DESC LIMIT 1) AND Capital FROM country WHERE Country != "" ORDER BY Capital DESC LIMIT 1;
Make , count(*) FROM driver GROUP BY Make HAVING count(*) > 1
Make_count = (SELECT make , count(*) FROM driver GROUP BY make)
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM team WHERE team_id IN ( SELECT team_id FROM team_driver GROUP BY team_id HAVING count(*) >= 3 )
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
{ "sql": "SELECT Team FROM team WHERE Team_ID NOT IN ( SELECT Team_ID FROM team_driver )"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
country WHERE MAKE = \"Dodge\" INTER country WHERE MAKE = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution AS T1
SELECT count(*) FROM institution AS T1
SELECT name FROM institution ORDER BY name
SELECT Name FROM institution ORDER BY Name
ascending founded ORDER BY founded ASC NAME LIKE "%institution%" FROM institution ORDER BY founded ASC
sorted_by_founded : SELECT name FROM institution ORDER BY founded ASC
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(enrollment) , min(enrollment) FROM institution
SELECT max(enrollment) , min(enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
Descending by capacity of institutions: SELECT stadium FROM institution ORDER BY capacity DESC;
sorted_stadiums = (SELECT Stadium FROM institution ORDER BY Capacity DESC)
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
institution.Nickname = (SELECT Min(Enrollment) FROM institution)
SELECT name FROM institution ORDER BY enrollment LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.facility = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation HAVING count(*) > 1000
count(*) , affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM Championship GROUP BY Nickname ORDER BY Capacity DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT nickname FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
{ "sql": "SELECT Enrollment FROM institution WHERE City IN (\"Vancouver\", \"Calgary\")"
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
province NOT IN (SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950)
SELECT count(DISTINCT province) FROM institution AS T1
SELECT count(DISTINCT province) FROM institution AS T1
SELECT * FROM Warehouses
SELECT * FROM Warehouses WHERE capacity > 0
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
New York = 'New York City' SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = \"New York City\")
Boxes.where(value > 150).select(contents)
Boxes[Warehouse] WHERE Value > 150 CONTENTS
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING count(*) > 100
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses WHERE capacity != 'null'
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(Value) FROM Boxes AS T1
SELECT avg(value) FROM boxes AS T1
SELECT DISTINCT Contents FROM Boxes AS T1
SELECT DISTINCT Contents FROM Boxes AS T1
SELECT count(DISTINCT contents) FROM boxes;
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses AS T1
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE capacity > 0
SELECT code FROM boxes WHERE warehouse IN (1 , 2)
Chicago : 123456 New York : 789012
Chicago : 40000 New York : 50000 Total : 90000 + 50000 = 140000
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
Chicago : New York : boxes : contents
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago") INTERSECT SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
Not found
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' OR T2.contents = 'Scissors'
Distinct Wares WHERE Contents IN ('Rocks', 'Scissors')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
boxes WHERE contents = 'Rocks' INTERSECT boxes WHERE contents = 'Scissors' WAREHOUSES.location
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value LIMIT 1;
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING avg(T2.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
Total_value_sum = sum(value) , count(*) = count(contents) FROM boxes GROUP BY contents TYPE BOXES.total_value_sum = sum(value) , count(*) = count(contents) FROM boxes GROUP BY contents TYPE BOXES.total_value_sum , count(*) = count(contents) FROM boxes GROUP BY contents TYPE box CONTENTS.total_value_sum , count(*) = count(contents) FROM boxes GROUP BY contents TYPE box CONTENTS.count(*) , count(*) = count(contents) FROM boxes GROUP BY contents TYPE box BOXES.count(*) , count(*) = count(contents) FROM boxes GROUP BY contents TYPE box
SELECT sum(value) , count(*) FROM boxes GROUP BY contents;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses WHERE code IN (SELECT code FROM boxes)
SELECT sum(capacity) FROM Warehouses;
SELECT T2.location , max(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT T1.location , max(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location HAVING max(T2.value) != 0
SELECT T1.code , count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING count(*) >= 0
Count(*) AS count_boxes_per_warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT LOCATION) FROM warehouses WHERE capacity > 100
SELECT count(DISTINCT T1.code) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
Chicago = 'IL' code from warehouses table
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT code FROM warehouses WHERE capacity > (SELECT avg(capacity) FROM warehouses)
SELECT warehouse FROM boxes GROUP BY warehouse HAVING count(*) > capacity
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
SELECT count(*) FROM university WHERE state = 'IL' OR state = 'OH'
max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT home_conference FROM university WHERE home_conference != "null"
SELECT DISTINCT home_conference FROM university AS T1;
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) LIMIT 1;
SELECT home_conference FROM university WHERE enrollment = (SELECT min(enrollment) FROM university)
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT T3.major_name , T2.rank FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = \"Augustana College\"
SELECT T3.rank , T2.major_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = "Augustana College"
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.majord_id WHERE T3.major_name = \"Accounting\" AND T2.rank = 1;
SELECT T3.university_name , T3.city , T3.state FROM university AS T3 JOIN major AS T2 ON T3.university_id = T2.university_id JOIN major_ranking AS T1 ON T2.major_id = T1.major_id WHERE T1.rank = 1 AND T2.major_name = \"Accounting\"
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1 )
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM overall_ranking WHERE rank 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.major_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.major_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id IN ( SELECT T3.major_id FROM major AS T3 JOIN major_ranking AS T4 ON T3.major_id = T4.major_id WHERE T4.rank = 3 )
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T1.university_id = T3.university_id WHERE T2.major_code = \"Accounting\" AND T3.rank >= 3
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank < 5;
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank < 5
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE 'G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T2.title IN (SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.code)
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T2.Title IN (SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.code)
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != ""
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating > 3)
SELECT count(DISTINCT title) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT count(DISTINCT title) FROM Movies WHERE code IN (SELECT movie FROM MovieTheaters)
SELECT count(DISTINCT name) FROM Movietheaters AS T1
SELECT count(DISTINCT code) FROM Movietheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating IN ('G', 'PG')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Cinema Odeon' OR T1.Name = 'Cinema Imperial'
Odeon Imperial Theaters
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T2.Name = 'Imperial'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' AND T2.name = 'Imperial'
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT title FROM Movies ORDER BY title ASC
SELECT title FROM movies ORDER BY title ASC
SELECT title FROM Movies ORDER BY rating ASC
SELECT title FROM movies ORDER BY rating ASC
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Theaters AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T2.movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Title ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , rating FROM Movies GROUP BY rating;
rating_count = SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title IN (SELECT T3.Title FROM Movies AS T3 JOIN MovieTheaters AS T4 ON T3.Code = T4.Movie)
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name IN (SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code)
SELECT Name FROM MovieTheaters WHERE Movie != SELECT Code FROM Movies ORDER BY Movie ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM MovieTheaters WHERE movie NOT IN (SELECT code FROM Movies)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Title FROM Movies
SELECT title FROM movies
SELECT count(*) FROM (SELECT DISTINCT Rating FROM Movies)
SELECT count(DISTINCT Rating) FROM Movies WHERE Rating != 'Not Applicable'
SELECT * FROM Movies WHERE Rating != 'R' ORDER BY Rating ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT * FROM Movies WHERE Rating != 'R'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T2.Weight) FROM Shipment AS T1 JOIN PACKAGE AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Sender = 'Leo Wong' AND T2.Reipient = 'Leo Wong'
SELECT sum(T2.Weight) FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T2.Sender = 'Leo Wong' AND T2.Recipient = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT POSITION FROM employee WHERE Name = 'Amy Wong'
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = "Physician"
SELECT T1.Level FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employee WHERE T2.position = 'Physician'
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'Leo Wong' AND T2.recipient = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = \"Leo Wong\" AND T1.sender = \"Leo Wong\"
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment JOIN client AS T3 ON T2.recipient = T3.accountnumber WHERE T3.name = 'Leo Wong' AND T2.sender = 'Leo Wong'
SELECT T1.contents FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Leo Wong' OR T3.name = 'Leon Wong'
SELECT DISTINCT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'Leo Wong' AND T2.recipient = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Ogden Wernstrom' AND T2.name = 'Leo Wong'
SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN Employee AS T3 ON T3.employeeid = T1.sender WHERE T3.name = "Ogden Wernstrom" AND T2.recipient = "Leo Wong" UNION SELECT count(*) FROM Package AS T1 JOIN Shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN Employee AS T3 ON T3.employeeid = T1.sender WHERE T3.name = "Ogden Wernstrom" AND T2.recipient = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.contents FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%' ORDER BY T1.weight DESC LIMIT 1
John = (SELECT packagenumber , weight FROM package WHERE sender = 'John' UNION SELECT packagenumber , weight FROM package WHERE recipient = 'John') ; SELECT packagenumber , weight FROM package WHERE sender = 'John' UNION SELECT packagenumber , weight FROM package WHERE recipient = 'John' ; SELECT packagenumber , weight FROM package WHERE sender = 'John' UNION SELECT packagenumber , weight FROM package WHERE recipient = 'John' ;
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber ORDER BY COUNT(*) ASC LIMIT 1;
SELECT min(weight) , sender FROM package GROUP BY sender ORDER BY weight ASC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T2.sender HAVING count(*) > 1;
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T2.Recipient HAVING COUNT(*) > 1;
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM has_clearance AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T2.manager = T3.employeeid WHERE T3.name = 'Phillip J. Fry'
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT date FROM shiptime
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars"
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.manager = T3.employeeid WHERE T2.name = "Turanga Leela"
Mars_shipments = (SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = \"Mars\") UNION SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.position = \"Manager\" AND T2.name = \"Turanga Leela\"
SELECT T2.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = "Mars" AND T2.name = "Turanga Leela"
SELECT T1.name , sum(T2.shipment) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.shipment) > 0
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
Total Weight = Sum(Weight) FROM Package WHERE Shipments IN (SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = "Mars")
Total weight of all packages shipped on Mars = sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT T1.name , T2.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T2.shipment = ( SELECT * FROM shipment ORDER BY date DESC LIMIT 1 )
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipmentid GROUP BY T1.planetid HAVING sum(T2.weight) > 0.5
SELECT T1.name FROM planet AS T1 JOIN shipto AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30;
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet JOIN shipment AS T3 ON T2.employee = T3.manager GROUP BY T1.planetid HAVING sum(T3.weight) > 30;
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN client AS T3 ON T3.accountnumber = T1.recipient WHERE T3.name = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT T1.packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = "Omicron Persei 8" OR T1.sender IN (SELECT T4.accountnumber FROM client AS T4 JOIN has_clearance AS T5 ON T5.employeeid = T4.employeeid JOIN planet AS T6 ON T6.planetid = T5.planet)
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 29
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' )
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planet WHERE T3.name = 'Omega III'
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet GROUP BY T2.planet HAVING count(*) = 1
SELECT T2.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T3.employee FROM employee AS T3 JOIN has_clearance AS T4 ON T3.employeeid = T4.employee)
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id WHERE T2.title != ''
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id
title = title , developers = developers ORDER BY units_sold_millions DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_games = game.sort_by_units_sold_millions DESC SELECT title , developers FROM game ORDER BY sort_by_units_sold_millions DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(units_sold_millions) FROM game WHERE platform_id NOT IN (SELECT platform_id FROM platform WHERE platform_name = \"Nintendo\")
SELECT avg(units_sold_millions) FROM game WHERE platform_id NOT IN (SELECT platform_id FROM platform WHERE platform_name = \"Nintendo\")
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
max(rank_of_the_year) , min(rank_of_the_year)
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE rank_of_the_year < 2
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.player_name , T1.rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T2.game_id = T3.game_id WHERE T3.title = "Super Mario World"
SELECT T2.Player_name , T2.Rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T3.Title = \"Super Mario World\"
SELECT DISTINCT T2.Developers FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = \"Auburn\"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Auburn'
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = \"Guard\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\";
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
platform(platform_name, market_district) WHERE market_district IN ('Asia', 'USA')
platforms_in_asia_or_usa = (SELECT T1.platform_name FROM platform AS T1 JOIN game AS T2 ON T1.platform_id = T2.platform_id WHERE T1.Market_district = \"Asia\" OR T1.Market_district = \"USA\")
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise HAVING COUNT(*) > 0
franchise_counts = ( SELECT count(*) , franchise FROM game GROUP BY franchise )
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2;
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T2.If_active = 1 INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\" AND T2.If_active = 1
if College = \"Oklahoma\" OR College = \"Auburn\" then T1.Title end
SELECT DISTINCT Franchise FROM game AS T1
SELECT DISTINCT franchise FROM game WHERE title != \"null\"
SELECT title FROM game WHERE game_id NOT IN ( SELECT T1.game_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE rank_of_the_year = \"Guard\")
sorted_press = sorted(press, key=lambda x: x.year_profits_billion, reverse=True) press_list = [name for name in sorted_press] print(press_list)
sorted_press = sorted(press , 1)descending for name in sorted_press : print(name)
SELECT name FROM press WHERE YEAR_profits_billion > 15000000 OR MONTH_profits_billion > 10000000
SELECT name FROM press WHERE year_profits_billion > 15000000 UNION SELECT name FROM press WHERE month_profits_billion > 10000000
avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(month_profits_billion) , max(year_profits_billion) , name FROM press GROUP BY name;
Press_Name = (SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1)
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
max_monthly_profit = max(month_profits_billion) min_monthly_profit = min(month_profits_billion) press_id_of_max_monthly_profit = select press_id FROM press ORDER BY month_profits_billion DESC LIMIT 1 press_id_of_min_monthly_profit = select press_id FROM press ORDER BY month_profits_billion ASC LIMIT 1 max_monthly_profit , min_monthly_profit , max_monthly_profit.press_id_of_max_monthly_profit , max_monthly_profit.press_id_of_min_monthly_profit
SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT count(*) FROM author WHERE age BETWEEN 1 AND 29;
SELECT count(*) FROM author WHERE age < 30.0
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
sorted_title = book.Sort_by_Release_Date() print(sorted_title)
sorted_title = book.Sort_by_Release_date DESC SELECT title FROM book ORDER BY Sort_by_Release_date DESC
SELECT count(*) , book.Book_Series FROM book GROUP BY book.Book_Series HAVING count(*) > 0
book_series_count = (SELECT count(*) , book_series FROM book GROUP BY book_series)
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
best_books = book.order_by(Sale_Amount DESC) LIMIT 5 for book in best_books: print(f"Title: {book.Title} , Release date: {book.Release_date}")
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500 GROUP BY book_series HAVING count(*) >= 2
books_above_1000 = book.Sale_Amount > 1000 books_below_500 = book.Sale_Amount < 500 book_series_containing_both = (SELECT Book_Series FROM book AS T1 JOIN books_above_1000 AS T2 ON T1.Sale_Amount = T2.Sale_Amount INTERSECT SELECT Book_Series FROM book AS T1 JOIN books_below_500 AS T2 ON T1.Sale_Amount = T2.Sale_Amount)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM author AS T2 JOIN book AS T1 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.title , T2.name , T2.press_id FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3;
SELECT T1.Title , T2.Name , T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T2.sale_amount) > 0
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T2.sale_amount) > 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1 SELECT T3.name , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1 ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , COUNT(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Press_ID HAVING COUNT(*) > 1000
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\")
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = "Accor")
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2;
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2;
SELECT count(*) FROM Authors AS T1;
SELECT DISTINCT author_name FROM authors
SELECT author_name , other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents AS T1
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = \"Travel to Brazil\"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Bianka Cummings\"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes AS T1
SELECT T1.next_process_id , T2.process_name , T2.process_description FROM Business_processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_id = 9
SELECT T1.process_name FROM business_processes AS T1 JOIN processes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_id = 9;
SELECT count(*) FROM Process_outcomes AS T1
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status AS T1
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff_in_processes AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id
SELECT staff_id , staff_details FROM staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles AS T1
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM (SELECT document_id FROM Documents_processes GROUP BY document_id)
SELECT process_id FROM documents_processes AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id
SELECT document_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM Documents_processes)
SELECT process_id FROM Process_outcomes WHERE process_outcome_code = 'No Document'
SELECT T1.process_outcome_description , T1.process_status_description FROM Process_outcomes AS T1 JOIN Process_statuses AS T2 ON T1.process_status_code = T2.process_status_code WHERE T1.process_outcome_code = 0
SELECT T4.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id JOIN process_outcomes AS T4 ON T3.process_outcome_code = T4.process_outcome_code WHERE T1.document_name = \"Travel to Brazil\"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id HAVING count(*) > 1
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.staff_id = 9
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Processes AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) > 0
SELECT T1.staff_role_code , count(*) FROM Ref_Staff_Roles AS T1 JOIN Staff_in_Processes AS T2 ON T1.staff_role_code = T2.staff_role_code GROUP BY T1.staff_role_code HAVING count(*) > 0
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3;
SELECT count(*) FROM agencies AS T1;
SELECT count(*) FROM agencies AS T1;
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM Clients AS T1
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) > 0
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agent_id , T1.agent_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agent_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.client_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM clients GROUP BY sic_code HAVING count(*) > 100
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 1
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES AS T1;
SELECT count(*) FROM INVOICES AS T1
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT client_id , count(*) FROM invoices GROUP BY client_id;
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T3.agent_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T3.agent_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT T1.meeting_type , T1.other_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT * FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings AS T1
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.payment_details FROM payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT T1.invoice_id FROM payments AS T1 JOIN INVOICES AS T2 ON T1.invoice_id = T2.invoice_id )
SELECT count(*) FROM payments AS T1
SELECT count(*) FROM payments AS T1
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id;
SELECT DISTINCT invoice_id , invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T1.invoice_id , count(*) FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*) , T1.invoice_id FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1
SELECT count(*) FROM staff AS T1;
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.staff_details , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_details
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
outcome_count: SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome;
SELECT client_id , count(*) FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM Meetings GROUP BY client_id;
SELECT T1.meeting_type , count(*) FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T2.meeting_outcome , T2.meeting_type , T1.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN clients AS T3 ON T3.client_id = T2.client_id WHERE T3.client_details IN (SELECT client_details FROM clients WHERE client_id IN (SELECT client_id FROM staff_in_meetings)) AND T2.billable_yn = 'Y'
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT count(*) , meeting_id FROM staff_in_meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 1
SELECT T1.client_id , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM invoices AS T3 JOIN clients AS T4 ON T3.client_id = T4.client_id;
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN staff_in_meetings AS T3 ON T2.meeting_id = T3.meeting_id WHERE T2.meeting_type = 'Invoice' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_type = 'Invoice' GROUP BY T1.client_id HAVING count(*) = 1
{ "sql": "SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id"} {"staff_details": {"client_details": "Staff details"}
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details , T2.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
