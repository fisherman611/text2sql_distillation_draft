SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name
SELECT name FROM club ORDER BY name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manager <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
Earnings > 1200000 From player WHERE Country IN (SELECT Country FROM player WHERE Earnings > 1200000)
SELECT Country FROM player WHERE Earnings > (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1;
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000 {}
SELECT count(DISTINCT country) FROM player AS T1
SELECT count(DISTINCT country) FROM player AS T1;
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 UNION SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
orders.order_id , orders.order_status_code , count(DISTINCT product_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT product_id) != 0
orders_count = (SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id) ORDER_ITEMS_count = (SELECT count(*) , T2.order_item_id FROM order_items AS T2 GROUP BY T2.order_item_id) orders = (SELECT * FROM orders WHERE order_id IN (SELECT order_id FROM order_items)) orders_status = (SELECT T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_item_status_code = 'Completed') orders_items = (SELECT T2.product_id FROM order_items AS T2 JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T2.product_id) orders_items_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count = (SELECT count(*) FROM orders_items) orders_items_status = (SELECT T2.order_item_status_code FROM order_items AS T2 GROUP BY T2.order_item_status_code) orders_items_status_count =
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 1 UNION SELECT min(T1.date_order_placed) FROM orders AS T1 ORDER BY T1.date_order_placed ASC
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_id NOT IN ( SELECT T3.customer_id FROM orders AS T3 JOIN customers AS T4 ON T3.customer_id = T4.customer_id )
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T2.product_id , T2.product_name , T2.product_price , T2.product_color FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2 {}
order_items = ( SELECT order_id , product_id FROM order_items GROUP BY order_id HAVING count(DISTINCT product_id) >= 2 )
SELECT T1.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T1 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T2.order_id , sum(T1.order_item_total) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ORDER BY sum(T1.order_item_total) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code ORDER BY count(*) DESC
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id
[ { "invoice_status_code": "Shipped", "invoice_date": "2019-03-14T15:07:36Z", "shipment_date": "2019-03-14T15:08:20Z" } ]
SELECT invoice_status_code , invoice_date , shipment_date FROM invoices
Shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id ORDER BY T2.shipment_date ASC;
Shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id JOIN orders AS T3 ON T2.order_id = T3.order_id ORDER BY T3.date_order_placed ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date ASC T1.shipment_date ASC T2.shipment_date ASC T3.shipment_date
orders.order_item_status_code , shipments.shipment_tracking_number FROM orders AS T1 JOIN shipment_items AS T2 ON T1.order_id = T2.order_id WHERE T1.order_status_code = 'Shipped'
orders_items = orders.order_item_id shipments_shipment_id = shipments.shipment_id order_items.order_item_status_code = orders.order_item_status_code shipments.shipment_tracking_number = shipments.shipment_tracking_number
products = (SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id ORDER BY T2.shipment_date ASC)
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.gender_code = 'Female'
customer_id, product_name , product_price , product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN orders AS T3 ON T3.order_id = T2.order_id JOIN customers AS T4 ON T4.customer_id = customer_id WHERE T4.gender_code = 'F' GROUP BY T4.customer_id HAVING count(*) >= 1
SELECT invoice_status_code FROM invoices WHERE invoice_id NOT IN ( SELECT invoice_number FROM shipments )
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T1.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT order_id , date_order_placed , sum(total_cost) FROM orders GROUP BY order_id
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id;
SELECT count(DISTINCT customer_id) FROM orders;
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS;
order_items.order_item_status_code.count()
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size , product_price FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM orders_items)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
[ ["customer_first_name", "product_name"] ]
customers AS T1 JOIN customer_items AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.customer_first_name ORDER BY count(*) DESC LIMIT 1000;
SELECT count(*) FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id;
SELECT count(DISTINCT product_id) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id;
SELECT avg(product_price) FROM products;
average_product_price = avg(product_price)
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 0
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.order_status_code = 'Completed'
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT min(gender_code) FROM customers GROUP BY gender_code)
SELECT T1.email_address , T1.town_city , T1.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T2.product_name FROM products AS T1 JOIN orders_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_name FROM orders_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
Ships_invoice_count = count(*) FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_size , product_description FROM products WHERE product_price < ( SELECT max(product_price) FROM products )
SELECT product_color , product_size , product_description FROM products WHERE product_price <> (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1;
channel(digital_terrestrial_channel = 'bbc', internet).count(*)
SELECT count(*) FROM (SELECT DISTINCT name FROM channel WHERE analogue_terrestrial_channel != 'Digital Terrestrial')
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1
SELECT T1.Name , COUNT(*) FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id WHERE T2.title = 'Dracula'
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM director WHERE age >= 30 AND age <= 60
channel_id IN (SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age < 40 INTERSECT SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id WHERE T2.age > 60)
channel(id,name) SELECT id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T1.name = 'Hank Baskett' )
SELECT count(*) FROM radio AS T1;
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
max(ERP_kW) AS transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio AS T1
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation;
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) >= 4;
SELECT city , station_name FROM city_channel ORDER BY station_name
city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id
radio AS T1 JOIN city_channel AS T2 ON T1.radio_id = T2.radio_id ORDER BY T1.EP_RM DESC TV_SHOW AS T3 JOIN city_channel_tv_show AS T4 ON T3.tv_show_id = T4.tv_show_id城市_channel AS T5 JOIN city_channel_radio AS T6 ON T5.radio_id = T6.radio_id城市_channel_tv_show AS T7 JOIN tv_show AS T8 ON T7.tv_show_id = T8.tv_show_id城市_channel AS T9 JOIN city_channel_radio AS T10 ON T9.radio_id = T10.radio_id城市_channel AS T11 JOIN city_channel_tv_show AS T12 ON T11.tv_show_id = T12.tv_show_id站名 AS T13 ORDER BY T13.EP_station_name DESC
city_channel_count(city_channel_id, radio_id) SELECT count(*) , transmitter FROM city_channel_radio GROUP BY transmitter
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship LIKE "United States"
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.driver_id , COUNT(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.build_year = 2012;
vehicle_driver.Vehicle_ID COUNT(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012 GROUP BY T2.Driver_ID HAVING COUNT(*) >= 1
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT avg(Top_Speed) FROM vehicle;
vehicle_driver V1.Driver_ID AS T1 JOIN vehicle V2 ON T1.Vehicle_ID = V2.Vehicle_ID WHERE V2.Power > 5000 GROUP BY T1.Driver_ID HAVING COUNT(*) >= 1
vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.Power > 5000;
SELECT Model FROM vehicle GROUP BY Model HAVING sum(total_production) > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
vehicle_id , model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Citizenship = 'Ziyang'
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = "Ziyang"
driver(VDriver_ID,VName) vehicle_driver(Driver_ID,Vehicle_ID) SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE VName = 'Jeff Gordon') GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" ) OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series;
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
Vehicle_ID = 'DJ1' driver_name = T2.Name driver_citizenship = T2.Citizenship
vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.model = \"DJ1\";
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1
SELECT count(*) FROM Exams AS T1
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T2.student_answer_text FROM student_answers AS T1 JOIN questions_in_exams AS T2 ON T1.question_id = T2.question_id GROUP BY T1.student_id ORDER BY count(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT T2.first_name , T1.Date_of_Answer FROM Student_answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.first_name , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING count(*) >= 2;
SELECT Valid_Answer_Text FROM VALID_ANSWER GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.question_id ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU <> "M"
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU LIKE "F%" OR Gender_MFU LIKE "%M"
SELECT Last_Name FROM Students WHERE Gender_MFU LIKE "F" OR Gender_MFU LIKE "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN ( SELECT Student_ID FROM Student_Answers )
SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Absent\"
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_text = T2.valid_answer_text WHERE T2.comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_text = T2.valid_answer_text WHERE T2.comments = \"Absent\"
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3;
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3;
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses;
SELECT count(*) FROM addresses AS t1;
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products;
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
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = 'Hardware' AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'Hardware')
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers AS T1;
SELECT count(*) FROM customers;
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
SELECT count(DISTINCT payment_method_code) FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS T1;
SELECT count(*) FROM customer_orders;
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
customer_orders_count = (SELECT T1.customer_id , T1.customer_name , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id)
customer_orders_count_by_customer_id: SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 0
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
order_status_code , count(*) FROM customer_orders GROUP BY order_status_code;
order_status_code | count ------------------|------ 01 | 4836 02 | 5796 03 | 3845 04 | 3845 05 | 2873 06 | 2873 07 | 2873 08 | 2873 09 | 2873 10 | 2873 11 | 2873 12 | 2873 13 | 2873 14 | 2873 15 | 2873 16 | 2873 17 | 2873 18 | 2873 19 | 2873 20 | 2873 21 | 2873 22 | 2873 23 | 2873 24 | 2873 25 | 2873 26 | 2873 27 | 2873 28 | 2873 29 | 2873 30 | 2873 31 | 2873 32 | 2873 33 | 2873 34 | 2873 35 | 2873 36 | 2873 37 | 2873 38 | 2873 39 | 2873 40 | 2873 41 | 2873 42 | 2873 43 | 2873 44 | 2873 45 | 2873 46 | 2873 47 | 2873 48 | 2873 49 | 2873 50 | 2873 51 | 2873 52 | 2873 53 | 2873 54 | 2873 55 | 2873 56 | 2873 57 | 2873 58 | 2873 59 | 2873 60 | 2873 61 | 2873 62 | 2873 63 | 2873 64 | 2873 65 | 2873 66 | 2873 67 | 2873 68 | 2873 69 | 2873 70 | 2873 71 | 2873 72 | 2873 73 | 2873 74 | 2873 75 | 2873 76 | 2873 77 | 2873 78 | 2873 79 | 2873 80 | 2873 81 | 2873 82 | 2873 83 | 2873 84 | 2873 85 | 2
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor'
products.product_name = 'Monitor' order_items.product_id = products.product_id order_items.order_id = customer_orders.order_id count(*) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(*) FROM customer_orders AS t1;
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
order_items = order_items.join(products, order_items.product_id = products.product_id) order_items = order_items.group_by(order_items.order_id).count() > 3 order_items = order_items.group_by(order_items.order_id).count() > 6 order_items = order_items.order_id order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.group_by(order_items.order_id).count() > 3 order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id) order_items = order_items.order_id.join(order_items, order_items.order_id = order_items.order_id)
order_items = ( select order_id , order_date FROM Order_items WHERE order_quantity > 6 UNION SELECT order_id , order_date FROM Order_items GROUP BY order_id HAVING count(*) >= 3 ) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items UNION ALL SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) union all (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) union all (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) union all (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity < 6) order_items_union = (SELECT order_id , order_date FROM Order_items ORDER BY order_quantity DESC LIMIT 3) order_items_intersect = (SELECT order_id , order_date FROM Order_items WHERE order_id IN (SELECT order_id FROM order_items_intersect)) order_items_diff = (SELECT order_id , order_date FROM Order_items WHERE order_quantity <
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980;
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(population) FROM region AS t1;
SELECT avg(population) FROM region;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT name FROM region ORDER BY area DESC LIMIT 5;
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN ( SELECT Region_ID FROM building )
building1(completed_year) , building2(completed_year) WHERE building1.number_of_stories > 20 AND building2.number_of_stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15 {}
SELECT DISTINCT Address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM (SELECT DISTINCT service_id FROM customers_and_services)
SELECT count(*) FROM services AS t1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
most_common_analytical_layer_type_code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id = (SELECT customer_id FROM customers WHERE customer_details = "Hardy Kutch")
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customer_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.service_id ORDER BY count(*) LIMIT 1;
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services;
SELECT count(*) , t2.service_details FROM customers_and_services AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.customer_id;
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
from customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_details = \"Hardy Kutch\" UNION SELECT T3.service_details FROM customer_interactions AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.customer_id IN (SELECT service_id FROM customer_interactions WHERE status_code = \"good\")
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.services_and_channels_details = "good"
customers_and_services = (SELECT T1.customer_id , T1.service_id FROM customers_and_services AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = \"Hardy Kutch\" AND T2.status_code = \"bad\") INTERSECT SELECT service_id FROM customer_interactions AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id WHERE T1.customer_id = \"Hardy Kutch\" AND T2.status_code = \"bad\"
customer_id = "Hardy Kutch" AND t1.service_id IN (SELECT t2.service_id FROM customers_and_services AS t1 JOIN customer_interactions AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_details = \"Hardy Kutch\" AND t2.status_code = \"bad\")
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = "Success"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details != "Failed"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT * FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , count(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN ( SELECT customer_id FROM customers_and_services WHERE service_id IN ( SELECT service_id FROM customers_and_services WHERE status_code = "unsatisfied" ) )
Customers_and_Services_customers_and_services_details = ( SELECT T1.service_details FROM services AS T1 JOIN customers_and_services_details AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "unsatisfied" )
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles AS T1;
Descending_order_of_model_year = SELECT name FROM Vehicles ORDER BY Model_year DESC;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles;
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
{ "sql": "SELECT name , type_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014"
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014
Type_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) != 0
Total_hours = sum(total_hours) FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id
SELECT name FROM Vehicles WHERE id NOT IN ( SELECT vehicles_id FROM Renting_history )
SELECT name FROM Vehicles WHERE id NOT IN ( SELECT T1vehicles_id FROM Renting_history )
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2;
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_LOANS
SELECT avg(amount_of_loan) FROM Student_Loans;
detention_count = count(*) FROM Detention GROUP BY student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2
student_id , bio_data , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2 {}
classes.filter(class_details.contains('data') & teacher_id.notin(T1.teacher_id) filter(class_details.startsWith('net'))).teacher_details/classes.class_details</ref>
classes.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id {}
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT student_id FROM Detention ) UNION SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT student_id FROM Student_Loans WHERE date_of_loan != "null" GROUP BY student_id HAVING count(*) >= 2 )
student_loans = (SELECT T1.student_id , T1.date_of_loan FROM Student_LOANS AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2)
SELECT T2.teacher_details , T1.teacher_id FROM_CLASSES AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Addresses AS T3 ON T2.address_id = T3.address_id
{ "sql": "SELECT T1.student_details , T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Addresses AS T3 ON T2.address_id = T3.address_id"
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"
SELECT T1.student_details , T2.behaviour_monitoring_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN ( SELECT T2.student_id FROM Behaviour_Monitoring AS T2 JOIN Students AS T1 ON T2.student_id = T1.student_id GROUP BY T2.student_id HAVING count(*) >= 3 ) UNION SELECT T1.bio_data FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN ( SELECT T2.student_id FROM Behaviour_Monitoring AS T2 JOIN Students AS T1 ON T2.student_id = T1.student_id GROUP BY T2.student_id HAVING count(*) >= 3 )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"Behaviour Monitoring\" GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN (SELECT student_id FROM Behaviour_Monitoring GROUP BY student_id HAVING count(*) >= 3)
SELECT T1.bio_data FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T2.event_type_code , T1.student_details FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
Achievements(achievement_id, achievement_details, achievement_type_code , achievement_type_description)
Achievements.achievement_type_code , Ref_Achievement_Type.achievement_type_description : Achievement_Type(achievement_type_code , achievement_type_description) : Ref_Achievement_Type.achievement_type_code , Student_Events.date_of_academic_event , Student_Events.other_details : Student_Events.achievement_details , Student_Events.date_of_academic_event , Student_Events.other_details : Student_Events.achievement_details
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT teacher_id FROM Achievements )
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT teacher_id FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id )
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.acquisition_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.achievement_details , T2.date_of_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id JOIN CLASSASSESSMENT AS T3 ON T1.teacher_id = T3.teacher_id WHERE T3.class_details = T2.student_id
[ "Teachers[teacher_details] = Students[student_details]", "Students[student_details] = Teachers[teacher_details]" ]
SELECT teacher_id , count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.student_details FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T2.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans;
SELECT min(date_of_loan) FROM Student_Loans;
{ "sql": "SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1"} {"sql": "SELECT T1.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan = (SELECT min(amount_of_loan) FROM Student_LOANS)"}
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(student_details) FROM Students)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN (SELECT student_id FROM Student_Loans ORDER BY amount_of_loan DESC LIMIT 1)
SELECT T2.teacher_details FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_from LIMIT 1;
SELECT T2.teacher_details FROM Teachers AS T1 JOIN CLASSASSESSMENTS AS T2 ON T1.teacher_id = T2.teacher_id JOIN TRANSTROS AS T3 ON T2.student_id = T3.student_id ORDER BY T3.transcript_details LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
student_id , bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id;
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id;
SELECT T1.address_type_description , T1.address_type_code FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.student_id FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id )
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_LOANS AS T3 ON T1.student_id = T3.student_id )
Addresses(address_id) SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT min(datetime_detention_start) FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM AUTHOR
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM books_order;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.idorder , T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
books_order_count IS NOT NULL AND idorder IN (SELECT idorder FROM books_order GROUP BY idorder ORDER BY count(*) DESC LIMIT 1) ISBN COUNT(*)
SELECT count(*) , isbn FROM books_order GROUP BY isbn;
SELECT sum(amount) , isbn FROM books_order GROUP BY isbn;
SELECT sum(amount) , isbn FROM books_order GROUP BY isbn;
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T2.title , T2.purchaseprice FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.idorder ORDER BY sum(T1.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn UNION SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder > (SELECT dateorder FROM books_order ORDER BY dateorder ASC LIMIT 1)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
total_amounts = (SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1)
total_amount = (SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1000)
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY sum(T3.amount) DESC LIMIT 1;
SELECT title FROM book EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(PurchasePrice) , avg(SalePrice) FROM Book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT max(SalePrice - PurchasePrice) FROM Book;
SELECT max(SalePrice - PurchasePrice) FROM Book;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.saleprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T2.SalePrice) FROM Author AS T1 JOIN Book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name = 'George Orwell'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = 'George Orwell' ORDER BY T1.SalePrice LIMIT 1
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn WHERE T2.author = 'Plato' AND T1.saleprice < (SELECT avg(T1.saleprice) FROM book AS T1)
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato' AND T1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN author AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.idorder = T3.idorder WHERE T2.name = "Pride and Prejudice"
SELECT count(*) FROM orders AS t1 JOIN author AS t2 ON t1.idorder = t2.idorder JOIN book AS t3 ON t1.idbook = t3.idbook WHERE t2.name = "Pride" AND t3.title = "Pride and prejudice"
SELECT idorder FROM books ORDER BY title LIMIT 1 INTERSECT SELECT idorder FROM books ORDER BY title LIMIT 1
title = 'Pride' AND title = 'Prejudice' AND title = 'The Little Prince' ORDER BY idorder ASC
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' AND T4.isbn = 'James Smith' ORDER BY T1.isbn ASC;
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith' ORDER BY T1.isbn ASC
SELECT T1.title FROM book AS T1 JOIN authors AS T2 ON T1.author = T2.idauthor WHERE T2.name = 'Peter Doe' EXCEPT SELECT T1.title FROM book AS T1 JOIN authors AS T2 ON T1.author = T2.idauthor WHERE T2.name = 'James Smith'
SELECT T2.Title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.Title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T1.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN author AS T3 ON T1.idauthor = T3.idauthor WHERE T3.name = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book WHERE TYPE <> "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT book_id , title FROM book ORDER BY pages LIMIT 1 OFFSET 0
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating DESC LIMIT 1
SELECT avg(T1.readers_in_million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.type = "Novel"
SELECT TYPE , count(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Readers_in_Million DESC;
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book AS T1
SELECT TYPE , TITLE FROM book EXCEPT SELECT T1.Type , T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT count(*) FROM customer
SELECT count(*) FROM customer AS T1;
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1
SELECT card_credit FROM customer ORDER BY LEVEL_of_Membership DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MembersHIP DESC LIMIT 1;
Nationality , count(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
Nationalities of customers with card_credit < 50 and Nationalities of customers with card_credit > 75 are different. Therefore, there are no common Nationalities.
Nationalities of customers with card_credit > 50 AND Nationalities of customers with card_credit < 75 have both. These two sets of nationalities overlap because both conditions involve customers who do not meet the criteria for the other set. Therefore, we can simply return the union of these two sets: {Nationalities of customers with card_credit > 50} ∪ {Nationalities of customers with card_credit < 75}.
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
customer_order.customer_id , dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.Name ORDER BY T1.Name ASC;
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.Quantity) ASC
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING sum(T1.quantity) > 1;
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> ' England'
SELECT Name FROM member WHERE Age IN (19 , 20)
Nationality : Oldest Member : Name
Nationality , count(*) SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
club_leader.join(club_leader.member_id)
SELECT T2.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = "Houston")
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
Nationalities of members older than 22 and younger than 19: SELECT Nationality FROM member WHERE Age > 23 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID;
club_name = 'state'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT collection_subset_name FROM collection_subsets
SELECT collection_details FROM collection_subsets WHERE collection_name = "Top collection"
SELECT T1.collection_details FROM Collection_subsets AS T1 JOIN Document_subsets AS T2 ON T1.collection_subset_id = T2.document_subset_id WHERE T2.document_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name LIKE '%Best for 2000%'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name LIKE '%Best for 2000%'
SELECT document_object_id FROM Document_objects
SELECT document_object_id FROM document_objects
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.parent_document_object_id WHERE T2.owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE owner = "Marlin"
SELECT OWNER FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN COLLECTION_SUBSET_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' AND T1.document_object_id = T2.document_object_id
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T1.Owner = 'Marlin' AND T2.Owner = 'Marlin'
SELECT DISTINCT description FROM document_objects WHERE parent_document_object_id IN (SELECT document_object_id FROM document_objects)
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != -1
SELECT count(*) FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Marlin\"
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.owner = \"Marlin\";
SELECT document_object_id FROM document_objects WHERE parent_document_object_id IS NULL;
SELECT document_object_id FROM document_objects WHERE parent_document_object_id IS NULL;
SELECT T1.document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.collection_id = T2.collection_id WHERE T2.parent_document_object_id != \"null\" GROUP BY T1.document_object_id HAVING count(*) > 0
SELECT count(*) , T1.Parent_Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T1.document_object_id != T2.document_object_id GROUP BY T1.Parent_Document_Object_ID;
SELECT collection_name FROM collections
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Nice\" AND T2.parent_collection_id != -1;
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Parent_Collection_ID = (SELECT Collection_ID FROM Collections WHERE Collection_Name = "Nice")
SELECT collection_name FROM collections WHERE collection_id NOT IN ( SELECT parent_collection_id FROM collections GROUP BY parent_collection_id HAVING count(*) > 1 )
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id HAVING count(*) > 1;
SELECT document_object_id FROM Document_subsets GROUP BY document_object_id HAVING count(*) > 1;
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\";
SELECT count(*) FROM Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = \"Best\" AND T2.collection_subset_id IN (SELECT collection_subset_id FROM Collection_subsets WHERE collection_subset_name = \"child\")
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Ransom\"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = \"Ransom\"
SELECT T1.collection_subset_id , T2.collection_name , count(*) FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , document_object_id FROM Document_subsets GROUP BY document_object_id;
SELECT document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.document_object_id , count(*) FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4 UNION SELECT document_object_id , count(*) FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.related_document_object_id = T2.document_object_id GROUP BY document_object_id HAVING count(*) > 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.collection_id JOIN Document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T2.owner = 'Braeden' AND T1.owner = 'Owner_of_document1' UNION SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.collection_id JOIN Document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T2.owner = 'Braeden' AND T1.owner = 'Owner_of_document2' ...以此类推，直到达到你想要的文档总数。
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Document_object_id = T2.Document_object_id WHERE T2.Document_subset_name = 'Braeden' AND T1.Document_object_id IN ( SELECT T1.Document_object_id FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Document_object_id = T2.Document_object_id WHERE T2.Document_subset_name = 'Braeden' )
SELECT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden' GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = \"Braeden\"
document_subsets_document_details_count(document_subset_id) SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id;
document_subsets=document_subsets(document_subset_id,textual_name,textual_details) collection_subsets=collection_subsets(textual_name,textual_details) document_subset_members=document_subset_members(document_subset_id,textual_object_id) count(DISTINCT document_subset_id) , textual_name , count(*) FROM document_subsets GROUP BY document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
document_subsets = (SELECT T1.document_subset_name , T1.document_subset_id FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_id = T2.document_subset_id)
document_subsets = (SELECT document_subset_id , document_subset_name FROM document_subsets WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1)) SELECT T2.document_subset_name , T1.document_subset_id FROM document_subsets AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN document_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
document_object_id , count(*) , collection_id FROM Documents_in_collections GROUP BY collection_id ;
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT document_object_id FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT count(DISTINCT document_object_id) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_subsets AS T1 JOIN Documents_in_collections AS T2 ON T1.document_subset_id = T2.collection_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.document_subset_details = "Best" AND T2.year = 2000
SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.document_object_id IN ( SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best for 2000")
SELECT T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\" EXCEPT SELECT T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\" AND t2.year = 2000
collections = Collection_Subsets("Collection_Name", "Best") different_document_object_ids = set([document_object_id for document_object_id in documents_in_collections(collections_id) if collections_collection_name == "Best" and document_object_id not in documents_in_collections(collection_subsets=collection_subsets["Collection_Name"] == "Best for 2000")]++)
SELECT document_object_id FROM documents_in_collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best" AND t1.date = 2000 UNION SELECT document_object_id FROM documents_in_collections AS t1 JOIN collections_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT DISTINCT T1.document_subset_id FROM document_subsets AS T1 JOIN collections_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.collection_name = "Best" OR T1.document_subset_name = "Best for 2000"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Best" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = \"Best\" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.collection_name = \"Best\"
SELECT count(*) FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = \"Best\" AND T2.collection_id IN (SELECT collection_id FROM collection_subsets WHERE collection_name = \"Best\")
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT T2.collection_subset_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best in"
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "english"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2;
participles = (SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC)
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T2.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T2.id , T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T1.songs_id ORDER BY count(*) DESC LIMIT 1;
stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language;
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2songs_id = T3.id WHERE T3english_translation != 'null' AND T3.language = 'english'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'good' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'good'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city;
SELECT count(*) FROM city;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = "Baltimore"
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = "PA"
SELECT city_name FROM city WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude ASC
state , count(*) FROM city GROUP BY state;
SELECT count(*) , state FROM city GROUP BY state;
country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = 'MD'
SELECT fname , lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT count(*) FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE country = 'China' )
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country;
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 0
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 0
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'CHI'
direct_distance(city1_code, city2_code) VALUES ('BAL', 'CHI').distance
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code GROUP BY T1.city_code HAVING avg(T2.distance) > 0.5
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 {}
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000;
SELECT sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code != T2.city_code AND T1.city1_code NOT IN (SELECT city1_code FROM direct_distance)
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' INTERSECT SELECT avg(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state != 'MA'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'MA' INTERSECT SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.state = 'MA'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code IN (SELECT city_code FROM city AS T3 JOIN direct_distance AS T4 ON T3.city_code = T4.city2_code WHERE T3.state = 'MA' AND T4.distance = (SELECT max(distance) FROM direct_distance AS T5 JOIN city AS T6 ON T5.city2_code = T6.city_code WHERE T6.state = 'MA') AND T5.distance = (SELECT max(distance) FROM direct_distance AS T7 JOIN city AS T8 ON T7.city2_code = T8.city_code WHERE T8.state = 'MA')) ORDER BY T2.distance DESC LIMIT 1;
SELECT sum(T1.distance) , T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY T2.city_code HAVING sum(T1.distance) > 0
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
Linda(Lincoln, Smith) + Tracy(Kim, Kim) = 49.68 miles + 43.07 miles = 92.75 miles
direct_distance(city1_code, city2_code) VALUES (city_code('Linda Smith'), city_code('Tracy Kim'))
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Houston' AND T1.fname = 'Linda' AND T1.lname = 'Smith' ORDER BY T2.distance ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Springfield' AND T1.lname = 'Smith' AND T1.age = (SELECT age FROM student WHERE fname = 'Linda' AND lname = 'Smith') ORDER BY T2.distance DESC LIMIT 1;
city_code : T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sails WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.sid IN (SELECT sid FROM reserves WHERE bid = 102)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102;
SELECT DISTINCT bid FROM reserves
SELECT T1.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT count(*) FROM (SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors))
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT rating FROM sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid IN ( SELECT T3.bid FROM Reserves AS T3 JOIN Boats AS T4 ON T3.bid = T4.bid GROUP BY T3.bid HAVING count(*) > 1 )
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2;
SELECT sid FROM reserves WHERE bid IN (SELECT sid FROM boats WHERE color = 'red' UNION SELECT sid FROM boats WHERE color = 'blue')
sid = (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue'))
SELECT T2.name , T1.sid FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.color = 'red' OR T1.color = 'blue'
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid IN ( SELECT T2.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" UNION SELECT T2.bid FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" INTERSECT SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
Bid sid1 Bid sid2 Reserves red Red Reserves blue Blue
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "blue"
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT name , sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = \"Luis\")
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors;
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT avg(age) FROM sails WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid GROUP BY T2.name;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id;
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
sid count(*) FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE sid > 1 GROUP BY T2.name HAVING count(*) > 0
sid count(*) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.sid > 1 GROUP BY sid；
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = "red" GROUP BY T1.rating
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = "red" GROUP BY T1.rating
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
from reserves as T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.age >= 20 AND T3.age <= 30;
Sailors(sid, name, age) INTERSECT (Boats.bid AS T1 JOIN Reserves.rid AS T2 ON T1.bid = T2.bid WHERE T2.age BETWEEN 20 AND 30)
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' AND T1.rating > (SELECT min(rating) FROM sailors AS T4 JOIN reserves AS T5 ON T4.sid = T5.sid JOIN boats AS T6 ON T5.bid = T6.bid WHERE T6.color = 'red')
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT rating FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE rating > (SELECT rating FROM boats WHERE color = 'red')))
SELECT max(rating) FROM sailsarids LIMIT 1;
SELECT max(rating) FROM Sailors AS T1;
从中选择 sid，name 从 Reserves 中查询 bid 为 bid 的 boats 的 Sid，name，然后将这些信息组合起来。 SELECT T1.name , T1.sid , T2.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = \"Melon\"
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "Melon"
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT MODEL FROM headphone ORDER BY PRICE DESC LIMIT 1
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(DISTINCT earpads) FROM headphone;
SELECT count(DISTINCT earpads) FROM headphone AS T1;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY price ASC LIMIT 1
SELECT model , CLASS , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT CLASS FROM headphone WHERE Earpads = 'Comfort Pads' EXCEPT SELECT CLASS FROM headphone WHERE Earpads = 'Bowls'
SELECT CLASS FROM headphone WHERE Earpads = 'Bowls' INTERSECT SELECT CLASS FROM headphone WHERE Earpads = 'Comfort Pads' {}
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'{}
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT Model FROM headphone WHERE Price < ( SELECT avg(Price) FROM headphone )
sorted_store_name = store.sort_by_date_open()
sorted(store.date_opened) Store_names
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = "Tarzana"
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(DISTINCT neighborhood) FROM store AS T1;
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood;
neighborhoods_count(store_id) STORE_ID GROUP BY neighborhood
store_name = t1.name quantity_of_headphones = count(*) FROM stock AS t1 JOIN store AS t2 ON t1.store_id = t2.store_id GROUP BY t1.store_id ORDER BY quantity_of_headphones DESC LIMIT 1;
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headline_id IN (SELECT T3.headline_id FROM headphone AS T3 JOIN stock AS T4 ON T3.headphone_id = T4.headphone_id GROUP BY T3.headphone_id HAVING count(*) > 0) GROUP BY T1.store_id
store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store.id - store.name - store
SELECT name FROM store WHERE store_id NOT IN ( SELECT store_id FROM stock WHERE headphone_id IN ( SELECT headphone_id FROM headphone ) )
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1;
SELECT count(*) FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id WHERE T1.store_id = t1woodman
store woodman { SELECT sum(T1.quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = 'Woodman' AND T1.headphone_id IN (SELECT headphone_id FROM headphone WHERE construction = 'Woodman') }
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT t1.store_id FROM stock AS t1 JOIN headphone AS t2 ON t1.headphone_id = t2.headphone_id)
store.neighborhood EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id NOT IN (SELECT headphone_id FROM headphone)
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper;
SELECT count(*) FROM paper;
SELECT count(*) FROM affiliation AS T1
SELECT count(*) FROM affiliation AS T1
SELECT count(*) FROM paper WHERE YEAR = "2000" AND venue = "NAACL"
SELECT count(*) FROM paper WHERE YEAR = "2000"
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Columbia University\" AND t1.year = 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Columbia University\" AND t1.year = 2009;
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
[ {"venue": "University of California", "year": 2015}, {"venue": "University of California", "year": 2014}, {"venue": "University of California", "year": 2013}, {"venue": "University of California", "year": 2012}, {"venue": "University of California", "year": 2011}, {"venue": "University of California", "year": 2010} ]
SELECT DISTINCT venue FROM paper ORDER BY YEAR ASC
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = \"Harvard University\"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKeown'
SELECT t1.title , t2.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id = 'McKeown'
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' INTERSECT SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University'
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.cited_paper_id = t3.affiliation_id WHERE t3.name = 'Stanford' AND t3.name = 'Columbia University'
SELECT T2.title FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'McKeown' AND T2.paper_id IN (SELECT T3.paper_id FROM author AS T3 JOIN author_list AS T4 ON T3.author_id = T4.author_id WHERE T4.name = 'Rambow')
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = 'McKeown' AND T2.author_id IN (SELECT author_id FROM author AS T4 JOIN author_list AS T5 ON T4.author_id = T5.author_id WHERE T4.name = 'Rambow')
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author WHERE name = "McKeown" ) EXCEPT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN ( SELECT author_id FROM author WHERE name = "Rambow" )
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = "McKeown") EXCEPT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = "Rambow")
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('Mckeown', 'Kathleen') OR T1.name IN ('Rambow', 'Owen')
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'McKeown' OR T1.name = 'Rambow'
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 1002 AND t1.paper_id = 1002
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.title = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 12-1027;
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id WHERE t1.cited_paper_id = t2.paper_id AND t2.paper_id = 12-1027
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = 'McKeown , Kathleen'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'McKeown' AND t3.email = 'Kathleen'
SELECT count(*) FROM citation AS t1 JOIN author_list AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t3.name = \"McKeown\" AND t2.email = \"Kathleen\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T2.title = 'Kathleen'
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T3.venue , T3.year FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "McKeown" AND T3.email = "Kathleen"
SELECT T3.venue , T3.year FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.paper_id = T3.paper_id WHERE T3.name = "Columbia University"
SELECT venue , YEAR FROM paper WHERE title = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year <= 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year >= 1909 {}
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t1.year BETWEEN 2000 AND 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Stanford University' AND t1.year BETWEEN 2000 AND 2009;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\" AND T2.paper_id IN ( SELECT T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"Kathleen\")
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"Mckeown\" AND T2.paper_id IN (SELECT T3.paper_id FROM author AS T3 JOIN author_list AS T4 ON T3.author_id = T4.author_id WHERE T4.author_id = \"Kathleen\")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.author_id IN (SELECT T3.author_id FROM author AS T3 JOIN author_list AS T4 ON T3.author_id = T4.author_id WHERE T4.author_id = 'Mckeown' AND T4.paper_id IN (SELECT T5.paper_id FROM paper AS T5 JOIN citation AS T6 ON T5.paper_id = T6.cited_paper_id WHERE T6.cited_paper_id IN (SELECT T7.paper_id FROM paper AS T7 JOIN citation AS T8 ON T7.paper_id = T8.cited_paper_id WHERE T8.paper_id = 'Kathleen')) GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.paper_id IN ( SELECT t3.paper_id FROM paper AS t3 JOIN citation AS t4 ON t3.paper_id = t4.paper_id JOIN author AS t5 ON t4.cited_paper_id = t5.author_id WHERE t5.name = 'Mckeown , Kathleen' GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1 )
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN ( SELECT paper_id FROM citation )
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR;
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name HAVING count(*) > 0
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY cited_paper_id HAVING cited_paper_id IN (SELECT paper_id FROM paper WHERE cited_paper_id > 50))
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 2018 AND cited_paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 2018 AND cited_paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 2018)))))) INTERSECT SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 2018 AND cited_paper_id IN (SELECT paper_id FROM citation WHERE cited_paper_id IN (SELECT paper_id FROM paper WHERE year > 2018)))));
```sql SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.paper_id IN ( SELECT T3.paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T4.venue = \"NAACL\" AND T4.year = 2009 INTERSECT SELECT T3.paper_id FROM citation AS T3 JOIN paper AS T4 ON T3.cited_paper_id = T4.paper_id WHERE T4.venue = \"ACL\" AND T4.year = 2009 )```
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT
SELECT name FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE paper_id IN ( SELECT paper_id FROM citation WHERE venue = \"ACL\" ) )
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE title = 'ACL'))
SELECT count(*) FROM conference;
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT T1.Conference_Name , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name HAVING count(*) > 0
SELECT count(*) , conference_name FROM conference GROUP BY conference_name;
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR = YEAR;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2;
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
from institution WHERE founded >= 1850 AND founded <= 1900 {}
from institution WHERE founded >= 1850 AND founded <= 1900 {}
{ "sql": "SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1"
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN ( SELECT institution_id FROM staff )
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE Nationality = 'United States'
SELECT max(age) , min(age) FROM staff
conferences = [T1.Conference_Name] FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
conferences = [ t1.Conference_Name FROM conference AS t1 JOIN conference_participation AS t2 ON t1.Conference_ID = t2.Conference_ID JOIN staff AS t3 ON t2.staff_id = t3.staff_id WHERE t3.Nationality = 'Canada' ]
concurrent_staff = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor')
concurrent_sponsor_conference = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'A' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'N'
SELECT T1.name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id JOIN conference_participation AS T3 ON T2.staff_id = T3.staff_id WHERE T3.conference_id IN (SELECT T4.conference_id FROM conference AS T4 JOIN conference_participation AS T5 ON T4.conference_id = T5.conference_id WHERE T4.conference_name = 'ACL' AND T5.role = 'participant') INTERSECT SELECT T1.name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id JOIN conference_participation AS T3 ON T2.staff_id = T3.staff_id WHERE T3.conference_id IN (SELECT T4.conference_id FROM conference AS T4 JOIN conference_participation AS T5 ON T4.conference_id = T5.conference_id WHERE T4.conference_name = 'NACCL')
concurrent_staff_name = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004)
concurrent_conference BETWEEN 2003 AND 2014 INTERSECT conference_participationstaff AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.age >= 20 AND T2.age <= 99;
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID ORDER BY T2.role DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
select T1.institution_name , T1.location from institution AS T1 join staff AS T2 ON T1.institution_id = T2.institution_id except select T3.institution_name , T3.location FROM institution AS T3 join conference_participation AS T4 ON T3.institution_id = T4.staff_id WHERE T4.year = 2004;
SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id EXCEPT SELECT T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.staff_id WHERE T4.year = 2004
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = "Piper Cub" AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM hangar;
SELECT count(DISTINCT LOCATION) FROM hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T1.age = 32
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T2.plane_name = '32'
SELECT count(*) FROM pilotskills WHERE age > 40;
SELECT count(*) FROM pilot_skills WHERE age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name LIKE '%B-52 Bomber%' AND T1.age < 35;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T1.plane_name = 'B-52'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM pilot_skills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar ORDER BY count(*) ASC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41;
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
locations = [location[plane_name] for location in hangar](locations.sort())
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 UNION SELECT count(*) FROM pilot_skills WHERE age < 30
SELECT count(*) FROM pilot_skills WHERE age BETWEEN 30 AND 40 OR age BETWEEN 0 AND 29;
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 AND T2.plane_name = 'Piper Cub' UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30 AND T2.plane_name = 'F-14 Fighter'
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 AND T2.plane_name = 'Piper Cub' UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.age < 30 AND T1.plane_name = 'F-14 Fighter'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 18 AND T2.plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 18 AND T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.pilot_name = T2.pilot_name
SELECT avg(age) , min(age) FROM pilot_skills AS T1 {}
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
Pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter'
"Piper Cub" OR "F-14 Fighter"
SELECT avg(age) , T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING count(*) >= 1
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
plane_type_count { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type_count" : { "plane_type
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T2.plane_name , T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT T2.plane_name , T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) > 1
SELECT DISTINCT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name
SELECT count(*) , avg(age) , pilot_name FROM PilotSkills GROUP BY pilot_name HAVING count(*) > 1
SELECT count(*) , T2.location , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35 {}
SELECT count(*) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35 ORDER BY count(*) DESC LIMIT 1000000;
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC LIMIT 1;
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = (SELECT pilot_name FROM pilotskills ORDER BY age ASC LIMIT 1)
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY pilot_name ASC LIMIT 1000000000000;
SELECT T2.pilot_name FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN pilot AS T4 ON T3.plane_name = T4.plane_name WHERE T3.plane_name = 'Piper Cub') ORDER BY T2.pilot_name ASC;
SELECT count(*) FROM pilot_skills WHERE age < (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilot_skills WHERE age < (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT DISTINCT T1(plane_name) FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 30 AND T2.plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills WHERE age > (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > ( SELECT avg(area_km) FROM district )
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
district_id , name FROM district WHERE district_id IN ( SELECT T1.district_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T2.start_year < 2004 )
district_id , count(*) , t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id ORDER BY count(*) DESC , t1.name
SELECT T3.Name FROM district AS T3 JOIN spokesman_district AS T2 ON T3.District_ID = T2.District_ID JOIN spokesman AS T1 ON T2.Spokesman_ID = T1.Spokesman_ID WHERE T1.Rank_position = 1 INTERSECT SELECT T3.Name FROM district AS T3 JOIN spokesman_district AS T2 ON T3.District_ID = T2.District_ID JOIN spokesman AS T1 ON T2.Spokesman_ID = T1.Spokesman_ID WHERE T1.Rank_position = 2
district_id , name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING count(*) > 1
districts_count = count(*) - (select count(*) from spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN ( SELECT T1.spokesman_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id )
district_id + sum(population) + avg(population) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.district_id = t2.district_id GROUP BY t2.district_id HAVING sum(population) != 0 AND avg(population) != 0
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1 OFFSET 0
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT T1.title , T2.location FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226;
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) = 1
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT lname FROM artists ORDER BY birthYear DESC LIMIT 1;
min(birthYear) FROM artists ORDER BY birthYear LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthYear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = '240'
SELECT count(*) FROM paintings WHERE LOCATION = '240'
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear > (SELECT max(birthyear) FROM artists)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T2.deathyear DESC LIMIT 1;
painters = {artistID: 'Mary'} result = [] for painting in paintings: if painting.painterID in painters: result.append([painting.year , painting.title]) print(result)
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Mary"
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.location , T3.medium FROM artists AS T1 JOIN paints AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T1.fname = 'Pablo' AND T2.title != 'null'
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Pablo"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid {}
painters = (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'medium' AND T2.mediumOn = 'medium' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic' AND T2.mediumOn = 'lithographic'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.medium = 'canvas'
paintersID = 1884 AND birthYear = 1884 FROM artists AS T1
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = '241' AND T2.medium = 'medium'
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' AND T2.year = 241 {}
SELECT count(*) , medium FROM paintings GROUP BY medium;
{ "sql": "SELECT count(*) , medium FROM paintings GROUP BY medium"
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) > 0
SELECT count(*) , LOCATION FROM Paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910;
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium' AND LOCATION = '240'
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium oil' AND LOCATION = '240'
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT max(YEAR) FROM paintings WHERE LOCATION = 'Gallery 240')
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
paintersID = (SELECT T1.artistID FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%' AND T1.fname != 'Helen' AND T1.lname != 'John')
paintersID IN (SELECT DISTINCT sculptorID FROM sculptures WHERE title LIKE '%female%') INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T2.sculpturid = T3.sculpturid WHERE T3.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
between_year_1900_1950 = (SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950)
between(1900 , 1950) paintings union sculptures
paintings222 = paintings WHERE painterid = 222 sculptures222 = sculptures WHERE sculptorid = 222
paintings.title = (SELECT title FROM paintings WHERE painterid = 222) INTERSECT SELECT title FROM sculptures WHERE sculptorid = 222)
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
Before 1885 or after 1930: \n\nSELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
Before 1885: LOCATION After 1930: LOCATION
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'panel' UNION SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'canvas'
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'on'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 AND YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 GROUP BY paintingid;
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR <= 1900 GROUP BY paintingid ORDER BY max(height_mm) DESC LIMIT 1;
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , title FROM Paintings GROUP BY painterID ORDER BY title ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paints AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) > 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.birthyear , T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY gallery_id HAVING gallery_id = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = 240 GROUP BY paintingid HAVING count(*) >= 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE location = 'gallery 240')
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY galleryID HAVING galleryID = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
paintings EXCEPT (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.title = 'sculpture') union select T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid
paintersIDs = (SELECT T1.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = 'oil' EXCEPT SELECT T1.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = 'canvas') union select T1.fname , T1.lname from artists AS T2 where artistid NOT IN (SELECT T1.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = 'oil') union select T1.fname , T1.lname from artists AS T2 where artistid IN (SELECT T1.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = 'canvas')
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race;
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT T1.Winning_driver , T1.Winning_team FROM race AS T1 ORDER BY T1.Winning_team
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Pole_Position != \"Junior Strous\"
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position != "Junior Strous"
sorted_by_age_constructor(race.Driver_ID , constructor)
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT count(DISTINCT entrant) FROM driver WHERE age > 20;
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 20 OR age < 30
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
driver.join(race).on(driver.driver_id = race.driver_id)
driver(race_name,race_id) race(driver_id,race_name)
driver_id , count(*) FROM race GROUP BY driver_id;
SELECT T1.Race_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) > 0
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.age ORDER BY count(*) DESC LIMIT 1;
driver.join(race).having(count(*) >= 2)
driver(race_id, driver_id) JOIN race ON driver.driver_id = race.driver_id GROUP BY driver_id HAVING count(*) >= 2;
driver.Race_Name = (SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26)
driver(race_name) SELECT T1.race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
constructor , count(*) FROM driver GROUP BY constructor;
SELECT count(*) , constructor FROM driver GROUP BY constructor
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1;
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1(Constructor) = driver2(Constructor) AND driver1.age < 20 AND driver2.age > 30
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 2
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = \"James Hinchcliffe\" AND T2.pole_position = \"Carl Skerlong\";
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "James Hinchcliffe" AND T2.Pole_Position = "Carl Skerlong"
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT count(*) FROM languages AS T1
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE "%ish%"
languages(name) LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries;
SELECT avg(justice_score) FROM countries AS T1
SELECT max(health_score) , min(health_score) FROM countries WHERE name <> 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN ( SELECT id FROM countries WHERE name = 'Norway' )
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
official_languages.group_by(language_id).count()
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"English\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY avg(T2.overall_score) DESC;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
select name FROM languages EXCEPT select T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id {}
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries EXCEPT SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT name FROM countries EXCEPT SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id {}
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score BETWEEN 90 AND 100) UNION SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN (SELECT id FROM countries WHERE overall_score BETWEEN 0 AND 89)
SELECT county , town_city FROM Addresses
SELECT country , town_city FROM addresses AS T1
SELECT T1.town_city , T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.town_city , T1.county_state_province;
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province HAVING count(*) >= 5000000
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM features AS T1 JOIN property_features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties;
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM users AS T1 JOIN ref_age_categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description LIKE '%Mother%'
SELECT DISTINCT age_category_code FROM users WHERE user_category_code IN (SELECT user_category_code FROM properties WHERE property_description LIKE '%Mother%')
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn != 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1;
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
{ "sql": "SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1"
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1
SELECT avg(room_count) FROM properties;
SELECT avg(room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(DISTINCT room_size) FROM rooms;
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_searches;
MAX(search_datetime)
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T2.zip_postcode FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) <= 2;
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T3.user_id FROM User_Property_History AS T3 JOIN Properties AS T4 ON T3.property_id = T4.property_id GROUP BY T3.user_id HAVING count(*) >= 2)
SELECT T1.user_id , T1.search_string FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.user_id WHERE T2.search_string = \"first\"
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_Searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = "Senior" ORDER BY first_name
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
Total number of searches made by all users: SELECT count(*) FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1;
SELECT count(*) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior"
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior"
SELECT count(*) FROM ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2 )
SELECT count(*) FROM (SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT count(*) , T1.property_id FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) > 0
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , T1.user_id FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT count(*) , owner_user_id FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T2.property_id HAVING count(*) > 0
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_buyer = 'Yes' OR T2.is_seller = 'Yes'
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE is_seller = 'F' INTERSECT SELECT user_id FROM Users WHERE is_buyer = 'F')
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
[ { "date_stamp": "2023-04-06", "property_name": "Sunset Hills" }, { "date_stamp": "2023-04-07", "property_name": "Sunset Hills" } ]
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T2 JOIN Properties AS T1 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM Rooms GROUP BY room_size;
SELECT count(*) , room_size FROM Rooms GROUP BY room_size;
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = "Robbie"
addresses WHERE first_name = \"Robbie\" AND town_city = \"Roborough\"ouniversity.edu"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN (SELECT address_id FROM addresses GROUP BY address_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name IN (SELECT T3.property_name FROM Properties AS T3 JOIN User_Property_History AS T4 ON T3.property_id = T4.property_id WHERE T4.datestamp = (SELECT max(datestamp) FROM User_Property_History))
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT user_id FROM User_Property_History )
SELECT search_string FROM User Searches WHERE user_id NOT IN ( SELECT user_id FROM User Property Histoery )
user_id , last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 {}
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = "Carbon CC"
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015 {}
bicycle_ids = set(bike_id FROM cyclists_own_bikes GROUP BY bicycle_id HAVING count(*) >= 4) biker_names = set(name FROM cyclists_own_bikes GROUP BY name HAVING count(*) >= 4) intersect (SELECT id , T1.product_name FROM bike AS T1 JOIN bicycles_ids AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclists_own_bikes AS T3 ON T2.bike_id = T3.bike_id WHERE T3.purchase_year = 2008) biker_names = list(T2.product_name FROM bicycle_ids AS T1 JOIN cyclists_own_bikes AS T2 ON T1
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
cycling自己自行车中属于俄罗斯或者英国的唯一产品名称是：product_name.product_name FROM bike AS product_name JOIN cyclists_own_bikes AS cycling ON product_name.id = cycling.bike_id JOIN cyclist AS cycling ON cycling.cyclist_id = cycling_own_bikes.cyclist_id WHERE cycling.nation = 'Russia' OR cycling.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1;
SELECT count(*) FROM cyclists_own_bikes WHERE purchase_year != 2016;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
cicloneid = (SELECT T1.id FROM bikes AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = 'Bradley Wiggins' INTERSECT SELECT T1.id FROM bikes AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = 'Antonio Tauler')
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT id FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , id FROM cyclists_own_bikes GROUP BY id ORDER BY id
SELECT T2.flavor , T1.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "Cake" ORDER BY T1.price DESC LIMIT 1
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item ORDER BY T2.price DESC LIMIT 1
SELECT T2.flavor , T1.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = \"cookie\" ORDER BY T1.price ASC LIMIT 1
SELECT id , flavor FROM goods WHERE food = 'cookie' ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price BETWEEN 0 AND 2
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Lemon\" GROUP BY T1.id HAVING count(*) >= 1
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = \"Lemon\" GROUP BY T1.customerid HAVING count(*) = 1
SELECT T2.food , count(*) FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.food HAVING count(*) > 0
food_count = { "Flavor" : {"Bread" : 100 , "Cereal" : 50 , "Pancakes" : 200 , "Milkshake" : 300} }
SELECT T2.id FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T2.id HAVING count(*) >= 15;
SELECTCustomerId FROM receipts GROUP BY customerId HAVING COUNT(*) >= 15;
SELECT T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10;
SELECT T2.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) > 10;
SELECT count(DISTINCT item) FROM goods WHERE food = 'Cake'
SELECT count(DISTINCT item) FROM items WHERE food = 'Cake'
SELECT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id WHERE T1.customerid = 15;
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T1.customerid = T3.id WHERE T3.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) FROM goods WHERE food != "null"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = 'Cake' AND T2.id IN (SELECT T2.id FROM items AS T2 JOIN goods AS T3 ON T2.id = T3.id WHERE T3.Flavor = 'Cookie')
items(Item) AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Cake' INTERSECT items(Item) AS T3 JOIN receipts AS T4 ON T3.id = T4.item WHERE T3.flavor = 'Cookie'
customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.food = 'Croissant' AND T1.lastname = 'LOGAN'_receiptnumber AS T4 FROM receipts AS T2 JOIN customers AS T1 ON T1.id = T2.customerid WHERE T1.lastname = 'LOGAN'
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.lastname = \"Logan\" AND T2.item = \"Croissant\"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1;
food_type_food_count = ( SELECT count(*) , food FROM goods GROUP BY food)
foodtype(food) , count(*) FROM goods GROUP BY foodtype(food)
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
goods AS SELECT flavor FROM goods WHERE price > 10;
goods AS SELECT flavor FROM goods WHERE price > 10;
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Price > 13;
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 13 GROUP BY T2.receiptnumber HAVING count(*) >= 1
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT Id , Price FROM goods WHERE Food LIKE "%70%"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName
items.sortById()物品排序后得到的id列表。
SELECT DISTINCT id FROM goods
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = 'Apple' OR T1.customerid = 12 {}
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Apple' UNION SELECT T2.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.id = 12 {}
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receipt FROM receipts ORDER BY date ASC UNION SELECT receipt FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 10;
SELECT receiptnumber FROM receipts WHERE date > (SELECT min(date) FROM receipts WHERE price > 10) UNION SELECT receiptnumber FROM receipts WHERE price > 10;
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price >= 3 AND T2.price <= 7 SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = \"Cookie\" INTERSECT SELECT T1.id FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = \"Cake\"
items(Item) WHERE Price >= 3 AND Price <= 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor IN ('blackberry', 'blueberry')
SELECT avg(price) FROM goods WHERE flavor = "Blackberry" OR flavor = "Blueberry"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT date FROM receipts ORDER BY receipt DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT T1.customerid) , T2.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T2.date;
SELECT T1.date , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.date HAVING count(*) > 0
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Apple" AND T3.food = "Tart"
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = 'Apple' AND T1.food = 'Tarts'
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = "Croissant")
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price >= ( SELECT avg(price) FROM goods WHERE flavor = 'Tart' )
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2;
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) AND count(*) > 2
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor FROM goods WHERE food = "Cake" ORDER BY flavor ASC
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM goods WHERE id IN (SELECT T1.id FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T1.id HAVING count(*) < 10) AND flavor = 'Chocolate'
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Chocolate\" GROUP BY T1.item HAVING count(*) <= 10;
items.Item Flavor Food {"Item":"Cake","Flavor":"Chocolate","Food":"Sweet"} {"Item":"Cake","Flavor":"Butter","Food":"Sweet"}
items(Item) WHERE food = 'Cakes' EXCEPT SELECT T2.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = 'Tart'
SELECT T2.food FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T2.date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T1.item = T3.id WHERE T3.price > 100 GROUP BY T2.date HAVING count(*) > 100;
SELECT T2.date FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.id HAVING sum(T2.price) > 100;
SELECT count(*) FROM driver
SELECT count(*) FROM driver;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1;
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T1.Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE points BETWEEN 0 AND 149;
SELECT count(*) FROM driver WHERE Points < 150;
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Age
SELECT Driver FROM driver ORDER BY Points DESC LIMIT 1000000
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , T1.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = "Dublin")
SELECT avg(Age) FROM driver WHERE Country IN (SELECT Country FROM country WHERE Official_native_language = \"English\")
SELECT avg(age) FROM driver WHERE country IN ( SELECT country FROM country WHERE Official_native_language = "English" )
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
Make.count(driver_id)
make_count(team_driver) SELECT make , count(*) FROM driver GROUP BY make HAVING count(*) > 0
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_id NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" EXCEPT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_Id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT sum(Points) , avg(Points) FROM driver AS T1
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
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
def order_by_founded(institution): return sorted(institution, key=lambda x: x.founded)
SELECT city , province FROM institution
SELECT city , province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
max(enrollment) , min(enrollment) FROM institution AS T1
SELECT affiliation FROM institution WHERE city <> 'Vancouver' {}
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
{ "sql": "SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1"
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id
championship.institution_id,nickname FROM championship AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id JOIN nickname AS t3 ON t1.nickname = t3.nickname
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
championships AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id GROUP BY t1.institution_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
championships AS t1 JOIN institution AS t2 ON t1.institution_id = t2.institution_id ORDER BY t1.number_of_championships DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETRY AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.abundance = 'Public'
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETRY AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation;
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM CHAMPIONSHIP ORDER BY capacity DESC
SELECT T1.Nickname FROM CHAMPIONSHIP AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT enrollment FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT T1.Province FROM institution AS T1 JOIN institution AS T2 ON T1.Province = T2.Province WHERE T1.Founded < 1920 AND T2.Founded > 1950
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1
SELECT count(DISTINCT province) FROM institution;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = \"New York\";
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING count(*) > 0
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents;
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(value) FROM boxes;
SELECT avg(value) FROM boxes;
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes;
SELECT count(DISTINCT contents) FROM boxes;
SELECT DISTINCT LOCATION FROM Warehouses
SELECT count(DISTINCT LOCATION) FROM Warehouses;
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" OR LOCATION = "New York")
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' OR T2.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
Contents of boxes stored in both Chicago and New York: contents = (boxes W1 contents = 'Chicago' and boxes W2 contents = 'New York')
boxes.notinnewyork = boxes.content WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
contents 不在 新 york city 区 的 包含 在 箱盒 中的 品类： SELECT DISTINCT t1.contents FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location != 'new york city'
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
WaresWithRocksButNotScissors = (SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Rock' EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = 'Scissors')
SELECT T1.location FROM boxes AS T1 JOIN wareouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = \"Rocks\" OR T1.contents = \"Scissors\"
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" OR T1.contents = "Scissors"
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
boxes.filter(contents=="Rocks").filter(contents=="Scissors").values().map(location).join(", ")
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
Woods >>= "SELECT DISTINCT contents FROM boxes ORDER BY contents ASC"
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Rocks' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM boxes AS T2 JOIN warehouses AS T1 ON T2.warehouse = T1.code GROUP BY T1.code HAVING avg(T2.value) > 150 {}
Warehouse = (SELECT warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150)
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
Total_value + count(*) FROM boxes
SELECT sum(capacity) , avg(capacity) , max(capacity) , location FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses;
SELECT sum(capacity) FROM Warehouses;
SELECT max(T1.value) , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location ORDER BY max(T1.value) DESC LIMIT 1
SELECT T2.code , count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE CONTENTS = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT code FROM Warehouses WHERE capacity > (SELECT capacity FROM Warehouses ORDER BY capacity DESC LIMIT 1)
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.capacity > T2.capacity GROUP BY T1.code HAVING count(*) > (SELECT count(*) FROM boxes WHERE warehouse = T1.code)
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE STATE = 'IL' OR STATE = 'OH'
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT * FROM university WHERE home_conference = 'Home'
SELECT DISTINCT home_conference FROM university;
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT STATE FROM university GROUP BY STATE ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY count(*) ASC LIMIT 1;
SELECT home_conference FROM university ORDER BY enrollment ASC LIMIT 1;
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code ASC
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code ASC
university_id , major_name , major_code , rank FROM university WHERE university_name = 'Augustana College' UNION SELECT T1.university_id , T2.major_name , T2.major_code , T2.rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Augustana College'
university_id , major_name JOIN major ON major_majordesc.major_name = major_majordesc.major_name JOIN major_ranking ON major_ranking.majordesc = major_majordesc.major_id JOIN university ON university.university_id = major_ranking.university_id WHERE university.name = 'Augustana College'
university_name = 'University of Phoenix' city = 'Phoenix' state = 'Arizona' major_name = 'Accounting' rank = 1 major_id = 286 university_id = 4375978408444068803 major_ranking.university_id = 4375978408444068803 major_ranking.major_id = 286
SELECT T4.university_name , T4.city , T4.state FROM university AS T4 JOIN major AS T3 ON T4.university_id = T3.university_id JOIN major_ranking AS T2 ON T3.major_id = T2.major_id WHERE T2.rank = 1 AND T2.major_id IN ( SELECT T1.major_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.university_id = T4.university_id AND T2.reputation_point > 5 ) ORDER BY T1.major_name ASC LIMIT 1
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1)
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id ORDER BY T3.rank LIMIT 1)
university(university_name) EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id WHERE T2.rank = 1 )
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education')
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\")
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.major_name = \"Accounting\")
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.majortype = 'Accounting')
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.total >= 5 {}
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank BETWEEN 1 AND 4)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > 3
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating != 'Rating'
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Theater != 'null'
MovieTheaters.Name , Movies.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name != ''
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating LIKE 'G%'
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies GROUP BY code)
SELECT count(*) FROM MovieTheaters WHERE Movie IN (SELECT Code FROM Movies)
SELECT count(DISTINCT T1.title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie;
SELECT count(DISTINCT title) FROM Movies WHERE code IN (SELECT movie FROM MovieTheaters GROUP BY movie HAVING count(*) > 1)
SELECT count(DISTINCT name) FROM Movietheaters;
SELECT count(DISTINCT name) FROM Movietheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
Movies(code,title,Rating) WHERE title LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
MovieTheaters.Name <- Movie Theaters.Name Movies.Code <- MovieTheaters.Movie Movies.Title <- MovieTheaters.Title Movies.Rating <- MovieTheaters.Rating (MovieTheaters.Name = 'Odeon' OR MovieTheaters.Name = 'Imperial')
movietheaters = (SELECT T1.name FROM movietheaters AS T1 JOIN films AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' OR T1.name = 'Imperial')
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.theater = 'Odeon' AND T2.title IN (SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.theater = 'Imperial')
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T2.Title = 'The Great Dictator' INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial' AND T2.Title = 'Gone with the Wind'
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title ASC
SELECT title FROM movies ORDER BY rating ASC
sorted_movies_by_rating := (SELECT title FROM movies ORDER BY rating ASC)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T2.title ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) , rating FROM Movies GROUP BY rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\";
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T2.Name HAVING COUNT(*) >= 1
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name IN (SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code)
SELECT name FROM movietheaters WHERE code NOT IN (SELECT movie FROM movies)
SELECT Name FROM MovieTheaters WHERE Code NOT IN (SELECT Movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Title FROM Movies
SELECT title FROM movies
SELECT DISTINCT Rating FROM Movies;
SELECT count(DISTINCT rating) FROM movies AS T1
SELECT * FROM Movies WHERE Rating != "Unrated"
SELECT * FROM Movies WHERE Rating != "Unrated"
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1
SELECT sum(T2.weight) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "Leo Wong"
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT POSITION FROM Employee WHERE name = "Amy Wong"
SELECT POSITION FROM employee WHERE name = 'Amy Wong'
SELECT salary , POSITION FROM employee WHERE name = 'Turanga Leela'
SELECT salary , position FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = "Physician"
SELECT LEVEL FROM has_clearance WHERE POSITION = 'Physician'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = \"Leo Wong\"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\"
SELECT T2.contents FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid WHERE T2.name = 'Leo Wong' OR T2.name = 'Leo Wong'
SELECT DISTINCT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender OR T1.accountnumber = T2.recipient WHERE T1.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Ogden Wernstrom' AND T2.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T2.Contents FROM PACKAGE AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipment WHERE T1.sender = "John Zoidfarb"
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name LIKE '%John%' ORDER BY T2.weight DESC LIMIT 1
SELECT T2.packagenumber , T2.weight FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'John' OR T2.recipient = 'John'
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3
SELECT T2.name , count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) LIMIT 1;
SELECT min(weight) , min(sender) FROM package AS T1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber HAVING count(*) > 1;
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Phillip J. Fry"
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment WHERE planet IN ( SELECT planet FROM planet WHERE name = 'Mars' )
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars"
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = 3
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars" OR T1.manager IN (SELECT employeeid FROM employee AS T3 JOIN has_clearance AS T4 ON T3.employeeid = T4.employee)
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = "Turanga Leela" AND T1.planet = 3
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name HAVING count(*) > 0
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN shipment AS T2 ON T1.Shipment = T2.ShipmentID WHERE T2.planet = 'Mars'
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars'
Shipment.Planet AS T1 , sum(T2.Weight) AS T2 , T1 FROM Shipment AS T1 JOIN Package AS T2 ON T1.ShipmentID = T2.Shipment GROUP BY T1.Planet ;
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipment WHERE T1.name != \"null\" GROUP BY T1.name ORDER BY T1.name ASC;
planet = (SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30)
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name HAVING sum(T2.weight) > 30
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Omicron Persei" AND T1.manager = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Zapp Brannigan' AND T2.planet = 'Omicron Persei 8'
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = ( SELECT planetID FROM planet WHERE name = "Omicron Persei 8" ) UNION SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN ( SELECT T1.Employee FROM Has_Clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetID WHERE T2.name = 'Mars')
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
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM game
game.count()
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_Name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_id , Platform_name FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 2
SELECT count(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
game_player AS T1 JOIN game AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T2.Title = \"Super Mario World\" AND T3.Rank_of_the_year = 1
game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = \"Super Mario World\"
SELECT DISTINCT T4.Developers FROM game_player AS T2 JOIN game AS T3 ON T2.Game_ID = T3.Game_ID JOIN player AS T4 ON T2.Player_ID = T4.Player_ID WHERE T1.College = "Auburn"
game_platforms_gameplayer_gamerelationship(g1=games,g2=gamedevices) g1=games,g2=platform_id, g3=gamedevices, g4=gamedevices FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.college = 'Auburn' GROUP BY T2.player_id HAVING count(*) >= 1
avg(units_sold_millions) / count(DISTINCT player_id) * 1000 FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = \"Guard\"
avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\";
SELECT T2.Title , T1.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
SELECT T1.Frankie , count(*) FROM game AS T1 JOIN game AS T2 ON T1.Frankie = T2.Frankie GROUP BY T1.Frankie
platform(platform_id, count(*) as count) FROM game GROUP BY platform_id;
SELECT T1.Frankie FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID GROUP BY T1.Frankie ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Frankie FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID GROUP BY T1.Frankie HAVING COUNT(*) >= 2
SELECT T1.Frankence FROM game AS T1 JOIN game AS T2 ON T1.Frankence = T2.Frankence GROUP BY T1.Frankence HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN ( SELECT Player_ID FROM game_player )
if (SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T2.If_active = 1 INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\" AND T2.If_active = 1)
player1 = (SELECT T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T1.College = \"Oklahoma\" OR T1.Player_name = \"Auburn\")
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE game_id NOT IN ( SELECT T1.game_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN ( SELECT T1.game_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T2.position = 'Guard' )
SELECT name FROM press ORDER BY YEAR_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
for press in press.filter(year_profits_billion > 15).filter(month_profits_billion > 1000): print(f"{press.name}")
SELECT name FROM press WHERE year_profits_billion > 15000000 OR month_profits_billion > 1000000
avg(year_profits_billion) , max(year_profits_billion) FROM press
SELECT avg(YEAR_Profits_billion) , max(YEAR_Profits_billion) FROM press
SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T2.month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion - year_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30;
SELECT count(*) FROM author WHERE age < 30;
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
sorted(book.Release_date)
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , title FROM book GROUP BY title;
SELECT count(*) , book_series FROM book GROUP BY book_series;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title FROM book WHERE sale_amount > 1000 INTERSECT SELECT title FROM book WHERE sale_amount < 500 {}
SELECT title FROM book WHERE sale_amount > 1000 INTERSECT SELECT title FROM book WHERE sale_amount < 500 {}
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1;
SELECT T1.title , T2.name , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3;
SELECT T1.Title , T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
press.total_profit = sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id {}
press.name = (SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id ORDER BY sum(T2.sale_amount) DESC LIMIT 1) Total book sales amount per press: sum(T1.sale_amount) / count(*)
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING sum(T1.sale_amount) > 1000 ORDER BY count(*) DESC
press_name = T1.name count_of_books_above_1000 = count(*) FROM book AS T2 JOIN press AS T1 ON T1.press_id = T2.press_id WHERE T2.sale_amount > 1000 GROUP BY T1.press_id HAVING count(*) >= 1000;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE title = 'Accor')
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = "Accor")
press.name = (SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2) AND T1.year_profits_billion > 2.5
press_id , name , sum_of_month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors AS T1;
SELECT author_name FROM authors
SELECT author_name , other_details FROM Authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T1.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name , T2.other_details FROM authors AS T2 JOIN documents AS T1 ON T1.author_name = T2.author_name WHERE T1.document_name = "Travel to China"
author_name , count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_processes;
SELECT next_process_id , process_name , process_description FROM Process_outcomes AS T1 JOIN Process_status AS T2 ON T1.process_status_code = T2.process_status_code WHERE T2.process_status_description = "Completed" AND T1.process_id = 9
SELECT T1.process_name FROM business_processes AS T1 JOIN processes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_id = 9
SELECT count(*) FROM process_outcomes;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status;
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM staff AS T1;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_Processes;
SELECT process_id FROM documents_processes UNION SELECT process_id FROM processes_processes WHERE process_id IN (SELECT process_id FROM documents_processes)
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes);
SELECT process_id FROM processes WHERE process_id NOT IN (SELECT process_id FROM documents_processes)
SELECT T3.process_outcome_description , T2.process_status_description FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN process_outcomes AS T3 ON T2.process_outcome_code = T3.process_outcome_code WHERE T1.document_id = 0
SELECT T4.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id;
document_id = 0 AND process_id = 9
SELECT count(*) , staff_id FROM Staff_in_Processes GROUP BY staff_id;
SELECT count(*) , staff_role_code FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3;
SELECT count(*) FROM agencies;
SELECT count(*) FROM agencies;
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients;
SELECT count(*) FROM clients;
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
SELECT count(*) , agency_id FROM Clients GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agent_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM INVOICES;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN CLIENTS AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM INVOICES GROUP BY client_id;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM meetings
SELECT * FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM payments;
SELECT count(*) FROM payments;
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , invoice_id FROM Payments GROUP BY invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff
SELECT count(*) , agency_id FROM Staff GROUP BY agency_id;
SELECT T1.agent_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
SELECT T1.agency_id , T2.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM Meetings GROUP BY client_id;
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type;
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T2.client_id = T3.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM Meetings
SELECT T1.meeting_id , count(*) FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id HAVING count(*) > 0
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM staff_in_meetings;
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings;
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM staff_in_meetings )
client_id , client_details FROM clients WHERE client_id IN (SELECT client_id FROM meetings UNION SELECT client_id FROM invoices) OR client_id IN (SELECT client_id FROM payments)
meetings_client_id , clients_client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id;
staff_id , staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING count(*) >= 1 AND T1.staff_details LIKE '%s%'
staff_ids_with_s_details = (SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' GROUP BY T1.staff_id HAVING count(*) >= 1)
meetings.client_id IN (SELECT client_id FROM meetings GROUP BY client_id HAVING count(*) = 1) INTERSECT SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_type = 'Invoice' AND T2.billable_yn = 'Yes'
meetings_id , client_id , invoice_id FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 AND T1.meeting_type = 'Invoice'
[ { "meeting_id": "1", "start_date_time": "2023-04-15T14:00:00Z", "end_date_time": "2023-04-16T14:00:00Z", "client_details": "Client A", "staff_details": "Staff B" }, { "meeting_id": "2", "start_date_time": "2023-04-15T14:00:00Z", "end_date_time": "2023-04-16T14:00:00Z", "client_details": "Client C", "staff_details": "Staff D" } ]
{ "sql": "SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id"} {"sql": "SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id"}
