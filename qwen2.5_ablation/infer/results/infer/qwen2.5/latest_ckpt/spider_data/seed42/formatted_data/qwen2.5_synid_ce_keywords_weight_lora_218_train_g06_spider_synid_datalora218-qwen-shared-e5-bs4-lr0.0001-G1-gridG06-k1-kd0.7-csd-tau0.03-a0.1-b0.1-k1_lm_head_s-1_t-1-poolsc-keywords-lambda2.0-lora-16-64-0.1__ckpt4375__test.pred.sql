SELECT count(*) FROM club AS T1;
SELECT count(*) FROM club AS T1;
SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT Name FROM club WHERE Manufacturer <> "Nike"
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT name FROM player ORDER BY wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000;
SELECT Country FROM player WHERE Earnings > (SELECT max(Earnings) FROM player WHERE Wins_count > 2) AND Wins_count > 2;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2 GROUP BY T1.Club_ID HAVING COUNT(*) >= 2;
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = \"Sam Allardyce\"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce' AND T1.Name != ''
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club EXCEPT SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1;
SELECT count(DISTINCT country) FROM player AS T1 {}
SELECT Earnings FROM player WHERE Country = \"Australia\" OR Country = \"Zimbabwe\"
SELECT Earnings FROM player WHERE Country IN ('Australia', 'Zimbabwe')
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 2 INTERSECT SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 3
SELECT count(*) , T1.order_status_code , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) > 0;
SELECT count(*) , T1.order_status_code , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) > 1 UNION SELECT min(T1.date_order_placed) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 1
SELECT min(date_order_placed) , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code != 'Completed' UNION SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code != 'Completed' AND T2.date_order_placed != 'null' UNION SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code != 'Completed' AND T2.date_order_placed != 'null' AND T2.date_order_placed != 'null'
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T1.order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T2 JOIN shipments AS T3 ON T2.invoice_number = T3.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T3.product_name , T2.shipment_date FROM shipments AS T2 JOIN orders AS T1 ON T2.order_id = T1.order_id JOIN products AS T3 ON T1.product_id = T3.product_id
SELECT T3.product_name , T2.shipment_date FROM shipments AS T2 JOIN orders AS T1 ON T2.order_id = T1.order_id JOIN products AS T3 ON T3.product_id = T1.product_id WHERE T1.date_order_placed != \"null\" AND T2.shipment_date != \"null\"
SELECT T1.order_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = 'Shipped'
SELECT T2.product_name , T2.product_color FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.order_item_status_code = 'Shipped'
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.shipment_date != NULL;
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id WHERE T1.gender_code = 'F'
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.gender_code = 'F' GROUP BY T2.product_id HAVING count(*) >= 1;
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT invoice_status_code FROM invoices WHERE order_id NOT IN (SELECT order_id FROM shipments)
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY order_id ORDER BY sum(T2.product_price) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT order_id , date_order_placed , sum(T2.amount_paid) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.amount_paid) > 0;
SELECT count(DISTINCT customer_id) FROM orders AS T1
SELECT count(DISTINCT customer_id) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS AS T1;
SELECT count(DISTINCT payment_method_code) FROM customers_payment_methods AS t1;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods AS T1;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
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
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN products AS T3 ON T3.product_id = T1.product_id
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T2.customer_first_name HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.shipment_id HAVING count(*) > 0;
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 0;
SELECT avg(product_price) FROM products;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) >= 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT email_address , town_city , county FROM customers ORDER BY gender_code ASC LIMIT 1;
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 ORDER BY T1.date_order_placed ASC LIMIT 200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM INVOICES AS T1 JOIN SHIPMENTS AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_date HAVING COUNT(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments AS T1;
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < ( SELECT max(product_price) FROM products )
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(*) FROM (SELECT DISTINCT Digital_terrestrial_channel FROM channel)
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id;
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = 'Dracula'
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM director WHERE age >= 30 AND age <= 60
SELECT T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age < 40 INTERSECT SELECT T1.name FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.age > 60;
SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id JOIN director_admin AS T3 ON T1.channel_id = T3.channel_id WHERE T2.name = 'Hank Baskett' AND T3.is_first_director = 'Yes')
SELECT count(*) FROM radio AS T1
SELECT transmitter FROM radio ORDER BY ERP_kW ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW BETWEEN 150 AND 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation;
SELECT affiliation FROM city_channel ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T1.transmitter , T3.city FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id
SELECT transmitter , T3.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id ORDER BY T1.ERP_kW DESC;
SELECT T1.Transmitter , COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Radio_ID HAVING COUNT(*) > 0
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN ( SELECT radio_id FROM city_channel_radio )
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship LIKE '%United States%'
SELECT T2.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996;
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.build_year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.build_year = 2012;
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Driver_ID IN ( SELECT Driver_ID FROM vehicle_driver WHERE Racing_Series = \"NASCAR\" )
SELECT avg(top_speed) FROM vehicle;
SELECT avg(top_speed) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id;
SELECT DISTINCT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT T3.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT Model FROM vehicle WHERE Total_Production > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150;
SELECT MODEL FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT MODEL , BUILD_YEAR FROM vehicle WHERE MODEL LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Citizenship = 'Ziyang' INTERSECT SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) <= 2 {}
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Building = 'Ziyang' GROUP BY T3.Vehicle_ID HAVING COUNT(*) = 2 {}
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID = 'Jeff Gordon' GROUP BY T2.Vehicle_ID HAVING COUNT(*) > 2 {}
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Driver_ID = T4.Driver_ID WHERE T4.Name = \"Jeff Gordon\" GROUP BY T3.Vehicle_ID HAVING COUNT(*) > 2 {}
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name ASC
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING COUNT(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING count(*) > 0;
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1;
SELECT count(*) FROM Exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT exam_name , exam_date FROM EXAMS WHERE subject_code <> 'Database'
SELECT Exam_Date , Exam_Name FROM EXAMS WHERE Subject_Code != \"Database\"
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT TYPE_of_question_code , count(*) FROM questions GROUP BY TYPE_of_question_code
SELECT TYPE_of_question_code , count(*) FROM questions GROUP BY TYPE_of_question_code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.Comments = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1;
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.Satisfactory_YN DESC;
SELECT T1.Student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.student_answer_id = T2.valid_answer_id GROUP BY T1.student_answer_text ORDER BY count(*) DESC;
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.first_name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.Date_of_Answer DESC
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Student_Answers AS T2 ON T1.student_answer_id = T2.student_answer_id GROUP BY T1.student_answer_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.Assessment FROM Student_Assessments AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT T1.first_name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.first_name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 {}
SELECT Valid_Answer_Text FROM VALID_ANSWER_TEXT GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU <> 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu;
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu;
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = \"Absent\"
SELECT T1.Comments FROM Student_answers AS T1 JOIN Student_answers AS T2 ON T1.Comments = T2.Comments WHERE T1.student_answer_text = "Normal" AND T2.student_answer_text = "Absent"
SELECT TYPE_OF_Question_Code FROM QUESTIONS GROUP BY TYPE_OF_Question_Code HAVING count(*) >= 3
SELECT TYPE_of_question_code FROM questions GROUP BY TYPE_of_question_code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses AS T1;
SELECT count(*) FROM addresses AS T1;
SELECT address_id , address_details FROM addresses AS T1;
SELECT address_id , address_details FROM addresses AS T1;
SELECT count(*) FROM products AS t1;
SELECT count(*) FROM products AS T1;
SELECT product_id , product_type_code , product_name FROM products AS T1;
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
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers AS T1;
SELECT count(*) FROM customers AS T1;
SELECT customer_id , customer_name FROM customers AS T1;
SELECT customer_id , customer_name FROM customers AS T1;
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM customers AS T1 WHERE T1.customer_name = 'Jeromy'
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = 'Jeromy'
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code;
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS t1;
SELECT count(*) FROM customer_orders AS t1;
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE customer_name = 'Jeromy')
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code;
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id WHERE t2.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor' AND t2.order_quantity > 0;
SELECT count(*) FROM customer_orders AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id
SELECT count(DISTINCT customer_id) FROM customer_orders AS T1 JOIN orders_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.customer_id HAVING count(*) > 0 {}
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 UNION SELECT order_date , order_id FROM order_items GROUP BY order_id HAVING sum(order_quantity) > 6
SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 OR sum(count(*) ) > 6
SELECT count(*) FROM building AS T1;
SELECT count(*) FROM building AS T1;
SELECT name FROM building ORDER BY Number_of_Stories ASC
SELECT name FROM building ORDER BY Number_of_Stories ASC;
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980 AND completed_year != 1965 AND completed_year != 1940 AND completed_year != 1920 AND completed_year != 1900 AND completed_year != 1985 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1985 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1985 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND completed_year != 1900 AND completed_year != 1980 AND completed_year != 1970 AND completed_year != 1960 AND completed_year != 1950 AND completed_year != 1940 AND completed_year != 1930 AND completed_year != 1920 AND completed_year != 1910 AND
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(Population) FROM region AS T1;
SELECT avg(Population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE AREA > 10000;
SELECT Capital FROM region WHERE Area > 10000;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT name FROM region ORDER BY area DESC LIMIT 5;
SELECT Name FROM region ORDER BY Area DESC LIMIT 5;
SELECT T2.Name , T3.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID JOIN building AS T3 ON T1.Building_ID = T3.Building_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT count(*) , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year HAVING COUNT(*) > 1000000
SELECT completed_year , count(*) FROM building GROUP BY completed_year HAVING count(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT max(completed_year) , min(completed_year) FROM building WHERE number_of_stories > 20 AND number_of_stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15 {}
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC;
SELECT completed_year FROM building ORDER BY Number_of_Stories DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM services AS T1;
SELECT count(*) FROM ( SELECT DISTINCT service_id FROM customers_and_services ) AS T1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT Analytical_Layer_Type_Code FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN (SELECT customer_id FROM customers WHERE customer_details = \"Hardy Kutch\") AND T2.services_and_channels_details != \"null\";
SELECT T3.services_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T3.service_id = T2.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_details HAVING count(*) > 3
SELECT t1.services_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t2.customer_id HAVING count(*) > 3
SELECT T2.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T3.service_id = T2.service_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t1.customer_details ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.service_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services AS T1;
SELECT count(*) FROM customers_and_services AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id UNION SELECT count(*) FROM services AS t3 JOIN services AS t4 ON t3.service_id = t4.service_id;
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE '%Kutch%' OR customer_details LIKE '%kutch%' OR customer_details LIKE '%KUTCH%' OR customer_details LIKE '%KUTCH%'
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = \"Hardy Kutch\" UNION SELECT T4.service_details FROM services AS T4 JOIN customer_interactions AS T5 ON T4.service_id = T5.service_id GROUP BY T4.service_details HAVING count(*) >= 1 AND avg(T5.status_code) > 0 {}
SELECT T3.services_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.services_and_channels_details = "good"
SELECT t3.services_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" AND t2.status_code = "bad"
SELECT t3.services_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t1.customer_details = "Hardy Kutch" AND t3.services_and_channels_details = "bad"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = \"15 ij\" AND T1.status_code = \"Completed\"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = \"Stuck\" AND T2.services_and_channels_details = \"bad\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Successful'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.service_id = T3.customer_interaction_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT customers_and_services_details FROM customers_and_services WHERE service_id NOT IN ( SELECT service_id FROM customers_and_services GROUP BY service_id HAVING count(*) > 1 )
SELECT Services_and_channel_details FROM Services WHERE service_id NOT IN ( SELECT Service_ID FROM customers_and_services )
SELECT analytical_layer_type_code , count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = 'unsatisfied' UNION SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id WHERE T4.customer_id = T2.customer_id AND T4.status_code = 'unsatisfied'
SELECT T1.Services_and_Channels_Details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T1.Customers_and_Services_Details = "unsatisfied" AND T2.Service_Details = "unsatisfied"
SELECT count(*) FROM Vehicles AS T1;
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC;
SELECT name FROM Vehicles ORDER BY Model_year DESC;
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
SELECT name , type_of_powertrain , cost_per_25_miles FROM Vehicles WHERE Model_year BETWEEN 2013 AND 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014 AND TYPE_of_powertrain IN (SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014)
SELECT count(*) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles AS T1
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles AS T1;
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(American_Fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM DISCOUNT AS T1;
SELECT * FROM Discount AS T1;
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0.01
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id HAVING sum(T2.total_hours) > 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Rented_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2 {}
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 1 {}
SELECT T2.teacher_details FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM CLASSIFICATIONS AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) INTERSECT SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_LOANS)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention UNION SELECT student_id FROM Student_loans)
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.date_of_loan , T1.amount_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T2.teacher_details , T1.teacher_id FROM TEACHERS AS T2 JOIN_CLASSES AS T1 ON T2.teacher_id = T1.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.behaviour_monitoring_details , COUNT(*) FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_description , T2.event_type_code FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T1.event_type_description FROM Ref_Event_Types AS T1 JOIN Student_Events AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers AS T1 JOIN Student_Loans AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT count(*) FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.achievement_type_description , T1.date_achievement FROM Ref_Achievement_Type AS T1 JOIN Achievements AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.date_achievement , T2.student_details FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%' OR student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id UNION SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id IN (SELECT student_id FROM Classes)
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id GROUP BY T1.teacher_id HAVING count(*) = count(*)
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT student_id , student_details FROM Students WHERE student_id IN ( SELECT student_id FROM_classes GROUP BY student_id HAVING count(*) = 2 )
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans AS T1
SELECT min(date_of_loan) FROM Student_Loans AS T1
SELECT T1.biological_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(amount_of_loan) FROM Student_LOANS)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(other_details) FROM Students)
SELECT T2.teacher_details FROM Students AS T1 JOIN TRANSCRIPTS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_transcript ASC LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.teacher_id = T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id;
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id;
SELECT T1.student_id , T1.bio_data , COUNT(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM Student_LOANS AS T3)
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1;
SELECT datetime_detention_start FROM Detention AS T1;
SELECT Name FROM AUTHOR AS T1;
SELECT Name FROM AUTHOR
SELECT name , address FROM client AS T1;
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book AS T1;
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM client AS t1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name ASC
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.Name , COUNT(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.Name , COUNT(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.author GROUP BY T1.idAuthor HAVING COUNT(*) > 0;
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn;
SELECT count(*) , T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title HAVING count(*) > 0
SELECT DISTINCT T1.Title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN WHERE T2.DateOrder != \"null\"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT idclient FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT count(*) , T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE idisbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM Book AS T1;
SELECT max(SalePrice) , min(SalePrice) FROM BOOK AS T1
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(SalePrice) - min(PurchasePrice) FROM Book AS T1;
SELECT max(SalePrice) - min(PurchasePrice) FROM BOOK AS T1
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T2.SalePrice) FROM author AS T1 JOIN book AS T2 ON T1.idAuthor = T2.author WHERE T1.Name = 'George Orwell'
SELECT avg(T2.saleprice) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'George Orwell'
SELECT T1.saleprice FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = \"Plato\"
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY purchaseprice ASC LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE author = \"Plato\" AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE author = 'Plato' AND saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.Name FROM AUTHOR AS T1 JOIN BOOK AS T2 ON T1.idAuthor = T2.Author WHERE T2.Title = "Pride and Prejudice"
SELECT T1.Name FROM AUTHOR AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idauthor WHERE T3.Name LIKE '%Plato%'
SELECT T2.Title FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name LIKE '%Plato%'
SELECT count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.idauthor WHERE title = "Pride and Prejudice"
SELECT count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.idauthor WHERE T2.title = 'Pride and Prejudice'
SELECT idorder FROM books ORDER FOR TITLE 'Pride and Prejudice' INTERSECT SELECT idorder FROM books ORDER FOR TITLE 'The Little Prince'
SELECT idorder FROM books_order AS t1 JOIN author_book AS t2 ON t1.idorder = t2.idorder WHERE t2.title = 'Pride' INTERSECT SELECT idorder FROM books_order AS t1 JOIN author_book AS t2 ON t1.idorder = t2.idorder WHERE t2.title = 'Prejudice' INTERSECT SELECT idorder FROM books_order AS t1 JOIN author_book AS t2 ON t1.idorder = t2.idorder WHERE t2.title = 'The Little Prince'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith' ORDER BY T1.isbn ASC;
SELECT T2.title FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = 'Peter Doe' EXCEPT SELECT T2.title FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T1.name = 'James Smith'
SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.dateorder = (SELECT dateorder FROM orders WHERE name = 'Peter Doe') EXCEPT SELECT T1.Title FROM Book AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.name = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.Name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T2.idorder = T3.idorder WHERE T3.title = \"Pride and Prejudice\" AND T2.dateorder != \"\"
SELECT count(*) FROM book AS t1;
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) FROM book AS T1;
SELECT Title FROM book WHERE TYPE <> 'Poet'
SELECT avg(Rating) FROM review AS T1;
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT rank FROM review ORDER BY Pages ASC LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1;
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.type = "Novel"
SELECT TYPE , count(*) FROM book GROUP BY TYPE HAVING count(*) > 500
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC;
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Readers_in_Million DESC;
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book AS T1;
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer AS T1;
SELECT count(*) FROM customer AS T1;
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1.00;
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1;
SELECT LEVEL_OF_MEMBERSHIP , Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality HAVING COUNT(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name < 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T2.dish_name > 75 AND T1.Card_Credit > 50 UNION SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T2.dish_name < 45 AND T1.Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name ORDER BY T1.Quantity DESC;
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC;
SELECT T1.Name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.Name ORDER BY sum(T2.quantity) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Name , SUM(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name ORDER BY SUM(T1.quantity) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1;
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1;
SELECT DISTINCT manager FROM branch AS T1;
SELECT DISTINCT manager FROM branch AS T1;
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.club_name , T2.name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id
SELECT T3.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID JOIN member AS T3 ON T2.Member_ID = T3.Member_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2018;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = \"Houston\")
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID
club_name LIKE '%state%'
SELECT T1.Collection_Subset_Name FROM Collection_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT DISTINCT t1.collection_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id
SELECT T1.collection_details FROM collection_subsets AS T1 JOIN document_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_name = 'Top collection'
SELECT t1.collection_details FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t2.collection_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT distinct document_subset_name FROM document_subsets AS T1
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_objects AS t1 JOIN document_subsets AS t2 ON t1.document_object_id = t2.document_object_id GROUP BY t1.document_object_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT document_object_id FROM document_objects
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Marlin\" ORDER BY T1.document_object_id LIMIT 1;
SELECT document_object_id FROM document_objects WHERE OWNER = \"Marlin\"
SELECT OWNER FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT OWNER FROM Document_objects WHERE Description LIKE '%Braeden Collection%'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subsets AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Subset_ID WHERE T2.Document_Subset_Name = 'Marlin' AND T1.Owner != '' ORDER BY T1.Parent_Document_Object_ID DESC LIMIT 1;
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Marlin' GROUP BY T1.parent_document_object_id HAVING count(*) >= 1
SELECT DISTINCT Description FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Object_ID = T2.document_subset_id GROUP BY T1.Parent_Document_Object_ID HAVING COUNT(*) > 1
SELECT count(DISTINCT Description) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.Parent_Document_Object_ID;
SELECT count(*) FROM document_objects AS t1 JOIN collection_subsets AS t2 ON t1.document_object_id = t2.document_object_id WHERE t1.owner = 'Marlin'
SELECT count(*) FROM document_objects AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_objects)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN ( SELECT parent_document_object_id FROM document_objects )
SELECT count(*) , T1.document_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT count(*) , parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id;
SELECT Collection_Name FROM Collections AS T1;
SELECT DISTINCT collection_name FROM collections AS T1
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = "Nice"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = 'Nice' AND T1.Parent_Collection_ID = (SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = 'Nice')
SELECT collection_name FROM collections WHERE collection_id NOT IN ( SELECT parent_collection_id FROM collection_subsets )
SELECT Collection_Name FROM Collections WHERE Collection_ID NOT IN (SELECT Parent_Collection_ID FROM Collections)
SELECT document_object_id FROM document_objects GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id WHERE T2.owner = \"Ransom\" GROUP BY T1.document_object_id HAVING count(*) >= 1
SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom' AND T1.document_object_id IN (SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Ransom')
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0 {}
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subset_Members AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id HAVING count(*) > 0
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , document_object_id FROM document_objects GROUP BY document_object_id;
SELECT document_object_id , count(*) FROM document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) LIMIT 1;
SELECT document_object_id , count(*) FROM document_subsets GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT count(*) , T1.document_object_id FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.related_document_object_id IN (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Braeden'))
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Documents_in_Collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.braeden = 1 AND T1.owner != \"\"
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.owner = "Braeden" GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden' AND T1.document_subset_name != ''
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id;
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id HAVING count(distinct document_object_id) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subset_members GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT T1.document_subset_name , T1.document_subset_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id HAVING count(*) >= 1;
SELECT T1.document_subset_name , T2.document_object_id FROM Document_Subsets AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T2.document_object_id HAVING count(*) > 1
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom' AND T2.description != ''
SELECT count(*) , T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id;
SELECT count(*) , T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT document_object_id) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.document_subset_name = 'Best' AND T1.date_of_creation BETWEEN 1/1/2000 AND 12/31/2000 AND T2.collection_name = 'Best'
SELECT DISTINCT T1.document_object_id FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T1.document_subset_name = 'Best for 2000' INTERSECT SELECT DISTINCT T1.document_object_id FROM document_subsets AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T1.document_subset_name = 'Best'
SELECT T1.collection_id FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' AND T2.document_object_id NOT IN ( SELECT T3.document_object_id FROM documents_in_collections AS T3 JOIN document_subsets AS T4 ON T3.document_object_id = T4.document_subset_id WHERE T4.document_subset_name = 'Best' AND T3.year = 2000 )
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' EXCEPT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best' UNION SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best' AND document_subset_id IN (SELECT collection_subset_id FROM collection_subsets WHERE collection_name = 'Best')
SELECT DISTINCT T1.document_subset_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T1.document_subset_name = 'Best for 2000' OR T3.collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM Collections WHERE Collection_Name = 'Best'
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id WHERE t1.collection_name = 'Best in'
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN Collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.related_collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE '%Love%'
SELECT name FROM songs ORDER BY name ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score AS T1
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = "All the streets of love"
SELECT DISTINCT T2.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English' ;
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2participant_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) ASC;
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100 AND stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3english_translation = 'English' AND T2.language = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%";
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city AS T1;
SELECT count(*) FROM city AS T1;
SELECT DISTINCT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country HAVING count(*) > 0 {}
SELECT city_name , city_code , state , country FROM city AS T1;
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state LIKE 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state HAVING count(*) > 0
SELECT count(*) , state FROM city GROUP BY state HAVING count(*) > 0
SELECT count(*) , country FROM city GROUP BY country HAVING count(*) > 0
SELECT count(*) , country FROM city GROUP BY country;
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE country = 'China' )
SELECT count(*) FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.country = 'China'
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE state = 'Maryland' INTERSECT SELECT city_code FROM city WHERE state = 'Maryland') AND fname LIKE '%Baltimore%'
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE country = "Maryland" INTERSECT SELECT city_code FROM city WHERE country = "Washington") AND fname LIKE "%Baltimore%"
SELECT count(*) , country FROM student GROUP BY country;
SELECT count(*) , country FROM student GROUP BY country;
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code;
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 0
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'CHI'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Boston" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Newark"
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Boston" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = "Newark"
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = T2.city_code
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance) AND T1.city_code IN (SELECT city_code FROM direct_distance GROUP BY city_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance))
SELECT city_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 AND T1.city_name IN (SELECT T3.city_name FROM student AS T3 JOIN direct_distance AS T4 ON T3.city_code = T4.city2_code WHERE T4.distance < 1000)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000
SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name NOT IN (SELECT city_name FROM city GROUP BY city_name HAVING count(*) > 1)
SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'BAL'
SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T1.city_name = "Boston" UNION SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T1.city_name NOT IN (SELECT city_name FROM city WHERE state != "CA")
SELECT avg(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' UNION SELECT avg(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name != 'Boston' {}
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE distance > 0) AND T1.state = 'Massachusetts' UNION SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE distance > 0) AND T1.state = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance)
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING sum(T2.distance) > 0 {}
SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city2_code GROUP BY T1.city_code HAVING sum(T2.distance) != 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0.5
SELECT T3.city_name , avg(T2.distance) FROM direct_distance AS T1 JOIN city AS T3 ON T1.city2_code = T3.city_code GROUP BY T3.city_name HAVING avg(T2.distance) > 0.5
SELECT T1.distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith" UNION SELECT T1.distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city2_code = T2.city_code WHERE T2.fname = "Tracy" AND T2.lname = "Kim"
SELECT T2.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T1.fname = \"Linda\" AND T1.lname = \"Smith\" INTERSECT SELECT T2.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T1.fname = \"Tracy\" AND T1.lname = \"Kim\"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT distance FROM direct_distance WHERE city1_code = 'Linda Smith' ORDER BY distance DESC LIMIT 1)
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance AS T3 JOIN student AS T4 ON T3.city2_code = T4.city_code WHERE T4.fname = 'Linda' AND T4.lname = 'Smith')
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda' AND T2.lname = 'Smith'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith"
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30;
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1;
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1;
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid IN (SELECT sid FROM reserves WHERE bid = 102) ORDER BY T2.day ASC LIMIT 1;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT count(DISTINCT bid) FROM reserves
SELECT T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM sailors)
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors) GROUP BY sid HAVING count(*) = 1 ORDER BY count(*) DESC LIMIT 1;
SELECT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors) GROUP BY sid HAVING count(*) = count(*) - 1
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7) UNION SELECT DISTINCT name FROM sailors WHERE rating > 7;
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1;
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2 AND count(*) <= 2
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue')
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue')
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = 'red' OR T1.color = 'blue'
SELECT T2.name , T2.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.color IN ('red','blue')
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = \"red\") INTERSECT SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = \"blue\").
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' INTERSECT SELECT bid FROM boats WHERE color = 'blue')
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = 'red' INTERSECT SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = 'blue'
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = "red" INTERSECT SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = "blue"
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves WHERE bid IN ( SELECT bid FROM boats ) )
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid IN (SELECT bid FROM boats))
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = \"Luis\")
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 AND T2.day = 'reserved'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT T3.bid FROM boats AS T3 JOIN reserves AS T4 ON T3.bid = T4.bid WHERE T4.day = \"reserved\")
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM Sailors AS T1;
SELECT count(*) FROM sailors AS T1;
SELECT avg(age) FROM sailors WHERE rating = 7.0
SELECT avg(age) FROM Sailors WHERE rating = 7.0
SELECT count(*) FROM sailors WHERE name LIKE 'D%' OR name LIKE 'd%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%' OR name LIKE '%D'
SELECT avg(rating) , max(age) FROM sailors AS T1;
SELECT avg(rating) , max(age) FROM sailors AS T1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid HAVING count(*) != 0;
SELECT T2.name , count(*) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T2.bid HAVING count(*) > 50
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN ( SELECT sid FROM reserves GROUP BY sid HAVING count(*) > 1 ) GROUP BY T2.name;
SELECT count(*) , T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.bid;
SELECT count(*) , T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T3.sid = T2.sid WHERE T3.sid > 1 GROUP BY T2.name;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = \"red\" GROUP BY T1.rating;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = \"red\" GROUP BY T1.rating;
SELECT name , rating , age FROM sailors ORDER BY rating ASC , age ASC
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30;
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (SELECT rating FROM sailors WHERE rating < (
SELECT max(rating) FROM Sailors AS T1
SELECT max(rating) FROM Sailors AS T1;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = 'Melon'
SELECT name , age FROM sailors ORDER BY rating DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC;
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS HAVING count(*) >= 1
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(DISTINCT Earpads) FROM headphone AS T1
SELECT count(DISTINCT Earpads) FROM headphone AS T1;
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Earpads FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price LIMIT 1;
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1;
SELECT avg(price) , construction FROM headphone GROUP BY construction
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT CLASS FROM headphone WHERE Earpads = \"Comfort Pads\" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = \"Bowls\"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic' INTERSECT SELECT Earpads FROM headphone WHERE Construction = 'Plastic' {}
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT name FROM store ORDER BY date_opened ASC;
sorted(store.date_opened)命名空间 Store(Store_id , name) ORDER BY date_opened ASC
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) != 0
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) > 0
SELECT T2.name , count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM headphone GROUP BY headphone_id HAVING count(*) > 0) GROUP BY T1.store_id ORDER BY sum(quantity) DESC LIMIT 1;
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT MODEL FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY SUM(T1.Quantity) DESC LIMIT 1;
SELECT t2.Model FROM stock AS t1 JOIN headphone AS t2 ON t1.Headphone_ID = t2.Headphone_ID GROUP BY t2.Model ORDER BY sum(t1.Quantity) DESC LIMIT 1;
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = 'Woodman'
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = 'Woodman'
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT t1.store_id FROM stock AS t1 JOIN headphone AS t2 ON t1.headphone_id = t2.headphone_id) GROUP BY neighborhood HAVING count(*) < 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper AS t1;
SELECT count(*) FROM paper AS T1
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = NAACL
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University' AND T1.year = 2009
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009;
SELECT name , address FROM affiliation AS T1;
SELECT name , address FROM affiliation AS T1;
SELECT venue , YEAR FROM paper ORDER BY YEAR ASC;
SELECT DISTINCT venue FROM paper ORDER BY YEAR ASC
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.ref_id IN ( SELECT T3.author_id FROM affiliation AS T3 JOIN paper AS T4 ON T3.affiliation_id = T4.affiliation_id WHERE T4.title = 'Harvard')
SELECT T2.title , T1.paper_id FROM Paper AS T2 JOIN Author_list AS T1 ON T1.author_id = T2.author_id JOIN Affiliation AS T3 ON T3.affiliation_id = T1 AFFILIATION WHERE T3.address = 'Harvard University'
SELECT T1.title , T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "McKeown"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\"
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T1.author_id = T3.author_id WHERE T3.name = \"Stanford University\" INTERSECT SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author_list AS T3 ON T1.author_id = T3.author_id WHERE T3.name = \"Columbia University\"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.cited_paper_id = T3.affiliation_id WHERE T3.name = \"Stanford\" INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.cited_paper_id = T3.affiliation_id WHERE T3.name = \"Columbia University\"
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.email = 'Kathleen' AND T3.name = 'Owen'
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Mckeown" AND T2.name = "Kathleen" INTERSECT SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "Rambow" AND T2.name = "Owen"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKeown\" EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"Rambow\"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKewn' EXCEPT SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'Rambow'
SELECT T3.title , T3.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = \"Mckeown\" AND T2.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Kathleen\") OR T2.author_id IN ( SELECT author_id FROM author_list WHERE name = \"Owen\")
SELECT T3.title , T3.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = \"McKeown\" AND T1.email = \"Kathleen\" OR T1.name = \"Rambow\" AND T1.email = \"Owen\"
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY count(*) ASC;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC;
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.year = 2003 AND T1.paper_id = 45891002
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.cited_paper_id = 12-1027
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027
SELECT T1.paper_id , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t1.name = "McKeown" AND t2.paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id FROM citation WHERE cited_paper_id = ( SELECT paper_id
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'McKeown' AND T2.email = 'Kathleen'
SELECT count(DISTINCT t1.paper_id) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = "McKeown", t3.email = "Kathleen"
SELECT count(DISTINCT t1.paper_id) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'McKeown' AND t3.email = 'k Kathleen'
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.cited_paper_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.venue , T1.year FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Mckeown' AND T2.email = 'Kathleen'
SELECT T2.venue , T2.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T1.venue , T1.year FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.cited_paper_id IN (SELECT paper_id FROM paper WHERE title = \"Columbia\")
SELECT venue , YEAR FROM paper WHERE title = 'Columbia University'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.year_2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = "Columbia University") AND T1.year <= 2009
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id IN (SELECT affiliation_id FROM affiliation WHERE name = "Columbia University") AND T1.year < 2009
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.address = \"Stanford University\" AND T1.year >= 2000 AND T1.year <= 2009;
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.affiliation_id = (SELECT affiliation_id FROM affiliation WHERE name = \"Stanford University\") AND T1.year BETWEEN 2000 AND 2009
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen"
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"Mckeown\" AND T2.email = \"Kathleen\"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'McKeown' AND T2.k Kathleen GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM citation WHERE title = \"McKeown & Kathleen\") GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT cited_paper_id FROM citation )
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT cited_paper_id FROM citation )
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = (SELECT max(YEAR) FROM paper) AND T1.address LIKE '%China%'
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR;
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING count(*) > 0
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING COUNT(*) > 50 )
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM citation WHERE cited_paper_id IN ( SELECT paper_id FROM paper GROUP BY paper_id HAVING COUNT(*) > 50 ) )
SELECT T1.name FROM AUTHOR AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.title IN (SELECT T3.title FROM citation AS T3 JOIN paper AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T4.venue = \"NAACL\" AND T4.year = 2009 UNION SELECT T3.title FROM citation AS T3 JOIN paper AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T4.venue = \"ACL\" AND T4.year = 2009)
SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009 AND T2.title = \"NAACL\" INTERSECT SELECT T1.name FROM author AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T2.year = 2009 AND T2.title = \"ACL\";
SELECT name FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE paper_id IN ( SELECT paper_id FROM citation WHERE venue = \"ACL\" ) )
SELECT name FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE paper_id IN ( SELECT paper_id FROM citation WHERE venue = \"ACL\" ) )
SELECT count(*) FROM conference AS T1;
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference AS T1;
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT count(*) , T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name HAVING count(*) > 0
SELECT count(*) , conference_name FROM conference GROUP BY conference_name HAVING count(*) > 0
SELECT YEAR , count(*) FROM conference GROUP BY YEAR HAVING count(*) > 1
SELECT count(*) , YEAR FROM conference GROUP BY YEAR HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution AS T1;
SELECT institution_name , location , founded FROM institution
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900;
SELECT count(*) FROM institution WHERE founded >= 1850 AND founded <= 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) >= 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) > 0 {}
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff AS T1;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada' AND T1.Conference_Name != ''
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Naccl'
SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004
SELECT T1.Conference_Name , T1.Year , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID HAVING COUNT(*) >= 5000
SELECT T1.Conference_Name , T1.Year , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID HAVING COUNT(*) >= 0
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year = 2004 EXCEPT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year = 2004
SELECT T1.location , T1.institution_name FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year != 2004 EXCEPT SELECT T1.location , T1.institution_name FROM institution AS T1 JOIN conference AS T2 ON T1.institution_id = T2.institution_id WHERE T2.year = 2004
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30
SELECT * FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT LOCATION) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.pilot_name HAVING count(*) > 1
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilotskills WHERE age >= 30 AND age <= 40 ORDER BY age ASC;
SELECT pilot_name FROM pilotskills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT T1.location FROM Hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC;
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT T1.plane_name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC;
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter' AND T1.age < 30;
SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" OR T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "F-14 Fighter" AND T1.age < 30
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name NOT IN (SELECT pilot_name FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T3.pilot_name = 'B-52 Bomber') AND T1.pilot_name = 'Piper Cub'
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.vehicle_name = "Piper Cub" EXCEPT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.vehicle_name = "B-52 Bomber"
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills WHERE plane_name = 'B-52 Bomber'
SELECT T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.pilot_name IN (SELECT T3.plane_name FROM hangar AS T3 JOIN pilotskills AS T4 ON T3.plane_name = T4.plane_name WHERE T4.pilot_name = 'Piper Cub' INTERSECT SELECT T3.plane_name FROM hangar AS T3 JOIN pilotskills AS T4 ON T3.plane_name = T4.plane_name WHERE T4.pilot_name = 'B-52 Bomber') AND T2.pilot_name = 'Piper Cub'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills WHERE plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name IN (SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) != 0;
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT count(*) , plane_name FROM hangar GROUP BY plane_name HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT T1.plane_name , T2.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC
SELECT T1.plane_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC LIMIT 3;
SELECT T1.plane_name , max(T2.age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name;
SELECT count(*) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 3
SELECT count(*) , max(age) FROM PilotSkills GROUP BY pilot_name HAVING count(*) > 1
SELECT count(*) , avg(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) > 0
SELECT count(*) , T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35.0
SELECT count(*) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1;
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age = (SELECT min(age) FROM PilotSkills)
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY T1.pilot_name ASC;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter') AND T1.pilot_name != T3.pilot_name INTERSECT SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter') AND T1.pilot_name != T3.pilot_name WHERE T3.plane_name = 'F-14 Fighter'
SELECT count(*) FROM pilotskills AS t1 JOIN hangar AS t2 ON t1.plane_name = t2.plane_name WHERE age < (SELECT min(age) FROM pilotskills AS t3 JOIN hangar AS t4 ON t3.plane_name = t4.plane_name WHERE t4.plane_name = 'F-14')
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district AS T1;
SELECT sum(Population) FROM district WHERE AREA_km IN (SELECT max(Area_km) FROM district)
SELECT district_id , name , government_website FROM district ORDER BY population ASC;
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name , speaktitle FROM spokesman
SELECT avg(points) , avg(age) FROM spokesman WHERE rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40;
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t1.district_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.start_year < 2004 GROUP BY T1.spokesman_id HAVING count(*) >= 1
SELECT count(*) , T3.name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN spokesman AS T3 ON T1.spokesman_id = T3.spokesman_id GROUP BY T2.district_id HAVING count(*) > 0 {}
SELECT T3.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.rank_position = 1 AND T2.rank_position = 2;
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT T1.spokesman_id FROM spokesman_district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id)
SELECT sum(t1.population) , avg(t1.population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING sum(t2.spokesman_id) > 0
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures WHERE LOCATION = \"226\"
SELECT title FROM sculptures WHERE LOCATION = \"226\"
SELECT title , LOCATION FROM paintings AS T1;
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT T1.title , T2.location FROM sculptures AS T1 JOIN paintings AS T2 ON T1.sculptorid = T2.painterid
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 'gallery 226' AND sculptureID NOT IN ( SELECT sculptureID FROM paintings WHERE LOCATION = 'gallery 226' )
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) <= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) >= 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920 GROUP BY T1.artistid HAVING count(*) >= 1
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthyear FROM artists ORDER BY birthyear ASC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear = (SELECT max(birthyear) FROM artists)
SELECT T1.painterid , COUNT(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear > T2.deathyear GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title , T2.year FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T2.title , T2.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Mary\"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.location , T2.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Pablo\"
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "sculpture" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "painting"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"lithographic\"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = \"canvas\";
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"medium\" AND T2.location = \"241\" GROUP BY T1.fname HAVING count(*) >= 1;
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' AND T2.location = 241
SELECT count(*) , medium FROM paintings GROUP BY medium;
SELECT count(*) , medium FROM paintings GROUP BY medium HAVING count(*) > 0
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium HAVING count(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium HAVING medium != \"null\"
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 0
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 0
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT DISTINCT painterid FROM paintings WHERE medium = "medium oil" AND LOCATION = "240"
SELECT DISTINCT T1.painterid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = \"oil\" AND T1.location = 240;
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = \"canvas\")
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = \"canvas\" ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\") AND paintingid NOT IN (SELECT paintingid FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT YEAR FROM paintings WHERE LOCATION = \"Gallery 240\" ORDER BY YEAR DESC LIMIT 1)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR ASC LIMIT 1 OFFSET 0;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC;
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY LENGTH ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950;
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222 AND T1.medium = 'sculpture'
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR <= 1884 OR YEAR >= 1931;
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930;
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 1999;
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 2000;
SELECT LOCATION FROM paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE medium = 'on' AND mediumOn = 'panel' UNION SELECT LOCATION FROM paintings WHERE medium = 'on' AND mediumOn = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1930 EXCEPT SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1885 AND 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = '241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING count(*) >= 1
SELECT max(height_mm) , painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY height_mm DESC LIMIT 1;
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR;
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR;
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY title ASC
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY title ASC
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.birthyear , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY galleryid HAVING galleryid = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = \"240\" GROUP BY paintingid ORDER BY min(width_mm) DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY LOCATION HAVING LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY LOCATION HAVING LOCATION = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = \"medium oil\" ORDER BY YEAR ASC
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium != \"sculpture\" AND T2.title != \"David Hockney - Desert Times\"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "painter" EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE medium = "canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != 'canvas' END OF QUERY
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT winning_driver , winning_team FROM race ORDER BY winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = \"Junior Strous\") EXCEPT SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = \"Junior Strous\" )
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Pole_Position != 'Junior Strous' AND T2.Driver_Name != 'Junior Strous'
SELECT constructor FROM driver ORDER BY age ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT constructor FROM driver ORDER BY age ASC;
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT DISTINCT entrant FROM driver WHERE age > 20;
SELECT max(Age) , min(Age) FROM driver AS T1;
SELECT max(Age) , min(Age) FROM driver AS T1
SELECT count(DISTINCT engine) FROM driver WHERE age BETWEEN 30 AND 100 OR age BETWEEN 0 AND 20
SELECT count(DISTINCT engine) FROM driver WHERE age >= 30 OR age <= 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) > 0
SELECT count(*) , T1.driver_id FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) > 0;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING COUNT(*) >= 2;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti' {}
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti' AND driver_id NOT IN (SELECT driver_id FROM driver WHERE constructor = 'Bugatti')
SELECT count(*) , constructor FROM driver GROUP BY constructor;
SELECT count(*) , constructor FROM driver GROUP BY constructor;
SELECT Engine FROM driver GROUP BY Engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2;
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30;
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = \"James Hinchcliffe\" AND T2.pole_position = \"Carl Skerlong\";
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 1 AND T1.driver_name = \"James Hinchcliffe\" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 1 AND T1.driver_name = \"Carl Skerlong\"
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = "James Hinchcliffe")
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT count(*) FROM languages AS T1
SELECT count(*) FROM (SELECT DISTINCT name FROM languages)
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1;
SELECT avg(score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT count(DISTINCT language_id) FROM official_languages AS T1
SELECT count(DISTINCT language_id) FROM official_languages AS T1
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1;
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1;
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T2.id HAVING count(*) >= 2;
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"English\") GROUP BY T2.country_id HAVING avg(T1.overall_score) != 0.00;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN ( SELECT id FROM languages WHERE name = 'english' ) {}
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY avg(T2.overall_score) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id WHERE T1.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id WHERE T1.overall_score < 90 {}
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score BETWEEN 95 AND 100 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score BETWEEN 0 AND 89;
SELECT country , town_city FROM Addresses AS T1;
SELECT country , town_city FROM addresses
SELECT T1.state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.state_province;
SELECT T1.county_state_province FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_name = \"Budapest\"
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM properties AS T1
SELECT min(room_count) FROM Properties AS T1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR parking_lots = 0
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_category_description LIKE '%Mother%'
SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_description LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 'Y'
SELECT avg(T2.room_size) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id JOIN Property_features AS T3 ON T1.property_id = T3.property_id WHERE T3.feature_value = 'garden'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\";
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = Ref_Property_Types.swimming_pool) AS T3 GROUP BY T1.town_city HAVING count(*) > 0;
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1;
SELECT property_id , price_min FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1;
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(room_count) FROM Properties AS T1;
SELECT count(DISTINCT room_size) FROM rooms AS T1
SELECT count(DISTINCT room_size) FROM rooms AS T1;
SELECT user_id , search_string FROM User_searches WHERE search_string IN ( SELECT search_string FROM User_searches GROUP BY search_string HAVING count(*) >= 2 )
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM user_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.first_name != \"\" AND T2.last_name != \"\"
SELECT max(search_datetime) FROM User_searches AS T1 WHERE T1.search_string != ''
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T1.user_id FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) >= 2)
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT T3.user_id FROM User_Property_History AS T3 JOIN Properties AS T4 ON T3.property_id = T4.property_id GROUP BY T3.user_id HAVING count(*) >= 2 )
SELECT T1.user_id , T1.search_string FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1 ORDER BY count(*) DESC LIMIT 1;
SELECT user_id , user_category_code FROM User_searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT login_name FROM users WHERE user_category_code = 'Senior Citizen' ORDER BY first_name ASC;
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rione\"
SELECT date_registered FROM Users WHERE login_name = \"ratioe\"
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Yes'
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM addresses AS T1 JOIN ref_age_categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = 'Senior Citizen'
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN User_searches AS T2 ON T1.address_id = T2.address_id WHERE T2.search_string LIKE '%senior citizen%'
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(DISTINCT feature_id) >= 2)
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(DISTINCT feature_id) >= 2)
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id HAVING count(*) > 0
SELECT count(*) , T1.user_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM Users WHERE is_buyer = 1 INTERSECT SELECT user_id FROM Users WHERE is_seller = 1)
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_buyer = true INTERSECT SELECT user_id FROM users WHERE is_seller = true) + sum(price_max) FROM Properties WHERE OWNER_USER_ID NOT IN (SELECT user_id FROM users WHERE is_buyer = true INTERSECT SELECT user_id FROM users WHERE is_seller = true)
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp ASC
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp ASC
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT user_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM Rooms GROUP BY room_size HAVING count(*) > 0
SELECT count(*) , room_size FROM Rooms GROUP BY room_size;
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT address_id FROM addresses WHERE town_city = T1.first_name )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name IN ( SELECT T3.property_name FROM Properties AS T3 JOIN Users AS T4 ON T3.owner_user_id = T4.user_id WHERE T4.user_category_code = \"Buyer\")
SELECT search_string FROM User Searches WHERE user_id NOT IN ( SELECT user_id FROM Properties )
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT user_id FROM Properties)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike AS T1
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia' {}
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015 {}
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T2.cyclist_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation IN ('Russia', 'Great Britain')
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.purchase_year > 2015 )
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.result > '4:21.558' {}
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT T1.name , T1.nation , T1.result FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id WHERE T2.purchase_year != 2017 AND T2.bike_id NOT IN ( SELECT id FROM bike WHERE product_name = 'Racing Bike')
SELECT material FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id ASC
SELECT max(price) , flavor FROM goods GROUP BY flavor ORDER BY price DESC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1;
SELECT min(price) , flavor FROM goods GROUP BY flavor ORDER BY price ASC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor = \"Apple\"
SELECT id FROM goods WHERE flavor = 'Apple'
SELECT id FROM goods WHERE price BETWEEN 0 AND 2.99;
SELECT id FROM goods WHERE price BETWEEN 0 AND 2.99;
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\" AND T3.food = \"Cake\"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Lemon\" AND T3.food = \"Cake\";
SELECT T2.food , count(*) FROM items AS T1 JOIN customers AS T2 ON T1.item = T2.id GROUP BY T2.food HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.food , count(*) FROM items AS T1 JOIN customers AS T2 ON T1.item = T2.id GROUP BY T2.food;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) >= 15 ORDER BY count(*) DESC LIMIT 1;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.food = 'bread' GROUP BY T1.id HAVING count(*) > 10;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING COUNT(*) > 10
SELECT count(*) FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = 'Cake'
SELECT count(DISTINCT flavor) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = 'Cake'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.item WHERE T2.customerid = 15;
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.item JOIN customers AS T3 ON T1.customerid = T3.id WHERE T3.id = 15;
SELECT avg(price) , max(price) , min(price) , flavor FROM goods GROUP BY flavor
SELECT avg(price) , min(price) , max(price) FROM goods AS T1 WHERE T1.id IN ( SELECT id FROM goods GROUP BY id ORDER BY price ASC )
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = \"Cake\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receiptnumber WHERE T2.flavor = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Recipe = T2.id WHERE T2.Flavor = \"Cakes\" INTERSECT SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Recipe = T2.id WHERE T2.Flavor = \"Cookies\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = \"LOGAN\" AND T1.food = \"Croissant\"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = \"Logan\" AND T2.item = \"Croissant\";
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , food FROM goods GROUP BY food;
SELECT count(*) , food FROM goods GROUP BY food;
SELECT avg(price) , flavor FROM goods GROUP BY flavor;
SELECT avg(price) , flavor FROM goods GROUP BY flavor
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5.0;
SELECT id FROM goods WHERE flavor = \"Apricot\" AND price < 5.0
SELECT flavor FROM goods WHERE price > 10;
SELECT flavor FROM goods WHERE price > 10;
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = \"Tart\")
SELECT DISTINCT T2.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id JOIN goods AS T3 ON T3.id = T2.food WHERE T3.Price > 13;
SELECT DISTINCT T2.ReceiptNumber FROM receipts AS T2 JOIN customers AS T1 ON T2.customerid = T1.id JOIN goods AS T3 ON T3.id = T1.id WHERE T3.Price > 13;
SELECT T1.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15.00;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT flavor , price FROM goods WHERE id LIKE '%70%'
SELECT id , price FROM goods WHERE id LIKE "%70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods ORDER BY flavor ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT DISTINCT id FROM goods
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Flavor = \"Apple\" OR T1.customerid = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Recipe = T2.Recipe WHERE T2.Flavor = 'Apple' OR T1.CustomerId = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR item IN (SELECT id FROM goods WHERE price > 10)
SELECT receiptnumber FROM receipts WHERE date > (SELECT min(date) FROM receipts) UNION SELECT receiptnumber FROM receipts WHERE price > 10;
SELECT id FROM goods WHERE price >= 3 AND price <= 7
SELECT id FROM goods WHERE price >= 3 AND price <= 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = \"blackberry\" OR flavor = \"blueberry\"
SELECT avg(price) FROM goods WHERE flavor = 'Blackberry' OR flavor = 'Blueberry'
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food ASC
SELECT min(price) , max(price) FROM goods WHERE food != 'null' ORDER BY food ASC
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date;
SELECT count(*) , T1.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.date;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.flavor = "Apple" AND T2.food = "Tart"
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = \"Apple\" AND T3.food = \"Tarts\"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price < ( SELECT max(price) FROM goods WHERE flavor = 'Croissant' )
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) GROUP BY id HAVING count(*) >= 2
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.food GROUP BY T1.id ORDER BY T1.flavor
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM items WHERE flavor = 'Chocolate' GROUP BY item HAVING count(*) < 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.food = T2.id WHERE T2.flavor = 'Chocolate' GROUP BY T1.item HAVING count(*) <= 10;
SELECT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT flavor FROM goods WHERE food = 'Tart'
SELECT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Tart'
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.item ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150.0
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING sum(T2.price) > 150.0
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5.00;
SELECT T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.date HAVING sum(T2.price) > 100.
SELECT T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.date HAVING sum(T2.price) > 100.
SELECT count(*) FROM driver AS T1;
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20.0
SELECT manager , sponsor FROM team ORDER BY car_owner ASC
SELECT manager , sponsor FROM team ORDER BY car_owner ASC
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = "Buddy Arrington" AND T1.Make = "Team"
MAX(Points) , MIN(Points) FROM driver AS T1
SELECT max(Points) , min(Points) FROM driver AS T1
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150.0
SELECT Driver FROM driver ORDER BY Age ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT Driver , Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = \"Dublin\")
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = \"Dublin\")
SELECT avg(age) FROM driver WHERE country IN ( SELECT country FROM country WHERE Official_native_language = \"English\" )
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE official_native_language = "English")
SELECT Country FROM driver WHERE Points > 150;
SELECT Country FROM driver WHERE Points > 150 GROUP BY Country HAVING count(*) > 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT count(*) , Make FROM driver GROUP BY Make HAVING count(*) > 0;
SELECT make , count(*) FROM driver GROUP BY make HAVING count(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Dodge\" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2;
SELECT T2.manager , T2.car_owner FROM team_driver AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id GROUP BY T2.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution AS T1;
SELECT count(*) FROM institution AS T1;
SELECT name FROM institution ORDER BY name
SELECT name FROM institution ORDER BY name ASC
SELECT name FROM institution ORDER BY founded ASC
SELECT name FROM institution ORDER BY founded ASC
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1 {}
SELECT max(enrollment) , min(enrollment) FROM institution AS T1;
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver' {}
SELECT Stadium FROM institution ORDER BY Capacity DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
SELECT name , nickname FROM institution
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.number_of_championships DESC;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC;
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.affiliation = 'Public'
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1 AFFILIATION = 'Public' GROUP BY T1.institution_id HAVING sum(T2.Number_of_Championships) > 0;
SELECT count(*) , affiliation FROM institution GROUP BY affiliation HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , affiliation FROM institution GROUP BY affiliation;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT nickname FROM institution ORDER BY capacity DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT nickname FROM championship ORDER BY capacity DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sum(enrollment) FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT Enrollment FROM institution WHERE City = 'Vancouver' UNION SELECT Enrollment FROM institution WHERE City = 'Calgary'
SELECT province FROM institution WHERE founded BETWEEN 1 AND 1000 INTERSECT SELECT province FROM institution WHERE founded > 1950 AND founded < 1980
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT count(DISTINCT province) FROM institution AS t1;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York' AND T1.contents != ''
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150;
SELECT contents FROM boxes WHERE value > 150;
SELECT T2.code , avg(T1.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T2.warehouse;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses AS T1;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT avg(Contents) , max(Contents) FROM Boxes AS T1;
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(Value) FROM Boxes AS T1;
SELECT avg(Value) FROM Boxes AS T1;
SELECT DISTINCT contents FROM boxes AS T1
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT Contents) FROM Boxes AS T1
SELECT count(DISTINCT contents) FROM boxes AS T1;
SELECT DISTINCT LOCATION FROM Warehouses
SELECT count(DISTINCT LOCATION) FROM Warehouses AS T1
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' UNION SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' UNION SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' INTERSECT SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = \"Rocks\" EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = \"Scissors\"
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = \"Rocks\" OR T1.contents = \"Scissors\"
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T3.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code JOIN products AS T3 ON T1.contents = T3.value WHERE T3.name = 'Rocks' INTERSECT SELECT T3.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code JOIN products AS T3 ON T1.contents = T3.value WHERE T3.name = 'Scissors'
SELECT Code , Contents FROM Boxes ORDER BY Value ASC
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT Code , Contents FROM Boxes ORDER BY Value LIMIT 1;
SELECT Code , Contents FROM Boxes ORDER BY Value ASC LIMIT 1;
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = \"Rocks\") AND contents != \"Rocks\"
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = \"Rocks\")
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = \"Scissors\") UNION SELECT code , contents FROM boxes WHERE value < (SELECT max(value) FROM boxes WHERE contents = \"Scissors\")
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T2.warehouse HAVING avg(T1.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150;
SELECT sum(value) , count(*) FROM boxes GROUP BY contents_type;
SELECT sum(value) , count(*) FROM boxes GROUP BY contents;
SELECT sum(capacity) , avg(capacity) , max(capacity) FROM Warehouses;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) FROM Warehouses AS T1
SELECT sum(capacity) FROM Warehouses;
SELECT T2.location , max(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location HAVING max(T1.value) != 0
SELECT T1.location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location HAVING count(*) > 1
SELECT count(*) , warehouse FROM Boxes GROUP BY warehouse HAVING count(*) != 0
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT location) FROM warehouses WHERE capacity > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(DISTINCT warehouse) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = \"Chicago\")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code HAVING count(*) > 1000000000
SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses GROUP BY capacity ORDER BY count(*) DESC LIMIT 1))
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE capacity > 1000) AND LOCATION != 'Chicago'
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT home_conference FROM university WHERE home_conference != ""
SELECT DISTINCT home_conference FROM university AS T1;
SELECT count(*) , home_conference FROM university GROUP BY home_conference HAVING count(*) > 0
SELECT count(*) , home_conference FROM university GROUP BY home_conference HAVING count(*) > 1000000
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1;
SELECT home_conference FROM university ORDER BY enrollment ASC LIMIT 1;
SELECT major_name , major_code FROM major ORDER BY major_code ASC
SELECT major_name , major_code FROM major ORDER BY major_code ASC;
SELECT T1.major_name , T2.rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T3.university_id = T2.university_id WHERE T3.university_name = \"Augustana College\"
SELECT T1.Rank , T2.Major_Name FROM major_ranking AS T1 JOIN major AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T1.University_ID = T3.University_ID WHERE T3.University_Name = 'Augustana College'
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.majord_id WHERE T3.majename = \"Accounting\" AND T2.rank = 1 {}
SELECT T3.university_name , T3.city , T3.state FROM university AS T3 JOIN major_ranking AS T2 ON T3.university_id = T2.university_id JOIN major AS T1 ON T2.maj_id = T1.maj_id WHERE T1.major_name = \"Accounting\" AND T2.rank = 1 ORDER BY T2.reputation_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.rank LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN (SELECT T2.university_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1)
SELECT university_name FROM university WHERE university_id NOT IN (SELECT T1.university_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = 'Wisconsin'
SELECT T1.university_name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = \"Wisconsin\"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T2.rank >= 3;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T2.rank >= 3;
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank <= 4 {}
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank 1) UNION SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank 2) UNION SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank 3) UNION SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank 4) UNION SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank 5)
SELECT T1.university_name , T1.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point >= ( SELECT max(reputation_point) FROM overall_ranking ) ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM Movies WHERE rating != 'None'
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM Movies GROUP BY Movie)
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT title FROM movies WHERE rating LIKE 'G'
SELECT T2.Title FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = 'Odeon' AND T2.movie IS NOT NULL;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = 'Odeon' AND T2.Title IN (SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = 'Odeon')
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Movie IN (SELECT Movie FROM MovieTheaters)
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Movie IN (SELECT T3.Movie FROM MovieTheaters AS T3 JOIN Movies AS T4 ON T3.Movie = T4.code)
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating LIKE 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.movie != T2.code AND T1.movie != T2.code
SELECT count(*) FROM MovieTheaters AS T1 WHERE T1.movie IN (SELECT code FROM Movies)
SELECT count(DISTINCT title) FROM movietheaters AS T1;
SELECT count(DISTINCT title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie;
SELECT count(DISTINCT movietheater) FROM MovieTheaters;
SELECT count(DISTINCT movie) FROM Movietheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizen%'
SELECT T1.name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G' OR T2.rating = 'PG'
SELECT T1.name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating IN ('G', 'PG')
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Imperial'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM Movietheaters WHERE name = 'Odeon')
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title ASC
SELECT title FROM movies ORDER BY rating ASC;
SELECT title FROM movies ORDER BY rating ASC
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Name HAVING COUNT(*) >= 1;
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name HAVING COUNT(*) >= 1;
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT T2.name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT T2.Name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T2.Rating = 'G'
SELECT Title FROM Movies AS T1;
SELECT title FROM movies
SELECT COUNT(*) FROM (SELECT DISTINCT rating FROM Movies)
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating != 'Rating' UNION SELECT * FROM Movies WHERE Rating != 'Rating'
SELECT * FROM Movies WHERE Rating != 'R' UNION SELECT * FROM Movies WHERE Rating != 'U'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN ( SELECT movie FROM Movietheaters )
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'Leo Wong' AND T1.sender = 'Leo Wong'
SELECT sum(T2.Weight) FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient WHERE T1.Name = \"Leo Wong\" AND T2.Sender = \"Leo Wong\"
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT POSITION FROM Employee WHERE Name = 'Amy Wong'
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE POSITION = 'Intern'
SELECT avg(Salary) FROM Employee WHERE POSITION = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = 'Physician'
SELECT LEVEL FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employee WHERE T2.position = 'Physician'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\" AND T2.sender = \"Leo Wong\"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T1.sender = 'Leo Wong' AND T1.shipmentid IN ( SELECT shipmentid FROM package AS T3 JOIN client AS T4 ON T3.recipient = T4.accountnumber WHERE T3.sender = 'Leo Wong' )
SELECT packagenumber FROM PACKAGE WHERE recipient IN (SELECT accountnumber FROM client WHERE name = \"Leo Wong\") AND sender IN (SELECT accountnumber FROM client WHERE name = \"Leo Wong\").
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\" AND T2.sender = \"Leo Wong\"
SELECT * FROM PACKAGE WHERE Sender = \"Leo Wong\" OR Recipient = \"Leo Wong\"
SELECT DISTINCT packagenumber FROM package WHERE sender LIKE '%Leo %Wong%' UNION SELECT DISTINCT packagenumber FROM package WHERE recipient LIKE '%Leo %Wong%'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Ogden Wernstrom' AND T2.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN employee AS T2 ON T1.sender = T2.employeeid AND T1.recipient = T2.accountnumber WHERE T2.name = 'Ogden Wernstrom' INTERSECT SELECT count(*) FROM package AS T1 JOIN employee AS T2 ON T1.sender = T2.employeeid AND T1.recipient = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE WHERE Sender IN (SELECT AccountNumber FROM Client WHERE Name = "John Zoidfarb")
SELECT T1.packagenumber , T1.weight FROM PACKAGE AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'John' ORDER BY T1.weight DESC LIMIT 1;
SELECT packagenumber , weight FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = \"John\") ORDER BY weight DESC LIMIT 1;
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , min(sender) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.manager != \"null\" AND T2.date = (SELECT min(date) FROM shipment AS T3 WHERE T3.manager != \"null\")
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Phillip J. Fry'
SELECT T2.ShipmentID FROM Employee AS T1 JOIN Shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = 'Phillip J Fry'
SELECT Date FROM Shipment AS T1;
SELECT Date FROM Shipment AS T1;
SELECT shipmentid FROM shipment WHERE planet IN ( SELECT planetID FROM planet WHERE name = 'Mars' )
SELECT T2.ShipmentID FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T1.Name = 'Mars'
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = "Mars" AND T2.name = "Turanga Leela"
SELECT shipmentid FROM shiptege AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.position = 'Turanga Leela' AND T1.planet = (SELECT planetid FROM planet WHERE name = 'Mars')
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetID FROM planet WHERE name = "Mars") OR manager IN (SELECT employeeid FROM employee WHERE name = "Turanga Leela")
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = 'Turanga Leela' AND T1.planet = 389640857087008810
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY sum(T2.weight) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING count(*) > 0
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name HAVING count(*) > 0 {}
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T2.manager HAVING count(*) > 0
SELECT sum(weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
Total weight of all packages shipped on Mars = sum(weight) from package.shipment AS T1 WHERE T1.planet = (SELECT planetid FROM planet WHERE name = "Mars")
SELECT T1.name , T2.weight FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipment WHERE T1.name != \"null\" GROUP BY T1.name HAVING sum(T2.weight) > 0.5
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY sum(T2.weight) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30;
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet JOIN shipment AS T3 ON T2.shipmentid = T3.shipment WHERE T3.weight > 30 GROUP BY T1.planetid HAVING sum(T3.weight) > 30;
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planetid FROM planet WHERE name = "Omicron Persei 8) AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Zapp Brannigan' AND T2.planet = (SELECT planet FROM planet WHERE name = 'Omicron Persei 8')
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planetid FROM planet WHERE name = 'Omicron Persei 8') OR T2.sender = 'Zapp Brannigan'
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Omicron Persei 8' OR T1.sender IN (SELECT T3.name FROM client AS T3 JOIN package AS T4 ON T3.accountnumber = T4.recipient)
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT name FROM employee WHERE employeeid NOT IN ( SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' )
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T2.name FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employee WHERE T1.planet IN (SELECT planetid FROM planet WHERE name = "Omega III")
SELECT T2.name FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employeeid = T2.employeeid WHERE T1.planet IN (SELECT planetid FROM planet WHERE name = \"Omega III\")
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE count(*) = 1
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT employeeid FROM has_clearance) GROUP BY T1.planetid HAVING count(*) = 1
SELECT Name FROM Employee WHERE Salary >= 5000 AND Salary <= 10000;
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000;
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars")
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id
SELECT count(*) FROM game AS T1;
SELECT title , developers FROM game ORDER BY units_sold_millions DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != \"Nintendo\"
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
MAX(Rank_of_the_year) = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 3
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.player_name , T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T3.title = \"Super Mario World\"
SELECT T2.Player_name , T2.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T1.Title = "Super Mario World"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
SELECT DISTINCT T2.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\";
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\"
SELECT avg(T2.Units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\" GROUP BY T2.Game_ID HAVING avg(T2.Units_sold_Millions) != 0;
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = 'Asia' OR T2.Market_district = 'USA'
SELECT T2.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT count(*) , Franchise FROM game GROUP BY Franchise HAVING count(*) > 1000000
SELECT count(*) , franchise FROM game GROUP BY franchise;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2;
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2;
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T1.Title IN ( SELECT T4.Title FROM game AS T4 JOIN game_player AS T5 ON T4.Game_ID = T5.Game_ID JOIN player AS T6 ON T5.Player_ID = T6.Player_ID WHERE T6.College = \"Auburn\")
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" OR T3.College = \"Auburn\"
SELECT DISTINCT Franchise FROM game AS T1;
SELECT DISTINCT Franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE rank_of_the_year = 1 AND POSITION = 'Guard')
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE POSITION = \"Guard\")
SELECT name FROM press ORDER BY yearly_profit_billion DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM press ORDER BY year_profit_billion DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM press WHERE monthly_profits_billion > 10000000 OR yearly_profits_billion > 10000000
SELECT name FROM press WHERE year_profit > 150000000 OR month_profit > 100000000
SELECT avg(Profit_billion) , max(Profit_billion) FROM press AS T1;
SELECT avg(Yearly_Profits_billions) , max(Yearly_Profits_billions) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profit_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY max(month_profits_billion) ASC LIMIT 1 UNION SELECT name FROM press ORDER BY min(month_profits_billion) ASC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1;
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE Age < 30.0
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender HAVING count(*) >= 1
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender HAVING count(*) > 1000
SELECT title FROM book ORDER BY release_date DESC LIMIT 1000000;
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , book.Book_Series FROM book GROUP BY book.Book_Series;
SELECT count(*) , book_series FROM book GROUP BY book_series;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT book_series FROM book WHERE sale_amount > 1000 EXCEPT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"MM\" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"LT\"
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"MM\" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = \"LT\"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1 {}
SELECT T1.Title , T2.Name , T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3;
SELECT T1.Title , T1.Name , T1.press_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id ORDER BY T1.sale_amount DESC LIMIT 3;
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING sum(T2.sale_amount) > 0
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1000;
SELECT T3.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1000 ORDER BY count(*) DESC LIMIT 1000;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id IN (SELECT press_id FROM press WHERE name = "Accor"))
SELECT name FROM author WHERE author_id NOT IN ( SELECT press_id FROM press WHERE name = 'Accor' )
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T1.name , T1.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors AS T1;
SELECT DISTINCT author_name FROM authors AS T1;
SELECT author_name , other_details FROM Authors
SELECT * FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents;
SELECT T1.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_id = 4
SELECT T1.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = \"Travel to Brazil\"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.staff_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = \"Bianka Cummings\"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = \"Travel to China\"
SELECT count(*) , author_name FROM Documents GROUP BY author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes AS T1
SELECT next_process_id , process_name , process_description FROM Business_processes WHERE process_id = 9
SELECT T1.process_name FROM Business_processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_id = 9 ORDER BY T2.process_outcome_description LIMIT 1;
SELECT count(*) FROM Process_outcomes AS T1
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status AS T1;
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM staff AS T1;
SELECT staff_id , staff_details FROM Staff AS T1;
SELECT staff_details FROM Ref_Staff_Roles WHERE staff_role_code = 100
SELECT count(*) FROM Ref_Staff_Roles AS T1;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_processes AS t1 JOIN processes AS t2 ON t1.process_id = t2.process_id WHERE t2.process_name = \"process\"
SELECT process_id FROM Documents_process AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY process_id HAVING count(*) > 0;
SELECT document_id FROM documents WHERE document_id NOT IN ( SELECT document_id FROM documents_processes )
SELECT process_id FROM documents_processes EXCEPT SELECT process_id FROM documents_processes GROUP BY process_id HAVING count(*) > 1
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_outcomes AS T1 JOIN Process_status AS T2 ON T1.process_status_code = T2.process_status_code WHERE T1.process_outcome_code = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = \"Travel to Brazil\"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id HAVING count(*) > 0
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id WHERE T2.process_id = 9 AND T1.document_id = 0;
SELECT count(*) , staff_id FROM Staff_in_Processes GROUP BY staff_id HAVING count(*) > 0
SELECT count(*) , staff_role_code FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT count(*) FROM agencies AS T1
SELECT count(*) FROM agencies AS T1;
SELECT agency_id , agency_details FROM Agencies AS T1;
SELECT agency_id , agency_details FROM Agencies AS T1;
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM Clients AS T1;
SELECT client_id , client_details FROM Clients AS T1
SELECT client_id , client_details FROM clients AS T1;
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT count(*) , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code HAVING count(*) > 0
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = \"Bad\"
SELECT client_details , sic_code FROM Clients WHERE sic_code = \"Bad\"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM invoices AS T1;
SELECT count(*) FROM INVOICES AS T1
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM invoices GROUP BY client_id;
SELECT count(*) , client_id FROM invoices GROUP BY client_id;
SELECT T1.client_id , T2.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM INVOICES GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status HAVING count(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status HAVING count(*) > 0
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T2.agent_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_details , T2.agency_id FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , purpose_of_meeting FROM meetings AS T1;
SELECT meeting_type , other_details FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings AS T1
SELECT T1.payment_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT payment_id , payment_details FROM payments WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoice_status = 'Working')
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT invoice_id FROM Payments )
SELECT count(*) FROM Payments AS T1
SELECT count(*) FROM payments AS T1
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id HAVING count(*) > 0
SELECT count(*) , T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff AS T1;
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id HAVING count(*) > 0
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type HAVING count(*) > 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type;
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
SELECT T1.meeting_id , count(*) FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id HAVING count(*) > 0
SELECT count(*) , meeting_id FROM staff_in_meetings GROUP BY meeting_id;
SELECT staff_id , count(*) FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1;
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T3 ON T1.client_id = T3.client_id;
SELECT T2.staff_id , T2.staff_details FROM Staff AS T2 JOIN Staff_in_Meetings AS T1 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING count(*) >= 1 AND T2.staff_details LIKE '%s%'
SELECT T1.staff_id , T2.staff_details FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.staff_details LIKE '%s%' GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'yes' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agent_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id WHERE T4.invoice_status = 'yes' GROUP BY T3.client_id HAVING count(*) = 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'yes' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id WHERE T2.invoice_status = 'yes' GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
