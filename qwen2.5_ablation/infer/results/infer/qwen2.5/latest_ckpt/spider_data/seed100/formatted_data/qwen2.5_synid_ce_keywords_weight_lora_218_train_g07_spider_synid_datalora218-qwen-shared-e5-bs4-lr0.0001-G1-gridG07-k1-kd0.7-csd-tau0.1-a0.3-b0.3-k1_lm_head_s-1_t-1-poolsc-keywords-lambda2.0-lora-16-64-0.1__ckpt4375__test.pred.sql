SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1 OFFSET 0
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
Earnings > 1200000 FROM player
SELECT Country FROM player WHERE Earnings > (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_id HAVING count(*) > 2;
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = \"Sam Allardyce\"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) >= 2;
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club EXCEPT SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings BETWEEN 1400000 AND 1100000
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1
SELECT count(DISTINCT country) FROM player;
SELECT Earnings FROM player WHERE Country IN ("Australia", "Zimbabwe")
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
orders_items_count = (SELECT T1.order_id , T1.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id)
orders_items_count = ( SELECT T2.order_id , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ) ORDER_ITEMS_counts = ( SELECT T1.order_status_code , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ) orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items_counts, orders_items
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 1 UNION SELECT min(T1.date_order_placed) FROM orders AS T1 ORDER BY T1.date_order_placed ASC {}
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_id NOT IN ( SELECT T3.customer_id FROM customers AS T3 JOIN orders AS T4 ON T3.customer_id = T4.customer_id )
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2 )
products_with_two_or_less_orders = (SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2)
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T2.order_id , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T2.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T2.order_id , sum(T1.order_item_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ORDER BY sum(T1.order_item_price) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code ORDER BY count(*) DESC
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
[ { "invoice_status_code": "Shipped", "invoice_date": "2019-05-14T13:36:48Z", "shipment_date": "2019-05-14T13:36:48Z" } ]
SELECT invoice_status_code , invoice_date , shipment_date FROM invoices
Shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id SELECT T3.product_name , T2.shipment_date FROM products AS T3 JOIN shipments AS T2 ON T3.product_id = T2.product_id
shipments AS (SELECT T2.product_name , T1.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
orders.order_item_status_code = 'Shipped' AND orders.order_id IN (SELECT order_id FROM shipments WHERE shipment_tracking_number != 'null')
orders_items = orders.order_item_id shipments = shipments.shipment_id order_items_shipment = (shipments.shipment_tracking_number , order_items.order_item_status_code ) shipment_items = ( shipments.order_id , order_items.order_item_id ) orders_items_shipment = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) orders_items_shipment = ( shipments.order_id , order_items.order_item_id ) shipment_items = ( shipments.shipment_id , order_items.shipment_tracking_number ) shipment_items = ( shipments.order_id , order_items.order_item_id ) orders_items_shipment = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) orders_items_shipment = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.shipment_id , order_items.order_item_id ) shipment_items = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) shipment_items = ( shipments.order_id , order_items.order_item_id ) shipment_items = ( shipments.order_id , order_items.order_item_id ) orders_items_shipment = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) orders_items_shipment = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.shipment_id , order_items.order_item_id ) shipment_items = ( shipments.order_id , order_items.order_item_id ) orders_items_shipment = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) orders_items_shipment = ( shipments.order_id , order_items.order_item_id ) shipment_items = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.shipment_tracking_number , order_items.order_item_status_code ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order_items.order_item_id ) shipments = ( shipments.order_id , order
products = (SELECT T2.product_name , T2.product_color FROM products AS T2 JOIN shipment_items AS T3 ON T2.product_id = T3.product_id ORDER BY T3.shipment_date ASC)
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id
SELECT T2.product_name , T2.product_price , T2.product_description FROM products AS T2 JOIN order_items AS T3 ON T2.product_id = T3.product_id JOIN orders AS T4 ON T3.order_id = T4.order_id JOIN customers AS T5 ON T4.customer_id = T5.customer_id WHERE T5.gender_code = 'Female' ORDER BY T2.product_name ASC
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT invoice_status_code FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_id NOT IN (SELECT invoice_number FROM shipments)
SELECT order_id , date_order_placed , sum(total_cost) FROM orders GROUP BY order_id
SELECT order_id , date_order_placed , sum(total_amount_paid) FROM orders GROUP BY order_id
SELECT count(*) FROM orders WHERE order_id NOT IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders WHERE order_id IN ( SELECT order_id FROM orders
SELECT count(DISTINCT customer_id) FROM orders;
SELECT count(DISTINCT order_item_status_code) FROM orders ORDER BY order_item_status_code ASC
order_items.order_item_status_code.count()
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM orders_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
[ ["customer_first_name", "product_name"] ("John", "Shoes") ("Mary", "Shoes") ]
customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T1.customer_id = T3.customer_id JOIN order_items AS T4 ON T3.order_id = T4.order_id JOIN products AS T5 ON T4.product_id = T5.product_id WHERE T1.customer_first_name != \"null\" GROUP BY T1.customer_first_name ORDER BY count(*) DESC
Shipment_items.count()
SELECT count(DISTINCT product_id) FROM shipments;
SELECT avg(product_price) FROM products;
average_product_price = avg(product_price)
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) != 0;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 0
SELECT email_address , town_city , county FROM customers ORDER BY gender_code ASC LIMIT 1;
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_name FROM orders_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2;
Ships = (SELECT T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2)
[ "shipment_tracking_number", "shipment_date" ]
[ "shipment_tracking_number", "shipment_date" ]
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_size , product_description FROM products WHERE product_price <> (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1;
channel.query("SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'")
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1;
SELECT T1.Name , COUNT(*) FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
channel_id , name , internet SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
channel_id IN (SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T2.age < 40 INTERSECT SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T2.age > 60)
channel(id,name) SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.name = 'Hank Baskett')
SELECT count(*) FROM radio AS T1;
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 0
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) >= 3;
SELECT city , station_name FROM city_channel ORDER BY station_name
city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.id
SELECT T1.transmitter , T2.station_name FROM radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id ORDER BY T1.EP_RPM DESC
transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.radio_id HAVING count(*) > 1
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
MAX(Top_Speed) FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1 Model
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship LIKE "%United States%"
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.driver_id , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012;
vehicle_driver.Vehicle_ID COUNT(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012 GROUP BY T2.Driver_ID HAVING COUNT(*) > 1
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle;
vehicle_driver V1 = (SELECT T1.Driver_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Power > 5000)distinct Driver_ID;
vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.Power > 5000;
SELECT Model FROM vehicle GROUP BY Model HAVING sum(Total_Production) > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT model FROM vehicle WHERE total_production > 100 UNION SELECT model FROM vehicle WHERE top_speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
vehicle_driver(Vehicle_ID) SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Citizenship = 'Ziyang'
SELECT T1.Vehicle_ID , T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T1.Vehicle_ID , T2.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Builder = "Ziyang"
vehicle_driver V1 AS (SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 ) UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 ) {}
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN (SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\") OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 0
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT T2.Name , T2.Citizenship FROM driver AS T2 JOIN vehicle_driver AS T1 ON T2.Driver_ID = T1.Driver_ID WHERE T1.Vehicle_ID = T3.Vehicle_ID
SELECT T2.Name , T2.Citizenship FROM driver AS T2 JOIN vehicle_driver AS T1 ON T2.driver_id = T1.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM Exams AS T1;
SELECT count(*) FROM Exams AS T1;
SELECT distinct subject_code FROM exams ORDER BY subject_code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != 'Database'
SELECT exam_date , exam_name FROM Exams WHERE subject_code != 'Database'
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE "%data%" ORDER BY exam_date DESC
SELECT TYPE_of_question_code , count(*) FROM Questions GROUP BY TYPE_of_question_code
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.comments = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.first_name , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT T2.first_name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING count(*) >= 2
SELECT Valid_Answer_Text FROM VALID_ANSWER AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Valid_Answer_Text FROM VALID_ANSWER AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU <> 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU <> "M"
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU LIKE "F" OR Gender_MFU LIKE "M"
SELECT Last_Name FROM Students WHERE Gender_MFU LIKE "F%" OR Gender_MFU LIKE "%M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Absent\"
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = \"Absent\"
SELECT TYPE_of_question_code FROM questions GROUP BY TYPE_of_question_code HAVING count(*) >= 3;
SELECT TYPE_of_Question_Code FROM QUESTIONS GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products;
SELECT count(*) FROM products;
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name LIKE '%Monitor%'
SELECT product_price FROM products WHERE product_name LIKE '%Monitor%'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT count(*) FROM products WHERE product_type_code = 'Hardware'
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products WHERE product_type_code IN (SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY product_price ASC)
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
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
SELECT T1.address_details , T2.customer_phone , T2.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = "Jeromy"
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = "Jeromy"
SELECT count(*) , payment_method_code FROM customers GROUP BY payment_method_code;
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code ASC LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers;
SELECT DISTINCT payment_method_code FROM customers;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS T1;
SELECT count(*) FROM customer_orders;
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_name = "Jeromy")
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
customer_orders_count = ( SELECT T1.customer_id , T1.customer_name , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 100 )
customer_orders_count = (SELECT T1.customer_id , T1.customer_name , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id)
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
order_status_code , count(*) FROM customer_orders GROUP BY order_status_code;
order_status_code count(*) order_status_code order_status_code 1 209873546 209873546 209873546 2 209873546 209873546 209873546 3 209873546 209873546 209873546
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor' AND t2.order_id IN ( SELECT order_id FROM customer_orders )
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor' ORDER BY t2.order_id ASC LIMIT 1000;
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(*) FROM customer_orders AS T1
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
order_items = order_items.join(products,'T1.product_id = T2.product_id') order_items = order_items.group_by(order_items.order_id).count() > 3 order_items = order_items.group_by(order_items.order_id).product_id.count() > 6 order_items = order_items.order_id order_items = order_items.order_id.join(order_items,'T1.order_id = T2.order_id') order_items = order_items.order_id.group_by(order_items.order_id).count() > 3 order_items = order_items.order_id.join(order_items,'T1.order_id = T2.order_id') order_items = order_items.order_id.group_by(order_items.order_id).product_id.count() > 6 order_items = order_items.order_id order_items = order_items.order_id.join(order_items,'T1.order_id = T2.order_id') order_items = order_items.order_id group by order_items.order_id having count(*) > 3 or count(*) > 6 order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order_id = (select order_id from order_items where order_quantity >= 6) or (select order_id from order_items group by order_id having count(*) >= 3) order_items = order_items.order_id join order_items on order_items.order
order_items = (SELECT order_id , order_date FROM Order_items WHERE order_quantity > 6 UNION SELECT order_id , order_date FROM Order_items GROUP BY order_id HAVING count(DISTINCT product_id) > 3)
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980;
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(population) FROM region AS t1;
SELECT avg(population) FROM region;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T2.Name , T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM region EXCEPT SELECT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT name FROM region EXCEPT SELECT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
building1 = (SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15)
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15 {}
SELECT DISTINCT Address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC LIMIT 1000000;
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
most_common_analytical_layer_type_code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T3.customer_id = T2.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customers_and_services )
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) LIMIT 1;
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.service_id ORDER BY count(*) LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services AS T1 JOIN channels AS T2 ON T1.service_id = T2.service_id JOIN services AS T3 ON T2.service_id = T3.service_id;
SELECT count(*) , t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
from customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_details = \"Hardy Kutch\" UNION SELECT T3.service_details FROM customer_interactions AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.customer_id IN (SELECT service_id FROM customer_interactions WHERE status_code = \"good\")
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.services_and_channels_details = "good"
customers_and_services = (SELECT T1.customer_id , T1.service_id FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_details = \"Hardy Kutch\" AND T1.service_id IN ( SELECT T3.service_id FROM customers_and_services AS T3 JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.customer_details = \"Hardy Kutch\" AND T3.service_id = 1 ) INTERSECT SELECT T1.customer_id , T1.service_id FROM customers_and_services AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_details = \"Hardy Kutch\" AND T1.service_id IN ( SELECT T3.service_id FROM customers_and_services AS T3 JOIN customers AS T4 ON T3.customer_id = T4.customer_id WHERE T4.customer_details = \"Hardy Kutch\" AND T3.service_id = 1 )) SERVICE_AND_CHANNEL = (SELECT T5.service_id , T5.channels_id FROM customers_and_services AS T5 JOIN customer_interactions AS T6 ON T5.customers_and_services_id = T6.customers_and_services_id WHERE T6.status_code = \"Bad\") JOIN services AS T7 ON T7.service_id = T5.service_id JOIN channels AS T8 ON T8.channel_id = T5.channels_id JOIN analytical_layer AS T9 ON T9.customers_and_services_id = T5.customers_and_services_id WHERE T7.service_id = T8.service_id AND T9.analytical_layer_type_code = \"Bad\" UNION SELECT T5.service_id , T5.channels_id FROM customers_and_services AS T5 JOIN customer_interactions AS T6 ON T5.customers_and_services_id = T6.customers_and_services_id WHERE T6.status_code = \"Bad\" AND T5.service_id = 1) JOIN services AS T10 ON T10.service_id = T5.service_id JOIN channels AS T11 ON T11.channel_id = T5.channels_id JOIN analytical_layer AS T12 ON T12.customers_and_services_id = T5.customers_and_services_id JOIN customers AS T13 ON T13.customer_id = T5.customer_id WHERE T13.customer_details = \"Hardy Kutch\" AND T10.service_id IN ( SELECT T14.service_id FROM customers_and_services AS T14 JOIN customer_interactions AS T15 ON T14.customers_and_services_id = T15.customers_and_services_id WHERE T15.status_code = \"Bad\") INTERSECT SELECT T10.service_id , T10.channels_id FROM customers_and_services AS T10 JOIN customer_interactions AS T11 ON T10.customers_and_services_id = T11.customers_and_services_id WHERE T11.status_code = \"Bad\" AND T10.service_id = 1) JOIN services AS T14 ON T14.service_id = T10.service_id JOIN channels AS T15 ON T15.channel_id = T10.channels_id WHERE T13.customer_details = \"Hardy Kutch\" AND T14.service_id = 1).union(customers_and_services) union (SELECT T10.service_id , T10.channels_id FROM customers_and_services AS T10 JOIN customer_interactions AS T11 ON T10.customers_and_services_id = T11.customers_and_services_id WHERE T11.status_code = \"Bad\") INTERSECT (SELECT T14.service_id , T14.channels_id FROM customers_and_services AS T14 JOIN customer_interactions AS T15 ON T14.customers_and_services_id =
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T3.services_and_channels_details = "bad"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details != 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT services_and_channels_details FROM customers_and_services WHERE service_id NOT IN ( SELECT service_id FROM customers_and_services )
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE status_code = "unsatisfied" ) UNION SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id WHERE T4.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE status_code = "unsatisfied" )
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "unsatisfied"
SELECT count(*) FROM Vehicles AS T1;
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC
sorted(Vehicles.name)descending
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles;
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
{ "sql": "SELECT name , TYPE_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year >= 2013 AND model_year <= 2014"
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 AND TYPE_of_powertrain != 'Unknown' UNION SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 AND TYPE_of_powertrain != 'Unknown'
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year IN (2013 , 2014) GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
Type_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
功率型：4种类型，分别是汽油机、柴油机和混合动力。 汽油机：1000辆 柴油机：800辆 混合动力：600辆
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
Most_common_type_of_powertrain = (SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1)
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2;
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
Total_hours = sum(total_hours) FROM renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T2vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY sum(T2.total_hours) DESC;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans;
SELECT avg(amount_of_loan) FROM Student_Loans;
detention_count = count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2 {}
```sql SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2 ```
classes.filter(class_details.contains('data') ^ classes.filter(class_details.contains('net'))).map({teacher_details: T1.teacher_details}) Teacher Details
classes_details = [class_details for class_details in Classes if 'data' in class_details and 'net' not in class_details]teachers_details = [T1.teacher_details for T1 in Teachers[classes_details]]
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) UNION SELECT bio_data FROM Students WHERE student_id IN (SELECT student_id FROM Student_LOANS)
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT student_id FROM Detention ) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id
学生贷款信息和学生ID： 学生贷款学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生ID学生
学生贷款信息： 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期，金额 学生贷款学生ID，日期
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN CLASSASSESSMENTS AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
[ { "student_details": "Student_Details", "address_type_description": "Addresses.AddressTypeDescription" }, { "student_address_id": "Student_Addresses.StudentAddressId", "address_type_code": "Students_Addresses.AddressTypeCode", "address_type_description": "Students_Addresses.AddressTypeDescription" } ]
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Addresses AS T3 ON T2.address_id = T3.address_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.address_details , T2.biological_info FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.behaviour_monitoring_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data FROM Students AS T1 JOIN Transcript AS T2 ON T1.student_id = T2.student_id WHERE T2.transcript_details = "Behaviour Monitoring" GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"behavioral\" GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"performance\" GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"performance\" GROUP BY T1.student_details ORDER BY count(*) DESC LIMIT 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.biobio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
Achievements(Achievement_ID , Achievement_Type_Code , Achievement_Details) , Achievement_Type_Description (Achievement_Type_Code , Achievement_Type_Description)
SELECT T1.achievement_details , T2.Achievement_Type_Description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id) AND T2.student_id NOT IN (SELECT T3.student_id FROM Achievements AS T3 JOIN Students AS T4 ON T3.student_id = T4.student_id)
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT teacher_id FROM Achievements ) AND EXISTS ( SELECT T1.teacher_id FROM Teachers AS T1 JOIN Students_Addresses AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.student_id IN ( SELECT achievement_id FROM Achievements ) )
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.acquisition_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.academic_date , T2.student_details FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
{ "sql": "SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%suite%' OR student_details LIKE '%
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id JOIN CLASSASSESSMENT AS T3 ON T1.class_id = T3.class_id WHERE T3.class_details = T2.class_details
classes = (SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T1.class_details = T2.class_details)
SELECT max(T1.class_details) , T2.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY max(T1.class_details) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY detention_type_code ASC LIMIT 1;
SELECT T1.bio_data , T2.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_LOANS)
SELECT min(date_of_loan) FROM Student_Loans AS T1
SELECT min(date_of_loan) FROM Student_Loans;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
Transcripts.transcript_details = (SELECT T1.transcript_details FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(student_details) FROM Students))
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.student_id LIMIT 1;
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id ORDER BY T3.date_from LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_LOANS GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id;
SELECT T1.student_id , T2.bio_data , COUNT(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 WHERE T1.detention_type_code = \"Go Through\"
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_type_description , T2.address_id FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ) INTERSECT SELECT bio_data FROM Students WHERE student_id IN ( SELECT T1.student_id FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id )
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Loans)
student_addresses = (SELECT T1.address_id , T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2)
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Transcripts AS T3 ON T1.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1;
SELECT datetime_detention_start FROM Detention
SELECT name FROM author
SELECT name FROM author
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS t1;
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT Name , Address FROM Client ORDER BY Name
SELECT T1.title , T2.name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.isbn = T2.isbn
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.Isbn = T2.Isbn
SELECT idorder , name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient
SELECT T1.idorder , T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T2.name , count(*) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.name HAVING count(*) > 0
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
Books_order ISBN , count(*) FROM books_order GROUP BY books_order.isbn;
SELECT count(*) , isbn FROM books_order GROUP BY isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) > 0
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) > 0
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title , T2.purchaseprice FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.idorder ORDER BY sum(T1.amount) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.idorder ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn ORDER BY T2.idorder DESC LIMIT 1000000;
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder > '0001-01-01'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
count(*) , T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) > 0
count(*) , idclient FROM orders GROUP BY idclient ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
total_amount = (SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM Book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(SalePrice - PurchasePrice) FROM Book;
SELECT max(SalePrice - PurchasePrice) FROM BOOK
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.saleprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T2.saleprice) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'George Orwell'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell' ORDER BY T1.saleprice ASC LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice ASC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T2.author = 'Plato' AND T1.saleprice < (SELECT avg(T1.saleprice) FROM book AS T1)
SELECT T2.title FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato' AND T2.saleprice < (SELECT avg(T2.saleprice) FROM book AS T2))
SELECT T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM orders AS t1 JOIN author AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t1.idorder = t3.idorder WHERE t2.name = "Pride and Prejudice"
SELECT count(*) FROM orders AS t1 JOIN author AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t1.idorder = t3.idorder WHERE t2.name = 'Pride' INTERSECT SELECT count(*) FROM orders AS t1 JOIN author AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t1.idorder = t3.idorder WHERE t2.name = 'Prejudice'
SELECT idorder FROM book WHERE title = 'Pride and Prejudice' INTERSECT SELECT idorder FROM book WHERE title = 'The Little Prince' IDORDER
SELECT T1.idorder FROM orders AS T1 JOIN author AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T1.idorder = T3.idorder WHERE T2.name = 'Pride' AND T3.title = 'Pride and Prejudice' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN author AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T1.idorder = T3.idorder WHERE T2.name = 'Prejudice' AND T3.title = 'The Little Prince'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'Peter Doe' AND T5.name = 'James Smith' ORDER BY T1.isbn ASC
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'James Smith'
SELECT T2.Title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder = T2.idOrder JOIN Author AS T3 ON T2.author = T3.isbn WHERE T1.idClient = 'Peter Doe' EXCEPT SELECT T2.Title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder = T2.idOrder JOIN Author AS T3 ON T2.author = T3.isbn WHERE T1.idClient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN author AS T3 ON T1.idauthor = T3.idauthor WHERE T3.name = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , RELEASE FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book WHERE TYPE <> "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT book_id FROM book ORDER BY pages ASC LIMIT 1;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating DESC LIMIT 1;
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = \"Novel\"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Readers_in_Million DESC;
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT count(*) FROM customer
SELECT count(*) FROM customer AS T1;
SELECT Name FROM customer ORDER BY LEVEL_of_Membership
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality IN ('England', 'Australia')
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1;
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1;
Nationality , Count Name , 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer WHERE Card_Credit < 50 EXCEPT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T1.Card_Credit > 50 AND T2.Quantity < 75 UNION SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id WHERE T1.Card_Credit < 75 AND T2.Quantity > 30 {}
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name ORDER BY T1.Name
SELECT T2.name , sum(T1.quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY sum(T1.quantity) ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1 {}
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1;
SELECT DISTINCT manager FROM branch;
SELECT DISTINCT manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> ' England'
SELECT Name FROM member WHERE Age IN (19 , 20)
Nationality : Oldest Member : Name
Nationality , count(*) SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality;
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
Joining both club_leader and club tables: club_leader.join(club) join(club , club_leader ) where (club_leader.club_id , club.club_id) = (club.club_id , club_leader.club_id)
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.overall_ranking > 100;
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = "Houston")
SELECT Name FROM member EXCEPT SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID
Nationalities of members older than 22 and younger than 19: { "Nationalities" : { "Nationalities" : [ "Member 1", "Member 2", "Member 3", "Member 4", "Member 5" ] } }
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID
club_name = 'state'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT T1.collection_details FROM Collection_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name LIKE '%Best for 2000%'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM Document_objects
SELECT document_object_id FROM document_objects
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = 'Marlin' AND T1.document_object_id IN ( SELECT document_object_id FROM Document_objects WHERE owner = 'Marlin' )
SELECT document_object_id FROM document_objects WHERE OWNER = 'Marlin'
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' AND T1.Description = T2.Description
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' UNION SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != -1
SELECT count(*) FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.collection_id = T2.document_object_id WHERE T2.owner = \"Marlin\"
SELECT count(*) FROM Documents_in_collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.owner = \"Marlin\"
SELECT document_object_id FROM document_objects WHERE parent_document_object_id != 1
SELECT document_object_id FROM Document_objects WHERE parent_document_object_id != 0
SELECT T1.document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT count(*) , T1.Parent_Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T1.document_object_id != T2.document_object_id GROUP BY T1.Parent_Document_Object_ID HAVING count(*) > 0
SELECT collection_name FROM collections
SELECT Collection_Name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Nice\" AND T2.parent_collection_id != -1;
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = \"Nice\" AND T1.Parent_Collection_ID != 0
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id HAVING count(*) > 1;
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id HAVING count(*) > 1;
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = \"Best\" AND T2.Collection_Subset_ID IN (SELECT Collection_Subset_ID FROM Collection_Subset_Members WHERE Related_Collection_ID IN (SELECT Collection_ID FROM Collections WHERE Collection_Name = \"Best\")).
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Ransom\"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , document_object_id FROM Document_subsets GROUP BY document_object_id;
SELECT document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.document_object_id , count(*) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Subset_Members AS T3 ON T2.document_object_id = T3.document_object_id WHERE T2.collection_id IN (SELECT collection_id FROM Documents_in_collections WHERE owner = 'Braeden') AND T1.owner IN (SELECT owner FROM Document_Objects WHERE description = 'Related to documents owned by Braeden')
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_object_id = T2.related_document_object_id WHERE T2.Owner = \"Braeden\" UNION SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_object_id = T2.related_document_object_id WHERE T2.Owner = \"Braeden\"
SELECT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden' GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id WHERE T2.owner = 'Braeden'
document_subsets.document_subset_id , document_subsets.document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subsets.document_subset_id
document_subsets_count(document_subset_id, document_subset_name) SELECT document_subset_id , document_subset_name , count(*) FROM document_subsets GROUP BY document_subset_id;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_object_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
document_subset_name , document_subset_id FROM Document_subsets WHERE document_subset_id IN ( SELECT document_subset_id FROM document_subset_members GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1 )
document_subsets = (SELECT document_subset_id , document_subset_name FROM document_subsets WHERE document_subset_id IN ( SELECT document_subset_id FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT document_subset_id , document_subset_name FROM document_subsets WHERE document_subset_id IN ( SELECT document_subset_id FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1 )) GROUP BY document_subset_id, document_subset_name;
SELECT T1.collection_name FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T2.owner = 'Ransom'
SELECT T3.collection_name FROM documents_in_collections AS T1 JOIN collections_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T1.owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING count(*) != 0
SELECT count(*) , document_object_id FROM documents_in_collections GROUP BY document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\";
SELECT T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(DISTINCT document_object_id) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.collection_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.document_subset_name = "Best" AND T2.year = 2000
document_objects_ids = (SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best\" INTERSECT SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = \"Best for 2000\")
SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\" AND T1.date < 2000 EXCEPT SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\" AND T1.date > 2000
collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' collections_collections_id = 'Best' best_document_object_ids = (select distinct T1.document_object_id from documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best' EXCEPT select distinct T1.document_object_id from documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = 'Best for 2000') best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document_object_ids best_document
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.collection_id WHERE T2.year = 2000 UNION SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Collection_subsets AS T2 ON T1.document_subset_id = T2.collection_subset_id WHERE T2.collection_name = "Best"
SELECT DISTINCT T1.document_object_id FROM documents_in_collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" OR T1.document_subset_name = "Best for 2000"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Best" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Best"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_id = T2.collection_id JOIN Collection_Subset_Members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_subset_name = "Best" AND T1.collection_name = T2.collection_name
SELECT count(*) FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T1.Collection_Name = \"Best\"
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best in"
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
sorted(name)
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2;
participants.id , participants.name , participants.popularity , T1.id FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2Songs.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
```sql SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 100 ```
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT T1.average_rhythm_tempo , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language HAVING count(*) > 0
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'english'
participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT participants AS T4 JOIN performance_score AS T5 ON T4.id = T5.participant_id JOIN songs AS T6 ON T5.songs_id = T6.id WHERE T6.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1Songs.id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT count(*) FROM city AS T1;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT city_name FROM city WHERE state LIKE '%PA%'
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'United States' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state;
SELECT count(*) , state FROM city GROUP BY state;
country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T2.fname , T2.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = 'Baltimore')
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code;
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 0
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA' )
SELECT StuID FROM student WHERE sex = "F" AND city_code IN ( SELECT city_code FROM city WHERE state = "PA")
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
direct_distance(city1_code, city2_code) VALUES ('BAL', 'CHI').distance;
direct_distance(city1_code, city2_code) VALUES ('BAL', 'CHI')_distances/30.48957226407595
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code ORDER BY T2.distance DESC LIMIT 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING avg(T2.distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 UNION SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000;
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' INTERSECT SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' AND T2.city_name != 'Boston'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = (SELECT city_code FROM city WHERE city_name = 'Boston') ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING sum(T2.distance) > 0
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
Linda (first name) Smith (last name) + Tracy (first name) Kim (last name) = 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 434 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles + 468 miles + 370 miles + 538 miles + 414 miles + 434 miles + 389 miles
direct_distance(city1_code, city2_code) FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.fname = 'Linda' AND T1.lname = 'Smith' UNION direct_distance(city1_code , city2_code) FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T1.fname = 'Tracy' AND T1.lname = 'Kim'
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Linda Smith' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'New York' AND T1.lname = 'Smith' AND T1.age < (SELECT age FROM student AS T3 JOIN direct_distance AS T4 ON T3.city_code = T4.city1_code WHERE T4.city2_code = 'New York' AND T3.lname = 'Smith')
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
Connecting Student and City tables through city_code to get the state of the student. SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT * FROM sails WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.name = "Sailor 1"
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid IN (SELECT sid FROM reserves WHERE bid = 102)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT count(*) FROM (SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors))
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 8)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT rating FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2;
SELECT sid FROM reserves WHERE bid IN (SELECT sid FROM boats WHERE color = "red") UNION SELECT sid FROM reserves WHERE bid IN (SELECT sid FROM boats WHERE color = "blue")
sid In (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue'))
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = "red") INTERSECT SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = "blue")
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 INTERSECT SELECT T3.name , T3.sid FROM Sails AS T3 JOIN Reserves AS T4 ON T3.sid = T4.sid WHERE T4.bid = T3.bid
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.name != "null"
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1 OFFSET 0
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sails;
SELECT count(*) FROM sails
SELECT avg(age) FROM sails WHERE rating = 7;
SELECT avg(age) FROM sails WHERE rating = 7.0
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1;
sid count(*) FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 1 GROUP BY T2.bid HAVING count(*) > 0
sid count(*) FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.sid > 1 GROUP BY sid HAVING count(*) > 0
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT T3.bid FROM Boats AS T3 WHERE T3.color = "red") GROUP BY T1.rating
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating DESC , age DESC
SELECT name , rating , age FROM sailors ORDER BY rating DESC , age ASC
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
from boats as T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
Sailors(sid, name) INTERSECT Select T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.age BETWEEN 20 AND 30;
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM Boats WHERE name = 'red') AND T1.rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Sailors
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT min(rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT max(rating) FROM sailors;
SELECT max(rating) FROM Sailors;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = 'Melon'
从中选择 sid 的值为 sid 在保留 Melon 时，从 Reserves 表中选择 bid 的值。 SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = (SELECT name FROM boats WHERE name = \"Melon\")
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL ASC
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(DISTINCT earpads) FROM headphone AS T1
SELECT count(DISTINCT earpads) FROM headphone AS T1
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT CLASS FROM headphone WHERE Earpads = 'Comfort Pads' EXCEPT SELECT CLASS FROM headphone WHERE Earpads = 'Bowls'
SELECT CLASS FROM headphone WHERE Earpads = 'Bowls' INTERSECT SELECT CLASS FROM headphone WHERE Earpads = 'Comfort Pads'
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'{}
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
sorted(store.name)
SELECT name FROM store ORDER BY date_opened
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store;
store.neighborhood.count()
import pandas as pd store_data = pd.read_csv('store.csv') store_data.head() store_data.groupby('Neighborhood').count()
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood;
store_name = t1.name quantity_of_headphones = count(*) FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id GROUP BY t1.store_id ORDER BY quantity_of_headphones DESC LIMIT 1 Store ID : t2.store_id Store Name : t1.name Number of headphones : t1.quantity_of_headphones
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headline_id IN ( SELECT headline_id FROM headphone GROUP BY headline_id HAVING count(*) >= 1 ) GROUP BY T1.store_id
store.name EXCEPT SELECT T1.name FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM headphone)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1;
store woodman.headphone_id IN (SELECT headphone_id FROM stock WHERE store_id IN (SELECT store_id FROM store WHERE name = 'Woodman')) GROUP BY headphone_id HAVING count(*) >= 100
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = "Woodman"
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) > 1)
store.neighborhood EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id NOT IN (SELECT headphone_id FROM headphone)
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper;
SELECT count(*) FROM paper;
SELECT count(*) FROM affiliation;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = "2000"
SELECT count(*) FROM paper WHERE YEAR = 2000
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009;
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
[ {"venue": "University of California", "year": 2017}, {"venue": "University of California", "year": 2016}, {"venue": "University of California", "year": 2015}, {"venue": "University of California", "year": 2014} ]
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T2.title , T1.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.address = \"Harvard\"
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = "McKeown"
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\"
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t2.paper_id IN ( SELECT t4.paper_id FROM citation AS t4 JOIN paper AS t5 ON t4.cited_paper_id = t5.paper_id JOIN affiliation AS t6 ON t4.affiliation_id = t6.affiliation_id WHERE t6.name = 'Columbia University')
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id JOIN affiliation AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id JOIN affiliation AS T3 ON T2.paper_id = T3.paper_id WHERE T3.name = 'Columbia University'
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = 'McKeown' AND t2.author_id IN (SELECT author_id FROM author_list WHERE name = 'Rambow')
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T2.author_id = "Kathleen" INTERSECT SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Rambow" AND T2.author_id = "Owen"
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN ( SELECT author_id FROM author WHERE name = \"McKeown\" ) EXCEPT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN ( SELECT author_id FROM author WHERE name = \"Rambow\" )
SELECT t2.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id WHERE t1.author_id IN (SELECT author_id FROM author WHERE name = \"McKeown\") EXCEPT SELECT t2.title , t2.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id WHERE t1.author_id IN (SELECT author_id FROM author WHERE name = \"Rambow\")
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = "McKeown" OR T1.name = "Rambow"
paper_id,title SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'McKeown , Kathleen' UNION SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = 'Rambow , Owen'
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) = 1;
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t1.paper_id = 1002 AND t1.cited_paper_id = 1003
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 12-1027;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id WHERE t2.name = 'McKeown , Kathleen'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'Mckeown' AND t3.email = 'Kathleen'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'McKeown' AND T2.title = 'Kathleen'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = 'Mckeown' AND T2.title = 'Kathleen'
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T3.venue , T3.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'McKeown' AND T3.email = 'Kathleen'
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T3.affiliation_id = T1.paper_id WHERE T3.name = "Columbia University"
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year >= 1 AND t1.year <= 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year >= 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t1.year BETWEEN 2000 AND 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t1.year BETWEEN 2000 AND 2009;
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\" AND T2.paper_id IN ( SELECT T3.paper_id FROM author AS T3 JOIN author_list AS T4 ON T3.author_id = T4.author_id WHERE T4.author_id = \"Kathleen\")
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\" AND T2.paper_id IN (SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id JOIN author AS T5 ON T5.author_id = T4.author_id WHERE T5.name = \"Kathleen\")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.author_id IN (SELECT author_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id WHERE T4.cited_paper_id IN (SELECT T5.paper_id FROM paper AS T5 JOIN citation AS T6 ON T5.paper_id = T6.paper_id WHERE T6.cited_paper_id = 'Kleen') GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.paper_id IN (SELECT T3.paper_id FROM paper AS T3 JOIN citation AS T4 ON T3.paper_id = T4.paper_id JOIN author AS T5 ON T5.author_id = T4.author_id WHERE T5.name = 'Mckeown , Kathleen') GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT paper_id FROM citation )
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT cited_paper_id FROM citation )
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
SELECT venue , count(*) , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id;
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM citation GROUP BY cited_paper_id HAVING cited_paper_id IN ( SELECT paper_id FROM paper GROUP BY paper_id HAVING cited_paper_id > 50 ) )
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 50)))
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.paper_id IN ( SELECT T3.paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.paper_id = T4.paper_id WHERE T4.venue = \"NAACL\" INTERSECT SELECT T3.paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.paper_id = T4.paper_id WHERE T4.venue = \"ACL\")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN (SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM paper WHERE venue = \"ACL\"))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE title = \"ACL\"))
SELECT count(*) FROM conference AS T1;
SELECT count(*) FROM conference;
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT T1.Conference_Name , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name HAVING COUNT(*) > 0
SELECT count(*) , conference_name FROM conference GROUP BY conference_name;
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = YEAR;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2;
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
from institution WHERE founded BETWEEN 1850 AND 1900 {}
from institution WHERE founded >= 1850 AND founded <= 1900 GROUP BY founded;
most_recent_institution = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
most_recent_institution = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT count(*) , T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff
conferences = [T1.Conference_Name] FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_id WHERE T3.Nationality = 'Canada'
conferences = (T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada')
concurrent_staff = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker')
concurrent_staf_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2005 AND T1.institution_name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2006 AND T1.institution_name = 'Naccl'
SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.Conference_Name = 'ACL' AND T2.role = 'participant' INTERSECT SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.Conference_Name = 'NACCL' AND T2.role = 'participant'
concurrent_conference_name = '2003' OR concurrent_conference_name = '2004' union select T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year IN (2003 , 2004)
concurrent_conference = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004)
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
select T1.institution_name , T1.location from institution AS T1 join staff AS T2 ON T1.institution_id = T2.institution_id where T2.id NOT IN (SELECT T3.staff_id FROM conference_participation AS T3 WHERE T3.year = 2004)
select T1.institution_name , T1.location from institution AS T1 join staff AS T2 ON T1.institution_id = T2.institution_id where T2.staff_id NOT IN (SELECT T3.staff_id FROM conference_participation AS T3 JOIN conference AS T4 ON T3.conference_id = T4.conference_id WHERE T4.year = 2004)
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT location) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T2.plane_name IN (SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age BETWEEN 0 AND 32)
SELECT count(*) FROM pilot_skills WHERE age > 40;
SELECT count(*) FROM pilot_skills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Pilot of B-52 Bomber' AND T1.age < 35;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age LIMIT 1;
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 {}
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age BETWEEN 31 AND 40 OR age BETWEEN 0 AND 29;
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 AND T2.plane_name = 'Piper Cub' UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age < 30 AND T1.plane_name = 'F-14 Fighter'
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot_skill AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T2.age > 35 UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot_skill AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter' AND T2.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.pilot_name = T2.pilot_name
SELECT avg(age) , min(age) FROM PilotSkills AS T1
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' AND T1.plane_name = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
Pilot_names = (SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' UNION SELECT T1.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
Pilot_name IN (SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' UNION SELECT pilot_name FROM pilot_skills WHERE plane_name = 'F-14 Fighter')
SELECT avg(age) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) != 0
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
plane_type_count { "sql": "SELECT count(*) , plane_type FROM hangar GROUP BY plane_type"
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT T1.plane_name , T2.pilot_name FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age
SELECT T2.pilot_name , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT T1.plane_name , max(T2.age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) > 1
SELECT count(*) , max(age) FROM pilotskills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) > 0
SELECT count(*) , T2.location , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35.0 {}
SELECT count(*) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) < 35 ORDER BY count(*) DESC LIMIT 1000000;
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC LIMIT 1;
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = (SELECT pilot_name FROM pilot_skills ORDER BY age ASC LIMIT 1)
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN pilot AS T4 ON T3.plane_name = T4.plane_name WHERE T3.plane_name = 'Piper Cub') ORDER BY T2.pilot_name ASC;
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN pilot AS T4 ON T3.plane_name = T4.plane_name WHERE T3.plane_name = 'Piper Cub') ORDER BY T2.pilot_name ASC;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT max(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') AND T1.pilot_name != T3.pilot_name INTERSECT SELECT count(*) FROM pilot_skills AS T5 JOIN hangar AS T6 ON T5.plane_name = T6.plane_name WHERE T6.plane_name = 'Piper Cub' AND T5.pilot_name != T6.pilot_name {}
SELECT count(*) FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(population) FROM district WHERE area_km IN (SELECT max(area_km) FROM district)
SELECT district_id , name , government_website FROM district ORDER BY population ASC
SELECT Name FROM district WHERE Government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speech_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.district_id ORDER BY count(*) DESC LIMIT 1;
district_id , name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id WHERE t2.start_year < 2004 AND t2.spokesman_id IN (SELECT Spokesman_ID FROM spokesman_district)
district_id , count(*) , t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id ORDER BY count(*) DESC , t1.name
district_id , name FROM district WHERE district_id IN ( SELECT T1.district_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 1 INTERSECT SELECT T1.district_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 2 )
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1;
districts_count = count(*) - (select count(*) from spokesman_district)
SELECT name FROM spokesman EXCEPT SELECT T1.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id
district_id , sum(population) , avg(population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t1.district_id HAVING sum(population) > 0 INTERSECT SELECT t1.district_id , sum(population) , avg(population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t1.district_id HAVING sum(population) > 0 {}
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Paintings
SELECT title , LOCATION FROM sculptures
SELECT T1.title , T2.location FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) = 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT lname , fname FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN artists AS T2 ON T1.artistid = T2.artistid WHERE T2.birthyear > T1.birthyear ORDER BY T2.birthyear LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear ASC LIMIT 1;
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = '240'
SELECT count(*) FROM paintings WHERE LOCATION = '240'
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear > (SELECT max(birthyear) FROM artists)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.deathyear DESC LIMIT 1;
painters = [artistID] for painting in paintings AS t1 JOIN artists AS t2 ON t1.painterid = t2.artistid WHERE t2.fname = "Mary" painters AS t3 ORDER BY t3.year ASC;
from artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = 'Mary' AND T2.year != 0
from artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850 {}
SELECT T2.location , T3.medium FROM artists AS T1 JOIN paints AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.artistid WHERE T1.fname = "Pablo"
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
painters = (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid)
paintersID) AND (painterID IN (SELECT painterID FROM paintings WHERE medium = 'medium') INTERSECT SELECT painterID FROM paintings WHERE medium = 'lithographic')"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
painters = [paintings.title == '1884' && paintings.medium == 'canvas'] && artists.artistid IN (SELECT T1.artistid FROM artists AS T1 JOIN paintsers AS T2 ON T1.artistid = T2.artistid WHERE T2.year = 1884) && T1.birthyear FROM artists AS T1 JOIN paintsers AS T2 ON T1.artistid = T2.artistid WHERE T2.year = 1884 && T2.medium == 'canvas' && T1.birthyear FROM artists AS T1 JOIN paintsers AS T2 ON T1.artistid = T2.artistid WHERE T2.year = 1884 && T2.medium == 'canvas'
paintersID = 1884 AND birthYear = 1884 FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE YEAR = 1884)
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = '241' AND T2.medium = 'medium'
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' AND T2.year = 241
SELECT count(*) , medium FROM paintings GROUP BY medium;
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR <= 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR >= 1911
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium' AND LOCATION = '240'
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium oil' AND LOCATION = '240'
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm ASC LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY height_mm DESC LIMIT 1;
paintersID = (SELECT DISTINCT sculptorID FROM sculptures WHERE title LIKE '%female%') union select T1.fname , T1.lname from artists AS T1 join sculptures AS T2 ON T1.artistid = T2.sculptorid where title LIKE '%female%'
paintersID IN (SELECT T1.artistID FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%') UNION SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm LIMIT 1000000000000000000;
SELECT DISTINCT title FROM paintings ORDER BY height_mm LIMIT 1000000000000000000;
betweenYear1900to1950 = (SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950)
between(1900 , 1950) paints sculptures and paintings respectively. combines them into one query: select title from paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 {}
paintings222 = (SELECT t1.title FROM paintings AS t1 JOIN artists AS t2 ON t1.painterid = t2.artistid WHERE t2.artistid = 222)雕塑件222 = (SELECT t3.title FROM sculptures AS t3 JOIN artists AS t4 ON t3.sculptorid = t4.artistid WHERE t4.artistid = 222)
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
Before 1885 or after 1930: SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930;
Before 1885: location After 1930: location
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM_paintings WHERE medium = 'on panel' INTERSECT SELECT LOCATION FROM_paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 AND YEAR > 1930
locations_before_1885 = [location FROM paintings WHERE YEAR BETWEEN 0 AND 1884] locations_after_1930 = [location FROM paintings WHERE YEAR BETWEEN 1885 AND 1930]
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING max(height_mm) > (SELECT min(height_mm) FROM paintings WHERE YEAR < 1900)
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid HAVING max(height_mm) = max(height_mm)
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR;
SELECT avg(height_mm) , avg(width_mm) , title FROM Paintings GROUP BY painterID ORDER BY title ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM Paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paints AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
painters_count = count(*) FROM paintings GROUP BY paintingID HAVING count(*) > 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.birthYear , T1.deathYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY gallery_id HAVING gallery_id = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = '240' GROUP BY paintingid ORDER BY max(height_mm) DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY YEAR HAVING location = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY galleryid HAVING galleryid = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = \"oil\" GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
painters = (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.title != 'sculpture' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid)
paintersIDs = (SELECT T1.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = 'paint' EXCEPT SELECT T1.artistID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = 'sculpt' )
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 AND medium != 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race;
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT T1.Winning_driver , T1.Winning_team FROM race AS T1 ORDER BY T1.Winning_team
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Pole_Position != \"Junior Strous\"
SELECT T1.Winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != 'Junior Strous'
sorted_by_age_constructor.asc Driver_Name) ORDER BY Age ASC
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT Entrant FROM driver WHERE age >= 20
SELECT count(DISTINCT entrant) FROM driver WHERE age > 20;
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
Age = 20 OR Age = 30 ENGINE_COUNT = COUNT(DISTINCT engine)
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
driver(race_name,race_id) race(driver_id,race_name)
driver[race_name] Races[race_name]
driver_id , count(*) FROM race GROUP BY driver_id HAVING count(*) > 1
SELECT T1.Race_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
driver.join(race).where(race.driver_id.in(driver.driver_id)).groupby(driver.driver_id).count().having(count(*) >= 2)
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING COUNT(*) >= 2;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
constructor_count(driver_name) SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT count(*) , constructor FROM driver GROUP BY constructor
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1(Constructor) = driver2(Constructor) - Both driver1 and driver2 have an age less than 20 and an age more than 30.
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 2
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 'James Hinchcliffe' AND T2.pole_position = 'Carl Skerlong'
race.Driver_Name IN (SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'James Hinchcliffe' INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = 'Carl Skerlong')
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT driver_name FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe' )
SELECT count(*) FROM languages;
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1;
SELECT avg(justice_score) FROM countries;
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM countries WHERE name = 'Norway' )
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) > 0
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id = (SELECT id FROM languages WHERE name = 'English')
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = 'English')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
select name from languages where id NOT IN (SELECT language_id FROM official_languages)
select name from languages where id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries EXCEPT SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT name FROM countries WHERE id NOT IN ( SELECT country_id FROM official_languages )
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score < 90 {}
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score BETWEEN 95 AND 100 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score BETWEEN 0 AND 89 {}
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM addresses
SELECT T1.town_city , T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.town_city , T1.county_state_province;
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties;
SELECT min(room_count) FROM Properties;
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR parking_lots = 0
SELECT T1.age_category_code FROM users AS T1 JOIN ref_age_categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description LIKE '%Mother%'
SELECT DISTINCT age_category_code FROM users WHERE user_category_code IN (SELECT user_category_code FROM properties WHERE property_description LIKE '%Mother%')
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn != 'No' GROUP BY T2.property_id HAVING count(*) >= 50;
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool'
SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT avg(room_count) FROM properties;
SELECT avg(room_count) FROM Properties;
SELECT count(DISTINCT room_size) FROM Rooms;
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_searches
MAX(search_datetime)
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT T3.user_id FROM User_Property_History AS T3 JOIN Properties AS T4 ON T3.property_id = T4.property_id GROUP BY T3.user_id HAVING count(*) >= 2 )
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id EXCEPT SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN User_Property_History AS T3 ON T2.property_id = T3.property_id GROUP BY T1.zip_postcode HAVING count(*) >= 2;
SELECT count(*) , user_id FROM User_searches GROUP BY user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.user_age_category_code WHERE T2.search_string = \"first\"
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.user_id ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
Total number of searches made by all users: SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id
SELECT count(*) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rione\"
SELECT date_registered FROM users WHERE login_name LIKE "%ratione%"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT line_1_number_building , line_2_number_street , town_city FROM addresses WHERE age_category_code = "Senior"
SELECT T1.line_1_building , T1.line_2_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior"
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(DISTINCT T1.feature_id) >= 2)
SELECT count(*) FROM ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2 )
SELECT count(*) , T1.property_id FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) > 0
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , T1.user_id FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN user_property_history AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM users WHERE user_category_code = \"mother\" UNION SELECT user_id FROM users WHERE user_category_code = \"student\")
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE is_seller = 'Yes' OR is_buyer = 'Yes')
[ { "datestamp": "2019-04-17", "property_name": "Beverly Hills" }, { "datestamp": "2018-05-23", "property_name": "Pleasant Valley" }, { "datestamp": "2018-06-04", "property_name": "Sunset Boulevard" } ]
{ "sql": "SELECT T1.date_on_market , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.date_on_market ASC"
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM Rooms GROUP BY room_size HAVING count(*) > 0
SELECT count(*) , room_size FROM Rooms GROUP BY room_size;
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = \"Robbie\";
addresses WHERE user_address_id IN (SELECT user_address_id FROM users WHERE first_name = \"Robbie\") AND county_state_province = \"Scotland\"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT T2.property_address_id FROM Properties AS T2 JOIN Users AS T1 ON T2.owner_user_id = T1.user_id GROUP BY T2.property_address_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name IN ( SELECT T2.property_name FROM Properties AS T2 JOIN User_Property_History AS T3 ON T2.property_id = T3.property_id WHERE T3.datestamp != \"\" )
SELECT search_string FROM User_Searches WHERE user_id NOT IN ( SELECT user_id FROM User_Property_History )
SELECT search_string FROM User_searches WHERE user_id NOT IN (SELECT user_id FROM User_property_history)
users_with_two_searches_and_at_least_two_properties = ( SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 )
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 UNION SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_property_history AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015 {}
bicycle_ids = (SELECT T1.id FROM bicycle AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4)
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
cycling自己拥有的自行车的每个产品名称。首先，我们需要连接两个表：cyclists_own_bikes和bike。然后，我们使用nation作为外键来过滤出只属于俄罗斯或大不列颠岛（英国）的cyclists。 SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cycling自己拥有的自行车 AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.purchase_year > 2015 )
SELECT DISTINCT T2.product_name FROM bike AS T2 JOIN cyclists_own_bikes AS T1 ON T1.bike_id = T2.id JOIN cyclist AS T3 ON T3.id = T1.cyclist_id WHERE T3.result > '4:21.558'
cycling_own_bikes b1 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b3 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b4 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b5 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b6 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b7 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b8 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b9 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b10 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name = 'Antonio Tauler') b11 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN bicycle AS t2 ON t1.bike_id = t2.id WHERE t1.name =
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.id FROM cyclists_own_bikes AS T1 JOIN bicycle AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT id FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , id FROM cyclists_own_bikes GROUP BY id ORDER BY id
SELECT T1.flavor , max(T2.price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.flavor
SELECT id , flavor FROM goods WHERE id IN ( SELECT id FROM items ORDER BY price DESC LIMIT 1 )
SELECT T1.Flavor , T2.Price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "cookie" ORDER BY T2.price ASC LIMIT 1
SELECT id , flavor FROM goods WHERE food = 'cookie' ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Lemon\" GROUP BY T1.id HAVING count(*) > 1
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = \"Lemon\" GROUP BY T1.customerid HAVING count(*) >= 1
items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.food HAVING count(*) > 0
Flavor , Food , Count items.Item , food , count(*)
SELECT customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date LIKE '%Bakery%' GROUP BY T2.id HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10;
SELECT count(DISTINCT item) FROM goods WHERE food = 'Cake'
SELECT count(DISTINCT item) FROM items WHERE food = 'Cake'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food LIKE "%croissant%"
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T1.customerid = 15;
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T1.customerid = T3.id WHERE T3.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) FROM goods WHERE food != "null"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = \"Cake\" AND T2.Item IN ( SELECT id FROM items WHERE flavor = \"Cookie\")
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Cake' AND T2.customerid IN (SELECT id FROM items AS T3 JOIN receipts AS T4 ON T3.id = T4.item WHERE T3.flavor = 'Cookie')
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T3.food = 'Croissant' AND T2.lastname = 'LOGAN'
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = 'Logan' AND T1.item = 38 SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T2.food = 'Croissant' AND T2.price = 4
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1;
foodtype(food) , count(*) foodcount FROM goods GROUP BY foodtype(food)
items AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.food HAVING count(*) > 0
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food HAVING count(*) > 0
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 10;
items.items.filter(price > 10).flavors()
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerId JOIN goods AS T3 ON T3.id = T2.item WHERE T3.Price > 13;
SELECT DISTINCT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerId JOIN goods AS T3 ON T3.id = T2.item WHERE T3.Price > 13;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT T2.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT Price , Id FROM goods WHERE Food = "70"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
items.sortById() orderBy = 'Good'
SELECT DISTINCT id FROM goods
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Apple' OR T2.customerid = 12
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Apple' OR T2.customerid = 12;
SELECT Date , Receipt FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT receipt FROM receipts ORDER BY date LIMIT 1 OR SELECT item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 10;
SELECT receiptnumber FROM receipts WHERE date > (SELECT min(date) FROM receipts GROUP BY date HAVING max(price) > 10) UNION SELECT receiptnumber FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 10
SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cookie" AND T2.price BETWEEN 3 AND 7 UNION SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = "Cake" AND T2.price BETWEEN 3 AND 7
SELECT id FROM items WHERE item IN (SELECT id FROM goods WHERE flavor = "Cookie" OR flavor = "Cake")
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
average(price) over (price between 0 and 1000) where flavor = 'blackberry' or flavor = 'blueberry'物品价格平均值
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = \"Cheese\" ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor ASC
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT date FROM receipts ORDER BY receipt DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerId GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT T1.customerid) , T2.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T2.date;
SELECT T1.date , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.date HAVING count(*) > 0
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Apple" AND T3.food = "Tart"
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Apple' AND T1.food = 'Tarts'
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price >= ( SELECT avg(price) FROM goods WHERE flavor = 'Tart' )
SELECT id FROM goods WHERE id IN ( SELECT item FROM items WHERE item IN ( SELECT id FROM goods WHERE food = 'Tart' ) GROUP BY item ORDER BY price > ( SELECT avg(price) FROM goods WHERE food = 'Tart' ) LIMIT 1 )
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) GROUP BY id HAVING count(*) >= 2;
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor FROM goods WHERE food = 'Cake' ORDER BY flavor ASC
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM goods WHERE id IN ( SELECT T1.id FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id HAVING count(*) < 10 INTERSECT SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Chocolate\" )
SELECT T2.item FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.food WHERE T1.flavor = \"Chocolate\" GROUP BY T2.item HAVING count(*) <= 10;
items.Item AS T1 SELECT T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = \"Cake\" EXCEPT SELECT T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = \"Tart\"
SELECT flavor FROM goods WHERE id NOT IN ( SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.food = 'Tart') INTERSECT SELECT flavor FROM goods WHERE id IN ( SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.food = 'Cakes' )
SELECT T1.id FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT date FROM receipts WHERE item IN ( SELECT id FROM goods WHERE price > 100 ) GROUP BY date HAVING count(*) >= 2;
SELECT T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.id HAVING sum(T2.price) > 100;
SELECT count(*) FROM driver AS T1;
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1;
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T1.Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150;
SELECT count(*) FROM driver WHERE points < 150;
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age
{ "sql": "SELECT Driver FROM driver ORDER BY Points DESC LIMIT 1000"
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = "Dublin")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = "English")
SELECT avg(age) FROM driver WHERE country IN ( SELECT country FROM country WHERE Official_native_language = "English" )
SELECT Country FROM driver WHERE Points > 150;
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1
make_count = (SELECT make , count(*) FROM driver GROUP BY make)
make_count(driver) SELECT make , COUNT(*) FROM driver GROUP BY make;
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_id NOT IN ( SELECT Team_ID FROM team_driver )
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" EXCEPT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT sum(Points) , avg(Points) FROM driver
SELECT country FROM country WHERE country NOT IN (SELECT country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution AS t1;
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Name
SELECT name FROM institution ORDER BY founded ASC
sorted(institution.Founded)
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1 OFFSET 0
{ "sql": "SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1"
SELECT T1.name , T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
championship,institution_id,nickname SELECT T1.name , T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1 Nickname
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
championships AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
championships ORDER BY joined DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETRY AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETRY AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation HAVING count(*) > 10000
SELECT count(*) , affiliation FROM institution GROUP BY affiliation;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM CHAMPIONSHIP ORDER BY capacity DESC
SELECT T1.Nickname FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT enrollment FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT T1.Province FROM institution AS T1 JOIN institution AS T2 ON T1.Province = T2.Province WHERE T1.Founded < 1920 AND T2.Founded > 1950 INTERSECT SELECT T1.Province FROM institution AS T1 JOIN institution AS T2 ON T1.Province = T2.Province WHERE T1.Founded < 1920 AND T2.Founded > 1950
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T1.code , avg(T2.value) FROM boxes AS T2 JOIN warehouses AS T1 ON T2.warehouse = T1.code GROUP BY T1.code;
SELECT avg(T1.value) , T2.warehouse FROM boxes AS T1 JOIN warehosues AS T2 ON T1.warehouse = T2.code GROUP BY T2.warehouse;
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(value) FROM boxes;
SELECT avg(value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes;
SELECT count(DISTINCT contents) FROM boxes;
SELECT DISTINCT LOCATION FROM Warehouses
SELECT count(DISTINCT LOCATION) FROM Warehouses;
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' UNION SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
contents = (boxes(contents = "Chicago", warehouse = "W2") INTERSECT boxes(contents = "New York", warehouse = "W3"))
contents_not_new_york = contents - (boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York'))
contents = (SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York'))
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
Wares.Where(Contents) = \"Rocks\" But Wares.Where(Contents) != \"Scissors\". LOCATION
SELECT T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" OR T1.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
boxes.Warehouse WHERE contents IN (SELECT contents FROM boxes WHERE value = 'Rocks' INTERSECT SELECT contents FROM boxes WHERE value = 'Scissors') AND warehouse IN (SELECT code FROM warehouses WHERE LOCATION IN (SELECT LOCATION FROM boxes WHERE contents = 'Rocks' INTERSECT SELECT contents = 'Scissors'))
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT distinct contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Rocks' ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Rocks' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
total_value + count(*) FROM boxes AS T1
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses;
SELECT sum(capacity) FROM Warehouses;
SELECT T2.value , T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse ORDER BY sum(T1.value) DESC LIMIT 1000;
SELECT T1.location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT T1.code , count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING count(*) > 0
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE content = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.location;
SELECT code FROM Warehouses WHERE capacity > (SELECT max(capacity) FROM Warehouses)
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.capacity - count(*) > 0
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT count(*) FROM university WHERE STATE LIKE 'IL' OR STATE LIKE 'OH'
SELECT count(*) FROM university WHERE state = 'IL' OR state = 'OH'
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT * FROM university WHERE home_conference != "null"
SELECT DISTINCT home_conference FROM university;
university_count(home_conference)
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT T1.Home_Conference FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id GROUP BY T1.Home_Conference ORDER BY sum(T1.Enrollment) ASC LIMIT 1;
SELECT home_conference FROM university ORDER BY enrollment ASC LIMIT 1;
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
university_id , major_name , major_code FROM university WHERE university_name = 'Augustana College' UNION SELECT T1.university_id , T2.major_name , T2.major_code FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T1.university_name = 'Augustana College'
university_id , major_name JOIN university ON university_id = university_id JOIN major_ranking ON major_id = major_id WHERE university.name = 'Augustana College'
university_name = 'University of Phoenix', city = 'Phoenix', state = 'Arizona' major_name = 'Accounting' , # Replace 'Accounting' with the actual major name major_id = 1 , # Replace 1 with the actual major ID in major_ranking table rank = 1 , # Replace 1 with the actual ranking in major_ranking table reputation_point = 5000 , # Replace 5000 with the actual reputation point in major_ranking table total = 5000 , # Replace 5000 with the actual total in major_ranking table
university_name = 'University of Phoenix', city = 'Phoenix', state = 'Arizona' major_name = 'Accounting' rank = 1 major_id = 25473 major_ranking.university_id = 1 major_ranking.rank = 1
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1)
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank = 1 ORDER BY T3.reputation_point DESC LIMIT 1;
university_name_without_major_1 = (SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1))
university(university_name) EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education')
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\")
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = 'Wisconsin'
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.majortype = 'Accounting')
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.major_name = \"Accounting\")
overall_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank <= 5 {} UNION SELECT sum(T1.enrollment) FROM university AS T2 WHERE T2.university_id IN (SELECT university_id FROM overall_ranking AS T1 WHERE T1.rank <= 5 ) {}
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank BETWEEN 1 AND 4)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > (SELECT max(reputation_point) FROM overall_ranking)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university GROUP BY state HAVING count(*) >= 3 AND sum(enrollment) < 3000;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
MovieTheaters.movie = (SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie) AND T2.name != 'None'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating LIKE '%G%'
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies GROUP BY code)
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating >= 7)
SELECT count(DISTINCT title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT count(DISTINCT title) FROM Movies WHERE code IN (SELECT movie FROM MovieTheaters GROUP BY movie HAVING count(*) > 1)
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT count(DISTINCT name) FROM MovieTheaters;
“SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'”
movies := (SELECT T1.Rating FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name LIKE '%Citizen%')
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating IN ('G', 'PG')
MovieTheaters[name,Movie] SELECT T1.name FROM Movietheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
name = 'Odeon' AND name = 'Imperial' FROM MovieTheaters WHERE movie IN (SELECT code FROM movies WHERE title = 'Odeon' INTERSECT SELECT code FROM movies WHERE title = 'Imperial')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T2.Title IN (SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE name = 'Odeon')
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title
sorted_movies_by_rating = Movies.order_by('Rating')
sorted_movies := (SELECT title FROM movies ORDER BY rating ASC)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , Rating FROM Movies GROUP BY Rating
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Code IN (SELECT T1.Movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie HAVING COUNT(*) > 0)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name HAVING COUNT(*) > 0
SELECT name FROM Movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT Name FROM MovieTheaters EXCEPT SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title NOT IN (SELECT T3.Title FROM Movies AS T3 JOIN MovieTheaters AS T4 ON T3.Code = T4.Movie)
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT DISTINCT rating FROM Movies;
SELECT count(DISTINCT Rating) FROM Movies
SELECT * FROM Movies WHERE Rating != "Unrated"
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT title FROM Movies WHERE code NOT IN ( SELECT movie FROM MovieTheaters )
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient ORDER BY T2.weight DESC LIMIT 1;
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM employee WHERE name LIKE '%Amy Wong%'
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT salary , POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE POSITION = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = 'Physician'
SELECT LEVEL FROM has_clearance WHERE POSITION = 'Physician'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = \"Leo Wong\"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = "Leo Wong"
SELECT T2.contents FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.recipient = 'Leo Wong' OR T1.sender = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.sender = T2.accountnumber UNION SELECT DISTINCT T1.packagenumber FROM PACKAGE AS T1 JOIN CLIENT AS T2 ON T1.recipient = T2.accountnumber
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender IN ( SELECT AccountNumber FROM CLIENT WHERE Name = "John Zoidfarb")
SELECT T2.Contents FROM HAS_CLEARANCE AS T1 JOIN PACKAGE AS T2 ON T1.Planet = T2.PlanetID JOIN CLIENT AS T3 ON T1.Recipient = T3.AccountNumber WHERE T3.Name = 'John Zoidfarb'
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name LIKE '%John%' ORDER BY T2.weight DESC LIMIT 1;
SELECT T2.packagenumber , T2.weight FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = "John" OR T2.recipient = "John"
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , min(sender) FROM package AS T1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Phillip J. Fry"
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment WHERE planet IN ( SELECT planet FROM planet WHERE name = "Mars")
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Mars"
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" OR T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = 3
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.employeeid
SELECT count(*) , T2.name FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars'
Total weight of all packages sent to Mars: SELECT sum(T2.weight) FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = 'Mars'
SELECT T1.name , T3.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipmentid GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name HAVING sum(T2.weight) > 30;
total_weight = (SELECT T2.weight FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.planetid HAVING sum(T1.weight) > 30)
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T1.planet WHERE T3.name = "Omicron Persei" AND T1.manager = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = ( SELECT planetid FROM planet WHERE name = "Omicron Persei 8" ) OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Omicron Persei 8' OR T1.sender = 'Zapp Brannigan'
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetID WHERE T2.name = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employeeid FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T2.employee FROM has_clearance AS T2 JOIN employee AS T3 ON T2.employee = T3.employeeid)
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetID WHERE T2.name = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetID WHERE T2.name = 'Mars')
SELECT count(*) FROM game
game.Game_id.count(*)
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 2
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = \"Super Mario World\" AND T3.rank_of_the_year = 1
game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = \"Super Mario World\";
player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T1.College = \"Auburn\";distinct T4.Developers FROM game AS T4 JOIN platform AS T5 ON T4.Platform_ID = T5.Platform_ID WHERE T5.Platform_name = \"Microsoft Windows\"
game_player_gamer(platform_id) <- game_platform(gplatform_id) <- platform(player_name = \"Auburn\") intersect game(game_id) <- game_player_game(game_id) <- game_player(gplayer_id) <- gplayer_platform(gplatform_id) <- platform(gplatform_id) <- platform(gplatform_id) <- platform(gplatform_id)intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\"))intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")intersect(games(title = \"Auburn\")
SELECT avg(T2.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\"
avg(units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = 'Guard'
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T1.Frankcease , COUNT(*) FROM game AS T1 JOIN game AS T2 ON T1.Frankcease = T2.Frankcease GROUP BY T1.Frankcease
platform(platform_id, count(DISTINCT title) ) FROM game GROUP BY platform_id HAVING count(*) >= 1
SELECT T1.Frankcease FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id GROUP BY T1.Frankcease ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2;
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
if (SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\") <> \"null\"
if (SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" OR T3.College = \"Auburn\") THEN \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t
SELECT DISTINCT franchise FROM game;
SELECT DISTINCT franchise FROM game;
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT T1.Game_ID FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'Guard')
SELECT Title FROM game WHERE Game_ID NOT IN ( SELECT T1.Game_ID FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'Guard' )
SELECT name FROM press ORDER BY YEAR_PROfits_billion DESC
sorted_press = sorted(press, key=lambda x: x.year_profits_billion, reverse=True)
SELECT name FROM press WHERE year_profits_billion > 15 UNION SELECT name FROM press WHERE month_profits_billion = 1
SELECT name FROM press WHERE YEAR_PROFIT > 150000000 OR MONTH_PROfits_billion > 10000
avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(YEAR_Profits_billion) , max(YEAR_Profits_billion) FROM press AS T1
SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T2.month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion - year_profits_billion LIMIT 1 OR SELECT name FROM press ORDER BY month_profits_billion + year_profits_billion LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY year_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30;
SELECT count(*) FROM author WHERE age BETWEEN 0 AND 29;
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series;
SELECT count(*) , Book_Series FROM book GROUP BY Book_Series;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500 {}
SELECT Book_Series FROM book WHERE Sale_Amount > 1000 EXCEPT SELECT Book_Series FROM book WHERE Sale_Amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1 {}
SELECT T1.title , T2.name , T2.year_profit_billion FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T1.title , T2.name , T2.year_profit_billion FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3
press_total = sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID
press.name + sum(book.sale_amount) Total_sum_book_sales_billion billion
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name HAVING count(*) > 1000;
press_name = T3.name book_count = count(*) FROM book AS T2 JOIN press AS T3 ON T2.press_id = T3.press_id WHERE T2.sale_amount > 1000 GROUP BY T3.press_name HAVING count(*) > 1000
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN ( SELECT author_id FROM book WHERE title = 'Accor' )
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = "Accor")
SELECT T1.name , T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2;
press_id , name , sum_month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors AS T1;
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T2.author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = \"Travel to Brazil\"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes AS T1;
SELECT next_process_id , process_name , process_description FROM Process_outcomes WHERE process_id = 9
SELECT T2.process_name FROM processes AS T1 JOIN process_outcomes AS T2 ON T1.process_id = T2.process_id WHERE T1.process_id = 9 ORDER BY T2.next_process_id DESC LIMIT 1
SELECT count(*) FROM process_outcomes AS T1;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status AS T1
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff AS T1;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_processes;
SELECT process_id FROM Documents_Processes GROUP BY process_id HAVING count(*) >= 1
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM processes WHERE process_id NOT IN (SELECT process_id FROM documents_processes);
SELECT T3.process_outcome_description , T2.process_status_description FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN process_outcomes AS T3 ON T2.process_outcome_code = T3.process_outcome_code WHERE T1.document_id = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT count(*) , process_id FROM Documents_processes GROUP BY process_id;
document_id = 0 AND process_id = 9
SELECT count(*) , staff_id FROM Staff_in_Processes GROUP BY staff_id;
SELECT count(*) , staff_role_code FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3;
SELECT count(*) FROM agencies;
SELECT count(*) FROM agencies;
SELECT agency_id , agency_details FROM agencies
SELECT * FROM agencies
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM clients;
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) > 0
SELECT count(*) , agency_id FROM clients GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
{ "sql": "SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id"} {"sql": "SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id"}
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details , sic_code FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies EXCEPT SELECT T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM INVOICES AS T1;
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES WHERE client_id IN ( SELECT client_id FROM Clients )
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT count(*) , client_id FROM INVOICES GROUP BY client_id;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM meetings
SELECT * FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = 'Working'
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT invoice_id FROM payments )
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN ( SELECT invoice_id FROM Payments )
SELECT count(*) FROM payments;
SELECT count(*) FROM payments;
SELECT T1.payment_id , T2.invoice_id , T1.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff;
SELECT count(*) FROM staff
SELECT T1.agent_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id HAVING count(*) > 0
SELECT T1.agent_id , count(*) FROM staff AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
SELECT T1.agency_id , T2.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome;
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM meetings GROUP BY client_id;
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN clients AS T3 ON T2.client_id = T3.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
Meeting_id , count(*) FROM staff_in_meetings GROUP BY meeting_id;
SELECT count(*) , meeting_id FROM staff_in_meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM staff_in_meetings;
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings;
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
client_id , client_details FROM clients WHERE client_id IN (SELECT client_id FROM meetings UNION SELECT client_id FROM invoices) OR client_id IN (SELECT client_id FROM payments)
meeting_id , client_id , client_details , invoice_id , invoice_details , billable_yn , meeting_outcome , invoice_status , other_details : (SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM invoices AS T3 JOIN clients AS T4 ON T3.client_id = T4.client_id)
staff_ids = (SELECT T1.staff_id FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%' )
staff_ids_with_s_details = ( SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' AND T2.meeting_id IN (SELECT meeting_id FROM meetings WHERE meeting_outcome = 'yes') )
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) > 0
meetings_id , client_id , sic_code , invoice_id FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 AND T1.meeting_type = 'Invoice'
meetings_stops_staff_details: for meeting_id in (SELECT meeting_id FROM meetings WHERE meeting_type = 'stop' INTERSECT SELECT meeting_id FROM meetings WHERE meeting_type = 'start'): staff_details := (SELECT T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id JOIN meetings AS T3 ON T2.meeting_id = T3.meeting_id WHERE T3.meeting_type = 'stop') merge staff_details into meetings_stops_staff_details on meetings_stops_staff_details.meeting_id = staff_details.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id
