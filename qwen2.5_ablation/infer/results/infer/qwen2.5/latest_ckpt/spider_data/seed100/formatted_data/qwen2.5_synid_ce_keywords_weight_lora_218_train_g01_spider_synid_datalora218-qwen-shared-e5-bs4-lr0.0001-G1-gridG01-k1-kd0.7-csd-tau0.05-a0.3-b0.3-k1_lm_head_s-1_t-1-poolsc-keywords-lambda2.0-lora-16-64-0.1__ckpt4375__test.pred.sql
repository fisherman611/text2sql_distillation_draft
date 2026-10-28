SELECT count(*) FROM club AS T1
SELECT count(*) FROM club AS T1;
SELECT name FROM club ORDER BY name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
club.name WHERE manager <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
Ascending Order of Wins Count: SELECT Name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
from player WHERE Earnings > 1200000 GROUP BY Country HAVING sum(Earnings) >= 1200000
SELECT country FROM player WHERE wins_count > 2 ORDER BY earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 1 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce'
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
count(*) , manufacturer FROM club GROUP BY manufacturer;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) >= 2;
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1
SELECT count(DISTINCT country) FROM player AS T1
SELECT Earnings FROM player WHERE Country = \"Australia\" OR Country = \"Zimbabwe\"
SELECT Earnings FROM player WHERE Country = 'Australia' UNION SELECT Earnings FROM player WHERE Country = 'Zimbabwe'
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T1.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.order_id , count(*) , T2.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT min(T1.date_order_placed) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) = 1 {}
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 ORDER BY T1.date_order_placed ASC LIMIT 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2 )
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T3 ON T2.product_id = T3.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN products AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T1.order_id , sum(T2.product_price * T3.order_item_status_code) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price * T3.order_item_status_code) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id
SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T1.order_id = T3.order_id.date_order_placed
SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T2.order_id = T3.order_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T1.shipment_id = T3.shipment_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T3.product_id = T1.product_id WHERE T1.shipment_id IN ( SELECT T4.shipment_id FROM shipments AS T4 JOIN orders AS T5 ON T4.order_id = T5.order_id )
{ "sql": "SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id"} {"order_status_code": "Shipped", "shipment_tracking_number": "Q456789"}
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = \"Shipped\" AND T1.order_status_code = \"Ordered\"
SELECT T3.product_name , T2.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.order_status_code = \"Shipped\"
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.order_id = T2.order_id WHERE T1.shipment_id != -1;
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id WHERE T3.gender_code = 'F'
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T2.order_id = T3.order_id WHERE T3.gender_code = \"F\"
SELECT invoice_status_code FROM INVOICES WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T2.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT order_id , date_order_placed , sum(total_cost) FROM orders GROUP BY order_id HAVING sum(total_cost) > 0
SELECT T1.order_id , T1.date_order_placed , sum(T2.order_item_amount) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_item_amount) > 0
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.order_status_code = 'Completed' OR T1.order_status_code = 'Shipped' OR T1.order_status_code = 'Canceled' OR T1.order_status_code = 'Refunded' OR T1.order_status_code = 'Delivered'
SELECT count(DISTINCT customer_id) FROM orders;
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id ORDER BY T2.order_item_status_code ASC
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods AS T1
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN products AS T3 ON T1.product_id = T3.product_id
SELECT T2.customer_first_name , T3.product_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T2.customer_first_name HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 1;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 0
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT min(gender_code) FROM customers GROUP BY gender_code)
SELECT T1.email_address , T2.town_city , T2.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT T2.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_date HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments AS T1
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM (SELECT DISTINCT Digital_terrestrial_channel FROM channel)
SELECT title FROM program ORDER BY start_year DESC
SELECT T2.name FROM director_admin AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T2.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.name , t1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id HAVING count(*) > 1;
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE T1.title = 'Dracula'
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T2.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
channel_name = (SELECT T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age > 60)
channel_id,name FROM channel WHERE channel_id NOT IN (SELECT T1.channel_id FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.name = 'Hank Baskett')
SELECT count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id
SELECT transmitter FROM radio ORDER BY ERP_kW ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
tv_show.tv_show_name , tv_show.original_airdate FROM tv_show AS t1 JOIN city_channel_tv_show AS t2 ON t1.tv_show_id = t2.tv_show_id
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) >= 3;
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T3.transmitter , T1.city FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id
SELECT T3.transmitter , T2.station_name FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id ORDER BY T2.EP_RK DESC
SELECT T3.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.id GROUP BY T3.transmitter HAVING count(*) > 0
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Top_Speed > 6000 ORDER BY Power DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship LIKE "United States"
SELECT T1.Name , T2.Driver_ID FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Driver_ID , COUNT(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
Zhuzhou = "Zhuzhou" builder = "Zhuzhou" max_power = max(power) / total_production = avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY count(*) LIMIT 1;
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.build_year = 2012;
SELECT count(DISTINCT T1.Driver_ID) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Build_Year = 2012;
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT Model FROM vehicle GROUP BY Model HAVING SUM(Top_Speed) > 150 OR SUM(total_production) > 100
SELECT MODEL FROM vehicle WHERE Total_Production > 100 UNION SELECT MODEL FROM vehicle WHERE Top_Speed > 150;
SELECT Model , Build_Year FROM vehicle WHERE MODEL LIKE '%DJ%'
SELECT MODEL , BUILD_YEAR FROM vehicle WHERE MODEL LIKE '%DJ%'
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
Two drivers can drive one vehicle at most once, so we need to count how many times each vehicle has been driven by two drivers or been manufactured by 'Ziyang'. We will first count the number of vehicles driven by two drivers and then check if any of these vehicles were manufactured by 'Ziyang'. Counting Vehicles Driven by Two Drivers: SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 Checking if any of these vehicles were manufactured by 'Ziyang': SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN vehicle_driver AS T4 ON T3.Vehicle_ID = T4.Vehicle_ID WHERE T4.Driver_ID = (SELECT Driver_ID FROM driver WHERE Citizenship = 'Ziyang') INTERSECT SELECT T5.Vehicle_ID , T5.Model FROM vehicle AS T5 JOIN vehicle_driver AS T6 ON T5.Vehicle_ID = T6.Vehicle_ID WHERE T6.Driver_ID = (SELECT Driver_ID FROM driver WHERE Citizenship = 'Ziyang') GROUP BY T5.Vehicle_ID HAVING COUNT(*) >= 2 Union both checks together to ensure both conditions are met. If either condition fails, no vehicles meet both criteria.
Two vehicles can be driven by exactly two drivers if there exists at least one pair of vehicles whose build year matches Ziyang. Let's find such pairs: 1. Find all vehicles with build year matching Ziyang 2. For each vehicle, find its id and model 3. Check if there are exactly two drivers for each vehicle Let's do this check: SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2 INTERSECT SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Builder = \"Ziyang\" GROUP BY T1.Vehicle_ID HAVING count(*) = 2 This should give you the required result.
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Name = "Jeff Gordon" GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2
Jeff Gordon has driven 3 times more than any other driver. Therefore, the answer is: SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 422
SELECT count(*) FROM vehicle WHERE max(Top_Speed) != \"null\";
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 1
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 1
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1
SELECT count(*) FROM Exams AS T1
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
Distinct(Subject_Code) ASC Exam_Name ORDER BY Subject_Code ASC
SELECT exam_name , exam_date FROM exams WHERE subject_code <> 'Database'
SELECT exam_date , exam_name FROM EXAMS WHERE subject_code <> 'Database'
SELECT exam_date FROM EXAMS WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM EXAMS WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code;
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.comments = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Valid_Answer_ID = T2.Valid_Answer_ID ORDER BY T2.Satisfactory_YN DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Satisfactory_YN FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Satisfactory_YN ORDER BY count(*) DESC;
SELECT T1.first_name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.first_name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC"} {"email_addresses": ["student1@example.com", "student2@example.com"], "dates_of_answers": ["date1", "date2"]}
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2;
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.question_id ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU <> 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
Gender_MFU | count(*) ------------------------- F MU | 105748 M MU | 96324 Other | 21476
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu;
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_answers)
Both "Normal" and "Absent" are invalid answers according to the given options. Therefore, there are no students who answered both of these questions. The answer should be "No answer found".
SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Satisfactory_YN = "Yes" AND T2.Comments = "Normal" INTERSECT SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Satisfactory_YN = "Yes" AND T2.Comments = "Absent"
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products AS T1;
SELECT count(*) FROM products AS t1;
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = "Monitor"
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
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
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = \"Hardware\" ORDER BY product_price ASC LIMIT 1;
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2;
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
SELECT customer_name FROM customers ORDER BY payment_method_code ASC LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id
SELECT count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = 'Jeromy'
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "Monitor"
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor Product'
SELECT count(*) FROM customer_orders AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.order_status_code = 'Completed'
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id GROUP BY customer_id HAVING count(*) > 1 {}
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T2.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING sum(T2.order_quantity) > 6 OR count(*) >= 3
order_ids = (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 3 INTERSECT SELECT order_id FROM order_items GROUP BY order_id HAVING sum(order_quantity) > 6)
SELECT count(*) FROM building AS T1
SELECT count(*) FROM building AS T1
ascending_order = (SELECT name FROM building ORDER BY number_of_stories ASC)
sorted(building.Name) BY building.Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT avg(Population) FROM region AS T1
SELECT avg(population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region WHERE AREA > 10000
region.with_largest_population().capital()
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT name FROM region ORDER BY area DESC LIMIT 5
sorted(region.area) LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.Name , T1.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.region_id
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Address , T1.Capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT T1.number_of_stories FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM region EXCEPT SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
building(building_id) WHERE number_of_stories > 20 AND number_of_stories < 15 INTERSECT building(building_id) WHERE number_of_stories > 20 AND number_of_stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT address FROM building AS T1;
SELECT DISTINCT address FROM building
def completed_years_by_stories(): completed_years = sorted(building.completed_year , builtins_stories) return completed_years
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details
SELECT count(*) FROM customers_and_services
SELECT count(*) FROM services AS t1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
Analytical_Layer_Type_Code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT t3.service_details FROM customers AS t1 JOIN customer_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_details HAVING count(*) > 3
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 3
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t2.service_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t2.service_id ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t3.service_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services AS t1
SELECT count(*) FROM customers_and_services AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t1.service_id = t3.service_id GROUP BY t1.service_id HAVING count(*) > 0
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%'
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t3.service_id = t2.service_id WHERE t1.customer_details = \"Hardy Kutch\" OR t2.status_code = \"good\"
SELECT t3.service_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" OR t2.status_code = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad" INTERSECT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id JOIN channels AS t3 ON t2.channel_id = t3.channel_id WHERE t3.channel_details = "15 ij"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = "Success"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.service_id WHERE T3.integration_platform_details = "Fail"
SELECT customers_and_services_details FROM customers_and_services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE status_code = 'unsatisfied' ) INTERSECT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE status_code = 'unsatisfied' )
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id WHERE t2.customer_id IN (SELECT customer_id FROM customers_and_services WHERE services_and_channels_details = "unsatisfied")
SELECT count(*) FROM Vehicles AS T1
SELECT count(*) FROM Vehicles AS T1
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE MODEL_YEAR = 2013 OR MODEL_YEAR = 2014
SELECT name , TYPE_of_powertrain , cost_per_25_miles FROM Vehicles WHERE MODEL_YEAR BETWEEN 2013 AND 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 AND model_year = 2013;
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 AND model_year = 2014 GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) > 0
Powertrain_type_count: SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(Amount) , max(Amount) , avg(Amount) FROM Vehicles AS T1
Minimum: min(Amount) Maximum: max(Amount) Average: avg(Amount) Vehicles id
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Average_annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount AS T1;
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) != 0
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 30
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_loans AS T1
SELECT avg(amount_of_loan) FROM Student_loans AS T1;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN_Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2 {}
Two or more classes = count(*) >= 2 Less than two detentions = count(*) <= 1 SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1 {}
Teachers(teacher_details) EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%' INTERSECT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_LOANS)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_LOANS)
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.teacher_details , T1.teacher_id FROM_CLASSES AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id"} {"bio_data": "This is an example of the student's biography"}
SELECT T1.student_details , T2.biography FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"}
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"}
SELECT T1.behaviour_monitoring_details , COUNT(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) EXCEPT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) SELECT T1.bio_data ,
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details IN (SELECT T3.behaviour_monitoring_details FROM Students AS T3 JOIN Student_Events AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 3) AND T1.student_details != T4.student_details
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.achievement_details , T2.Achievement_Type_Description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers AS T1 JOIN Student_Events AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Teachers AS T1 JOIN CLASS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN ( SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id )
{ "sql": "SELECT date_of_transcript , transcript_details FROM Transcripts AS T1"} {"date_of_transcript" : ["2022-04-15","This is a sample transcript.", "This is a sample transcript.", "This is a sample transcript."], "transcript_details" : ["This is a sample transcript.", "This is a sample transcript.", "This is a sample transcript."]}
SELECT date_of_transcript , transcript_details FROM transcripts
{ "sql": "SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"} {"sql": "SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code"}
{ "sql": "SELECT T1.achievement_type_code , T2.student_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id"} {"sql": "SELECT T1.achievement_type_code , T2.student_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id"}
SELECT datetime_detention_start , datetime_detention_end FROM Detention AS T1
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%' OR student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id IN (SELECT T1.student_id FROM Students AS T3 JOIN Teachers AS T4 ON T3.student_id = T4.student_id WHERE T4.teacher_id = T1.teacher_id)
SELECT T1.student_details , T2.teacher_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T2.teacher_id = T3.teacher_id WHERE T2.student_id IN ( SELECT student_id FROM Students AS T4 JOIN Classes AS T5 ON T4.student_id = T5.student_id WHERE T5.teacher_id = T3.teacher_id )
SELECT count(*) , teacher_id FROM CLASS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T2.other_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_LOANS)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_LOANS )
SELECT min(date_of_loan) FROM Student_Loans AS T1
SELECT min(date_of_loan) FROM Student_Loans AS T1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details LIKE '%maximum value%' ORDER BY T1.date_of_transcript DESC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id ORDER BY T2.transcript_id LIMIT 1;
SELECT T1.teacher_details FROM Teachers AS T1 JOIN CLASSAS_TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id IN (SELECT student_id FROM Transcripts ORDER BY date_of_transcript ASC LIMIT 1)
SELECT sum(amount_of_loan) , student_id FROM Student_loans GROUP BY student_id;
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > 0
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.detention_type_code = \"Detention\"
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details != \"Student Details\";
SELECT T1.student_address_id , T2.address_type_code FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.student_address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_details FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_loans)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_loans)
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2 )
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id IN ( SELECT T3.student_id FROM Transcripts AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id WHERE T4.student_id = 2 )
SELECT datetime_detention_start FROM Detention AS T1 UNION SELECT datetime_detention_start FROM Detention AS T2 WHERE T2.detention_type_code = \"Pendentence\";
SELECT datetime_detention_start FROM Detention AS T1;
SELECT Name FROM AUTHOR AS T1;
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.isbn , count(*) FROM books AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT count(*) , isbn FROM books_order GROUP BY isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) > 0
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T2.ISBN ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn ORDER BY T2.amount DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title HAVING count(*) > 100
SELECT DISTINCT T1.Title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder > (SELECT dateorder FROM books_order GROUP BY dateorder ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient;
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) != 0
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
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book AS t1
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT max(SalePrice - PurchasePrice) FROM BOOK ORDER BY SalePrice - PurchasePrice DESC LIMIT 1;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T2.SalePrice) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.Name = 'George Orwell'
SELECT avg(T2.SalePrice) FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.author WHERE T1.Name = 'George Orwell'
SELECT T2.SalePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idauthor = T2.author WHERE T1.Name = \"Plato\"
SELECT T2.SalePrice FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name = 'Plato'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idauthor WHERE T3.Name = 'George Orwell' ORDER BY T1.SalePrice LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato' AND T1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.Title FROM BOOK AS T1 JOIN AUTHOR_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Author = \"Plato\" AND T1.SalePrice < (SELECT avg(SalePrice) FROM BOOK)
SELECT T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.title = "Pride and Prejudice"
SELECT T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name LIKE '%Plato%'
SELECT T1.Title FROM BOOK AS T1 JOIN AUTHOR_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM orders AS t1 JOIN book AS t2 ON t1.idorder = t2.id ORDER BY t2.title LIKE '%Pride and Prejudice%' LIMIT 1;
SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'Pride and Prejudice' AND T1.dateorder > '1800-01-01' INTERSECT SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'Pride and Prejudice' AND T1.dateorder < '1800-01-01'
SELECT idorder FROM books ORDER BY title IN ('Pride and Prejudice', 'The Little Prince') IDORDER
SELECT idorder FROM books_order WHERE isbn IN ( SELECT t1.isbn FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = 'Pride' INTERSECT SELECT t1.isbn FROM book AS t1 JOIN author_book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = 'Prejudice') INTERSECT SELECT idorder FROM books_order WHERE isbn IN ( SELECT t1.isbn FROM book AS t1 JOIN book_order AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = 'Pride' INTERSECT SELECT t1.isbn FROM book AS t1 JOIN book_order AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t3.name = 'The Little Prince')
SELECT T1.ISBN FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' AND T3.idclient = 'James Smith' ORDER BY T1.ISBN ASC;
Peter Doe : 9780302461534 , 9780302461535 James Smith : 9780302461534 , 9780302461535 ISBN : 9780302461534
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T1.idclient = 'James Smith'
SELECT T2.Title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.book = T4.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.Title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T3.book = T4.isbn WHERE T1.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = 'Pride and Prejudice'
SELECT count(*) FROM book AS T1;
SELECT Title FROM book ORDER BY Title
SELECT title FROM book ORDER BY Pages DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) FROM book AS T1
SELECT title FROM book WHERE TYPE <> 'Poet'
SELECT avg(Rating) FROM review AS T1
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT max(chapters) FROM book ORDER BY chapters DESC LIMIT 1;
SELECT rank FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id ORDER BY T2.pages LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1;
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = \"Novel\"
Type , count(*) FROM book GROUP BY TYPE HAVING count(*) > 50
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC LIMIT 1000000;
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T2.Book_ID ORDER BY COUNT(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
book WHERE Chapters > 75 INTERSECT book WHERE Chapters < 50</book> TYPE BOOK_TYPES
SELECT count(DISTINCT TYPE) FROM book AS T1
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT count(*) FROM customer ORDER BY Name LIMIT 1;
SELECT count(*) FROM customer ORDER BY Name ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality LIKE "England%" OR Nationality LIKE "Australia%"
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1.0
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MembersHIP DESC LIMIT 1;
Nationalities, count of customers SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality HAVING COUNT(*) > 100
Nationalities and their count: For each nationality, count how many customers are associated with it: SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T1.Card_Credit < 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T1.Card_Credit > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer AS T2 ON T1.Nationality = T2.Nationality WHERE T1.Card_Credit > 50 AND T2.Card_Credit < 75;
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN branch AS T3 ON T1.branch_id = T3.branch_id
{ "sql": "SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.Dish_Name ORDER BY T1.quantity DESC"} {"sql": "SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.Dish_Name ORDER BY T1.quantity DESC"}
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN dish AS T3 ON T1.Dish_Name = T3.Dish_Name ORDER BY T1.Quantity DESC
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name ORDER BY sum(T1.Quantity) ASC;
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name ORDER BY sum(T1.Quantity) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1;
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name HAVING sum(T1.quantity) > 1;
SELECT DISTINCT manager FROM branch AS T1
SELECT DISTINCT manager FROM branch AS T1;
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
Nationality , count(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2;
SELECT T1.Name , T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2018
SELECT t3.name FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id JOIN member AS t3 ON t2.member_id = t3.member_id WHERE t1.club_name = \"Houston\"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
Nationalities of members older than 22 and younger than 19: SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id GROUP BY T2.club_id HAVING count(*) >= 1 AND count(*) <= 5000
club_name_contains_state = (club.club_name LIKE '%state%')
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN document_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) >= 1 AND count(*) <= 5000
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name LIKE '%Best for 2000%'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM Document_objects
SELECT document_object_id FROM Document_objects
SELECT parent_document_object_id FROM Document_objects WHERE OWNER = \"Marlin\"
SELECT document_object_id FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin'
SELECT OWNER FROM Document_Objects WHERE OWNER = 'Marlin' INTERSECT SELECT OWNER FROM Document_Objects WHERE OWNER != 'Marlin'
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != -1
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID NOT IN (SELECT Parent_Document_Object_ID FROM Document_Objects)
SELECT count(*) FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT count(*) FROM Document_Objects WHERE OWNER = \"Marlin\"
SELECT document_object_id FROM Document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM Document_objects)
SELECT document_object_id FROM Document_objects WHERE parent_document_object_id != (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM Document_objects WHERE parent_document_object_id IN (SELECT document
document_id , count(*) FROM Document_objects GROUP BY document_id;
SELECT count(*) , parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id;
SELECT collection_name FROM collections AS T1;
SELECT collection_name FROM collections AS t1;
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.description = 'Nice' AND T1.parent_collection_id = (SELECT parent_collection_id FROM collections WHERE collection_name = 'Nice')
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.parent_collection_id = T2.parent_collection_id WHERE T2.collection_name = 'Nice'
SELECT Collection_Name FROM Collections WHERE Collection_ID NOT IN ( SELECT Parent_Collection_ID FROM Collections )
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM Document_objects GROUP BY document_object_id HAVING count(*) > 1;
SELECT document_object_id FROM Document_subsets GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = 'Ransom'
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) >= 1
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN DOCUMENT_SUBSET_MEMBERS AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT T1.document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_subsets AS T2 ON T1.related_document_object_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM Document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.related_document_object_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Owner = T2.Owner WHERE T1.Owner = "Braeden" AND T2.Owner = "Braeden"
Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_D, Collection_E, Collection_F Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden' union all Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Collection_A, Collection_B, Collection_C Braeden -> Document_Objects.Owner = 'Braeden
SELECT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden' GROUP BY T1.document_subset_name HAVING count(*) >= 1 AND count(*) <= 4
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden'
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id ;
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id , document_subset_name
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_subset_id , document_subset_name , count(*) FROM Document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T2.document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id HAVING count(*) >= 3
SELECT T1.document_subset_name , T2.document_object_id FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T2.document_object_id HAVING count(*) > 1
SELECT T2.collection_name FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
Count(*) , T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING COUNT(*) > 0
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT document_object_id FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Document_subject_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" AND T1.document_subset_details = \"Best for 2000\"
document_object_ids_in_subset_best_for_2000 = (SELECT DISTINCT t1.document_object_id FROM document_subsets AS t1 JOIN documents_in_collections AS t2 ON t1.document_subset_id = t2.document_subset_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t1.document_subset_name = 'Best for 2000') document_object_ids_in_collection_best = (SELECT DISTINCT t1.document_object_id FROM collections AS t1 JOIN document_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN document_objects AS t3 ON t2.document_object_id = t3.document_object_id WHERE t1.collection_name = 'Best')
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = \"Best\" EXCEPT SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = \"Best\" AND T1.collection_year = 2000
SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best for 2000'
Best_for_2000 = (SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best" INTERSECT SELECT document_object_id FROM collections WHERE collection_name = "Best")
document_subsets WHERE document_subset_name = 'Best for 2000' UNION SELECT document_object_id FROM documents_in_collections AS t1 JOIN document_subsets AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t1.collection_id = t3.collection_id WHERE t3.collection_name = 'Best' union select document_object_id from documents_in_collections AS t1 join document_subsets AS t2 on t1.document_object_id = t2.document_object_id join collections AS t3 on t1.collection_id = t3.collection_id where t3.collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collecrtion_subset_name = 'Best'
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collecrtion_subset_name = 'Best'
SELECT count(*) FROM Collections WHERE Collection_Name = 'Best'
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_id WHERE T2.collection_name = "Best in"
SELECT T1.collecrtion_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = 'Best'
count(*) FROM songs WHERE name LIKE '%Love%'
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
max_voice_sound_quality = (SELECT max(voice_sound_quality) FROM performance_score) min_voice_sound_quality = (SELECT min(voice_sound_quality) FROM performance_score)
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1songs_id = T2.id WHERE T2.language = 'english'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T1.name = "The Balkan Girls" AND T1.language = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100 AND stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) , languages FROM performance_score GROUP BY languages
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%" OR name LIKE "%is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code
SELECT count(*) FROM city AS T1
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state LIKE 'PA'
SELECT city_name FROM city WHERE state LIKE "PA%"
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state;
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
China = '中国' && city_code IN (SELECT city_code FROM city WHERE country = '中国') GROUP BY city_code HAVING count(*) > 0
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = 'Baltimore' )
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = 'Baltimore'
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country;
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 0
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT state FROM city GROUP BY state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code != 'USA'
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'F' AND state = 'PA'
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA'))
BAL : CHI 548.03 km
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.state = 'MA' AND T1.city2_code = 'Newark' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.state = 'MA' AND T1.city2_code = 'Boston'
SELECT distance FROM direct_distance WHERE city1_code = 46 AND city2_code = 27
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING avg(T2.distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING avg(T2.distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.distance < 1000 INTERSECT SELECT T1.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T1.distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'BAL'
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'BAL' UNION SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.state = 'BAL'
SELECT avg(T3.distance) FROM direct_distance AS T3 JOIN city AS T1 ON T3.city1_code = T1.city_code WHERE T1.state = 'MA' INTERSECT SELECT avg(T3.distance) FROM direct_distance AS T3 JOIN city AS T1 ON T3.city2_code = T1.city_code WHERE T1.state = 'CA' INTERSECT SELECT avg(T3.distance) FROM direct_distance AS T3 JOIN city AS T1 ON T3.city1_code = T1.city_code WHERE T1.state = 'CA' INTERSECT SELECT avg(T3.distance) FROM direct_distance AS T3 JOIN city AS T1 ON T3.city2_code = T1.city_code WHERE T1.state = 'CA'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' INTERSECT SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.state = 'MA'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T3.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code JOIN city AS T3 ON T1.city1_code = T3.city_code WHERE T2.state = 'IL' AND T1.distance = min(distance) AND T2.country = 'USA' WHERE T2.city_name != 'Chicago'
SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city2_code WHERE t2.city1_code = 'Boston' ORDER BY t2.distance DESC LIMIT 1;
city_name = (SELECT t1.city_name FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city_code WHERE t2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = city_code))
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code HAVING count(*) > 1
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code HAVING sum(T2.distance) > 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING avg(T2.distance) > 0.5
Linda Smith : 804 km Tracy Kim : 653 km
Linda Smith -> Tracy Kim Distance = 308.49 kilometers
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city_code WHERE T2.city1_code = (SELECT city1_code FROM city WHERE city_name = 'Linda Smith') ORDER BY T2.distance LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT distance FROM direct_distance WHERE city2_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' UNION SELECT city_code FROM city WHERE city_name = 'Los Angeles') INTERSECT SELECT distance FROM direct_distance WHERE city2_code = (SELECT city_code FROM city WHERE city_name = 'Los Angeles' UNION SELECT city_code FROM city WHERE city_name = 'Los Angeles') AND city_name = 'Linda Smith')
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = \"Linda\";
SELECT * FROM Sailors WHERE age > 30
Sailors WHERE age > 30;
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1;
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid IN (SELECT sid FROM reserves WHERE bid = 102)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM sailors)
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors)
SELECT DISTINCT name FROM Sailors WHERE age > (SELECT max(age) FROM Sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1;
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" UNION SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" UNION SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" OR T2.color = "blue"
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" OR T2.color = "blue"
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = \"red\" INTERSECT SELECT bid FROM boats WHERE color = \"blue\")
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" INTERSECT SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" AND T3.color = "blue"
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "red" INTERSECT SELECT T2.name , T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = "blue"
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN ( SELECT sid FROM Reserves )
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = \"Luis\")
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = \"Luis\")
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 GROUP BY T1.sid HAVING count(*) > 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3;
Oldest sailor = max(age) FROM sailors AS T1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM Sailors AS T1;
SELECT count(*) FROM Sailors WHERE sid != \"\"
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
DID: 1 SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors AS T1
SELECT avg(rating) , max(age) FROM sailors AS T1
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name;
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name;
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid HAVING count(*) > 100
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id;
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T3.name FROM Reserves AS T1 JOIN Boat AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T2.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id > 1 GROUP BY T2.name;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = \"red\" GROUP BY T1.rating;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = \"red\" GROUP BY T1.rating
Sorted by rating and age: SELECT name , rating , age FROM Sailors ORDER BY rating , age ASC
SELECT name , rating , age FROM sailors ORDER BY rating ASC , age ASC
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30
Sailors.query("SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.age BETWEEN 20 AND 30")
SELECT name FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE color = \"red\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE rating < (SELECT rating FROM Sailors WHERE color = \"red\"))
SELECT max(rating) FROM Sailors AS T1
SELECT max(rating) FROM Sailors AS T1;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
sorted_sailors = (SELECT name , age FROM sailors ORDER BY rating DESC)
SELECT name , age FROM sailors ORDER BY rating DESC LIMIT 100000
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC
Distinct(headphone_id) ORDER BY model ASC
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
most_headphones_class = (SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1)
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) >= 3;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) < 3
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone AS T1
SELECT count(DISTINCT Earpads) FROM headphone AS T1
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY price LIMIT 1;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY PRICE ASC LIMIT 1
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\"
SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
headphones.earpads EXCEPT SELECT earpads FROM headphone WHERE construction = 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < ( SELECT avg(price) FROM headphone )
store.sort_date_opened: name ASC
sorted(store.date_opened)
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(DISTINCT neighborhood) FROM store AS T1
count(*) , neighborhood FROM store GROUP BY neighborhood
count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT T1.name , count(*) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.store_id HAVING sum(T2.quantity) > 0 AND count(*) >= 1
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock WHERE headphone_id IN (SELECT headphone_id FROM headphone))
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT t1.Model FROM headphone AS t1 JOIN stock AS t2 ON t1.Headphone_ID = t2.Headphone_ID GROUP BY t1.Model ORDER BY sum(t2.quantity) DESC LIMIT 1;
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
store woodman SELECT count(*) FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id WHERE t2.name = 'Woodman'
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = 'Woodman'
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.author_id HAVING count(*) > 0
SELECT count(*) FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) >= 1000000
SELECT count(*) FROM paper AS T1
SELECT count(*) FROM paper AS T1
SELECT count(*) FROM affiliation AS T1
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
Columbia University has one paper published in year 2009. Therefore, the number of papers published in 2009 by Columbia University is 1.
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University' AND T1.year = 2009;
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR ASC
DISTINCT venue ORDER BY YEAR ASC
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T3.title , T2.paper_id FROM citation AS T1 JOIN paper AS T3 ON T1.cited_paper_id = T3.paper_id JOIN affiliation AS T2 ON T2 AFFILIATION_ID = T1.affiliation_id WHERE T2.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKeown\"
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'McKeown'
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Stanford University\" INTERSECT SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = \"Columbia University\"
SELECT T2.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Stanford' INTERSECT SELECT T2.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Columbia University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'Kathleen' AND T3.name = 'Rambow'
SELECT T3.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T3 ON T1.paper_id = T3.paper_id JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.email = 'Kathleen' AND T2.name = 'Rambow' AND T2.email = 'Owen'
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Mckeown\" EXCEPT SELECT author_id FROM author_list WHERE name = \"Rambow\")
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = 'McKeown') EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = 'Rambow')
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Mckeown', 'Kathleen') UNION SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Rambow', 'Owen')
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Mckeown', 'Kathleen') UNION SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Rambow', 'Owen')
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 50
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) = 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = \"A00-1002\"
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.title = 'A00-1002'
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t1.title = \"D12-1027\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027
SELECT T1.paper_id , COUNT(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.paper_id , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T1.cited_paper_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T2.title , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY COUNT(*) DESC LIMIT 10
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T3.author_id = T1.author_id WHERE T3.name = "McKeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = "McKeown" AND T3.email = "Kathleen"
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author_list AS t3 ON t2.paper_id = t3.paper_id WHERE t3.name = 'McKeown , Kathleen'
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author_list AS t3 ON t2.paper_id = t3.paper_id WHERE t3.name = 'Mckeown' AND t3.email = 'kathleen@mckeown.com'
SELECT T1.name , count(*) FROM AUTHOR AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.author_id = 401 INTERSECT SELECT T2.venue , T2.year FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.author_id = 402
SELECT T2.venue , T2.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.author_id IN ( SELECT author_id FROM author WHERE name = \"Mckeown , Kathleen\")
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
Columbia University has papers published in the following venues and years: Columbia University: 2018 - 2019 (Paper)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
Columbia University has published 184 papers between 1 and 2009 inclusive. The paper ID of these papers can be found by running `SELECT * FROM paper WHERE YEAR <= 2009 AND affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = \"Columbia University\")`.
Columbia University has 13 papers as of 2009 . So the count of papers it has from 2009 to now is 13 .
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' AND T1.year BETWEEN 2000 AND 2009
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Stanford University" AND T1.year BETWEEN 2000 AND 2009
SELECT T2.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT count(*) FROM author_list AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T1.email = 'kathleen@mit.edu'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.email = 'Kathleen' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN (SELECT paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T3.title = 'Mckeown , Kathleen') GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
Count the number of papers published in each venue per year: SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR;
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name;
By affiliation_id we can count the number of papers published by each affiliation. SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING count(*) > 0
SELECT T2.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT t2.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.paper_id GROUP BY T1.author_id HAVING sum(T2.cited_paper_id) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year > 50 )
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.paper_id IN (SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id JOIN paper AS T5 ON T4.paper_id = T5.paper_id WHERE T5.title = \"NAACL\" UNION SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id JOIN paper AS T5 ON T4.paper_id = T5.paper_id WHERE T5.title = \"ACL\")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = NAACL INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = ACL
SELECT name FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id = (SELECT paper_id FROM paper WHERE venue = "ACL"))
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = 'ACL')
SELECT count(*) FROM conference AS T1
SELECT count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference AS T1;
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT count(*) , Conference_Name FROM conference GROUP BY Conference_Name HAVING count(*) > 1000000
SELECT count(*) , conference_name FROM conference GROUP BY conference_name
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR HAVING count(*) != 0
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
foundations_between_1850_and_1900 = institution.founded BETWEEN 1850 AND 1900 count(*) FROM institution AS T1 JOIN (SELECT DISTINCT founded FROM institution) AS T2 ON T1.founded = T2.founded GROUP BY T1.founded HAVING count(*) >= 1 AND count(*) <= 2
founders_between_1850_and_1900 = institution.founded BETWEEN 1850 AND 1900 count(*) FROM institution AS T1 JOIN founders_between_1850_and_1900 AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) > 1
most_recent_founded_institution = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) > 100
SELECT T1.name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) > 1000
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN ( SELECT institution_id FROM staff )
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff AS T1
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'Speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'Sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'Acl' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'Naccl'
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'AACL' INTERSECT SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year IN (2003 , 2004)
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id HAVING count(*) > 0
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID HAVING count(*) > 0
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 INTERSECT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.institution_id WHERE T2.role = 'staff'
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.institution_id WHERE T4.role = 'staff' AND T4.conference_id = (SELECT Conference_ID FROM conference WHERE YEAR = 2004)
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT pilot_name FROM pilot_skills ORDER BY age ASC LIMIT avg(age) - 1 OFFSET 0;
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT location) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 GROUP BY T1.plane_name HAVING count(*) > 1
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41;
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) >= 1 AND count(*) <= 30000000
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) >= 1 AND count(*) <= 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 AND T1.plane_name = 'Piper Cub' UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30 AND T1.plane_name = 'F-14 Fighter'
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'B-52 Bomber'
Pilot_names = SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age IN (SELECT age FROM pilot_skills WHERE plane_name = 'Piper Cub' INTERSECT SELECT age FROM pilot_skills WHERE plane_name = 'B-52 Bomber')
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name AS T3
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
Piper Cub AND F-14 Fighter pilot skills.
Piper Cub : John Doe F-14 Fighter : Michael Johnson
SELECT avg(age) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) != 0
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name
SELECT count(*) , plane_type FROM hangars GROUP BY plane_type;
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING count(*) > 1
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC
SELECT DISTINCT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC
SELECT T1.plane_name , T2.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT max(age) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 1
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 1
SELECT count(*) , avg(age) , T1.city FROM pilot_skills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.city HAVING avg(age) != 0
SELECT count(*) , T1.location , avg(T2.age) FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location HAVING count(*) > 0;
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35.0
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING avg(age) < 35;
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT max(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT max(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT age FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills WHERE age < (SELECT age FROM pilot_skills WHERE plane_name = 'F-14 Fighter' ORDER BY age ASC LIMIT 1)
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills AS T1 JOIN hangars AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilotskills AS T3 JOIN hangars AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = "Piper Cub")
SELECT name FROM district ORDER BY area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
districts = (SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district))
max_area = (SELECT max(area_km) FROM district) avg_area = (SELECT avg(area_km) FROM district)
SELECT sum(population) FROM district WHERE area_km > (SELECT area_km FROM district ORDER BY area_km DESC LIMIT 3)
sorted_district = (SELECT district_id , name , government_website FROM district ORDER BY population ASC)
district(name) WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speak_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
select name , points from spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1;
SELECT T3.Name FROM spokesman AS T3 JOIN spokesman_district AS T1 ON T3.Spokesman_ID = T1.Spokesman_ID JOIN district AS T2 ON T1.District_ID = T2.District_ID WHERE T1.Start_year < 2004;
SELECT count(*) , t3.name FROM spokesman_district AS t1 JOIN district AS t2 ON t1.district_id = t2.district_id JOIN spokesman AS t3 ON t1.spokesman_id = t3.spokesman_id GROUP BY t3.name
SELECT T3.name FROM district AS T3 JOIN spokesman_district AS T1 ON T3.district_id = T1.district_id JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.rank_position = 1 AND T3.district_id IN ( SELECT T3.district_id FROM district AS T3 JOIN spokesman_district AS T1 ON T3.district_id = T1.district_id JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.rank_position = 1 INTERSECT SELECT T3.district_id FROM district AS T3 JOIN spokesman_district AS T1 ON T3.district_id = T1.district_id JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.rank_position = 2 ) {}
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1;
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT t1.spokesman_id FROM spokesman AS t1 JOIN spokesman_district AS t2 ON t1.spokesman_id = t2.spokesman_id)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING sum(t2.points) != 0
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = \"gallery 226\"
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT title , LOCATION FROM paintings
SELECT paintingID , LOCATION FROM Paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 'gallery 226'
SELECT title , date FROM sculptures WHERE LOCATION <> 'gallery 226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) = 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920 GROUP BY T1.artistid HAVING count(*) >= 1
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthYear FROM artists ORDER BY deathYear LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = 'gallery 240'
SELECT count(*) FROM paintings WHERE LOCATION = \"gallery 240\"
SELECT count(*) FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear = (SELECT max(birthyear) FROM artists)
SELECT T1.painterid , T2.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.birthyear DESC LIMIT 1;
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Mary\"
SELECT T2.title , T1.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T1.location , T2.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Pablo\"
PabloPainterID = 1 PabloMediumOn = "Canvas" PabloLocation = "Spain"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID WHERE T2.title = T3.title INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID WHERE T2.title = T3.title INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculptorID WHERE T2.title = T3.title
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID JOIN sculptures AS T3 ON T1.artistid = T3.sculpturordID WHERE T2.title != \"null\" AND T3.title != \"null\"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium != 'medium oil' AND T2.mediumOn != 'lithographic'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" AND T2.medium = \"lithographic\"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = "canvas"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = \"gallery 241\" AND T2.medium = \"medium\"
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = 241 AND T2.medium = 'oil'
SELECT count(*) , medium FROM paintings GROUP BY medium
Count(*) , medium FROM Paintings GROUP BY medium HAVING count(*) >= 1 AND count(*) <= 2500
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium HAVING medium != ''
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 1
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 1
title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR > 1910;
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium' AND LOCATION = 240 UNION SELECT DISTINCT painterid FROM paintings WHERE medium = 'oil' AND LOCATION = 240;
SELECT DISTINCT painterID FROM paintings WHERE medium = \"medium oil\" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = "canvas" ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = "canvas" ORDER BY height_mm ASC LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings GROUP BY YEAR HAVING galleryid = 240)
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM_paintings ORDER BY height_mm ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
Between 1900 and 1950, we can find all the paintings and sculptures created by artists born before 1900 and after 1950 respectively. Paintings between 1900 and 1950: SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 Sculptures between 1900 and 1950: SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorid = T4.artistid WHERE T4.artistid = 222;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistid = 222 UNION SELECT T3.title FROM sculptures AS T3 JOIN artists AS T4 ON T3.sculptorID = T4.artistID WHERE T4.artistid = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1884 OR YEAR BETWEEN 1931 AND 2023
Before 1885: None After 1930: Location of paintings from 1931 to 2004
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 1999 INTERSECT SELECT paintingid FROM paintings WHERE height_mm BETWEEN 2000 AND 4000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND width_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 'gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) >= 1
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR <= 1900 GROUP BY paintingid HAVING count(*) = 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
{ "sql": "SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR"
SELECT avg(height_mm) , avg(width_mm) , painterID FROM Paintings GROUP BY painterID ORDER BY painterID ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2 {}
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.fname , T1.lname , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY galleryid HAVING galleryid = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = \"gallery 240\" GROUP BY paintingid HAVING count(*) = 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY YEAR HAVING gallery = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY YEAR HAVING gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = \"oil\" ORDER BY YEAR ASC
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , TITLE FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT year , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium != 'medium' EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.medium != 'medium'
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures)
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT paintingID FROM paintings WHERE YEAR < 1885 EXCEPT SELECT paintingID FROM paintings WHERE medium = 'canvas'
SELECT count(*) FROM race AS T1
SELECT count(*) FROM race AS T1
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position != \"Junior Strous\"
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position != \"Junior Strous\"
sorted_constructors_by_age := (SELECT constructor FROM driver ORDER BY age ASC)
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
driver(Entrant) WHERE age >= 20 GROUP BY Entrant HAVING count(*) > 1
SELECT DISTINCT entrant FROM driver WHERE age > 20
max_age = (SELECT max(Age) FROM driver) min_age = (SELECT min(Age) FROM driver)
SELECT max(Age) , min(Age) FROM driver AS T1
driver ENGINE GROUP BY ENGINE HAVING count(*) > 1 OR count(*) < 100 AND age > 20 OR age < 30
SELECT count(DISTINCT engine) FROM driver WHERE age BETWEEN 20 AND 30
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.driver_name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.driver_name , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) > 1
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.age ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING COUNT(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING COUNT(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor != 'Bugatti'
constructor , count(*) FROM driver GROUP BY constructor
constructor_count = count(*) FROM driver GROUP BY constructor;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1(Constructor) IN (SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30 INTERSECT SELECT constructor FROM driver WHERE age < 20
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = \"James Hinchcliffe\" AND T2.pole_position = \"Carl Skerlong\"
SELECT T1.Driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = 'James Hinchcliffe' AND T2.Pole_Position = 'Carl Skerlong'
SELECT driver_name FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\" )
SELECT driver_name FROM driver WHERE driver_id NOT IN ( SELECT T1.driver_id FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"James Hinchcliffe\")
SELECT count(*) FROM languages AS T1
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
languages(name).name contains "ish"
languages(name) WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
sorted_countries = sorted(countries, key=lambda x: x.overall_score, reverse=True) print(sorted_countries)
SELECT avg(justice_score) FROM countries AS T1
SELECT avg(justice_score) FROM countries AS T1
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM official_languages WHERE language_id = 'norway' )
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
{ "sql": "SELECT name FROM countries ORDER BY education_score DESC"} {"sql": "SELECT name FROM countries ORDER BY education_score DESC"}
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) > 0
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2 {}
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"english\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = (SELECT id FROM languages WHERE name = 'english')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC;
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id ORDER BY avg(T1.overall_score) DESC;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.overall_score < 90 {}
SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score > 95 EXCEPT SELECT T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T1.overall_score < 90
SELECT country , town_city FROM Addresses AS T1 UNION SELECT country , town_city FROM Addresses AS T1 JOIN Addresses AS T2 ON T1.country = T2.country WHERE T1.zip_postcode != T2.zip_postcode
SELECT country , town_city FROM addresses
SELECT T1.town_city , T1.state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.state_province
SELECT T1.country , T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM features AS T1 JOIN property_features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.feature_name , T2.feature_description FROM Feature AS T2 JOIN Property_features AS T1 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM properties AS T1
SELECT min(room_count) FROM Properties AS T1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code , T1.user_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_code IN (SELECT user_category_code FROM Ref_User_Categories WHERE user_category_description = 'mother')
SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_description LIKE '%Mother%'
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Ref_Room_Types AS T3 ON T2.room_type_code = T3.room_type_code WHERE T3.room_type_description = 'Garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1;
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(T2.room_size) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(*) FROM (SELECT DISTINCT room_size FROM rooms)
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User Searches WHERE search_seq >= 2
SELECT user_id , search_string FROM User_searches GROUP BY user_id HAVING count(*) >= 2;
SELECT min(search_datetime) FROM user_searches WHERE user_id IN (SELECT user_id FROM user_searches GROUP BY user_id ORDER BY count(*) DESC LIMIT 1)
SELECT search_datetime FROM User_searches ORDER BY search_datetime DESC LIMIT 1;
SELECT search_datetime , search_string FROM User Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE NOT (SELECT T1.zip_postcode FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) > 2)
SELECT zip_postcode FROM addresses WHERE NOT (SELECT T1.zip_postcode FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT T1.user_category_code , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM User_searches GROUP BY user_id HAVING count(*) = 1;
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = 'Senior Citizen' ORDER BY first_name ASC
SELECT login_name FROM users WHERE age_category_code = 'Senior Citizen' ORDER BY first_name ASC
SELECT count(*) FROM User Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1;
SELECT count(*) FROM User_searches WHERE is_buyer = 1;
SELECT date_registered FROM users WHERE login_name = \"rathi\"
SELECT date_registered FROM users WHERE login_name = \"ratione\"
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.age_category_code = 'Senior' AND T2.is_seller = null
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior citizen"
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) , T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name HAVING count(*) > 0
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , T1.user_id FROM users AS T1 JOIN property_photos AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY owner_user_id HAVING count(*) > 0
SELECT sum(T2.price_max) FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_category_code = \"single\" OR T1.user_category_code = \"student\"
SELECT max(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_student OR T2.is_buyer = 1
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp ASC
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM rooms GROUP BY room_size;
Count(*) AS count_rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = \"Robbie\";
Robbie first_name = "Robbie" AND Robbie last_name = "User" FROM users AS T1 JOIN addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T2.town_city = "London"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT T3.property_address_id FROM Addresses AS T3 JOIN Properties AS T4 ON T3.address_id = T4.property_address_id WHERE T4.property_name = T2.property_name )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_address_id IN (SELECT T2.property_address_id FROM Properties AS T2 JOIN Users AS T3 ON T2.owner_user_id = T3.user_id WHERE T3.is_buyer = 1) AND T3.is_seller = 0
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT owner_user_id FROM Properties )
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT owner_user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN User Searches AS T3 ON T2.user_id = T3.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T4.last_name , T4.user_id FROM Users AS T4 JOIN User Searches AS T5 ON T4.user_id = T5.user_id GROUP BY T4.user_id HAVING min(T5.search_seq) <= 1
SELECT T2.last_name , T1.user_id FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 AND count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780
sorted_bikes = sorted(bike.items(), key=lambda x: x['price']) sorted_bikes = [item for item in sorted_bikes] sorted_bikes = [{'product_name': item['product_name'], 'weight': item['weight']} for item in sorted_bikes]
SELECT heat , name , nation FROM cyclist AS T1
SELECT max(weight) , min(weight) FROM bike AS T1
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
Distinct id , product_name FROM bike WHERE purchase_year > 2015 GROUP BY distinct id , product_name HAVING count(*) >= 1
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.purchase_year > 2015 )
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558' GROUP BY T1.id HAVING count(*) > 1
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' AND T3.result = 'Gold' UNION SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler' AND T3.result = 'Gold'
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT material FROM bike WHERE material LIKE '%fiber%'
cyclists_own_bikes.count(*) AS count_bikes_per_cyclist ORDER BY cyclist_id ASC
SELECT max(price) , flavor FROM goods WHERE food = 'Cake' GROUP BY flavor ORDER BY max(price) DESC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1;
SELECT min(price) , flavor FROM goods WHERE food = 'cookie' GROUP BY flavor ORDER BY price ASC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor = "Apple"
items(id) WHERE flavor = 'Apple'
SELECT id FROM goods WHERE price BETWEEN 0 AND 2.99;
SELECT id FROM goods WHERE price < 3;
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\" AND T3.food = \"Cake\";
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\" AND T3.food = \"Cake\"
SELECT count(*) , food FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.food HAVING count(*) > 0
food_count = (SELECT count(*) , food FROM goods GROUP BY food)
SELECT customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.item IN (SELECT id FROM goods WHERE food = 'bakery') GROUP BY customerid HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING COUNT(*) > 10;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING COUNT(*) > 10;
SELECT count(*) FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = "Cake"
SELECT count(*) FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = \"cake\"
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.customerid = 15;
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T1.customerid = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food;
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T2.lastname = \"LOGAN\" AND T3.food = \"Croissant\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = 'Logan' AND T1.item IN (SELECT T3.id FROM goods AS T3 JOIN items AS T4 ON T3.id = T4.item WHERE T4.food = 'croissant')
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt ORDER BY T2.Price DESC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
food_type_count(food) SELECT count(*) , food FROM goods GROUP BY food;
food_type_count = SELECT count(*) , food FROM goods GROUP BY food ;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5;
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5.0
goods WHERE price > 10 Flavors
goods where price > 10.0 flavor
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item JOIN customers AS T3 ON T2.customerid = T3.id WHERE T1.Price > 13.00;
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id JOIN customers AS T3 ON T1.CustomerId = T3.id WHERE T2.Price > 13.00;
SELECT T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.price > 15;
SELECT T2.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT flavor , price FROM goods WHERE id IN ( SELECT id FROM goods WHERE price LIKE "%70%")
SELECT id , price FROM goods WHERE id LIKE "70%";
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE id IN (SELECT id FROM items ORDER BY item ASC)
SELECT DISTINCT id FROM goods
SELECT T1.Receipt FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Apple\" OR T1.customerid = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt WHERE T2.Flavor = \"Apple\" OR T1.customerid = 12
SELECT max(Date) , Date FROM receipts GROUP BY max(Date)
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR price > 10
SELECT receiptnumber FROM receipts WHERE date < (SELECT min(date) FROM receipts) AND price > 10
items WHERE price >= 3 AND price <= 7 ID们 是 蜂蜡 和 酥饼。
items WHERE price >= 3 AND price <= 7 ID 10885426 10885429 10885430 10885431 10885432 10885433 10885434 10885435 10885436 10885437 10885438 10885439 10885440 10885441 10885442 10885443 10885444 10885445 10885446 10885447 10885448 10885449 10885450 10885451 10885452 10885453 10885454 10885455 10885456 10885457 10885458 10885459 10885460 10885461 10885462 10885463 10885464 10885465 10885466 10885467 10885468 10885469 10885470 10885471 10885472 10885473 10885474 10885475 10885476 10885477 10885478 10885479 10885480 10885481 10885482 10885483 10885484 10885485 10885486 10885487 10885488 10885489 10885490 10885491 10885492 10885493 10885494 10885495 10885496 10885497 10885498 10885499 10885500 10885501 10885502 10885503 10885504 10885505 10885506 10885507 10885508 10885509 10885510 10885511 10885512 10885513 10885514 10885515 10885516 10885517 10885518 10885519 10885520 108855
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT avg(price) FROM goods WHERE flavor = \"blackberry\" OR flavor = \"blueberry\"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor ASC
SELECT min(price) , max(price) FROM goods WHERE Food = 'food' ORDER BY Food ASC
min_price = min(price) FROM goods WHERE food = 'food' ORDER BY food ASC max_price = max(price) FROM goods WHERE food = 'food' ORDER BY food ASC
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date HAVING count(*) > 1
SELECT count(*) , date FROM receipts GROUP BY date HAVING count(*) != 0
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Apple\" AND T3.food = \"Tart\"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Apple\" AND T3.food = \"Tart\"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT price FROM goods WHERE food = 'croissant' ORDER BY price DESC LIMIT 1)
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) AND count(*) > 2
sorted_goods = sorted(goods.items(), key=lambda x: x.price) for item in sorted_goods: print(item.id , item.flavor , item.food)
sorted_goods := (SELECT id , flavor , food FROM goods ORDER BY price ASC)
SELECT T1.id , T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.food = 'Cakes' ORDER BY T2.flavor ASC
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM goods WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) <= 10;
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"chocolate\" GROUP BY T1.id HAVING count(*) <= 10;
Flavors available for Cake but not for Tart: Apple, Banana, Cherry, Doughnut, Elderberry, Fig, Grenade, Honeysuckle, Icing, Jams, Kahlua, Lemon, Mango, Nutella, Orange, Patchouli, Raspberry, Strawberries, Tickeylang.
SELECT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item JOIN goods AS T3 ON T2.id = T3.id WHERE T3.food = 'Tart'
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT item FROM items GROUP BY item ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM (SELECT customerid , id , avg(price) FROM goods GROUP BY id HAVING avg(price) > 5)
SELECT T1.id , T2.flavor FROM goods AS T2 JOIN items AS T1 ON T1.id = T2.id GROUP BY T2.flavor HAVING avg(T1.price) > 5.0
SELECT date FROM receipts GROUP BY date HAVING sum(price) > 100;
SELECT date FROM receipts WHERE receiptnumber IN ( SELECT receiptnumber FROM items GROUP BY receiptnumber HAVING sum(price) > 100 )
SELECT count(*) FROM driver AS T1
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT make , COUNT(*) FROM driver WHERE points > 150 GROUP BY make;
SELECT avg(age) , make FROM driver GROUP BY make HAVING avg(age) != 0
SELECT avg(Age) , Make FROM driver GROUP BY Make HAVING avg(Age) != 'null'
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY Car_Owner ASC
SELECT manager , sponsor FROM team ORDER BY car_owner ASC
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1;
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1;
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_Owner = "Buddy Arrington"
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = "Buddy Arrington" AND T1.Car_Owner = "Buddy Arrington"
max(Points) , min(Points) FROM driver
max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE points BETWEEN 0 AND 149;
SELECT count(*) FROM driver WHERE Points < 150
{ "sql": "SELECT Driver FROM driver ORDER BY Age ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 1000000
SELECT Driver , Country FROM driver AS T1;
SELECT Driver , Country FROM driver AS T1
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = \"Dublin\")
SELECT max(Points) FROM driver WHERE Country = (SELECT Capital FROM country WHERE Capital = \"Dublin\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Points > 150;
SELECT Country FROM driver WHERE Points > 150 GROUP BY Country HAVING count(*) > 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1
Make , count(*) FROM driver GROUP BY Make HAVING count(*) > 1
SELECT make , count(*) FROM driver GROUP BY make HAVING count(*) > 1
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
Make count by driver_id and get the max(Count) Make from the result SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
country WHERE make = \"Dodge\" INTER country WHERE make = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution AS T1;
SELECT count(*) FROM institution AS T1
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY name ASC
ascending_order = (SELECT name FROM institution ORDER BY founded)
sorted_by_founded = (SELECT name FROM institution ORDER BY founded ASC)
SELECT city , province FROM institution
SELECT city , province FROM institution
{ "sql": "SELECT max(enrollment) , min(enrollment) FROM institution AS T1"} {"enrollment": [4000000 , 2500000]}
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
descending ORDER BY capacity DESC stadium: institution(stadium) institution.ID: name institution.capacity: capacity institution.name: name institution.city: city institution.province: province institution.founded: founded institution.enrollment: enrollment institution.endowment: endowment institution.stadium: stadium
SELECT Stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONATE AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1 AFFILIATION = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 2
SELECT Nickname FROM Championship GROUP BY Nickname ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nickname FROM Championship GROUP BY Nickname ORDER BY capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
Vancouver : enrollment = 100000 Calgary : enrollment = 200000
both_institutions = (SELECT province FROM institution WHERE founded < 1920 UNION SELECT province FROM institution WHERE founded > 1950)
province NOT IN (SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950)
SELECT count(DISTINCT province) FROM institution AS T1
SELECT count(DISTINCT province) FROM institution AS T1
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = \"New York\"
New York = 'New York' boxes_in_new_york = select distinct contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT contents FROM boxes WHERE value > 150;
Boxes WHERE Value > 150 CONTENTS
SELECT T1.code , avg(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING avg(T2.value) > 0
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM warehouses AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses WHERE capacity != \"null\"
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(value) FROM boxes AS T1
SELECT avg(value) FROM boxes AS T1
SELECT DISTINCT Contents FROM Boxes AS T1;
SELECT count(DISTINCT contents) FROM boxes;
SELECT count(DISTINCT contents) FROM boxes AS t1
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses AS T1
SELECT count(DISTINCT LOCATION) FROM Warehouses AS T1
Chicago : 1 New York : 2 SELECT code FROM boxes WHERE warehouse IN (1 , 2)
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' UNION SELECT code FROM warehouses WHERE LOCATION = 'New York')
Chicago : 1000000 New York : 2000000 Total : 3000000
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
Chicago : New York : boxes : contents
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = \"Chicago\") INTERSECT SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = \"New York\")
contents NOT IN (SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York')
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
SELECT T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location IN ('Rocks', 'Scissors')
Distinct(warehouse) FROM boxes WHERE contents = \"Rocks\" OR contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rocks' INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors'
boxes.locate(warehouses.location) WHERE contents = 'Rocks' INTERSECT boxes.locate(warehouses.location) WHERE contents = 'Scissors'
sorted_boxes = sorted(boxes , contents )
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT distinct contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents ASC
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM boxes AS T2 JOIN warehouses AS T1 ON T1.code = T2.warehouse GROUP BY T1.code HAVING avg(T2.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents;
Total_value = sum(value) , count(*) = count(contents) FROM boxes AS T1
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses AS T1
SELECT sum(capacity) FROM warehouses AS T1
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location HAVING max(T1.value) != 0
SELECT T1.code , count(*) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > 0
Count(*) AS count_boxes_per_warehouse Box_count_per_warehouse := count(*) / count(*) AS count_boxes_per_warehouse_box_count_per_warehouse := count(*) GROUP BY warehouse;
SELECT count(DISTINCT location) FROM warehouses WHERE name = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code HAVING count(*) > 1
SELECT code FROM warehouses WHERE capacity > 0 {}
SELECT code FROM warehouses WHERE capacity < (SELECT capacity FROM warehouses GROUP BY capacity ORDER BY count(*) DESC LIMIT 1)
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
max(enrollment) , avg(enrollment) , min(enrollment) FROM university
max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT DISTINCT home_conference FROM university
SELECT DISTINCT home_conference FROM university AS T1
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT STATE FROM university GROUP BY STATE ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1;
SELECT home_conference FROM university WHERE enrollment = (SELECT min(enrollment) FROM university)
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T3.major_name , T2.rank FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = 'Augustana College'
SELECT T3.major_name , T2.rank FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.maj_id = T3.maj_id WHERE T1.university_name = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T2.rank = 1;
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 AND T2.major_id IN ( SELECT major_id FROM major WHERE major_name = \"Accounting\" )
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
university.university_name EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM overall_ranking WHERE rank = 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.majordate WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.majordate WHERE T2.major_name = 'Urban Education'
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.majors_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.majors_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id IN ( SELECT T3.major_id FROM major AS T3 JOIN major_ranking AS T4 ON T3.major_id = T4.major_id WHERE T4.rank = 3 )
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T1.university_id = T3.university_id AND T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.major_name = \"Accounting\"
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank <= 4;
SELECT sum(T1.enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank < 5;
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE 'G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.title IN ( SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.Code )
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T2.Title IN ( SELECT T3.Title FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.code )
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != ""
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating > 4)
SELECT count(DISTINCT title) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT count(DISTINCT title) FROM Movies WHERE code IN (SELECT movie FROM MovieTheaters)
SELECT count(DISTINCT name) FROM Movietheaters;
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizens%'
SELECT T2.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating IN ('G', 'PG')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Cinema Odeon' OR T1.Name = 'Cinema Imperial'
Odeon Imperial Theaters
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T2.Title IN (SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial')
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' AND T2.Name = 'Imperial'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM movies ORDER BY title ASC
SELECT title FROM movies ORDER BY rating ASC
Sort by Rating: SELECT title FROM movies ORDER BY rating ASC
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T2.movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , rating FROM Movies GROUP BY rating
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title IN (SELECT T3.Title FROM Movies AS T3 JOIN MovieTheaters AS T4 ON T3.Code = T4.Movie)
SELECT name FROM Movietheaters WHERE movie IN (SELECT code FROM movies)
SELECT name FROM Movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Title FROM Movies
SELECT DISTINCT title FROM Movies
SELECT count(*) FROM (SELECT DISTINCT Rating FROM Movies)
SELECT count(DISTINCT rating) FROM Movies WHERE rating != 'Unknown'
SELECT * FROM Movies WHERE Rating != 'Unrated'
SELECT * FROM Movies WHERE Rating != 'Unrated'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T1.Weight) FROM package AS T1 JOIN client AS T2 ON T1.Recipient = T2.AccountNumber WHERE T2.Name = 'Leo Wong'
SELECT sum(T2.Weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.Sender = 'Leo Wong' AND T2.Recipient = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT POSITION FROM Employee WHERE Name = \"Amy Wong\"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = "Turanga Leela"
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = \"Physician\"
SELECT T1.Level FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employee WHERE T2.position = 'Physician'
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'Leo Wong' AND T2.recipient = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'Leo Wong' AND T1.sender = 'Leo Wong'
SELECT T2.packagenumber FROM employee AS T1 JOIN package AS T2 ON T1.employeeid = T2.sender WHERE T1.name = \"Leo Wong\"
SELECT packagenumber FROM package WHERE recipient = 'Leo Wong' AND sender = 'Leo Wong'
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T2.recipient = T3.accountnumber WHERE T3.name = 'Leo Wong' UNION SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T2.sender = T3.accountnumber WHERE T3.name = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = \"Leo Wong\" OR T3.name = \"Leo Wong\"
Ogden Wernstrom sent 1 package to Leo Wong. Leo Wong received 1 package from Ogden Wernstrom.
Employee T1 as (SELECT T2.Name FROM Employee AS T2 JOIN Package AS T1 ON T1.Sender = T2.AccountNumber AND T1.Recipient = T2.Name WHERE T2.Name = 'Ogden Wernstrom' INTERSECT SELECT T2.Name FROM Employee AS T2 JOIN Package AS T1 ON T1.Sender = T2.AccountNumber AND T1.Recipient = T2.Name WHERE T2.Name = 'Leo Wong') count(*)
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.contents FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name LIKE '%John%' ORDER BY T1.weight DESC LIMIT 1
SELECT packagenumber , weight FROM package WHERE sender = 'John' OR recipient = 'John'
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , sender FROM package GROUP BY sender ORDER BY weight ASC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T2.sender HAVING count(*) > 1;
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T2.sender HAVING count(*) > 1;
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Phillip J. Fry'
SELECT T2.ShipmentID FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = \"Phillip J Fry\"
SELECT Date FROM Shipment
SELECT date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE Planet IN (SELECT PlanetID FROM Planet WHERE Name = "Mars")
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid JOIN employee AS T3 ON T1.manager = T3.employeeid WHERE T2.name = "Mars" AND T3.position = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = 3
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetid FROM planet WHERE name = "Mars") OR manager IN (SELECT employeeid FROM employee WHERE name = "Turanga Leela")
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Mars" AND T2.name = "Turanga Leela"
SELECT T1.name , sum(T2.shipment) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING count(*) > 100
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T1.planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name HAVING count(*) > 0
SELECT count(*) , T2.name FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
Total weight of package shipped on Mars = 0. Total weight of package shipped on Mars = 0.
Total weight of all packages shipped on Mars = Sum(T1.Weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT T1.name , T2.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planetid GROUP BY T2.planetid;
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 0.5
SELECT T1.name FROM planet AS T1 JOIN shipto AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30;
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.weight > 30 GROUP BY T1.planet HAVING sum(T2.weight) > 30
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
Zapp Brannigan has sent 1 package to Omicron Persei 8 and has received 0 shipments. Has Clearance for planet Omicron Persei 8 shows 2 shipments with sender Zapp Brannigan.
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planetid FROM planet WHERE name = "Omicron Persei 8") OR T2.sender IN (SELECT accountnumber FROM client WHERE name = "Zapp Brannigan")
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = "Omicron Persei 8" OR T3.name = "Zapp Brannigan"
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.Name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.planet = (SELECT planet FROM planet WHERE name = "Omega III")
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planet = T2.planet GROUP BY T1.planet HAVING count(*) = 1;
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T3.employee FROM has_clearance AS T3 JOIN employee AS T4 ON T3.employee = T4.employeeid WHERE T4.position = \"Clearance\")
SELECT Name FROM Employee WHERE Salary >= 5000 AND Salary <= 10000;
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id;
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id
title = title , developers = developers ORDER BY units_sold_millions DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_game_title = game.title ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE platform_id NOT IN ( SELECT platform_id FROM platform WHERE platform_name = \"Nintendo\")
SELECT avg(units_sold_millions) FROM game WHERE platform_id NOT IN ( SELECT platform_id FROM platform WHERE platform_name = \"Nintendo\")
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
max(rank_of_the_year) , min(rank_of_the_year)
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 2
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_by_rank_of_year(desc) AS player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT T2.player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T3.Title = "Super Mario World"
SELECT T2.player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T1.game_id = (SELECT game_id FROM game WHERE title = \"Super Mario World\")
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
SELECT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\";
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\";
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
platforms_with_market_district = (SELECT T1.platform_name FROM platform AS T1 JOIN game AS T2 ON T1.platform_id = T2.platform_id WHERE T1.Market_district = 'Asia' UNION SELECT T1.platform_name FROM platform AS T1 JOIN game AS T2 ON T1.platform_id = T2.platform_id WHERE T1.Market_district = 'USA')
platforms_in_market_districts(Asia , USA) UNION SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise HAVING COUNT(*) > 1000
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = \"Oklahoma\" AND T2.Title IN (SELECT T2.Title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.College = \"Auburn\")
game[Title] FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = \"Oklahoma\" OR T3.college = \"Auburn\"
SELECT DISTINCT franchise FROM game AS T1
SELECT DISTINCT franchise FROM game WHERE developers != 'Null'
SELECT title FROM game WHERE game_id NOT IN ( SELECT T1.game_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = \"Guard\")
SELECT name FROM press ORDER BY YEAR_profits_billion DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_press = sorted(press , 1) DESC print(sorted_press)
SELECT name FROM press WHERE MONTH_PROfits_billion > 15000000 OR YEAR_PROfits_billion > 10000000
SELECT name FROM press WHERE year_profit_billion > 15000000 OR month_profit_billion > 1000000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(month_profits_billion) , max(yearly profits billion) , name FROM press GROUP BY name
press.name.max(monthly_profits_billion)
max_monthly_profit_press = max(Month_Profits_billion) FROM press ORDER BY Month_Profits_billion DESC LIMIT 1;.press_name
sorted_monthly_profit = sorted(press.month_profits_billion) # sort by month profits biliion lowest_monthly_profit = sorted_monthly_profit[0] # get the lowest monthly profits biliion highest_monthly_profit = sorted_monthly_profit[-1] # get the highest monthly profits biliion name_of_publisher = press.name if highest_monthly_profit == press.month_profits_billion else press.name if lowest_monthly_profit == press.month_profits_billion else None # choose between highest and lowest monthly profits biliion publisher based on the result of comparison print(name_of_publisher) # print the name of the publisher whose monthly profits biliion is the highest or lowest
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT count(*) FROM author WHERE age BETWEEN 1 AND 29;
SELECT count(*) FROM author WHERE age < 30;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
sorted(book.Release_date)
sorted_book_title = book.Release_date | book.Title ORDER BY book.Release_date DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series
book_series_count = SELECT count(*) , book_series FROM book GROUP BY book_series;
top_book = book.Sale_Amount DESC LIMIT 5;
sorted_by_sale_amount: book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id ORDER BY T1.sale_amount DESC LIMIT 5;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500 GROUP BY book_series HAVING count(*) >= 2
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 EXCEPT SELECT Book_Series FROM book WHERE Sale_Amount < 500 GROUP BY Book_Series HAVING COUNT(*) >= 2
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT Name , Age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1 {}
SELECT T2.Name FROM author AS T2 JOIN book AS T1 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Title , T2.Name , T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.Title , T2.Name , T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id;
SELECT count(*) , T3.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1000 ORDER BY count(*) DESC, T2.name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 1;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T2.Name , T2.Gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\" )
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\")
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2;
SELECT T1.name , T1.month_profits_billion , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM Authors AS T1;
SELECT DISTINCT author_name FROM Authors AS T1
SELECT author_name , other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents AS T1
SELECT T1.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_id = 4;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = \"Travel to Brazil\"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.other_details = \"Bianka Cummings\"
SELECT T1.author_name , T1.other_details FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = \"Travel to China\"
SELECT T1.author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes AS T1;
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT T1.process_name FROM Business_Processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_id = 9;
SELECT count(*) FROM Process_outcomes AS T1
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status AS T1
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff_in_processes AS T1 JOIN ref_staff_roles AS T2 ON T1.staff_role_code = T2.staff_role_code
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles AS T1
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id GROUP BY T2.process_id HAVING sum(T2.process_outcome_code) = 4
SELECT process_id FROM Documents_process AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.process_id HAVING count(*) > 1
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM Process_outcomes WHERE process_outcome_code = 'No' UNION SELECT process_id FROM Process_status WHERE process_status_code = 'Open' UNION SELECT process_id FROM Process_status WHERE process_status_code = 'Closed' UNION SELECT process_id FROM Process_outcomes WHERE process_outcome_code = 'Yes' INTERSECT SELECT process_id FROM documents NULL PROCESS_ID
SELECT T1.process_outcome_description , T1.process_status_description FROM Process_outcomes AS T1 JOIN Process statuses AS T2 ON T1.process_status_code = T2.process_status_code WHERE T1.process_outcome_code = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = \"Travel to Brazil\"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id HAVING count(*) > 0
SELECT count(*) FROM documents AS T1 JOIN staff_in_processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.staff_id = 9
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Processes AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) > 0
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3;
SELECT count(*) FROM agencies AS T1;
SELECT count(*) FROM agencies AS T1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients AS T1
SELECT count(*) FROM clients AS T1;
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) > 0
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agent_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2;
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.client_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM clients GROUP BY sic_code HAVING count(*) > 1
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 1
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES AS T1
SELECT count(*) FROM INVOICES AS T1
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT client_id , count(*) FROM INVOICES GROUP BY client_id;
SELECT count(*) , client_id FROM invoices GROUP BY client_id;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 1;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
Status Code | Count ---------|------- 0 | 0 1 | 0 2 | 0 3 | 0 4 | 0 5 | 0 6 | 0 7 | 0 8 | 0 9 | 0 10 | 0 11 | 0 12 | 0 13 | 0 14 | 0 15 | 0 16 | 0 17 | 0 18 | 0 19 | 0 20 | 0 21 | 0 22 | 0 23 | 0 24 | 0 25 | 0 26 | 0 27 | 0 28 | 0 29 | 0 30 | 0 31 | 0 32 | 0 33 | 0 34 | 0 35 | 0 36 | 0 37 | 0 38 | 0 39 | 0 40 | 0 41 | 0 42 | 0 43 | 0 44 | 0 45 | 0 46 | 0 47 | 0 48 | 0 49 | 0 50 | 0 51 | 0 52 | 0 53 | 0 54 | 0 55 | 0 56 | 0 57 | 0 58 | 0 59 | 0 60 | 0 61 | 0 62 | 0 63 | 0 64 | 0 65 | 0 66 | 0 67 | 0 68 | 0 69 | 0 70 | 0 71 | 0 72 | 0 73 | 0 74 | 0 75 | 0 76 | 0 77 | 0 78 | 0 79 | 0 80 | 0 81 | 0 82 | 0 83 | 0 84 | 0 85 | 0 86 | 0 87 | 0 88 | 0 89 | 0 90 | 0 91 | 0 92 | 0 93 | 0 94 | 0 95 | 0 96 | 0 97 | 0 98 | 0 99 | 0 100 | 0 101 | 0 102 | 0 103 | 0 104 | 0 105 | 0 106 | 0 107 | 0 108 | 0 109 | 0 110 | 0 111 | 0 112 | 0 113 | 0 114 | 0 115 | 0 116 | 0 117 | 0 118 | 0 119 |
Count(*) AS invoice_status_count FROM INVOICES GROUP BY invoice_status_count()
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T3.agent_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T1.client_id = T3.client_id
SELECT T1.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T3.agent_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT meeting_type , agency_details FROM meetings AS T1
SELECT * FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT T1.invoice_id FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id )
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM Payments AS T1
SELECT count(*) FROM payments AS T1;
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id , T1.invoice_status HAVING count(*) = 1
SELECT T1.invoice_id , count(*) FROM INVOICES AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*) , T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id;
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff AS T1;
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
{ "sql": "SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id"} {"sql": "SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id"}
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT T1.meeting_type , count(*) FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id WHERE T2.client_details IN ( SELECT T3.client_details FROM clients AS T3 JOIN staff_in_meetings AS T4 ON T3.client_id = T4.client_id WHERE T4.meeting_id = T1.meeting_id AND T4.billable_yn = 1 )
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id HAVING count(*) > 0
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM staff_in_meetings AS T1 JOIN meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM Clients AS T3 JOIN Invoices AS T4 ON T3.client_id = T4.client_id;
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM Invoices AS T3 JOIN Clients AS T4 ON T3.client_id = T4.client_id WHERE T4.client_details != \"null\";
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN payments AS T3 ON T2.meeting_id = T3.meeting_id WHERE T2.meeting_type = 'Invoice' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_type = 'Invoice' GROUP BY T1.client_id HAVING count(*) = 1
{ "sql": "SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id"} {"sql": "SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T3.staff_details FROM meetings AS T1 JOIN staff AS T3 ON T1.meeting_id = T3.staff_id"}
{ "sql": "SELECT T1.start_date_time , T1.end_date_time , T2.staff_details , T2.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id"} {"sql": "SELECT T1.start_date_time , T1.end_date_time , T2.staff_details , T2.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id"}
