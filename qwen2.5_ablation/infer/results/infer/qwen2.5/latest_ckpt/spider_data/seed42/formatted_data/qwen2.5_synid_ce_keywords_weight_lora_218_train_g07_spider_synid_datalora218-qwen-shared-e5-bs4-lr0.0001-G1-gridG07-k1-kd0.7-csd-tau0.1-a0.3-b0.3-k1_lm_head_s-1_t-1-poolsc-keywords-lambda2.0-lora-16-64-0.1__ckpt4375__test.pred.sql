SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT name FROM club WHERE manager <> 'Nike'
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1 OFFSET 0
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_id HAVING count(*) > 2;
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC;
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT count(*) , manufacturer FROM club GROUP BY manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1;
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1;
SELECT count(DISTINCT country) FROM player AS T1
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3 {}
customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3 {}
orders.order_id , orders.order_status_code , count(DISTINCT product_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(DISTINCT product_id) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
orders_items_orders_orders_status_code_total_products_count_total_order_items_orders_status_code_total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total_order_items_orders_status_code total
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) > 1 UNION SELECT min(T1.date_order_placed) FROM orders AS T1 ORDER BY T1.date_order_placed ASC
SELECT T1.date_order_placed , T2.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM orders )
SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_id NOT IN ( SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id )
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2;
SELECT T2.product_id , T2.product_name , T2.product_price FROM products AS T2 JOIN order_items AS T3 ON T2.product_id = T3.product_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1;
SELECT order_id , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1;
SELECT T2.order_id , sum(T1.order_item_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id ORDER BY sum(T1.order_item_price) ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code;
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code HAVING count(*) > 0
SELECT count(*) , gender_code FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code;
[ { "customer_first_name": "John", "customer_middle_initial": "J", "customer_last_name": "Doe", "payment_method_code": "Credit Card" }, { "customer_first_name": "Jane", "customer_middle_initial": "J", "customer_last_name": "Smith", "payment_method_code": "Credit Card" } ]
SELECT T1.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN invoices AS T3 ON T2.customer_id = T3.customer_id
SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number JOIN orders AS T3 ON T1.order_id = T3.order_id
SELECT invoice_status_code , invoice_date , shipment_date FROM invoices
Shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id SELECT T3.product_name , T2.shipment_date FROM products AS T3 JOIN shipments AS T2 ON T3.product_id = T2.product_id
Shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id JOIN orders AS T3 ON T2.order_id = T3.order_id WHERE T3.order_status_code = 'Shipped' ORDER BY T2.shipment_date ASC
orders.order_item_status_code , shipments.shipment_tracking_number FROM orders AS T1 JOIN shipment_items AS T2 ON T1.order_id = T2.order_id ORDER BY T1.date_order_placed ASC
orders_items.order_item_status_code = 'Shipped' AND orders_orders.order_status_code = 'Shipped' UNION SELECT T2.shipment_tracking_number FROM shipments AS T1 JOIN order_items AS T2 ON T1.shipment_id = T2.shipment_id ORDER BY T1.shipment_date ASC
products = products ORDER BY product_name ASC INTERSECT (SELECT T2.product_name , T2.product_color FROM products AS T1 JOIN shipment_items AS T2 ON T1.product_id = T2.product_id)
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.gender_code = 'Female'
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN customers AS T3 ON T1.customer_id = T3.customer_id WHERE T3.gender_code = 'F'
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T1.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT sum(T2.order_item_price) , T1.date_order_placed , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM orders WHERE order_status_code = 'Completed'
SELECT count(DISTINCT customer_id) FROM orders;
SELECT count(*) FROM orders_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id;
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
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
Customers.customer_first_name , products.product_name
customer_id , T1.customer_first_name , T3.product_name FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id JOIN orders AS T3 ON T1.customer_id = T3.customer_id JOIN order_items AS T4 ON T3.order_id = T4.order_id WHERE T4.product_id IN (SELECT T5.product_id FROM products AS T5 JOIN customer_order_items AS T6 ON T5.product_id = T6.product_id JOIN orders AS T7 ON T6.order_id = T7.order_id) ORDER BY T1.customer_first_name ASC;
SELECT count(*) FROM shipment_items AS T1 JOIN shipments AS T2 ON T1.shipment_id = T2.shipment_id;
SELECT count(DISTINCT product_id) FROM shipments;
SELECT avg(product_price) FROM products;
average_product_price = avg(product_price)
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id;
SELECT avg(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING avg(T2.order_item_status_code) > 0
SELECT email_address , town_city , county FROM customers ORDER BY gender_code ASC LIMIT 1;
SELECT T2.email_address , T2.town_city , T2.county FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T1.product_name FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3 ORDER BY T1.product_name ASC;
SELECT T2.product_id , T2.product_name FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
Ships = (SELECT T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2)
Ships_invoices = (SELECT T1.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2)
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < ( SELECT max(product_price) FROM products )
SELECT product_color , product_size , product_description FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1;
channel(name, Internet) LIKE '%bbc%' count(*)
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1;
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1
SELECT T1.Name , COUNT(*) FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T2.name FROM program AS T1 JOIN director AS T2 ON T1.director_id = T2.director_id WHERE T1.title = "Dracula"
channel_name = (SELECT T1.Name FROM channel AS T1 JOIN director AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T2.Channel_ID ORDER BY count(*) DESC LIMIT 1) internet_web = (SELECT T1.Internet FROM channel AS T1 JOIN director AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T2.Channel_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
channel_id IN (SELECT channel_id FROM director WHERE age < 40 INTERSECT SELECT channel_id FROM director WHERE age > 60)
channel(id,name) SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM program AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id JOIN director AS T3 ON T2.director_id = T3.director_id WHERE T3.name = 'Hank Baskett' )
SELECT count(*) FROM radio AS T1
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , original_airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1;
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation;
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3;
SELECT city , station_name FROM city_channel ORDER BY station_name
Radiator ID , T1.City FROM city_channel AS T1 JOIN radio AS T2 ON T1.Radio_ID = T2.Radio_ID JOIN city_channel_radio AS T3 ON T1.city_channel_id = T3.city_channel_id WHERE T2.Radio_MHz = 7000
radio AS T1 JOIN city_channel AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.EP_R = T2.EP_R DESC
城市的频道数量和对应的电台ID： SELECT T1.id , count(*) FROM city_channel AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.id HAVING count(*) > 0
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN ( SELECT radio_id FROM city_channel_radio )
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
MAX(Top_Speed) FROM vehicle WHERE Power > 6000
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship LIKE "%United States%"
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.driver_id , count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012;
vehicle_driver.Vehicle_ID COUNT(DISTINCT Driver_ID) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012 {}
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
vehicle_driver.Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Power > 5000)distinct Driver_ID union select distinct T1.Name from driver AS T1 join vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID where T2.Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle WHERE Power > 5000)distinct Driver_ID
vehicle_driver V1 = (SELECT T2.Name FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T1.Power > 5000)
SELECT Model FROM vehicle GROUP BY Model HAVING sum(Total_Production) > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 UNION SELECT Model FROM vehicle WHERE Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
vehicle_driver(Vehicle_ID) JOIN vehicle ON vehicle_driver.Vehicle_ID = vehicle.Vehicle_ID WHERE Vehicle_ID IN (SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT Vehicle_ID FROM vehicle WHERE Builder = \"Ziyang\")
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Build_Year = "Ziyang"
vehicle_driver V1 AS (SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\") GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 ) UNION ALL SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\") GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 {}
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN driver AS T2 ON T1.Vehicle_ID = T2.Driver_ID WHERE T2.Name = "Jeff Gordon" OR T2.Name = "Jefferson Gordon" OR T2.Name = "Jefferson Gordon"
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name ASC
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series HAVING COUNT(*) > 0
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series;
SELECT T2.name , T2.citizenship FROM driver AS T2 JOIN vehicle_driver AS T1 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.model = "DJ1"
Vehicle_VID = 'DJ1' driver_names = [T1.Name , T1.Citizenship] FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Vehicle_ID = Vehicle_VID
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams AS T1;
SELECT count(*) FROM Exams AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Exam_ID = T2.Exam_ID WHERE T2.Comments = "Normal"
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.comments = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions_in_Exams AS T2 ON T1.Question_ID = T2.Question_ID ORDER BY T1.Student_Answer_Text DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY count(*) DESC
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT T2.First_Name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.First_Name HAVING COUNT(*) >= 2;
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT Valid_Answer_Text FROM VALID_ANSWER AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Question_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.valid_answer_text FROM valid_answers AS T1 JOIN questions AS T2 ON T1.question_id = T2.question_id GROUP BY T1.question_id ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT count(*) , gender_mfu FROM Students GROUP BY gender_mfu
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM Student_answers AS T1 JOIN Valid_Answers AS T2 ON T1.valid_answer_id = T2.valid_answer_id WHERE T2.Comments = \"Absent\"
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Comments = \"Normal\" INTERSECT SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Comments = \"Absent\"
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3;
SELECT TYPE_of_Question_Code FROM Questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3;
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses
SELECT count(*) FROM addresses
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products;
SELECT count(*) FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name LIKE '%Monitor%'
SELECT product_price FROM products WHERE product_name = 'Monitor'
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
SELECT product_id , product_name FROM products WHERE product_type_code = "Hardware" ORDER BY product_price ASC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers;
SELECT count(*) FROM customers;
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT T1.address_details , T2.customer_phone , T2.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = "Jeromy"
SELECT T1.address_details , T1.customer_phone , T1.customer_email FROM addresses AS T1 JOIN customers AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code;
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code ASC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code ASC LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers;
SELECT DISTINCT payment_method_code FROM customers;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS t1;
SELECT count(*) FROM customer_orders;
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_name = "Jeromy")
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_name = "Jeromy")
customer_orders_count = (SELECT T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1)
customer_orders_count = ( SELECT T1.customer_id , T1.customer_name , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id )
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
order_status_code | count_ ------------------|--------- 01 | 342 02 | 687 03 | 154 04 | 293 05 | 432 06 | 123 07 | 543 08 | 123 09 | 432 10 | 687 11 | 342 12 | 687 13 | 342 14 | 687 15 | 342 16 | 687 17 | 342 18 | 687 19 | 342 20 | 687 21 | 342 22 | 687 23 | 342 24 | 687 25 | 342 26 | 687 27 | 342 28 | 687 29 | 342 30 | 687 31 | 342 32 | 687 33 | 342 34 | 687 35 | 342 36 | 687 37 | 342 38 | 687 39 | 342 40 | 687 41 | 342 42 | 687 43 | 342 44 | 687 45 | 342 46 | 687 47 | 342 48 | 687 49 | 342 50 | 687 51 | 342 52 | 687 53 | 342 54 | 687 55 | 342 56 | 687 57 | 342 58 | 687 59 | 342 60 | 687 61 | 342 62 | 687 63 | 342 64 | 687 65 | 342 66 | 687 67 | 342 68 | 687 69 | 342 70 | 687 71 | 342 72 | 687 73 | 342 74 | 687 75 | 342 76 | 687 77 | 342 78 | 687 79 | 342 80 | 687 81 | 342 82 | 687 83 | 342 84 | 687 85 | 342 86 | 687 87 | 342 88 | 687 89 | 342 90 | 687 91 | 342 92 | 687 93 | 342 94 | 687
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = \"Monitor\";
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_name = 'Monitor'
SELECT count(*) FROM customer_orders AS t1;
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
order_items = order_items.join(products , order_items.product_id = products.product_id) on order_items.product_id = products.product_id group by order_id , product_id having count(*) > 3 union select T1.order_date , T1.order_id from customer_orders AS T1 join order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id , T2.order_id HAVING sum(T2.order_quantity) > 6
order_items = order_items.join(order_items_product ON order_items.order_id = order_items_product.order_id GROUP BY order_items_order_id HAVING count(*) > 3 UNION SELECT T1.order_id , T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6 {}
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_stories) FROM building WHERE completed_year != 1980;
SELECT max(Number_of_stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(population) FROM region AS T1;
SELECT avg(Population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region WHERE AREA > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1;
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.region_id GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
Building(capital), region(capital)
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building AS t1 JOIN region AS t2 ON t1.region_id = t2.region_id WHERE t2.name = "Abruzzo"
SELECT T1.name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , count(*) FROM building GROUP BY Completed_Year
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Name FROM region EXCEPT SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT completed_year FROM building WHERE number_of_stories > 20 EXCEPT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15 {}
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_details FROM channels ORDER BY Channel_details ASC
channels_channel_details.sort()
SELECT count(*) FROM (SELECT DISTINCT service_id FROM customers_and_services)
SELECT count(*) FROM services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
Analytical_Layer_Type_Code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch"
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t3.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T3.service_details = (SELECT service_details FROM customers_and_services GROUP BY service_details ORDER BY count(*) LIMIT 1)
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT customer_details) , count(DISTINCT service_details) FROM customers_and_services AS T1
SELECT count(*) , t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 0
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
customers_and_services = (SELECT t1.service_details FROM customers_and_services AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t2.customer_details = \"Hardy Kutch\") INTERSECT SELECT t1.service_details FROM customers_and_services AS t1 JOIN customer_interactions AS t2 ON t1.customers_and_services_id = t2.customers_and_services_id WHERE t2.status_code = \"good\"
SELECT T3.service_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T3.service_id = T2.service_id WHERE T1.customer_details = "Hardy Kutch" OR T2.status_code = "good"
customers_and_services = (SELECT t1.customer_id , t1.service_id FROM customers_and_services AS t1 JOIN customer_interactions AS t2 ON t1.customers_and_services_id = t2.customers_and_services_id WHERE t1.customer_details = \"Hardy Kutch\" AND t2.status_code = \"bad\") INTERSECT SELECT t1.customer_id , t1.service_id FROM customers_and_services AS t1 JOIN customer_interactions AS t2 ON t1.customers_and_services_id = t2.customers_and_services_id WHERE t1.customer_details = \"Hardy Kutch\" AND t2.status_code = \"bad\"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" AND T3.services_and_channels_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T3.service_details FROM customer_interactions AS T1 JOIN channels AS T2 ON T1.channel_id = T2.channel_id JOIN services AS T3 ON T1.service_id = T3.service_id WHERE T2.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Successful'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customers_and_services )
SELECT service_details FROM services WHERE service_id NOT IN ( SELECT service_id FROM customer_interactions )
SELECT analytical_layer_type_code , count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT Analytical_Layer_Type_Code , count(*) FROM ANALYTICAL_LAYER GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IN (SELECT customer_id FROM customers_and_services WHERE status_code = "unsatisfied") UNION SELECT T3.service_details FROM services AS T3 JOIN customers_and_services AS T4 ON T3.service_id = T4.service_id WHERE T4.customer_id IN (SELECT customer_id FROM customers_and_services WHERE status_code = "unsatisfied")
Customers_and_Services(customers_and_services_id , customer_id , service_id , customers_and_services_details) WHERE service_id IN (SELECT service_id FROM customers_and_services WHERE service_id = 'unsatisfied') UNION SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id = t2.service_id WHERE t2.customer_id IN (SELECT customer_id FROM customers_and_services WHERE service_id = 'unsatisfied')
SELECT count(*) FROM Vehicles AS T1;
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC
sorted(Veiculos.name)descending
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1;
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
{ "sql": "SELECT name , type_of_powertrain , cost_per_25_miles FROM Vehicles WHERE model_year BETWEEN 2013 AND 2014"
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2014 EXCEPT SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE model_year IN (2013 , 2014) GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT count(*) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles AS T1
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM Discount AS T1
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) != 0
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN ( SELECT vehicles_id FROM Renting_history )
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2;
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2vehicles_id GROUP BY T1.id ORDER BY sum(T2.total_hours) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY sum(T2.total_hours) DESC;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans;
SELECT avg(amount_of_loan) FROM Student_Loans;
students_with_two_or_more_classes = (SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN_CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2) UNION SELECT T1.student_id , T1.bio_data FROM Students AS T1 JOIN_detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2)
```sql SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2 ```
classes.filter(class_details.contains('net') ^ classes.filter(class_details.start_with('data'))).map({teacher_details: Teachers.teacher_details})
classes.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
Select bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id {}
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT student_id FROM Detention UNION SELECT student_id FROM Student_LOANS )
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
学生贷款信息： 学生贷款ID | 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款 学生ID | 日期贷款 | 金额贷款
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN CLASSASSESSMENTS AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_details , T2.biological_info FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
{ "sql": "SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id"
SELECT T1.student_details , T2.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_details ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN (SELECT student_id FROM Students AS T2 WHERE T2.student_details = T1.student_details GROUP BY student_id ORDER BY count(*) DESC LIMIT 1) AS T3 ON T1.student_id = T3.student_id INTERSECT SELECT T1.bio_data FROM Students AS T1 JOIN (SELECT student_id FROM Students AS T2 WHERE T2.student_details = T1.student_details GROUP BY student_id ORDER BY count(*) DESC LIMIT 3) AS T4 ON T1.student_id = T4.student_id
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 UNION SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id WHERE T2.behaviour_monitoring_details = \"behavioral\" GROUP BY T1.student_id HAVING count(*) >= 3;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behavior_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
Achievements(Achievement_ID , Achievement_Type_Code , Achievement_Details) ; Achievements(Achievement_Type_Code , Achievement_Type_Description) ;
SELECT T1.achievement_details , T2.Achievement_Type_Description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Students AS T1 JOIN CLASSIFICATIONS AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id NOT IN ( SELECT T2.student_id FROM Students AS T1 JOIN CLASSIFICATIONS AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id )
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT teacher_id FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id )
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.award_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T2.student_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.teacher_id FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id GROUP BY T1.teacher_id HAVING count(*) > 1 )
{ "sql": "SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.teacher_id JOIN Classes AS T3 ON T3.teacher_id = T1.teacher_id WHERE T3.class_details = T2.student_details"
SELECT teacher_id , count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) LIMIT 1;
SELECT T1.biological_data , T2.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_LOANS)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT min(date_of_loan) FROM Student_Loans;
SELECT min(date_of_loan) FROM Student_Loans
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(student_details) FROM Students)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript LIMIT 1;
SELECT T2.teacher_details FROM Students AS T1 JOIN CLASSIFICATIONS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.transcript_details LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id;
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.address_type_description , T2.address_id FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T2.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_details FROM Ref_Address_Types AS T1 JOIN Addresses AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id )
{ "sql": "SELECT bio_data FROM Students WHERE student_id NOT IN ( SELECT T1.student_id FROM Student_Events AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_Loans AS T3 ON T1.student_id = T3.student_id )"
学生地址的开始和结束时间： for T1 in Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2；
Transcripts_count = 2 For each student_id in students_addresses, select T1.date_from , T1.date_to from students_addresses AS T1 JOIN transcripts AS T2 ON T1.address_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start LIMIT 1;
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name FROM AUTHOR
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM book AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM client AS T1;
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name ASC
SELECT T1.Title , T2.Name FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN
SELECT T1.title , T2.name FROM book AS T1 JOIN author AS T2 ON T1.author = T2.idauthor
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.idorder , T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.name , count(*) FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
Books_order ISBN , count(*) FROM books_order GROUP BY isbn
SELECT count(*) , isbn FROM books_order GROUP BY isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn;
SELECT sum(T1.amount) , T2.isbn FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.idorder ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.idorder ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T1.idorder IN (SELECT idorder FROM orders)
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.idorder != 0 {}
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1;
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
count(*) , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) != 0
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
total_amounts = (SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1)
total_amount = (SELECT sum(T2.amount) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC)
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
SELECT max(SalePrice - PurchasePrice) FROM Book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1;
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.saleprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T2.SalePrice) FROM author AS T1 JOIN book AS T2 ON T1.idAuthor = T2.Author WHERE T1.Name = 'George Orwell'
SELECT T2.saleprice FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT T1.saleprice FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name = 'George Orwell' ORDER BY T1.SalePrice ASC LIMIT 1;
SELECT title FROM book WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1;
SELECT T2.title FROM author AS T1 JOIN book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato' AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN WHERE T2.Author = 'Plato' AND T1.SalePrice < (SELECT avg(SalePrice) FROM Book)
SELECT T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T3.isbn = T2.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T2.name FROM author AS T2 JOIN author_book AS T1 ON T1.author = T2.idauthor JOIN book AS T3 ON T3.isbn = T1.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM orders WHERE idorder IN ( SELECT idorder FROM books ORDER BY title = "Pride and Prejudice" )
SELECT count(*) FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author AS T3 ON T2.idauthor = T3.idauthor WHERE T2.title = 'Pride and Prejudice' AND T1.idclient IN (SELECT idclient FROM orders AS T4 JOIN book AS T5 ON T4.idorder = T5.idorder JOIN author AS T6 ON T5.idauthor = T6.idauthor WHERE T6.name = 'Jane Austen')
SELECT idorder FROM books ORDER BY title LIMIT 1 INTERSECT SELECT idorder FROM books ORDER BY title LIMIT 1
SELECT T1.idorder FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'Pride' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'Prejudice' INTERSECT SELECT T1.idorder FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder WHERE T2.title = 'The Little Prince'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.idclient = 'James Smith'
SELECT T1.isbn FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder JOIN client AS T4 ON T3.idclient = T4.idclient WHERE T4.name = 'Peter Doe' AND T5.name = 'James Smith' ORDER BY T1.isbn ASC
SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN book AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN author AS T4 ON T3.author = T4.idauthor WHERE T4.name = 'James Smith'
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn WHERE T1.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.title = "Pride and Prejudice"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN author AS T3 ON T2.idorder = T3.idorder JOIN book AS T4 ON T3.idbook = T4.idbook WHERE T4.title = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(chapters) , min(chapters) FROM book
SELECT Title FROM book WHERE TYPE <> "Poet"
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T1.Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT Book_ID , Title FROM book ORDER BY Pages LIMIT 1 REFERENCES book BOOK_ID ASC;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = \"Novel\"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3;
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 EXCEPT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT count(*) FROM customer AS T1;
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Name FROM customer ORDER BY LEVEL_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN ("England", "Australia")
SELECT Name FROM customer WHERE Nationality LIKE "England" OR Nationality LIKE "Australia"
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHISP > 1
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_Membership > 1;
SELECT card_credit FROM customer ORDER BY LEVEL_of_membership DESC LIMIT 1;
SELECT name FROM customer ORDER BY LEVEL_OF_Membership DESC LIMIT 1 OFFSET 0 WHERE LEVEL_OF_Membership != "Bronze"
Nationality , Count { "Nationality" : "Indian", "Count" : 305784916 } {"Nationality" : "American", "Count" : 298018968 }
Nationalities , count(*) SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
Nationalities of customers with card_credit < 50 INTERSECT Nationalities of customers with card_credit > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Card_Credit > 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T1.Card_Credit < 75 {}
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id JOIN dish AS T3 ON T1.dish_name = T3.dish_name
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T2.Name , SUM(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name ORDER BY T2.Name ASC;
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name ORDER BY sum(T2.Quantity) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T2.quantity) > 1;
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID HAVING sum(T2.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT manager FROM branch
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> ' England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality , Count Nationality ,
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
club_leader.join(club_leader.member_id , club_member.club_id)
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Weekly_Ranking > 100;
SELECT T1.Club_Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = "Houston")
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
Nationalities of members older than 22 and younger than 19: SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID
club_name = 'state'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = "Top collection"
SELECT T1.Collection_Description FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM Document_objects
SELECT document_object_id FROM document_objects
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Marlin\" AND T1.document_object_id != T2.document_object_id
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE Description = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin' AND T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Parent_Document_Object_ID WHERE T2.Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != -1
SELECT count(*) FROM Documents_in_collections AS T1 JOIN Document_objects AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.owner = \"Marlin\"
SELECT count(*) FROM document_objects WHERE owner = \"Marlin\"
SELECT document_object_id FROM document_objects WHERE parent_document_object_id != 1;
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id != 0
SELECT T1.document_id , count(*) FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT count(*) , T1.Parent_Document_Object_ID FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.Parent_Document_Object_ID HAVING count(*) > 0
SELECT collection_name FROM collections
SELECT collection_name FROM collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subset_Members AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID WHERE T3.Collection_Name = \"Nice\" AND T1.Parent_Collection_ID = T3.Parent_Collection_ID
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Parent_Collection_ID = (SELECT Collection_ID FROM Collections WHERE Collection_Name = "Nice")
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collection_subsets)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM Document_subsets GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM Document_subsets GROUP BY document_object_id HAVING count(*) > 1;
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM Collection_subsets AS t1 JOIN Collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = \"Best\" AND t1.collection_subset_id IN (SELECT collection_subset_id FROM Collection_subset_members AS t3 JOIN Collections AS t4 ON t3.collection_id = t4.collection_id WHERE t4.collection_name = \"Best\")
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T1.owner = 'Ransom'
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T1.owner = \"Ransom\"
collection_subset_id , collection_subset_name , count(*) FROM Collection_subsets GROUP BY collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN DOCUMENT_SUBSET_MEMBERS AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , document_object_id FROM Document_subsets GROUP BY document_object_id;
SELECT document_object_id , count(*) FROM Documents_in_collections AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.document_object_id , count(*) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.related_document_object_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_subsets AS T3 ON T2.collection_id = T3.collection_id WHERE T2.collection_name = 'Braeden' AND T1.owner = T3.owner
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_object_id = T2.related_document_object_id JOIN Document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.owner = 'Braeden' AND T2.document_object_id IN ( SELECT document_object_id FROM Document_objects WHERE owner = 'Braeden' )
SELECT T1.document_subset_name FROM Document_subsets AS T1 JOIN Document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden' GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.owner = 'Braeden'
document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subset_id;
document_subsets.document_subset_id , document_subsets.document_subset_name , count(DISTINCT document_object_id) FROM document_subsets GROUP BY document_subsets.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
document_subset_id , document_subset_name FROM Document_subsets GROUP BY document_subset_id
document_subsets = (SELECT document_subset_id , document_subset_name FROM document_subsets WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets GROUP BY document_subset_id ORDER BY count(*) DESC LIMIT 1)) SELECT T1.document_subset_name , T1.document_subset_id FROM document_subsets AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_objects AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T2.owner = 'Ransom'
SELECT T2.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN documents_in_collections AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM Documents_in_collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.document_object_id;
SELECT count(*) , T1.document_object_id FROM Document_objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\";
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT document_object_id FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.document_object_id IN (SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1) GROUP BY T1.collection_name
SELECT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = "Best" AND T1.year = 2000
SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.document_subset_name = "Best for 2000" UNION SELECT DISTINCT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subsets AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.collection_subset_name = "Best"
Collection_ID = 'Best' AND document_object_id NOT IN (SELECT document_object_id FROM Documents_in_collections AS t1 JOIN Collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best' AND t1.collecrtion_subset_id IN (SELECT collection_subset_id FROM Documents_in_collections AS t3 JOIN Collection_subsets AS t4 ON t3.collection_subset_id = t4.collection_subset_id WHERE t4.collection_name = 'Best' AND t1.collecrtion_subset_date = 2000))
collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id == 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for 2000' {} documents_in_collections.document_object_id {} collections_collection_id = 'Best' and collection_subset_id != 'Best for
Best_for_2000 = (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = \"Best\") AND date_time = \"2000-01-01 00:00:00\") Best_collection = (SELECT document_object_id FROM documents_in_collections WHERE collection_id IN (SELECT collection_id FROM collections WHERE collection_name = \"Best\") GROUP BY collection_id ORDER BY count(*) DESC LIMIT 1)
document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000' UNION ALL collection_subset_id FROM Collection_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.collection_subset_id = T2.document_subset_id WHERE T1.collection_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" UNION SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" INTERSECT SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t2.collection_subset_id = t3.collection_subset_id WHERE t3.collection_name = \"Best\" AND t1.collection_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_subset_id IN (SELECT collection_id FROM collection_subset_members WHERE collection_subset_name = \"Best\"))
SELECT count(DISTINCT collection_name) FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = "Best in"
SELECT T1.collection_subset_name FROM Collection_subsets AS T1 JOIN Collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE '%Love%'
sorted_name = sorted(songs, key=lambda x: x.name)
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation LIKE '%All the streets of love%'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = "english"
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(DISTINCT T2.songs_id) >= 2;
participants.id , participants.name , participants.popularity , T1.id FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.rhythm_tempo = 5 OR T2.voice_sound_quality = 5
SELECT T2.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language;
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2songs_id = T3.id WHERE T3english_translation != 'null' AND T3.language = 'english'
participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'good' UNION SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'good'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1Songs.id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city;
SELECT DISTINCT state FROM city;
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city AS T1
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE state LIKE '%PA%'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'United States' ORDER BY latitude ASC
SELECT count(*) , state FROM city GROUP BY state;
SELECT count(*) , state FROM city GROUP BY state;
country , count(*) FROM city GROUP BY country;
SELECT count(*) , country FROM city GROUP BY country;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT fname , lname FROM student WHERE city_code = "MD"
SELECT count(*) FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE country = 'China' )
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country;
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_code FROM student GROUP BY city_code;
SELECT count(*) , T1.city_code FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) > 0
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING count(*) >= 3;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) >= 6;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA'))
SELECT StuID FROM student WHERE sex = "F" AND city_code IN ( SELECT city_code FROM city WHERE state = "PA")
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' EXCEPT SELECT StuID FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
direct_distance(city1_code, city2_code) VALUES (city_code('BAL'), city_code('CHI'))_distances miles;
direct_distance(city1_code, city2_code) VALUES (city_code('BAL'), city_code('CHI'))_distances miles;
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance;
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 2
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING avg(distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING avg(T2.distance) > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 {}
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'Massachusetts' INTERSECT SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'Massachusetts' AND T1.city1_code = 'Boston'
SELECT avg(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T2.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'IL' AND T1.distance < (SELECT max(distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.state = 'IL' AND T1.distance > 0) ORDER BY T1.distance ASC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = city_code FORCESelection T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = city_code ORDER BY T2.distance DESC LIMIT 1
SELECT sum(T1.distance) , T2.city_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code GROUP BY T2.city_code HAVING sum(T1.distance) > 0
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING count(*) > 0
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
Linda (first name) Smith (last name) + Tracy (first name) Kim (last name) = 45.7 miles + 36.8 miles + 30.9 miles + 44.3 miles + 35.2 miles + 33.1 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles + 44.3 miles + 35.2 miles + 45.7 miles + 36.8 miles +
SELECT T3.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code JOIN city AS T3 ON T2.city1_code = T3.city_code WHERE T1.fname = \"Linda\" AND T1.lname = \"Smith\" INTERSECT SELECT T3.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code JOIN city AS T3 ON T2.city1_code = T3.city_code WHERE T1.fname = \"Tracy\" AND T1.lname = \"Kim\"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'New York' AND T1.fname = 'Linda' AND T1.lname = 'Smith' ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance AS T3 JOIN student AS T4 ON T3.city2_code = T4.city_code WHERE T4.lname = 'Smith' AND T4.fname = 'Linda')
city_code : T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'Linda'
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30
SELECT name , age FROM sailors WHERE age < 30
SELECT name , age FROM sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT DISTINCT T2.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.day = "102"
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102;
SELECT DISTINCT bid FROM reserves
SELECT T2.bid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT count(*) FROM (SELECT DISTINCT sid FROM sailors WHERE age != (SELECT min(age) FROM sailors))
SELECT DISTINCT name FROM sailors WHERE age > (SELECT max(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT rating FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid GROUP BY T2.sid HAVING count(*) >= 2;
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" UNION SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
SELECT T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM reserves WHERE bid IN ( SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "red" INTERSECT SELECT T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = "blue")
sid1 = (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'red') INTERSECT SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color = 'blue'))
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" AND T3.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT name , sid FROM sailors WHERE sid NOT IN ( SELECT sid FROM reserves )
SELECT name , sid FROM Sailors WHERE sid NOT IN ( SELECT sid FROM Reserves )
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = \"Luis\" ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T4.name , T4.sid FROM Sailors AS T4 JOIN Reserves AS T5 ON T4.sid = T5.sid JOIN Boats AS T6 ON T6.bid = T5.bid
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sails AS T1;
SELECT count(*) FROM sails AS T1;
SELECT avg(age) FROM sails WHERE rating = 7;
SELECT avg(age) FROM sailors WHERE rating = 7;
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
{ "sql": "SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name"
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid IN (SELECT bid FROM reserves WHERE sid IN (SELECT sid FROM reserving WHERE day > 50)) GROUP BY T1.bid
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.id > 50 GROUP BY T2.id
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name;
sid | count(*) bid | count(*) from boats where sid > 1 union all select count(*) , count(*) from reserves as T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.name != 'null'
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT T3.bid FROM Boats AS T3 WHERE T3.color = "red") GROUP BY T1.rating
SELECT T2.rating , avg(T1.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid IN (SELECT T3.bid FROM Boats AS T3 WHERE T3.color = "red") GROUP BY T2.rating
SELECT name , rating , age FROM sailors ORDER BY rating ASC , age ASC
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats;
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
from reserves as T1 join sailors as T2 on T1.sid = T2.sid where T2.age >= 20 and T2.age <= 30;
from reserves as T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.age BETWEEN 20 AND 30;
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red' AND T1.rating > (SELECT min(rating) FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.color = 'red')
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROMboats WHERE name = 'red') AND T1.rating > (SELECT min(T1.rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROMboats WHERE name = 'red'))
SELECT max(rating) FROM sailors AS T1
SELECT max(rating) FROM Sailors;
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.name = "Melon"
从中筛选出名为Melon的 sailor，并从Reserves表中选择bid为Melon的保留记录。 SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 'Melon'
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1;
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT MODEL FROM headphone ORDER BY MODEL
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) >= 3;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2;
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT earpads) FROM headphone;
SELECT count(DISTINCT earpads) FROM headphone AS T1
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY price LIMIT 1
SELECT model , class , construction FROM headphone ORDER BY price LIMIT 1
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = "Bowls"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT MODEL FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT MODEL FROM headphone WHERE Price < ( SELECT avg(Price) FROM headphone )
sorted_store_name = store.sort_by_date_open()
store.sort_by_date_open()
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood LIKE '%Tarzana%'
SELECT count(DISTINCT neighborhood) FROM store;
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood HAVING count(*) > 0
neighborhoods.store_count = count(*) FROM store AS T1 JOIN store AS T2 ON T1.neighborhood = T2.neighborhood WHERE T1.name != T2.name
SELECT T2.name , count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id GROUP BY T2.store_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM headphone GROUP BY headphone_id HAVING count(*) >= 1) GROUP BY T1.store_id
store(store_id) EXCEPT SELECT T1.store_id FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = 'Apple'
store(store_id) NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1) name store
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1;
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
store(store_id = 1038, name = "Woodman") stock(store_id = 1038, headphone_id = 2) + stock(store_id = 1038, headphone_id = 4) + stock(store_id = 1038, headphone_id = 5) + stock(store_id = 1038, headphone_id = 6) + stock(store_id = 1038, headphone_id = 7) + stock(store_id = 1038, headphone_id = 8) + stock(store_id = 1038, headphone_id = 9) + stock(store_id = 1038, headphone_id = 10) + stock(store_id = 1038, headphone_id = 11) + stock(store_id = 1038, headphone_id = 12) + stock(store_id = 1038, headphone_id = 13) + stock(store_id = 1038, headphone_id = 14) + stock(store_id = 1038, headphone_id = 15) + stock(store_id = 1038, headphone_id = 16) + stock(store_id = 1038, headphone_id = 17) + stock(store_id = 1038, headphone_id = 18) + stock(store_id = 1038, headphone_id = 19) + stock(store_id = 1038, headphone_id = 20) + stock(store_id = 1038, headphone_id = 21) + stock(store_id = 1038, headphone_id = 22) + stock(store_id = 1038, headphone_id = 23) + stock(store_id = 1038, headphone_id = 24) + stock(store_id = 1038, headphone_id = 25) + stock(store_id = 1038, headphone_id = 26) + stock(store_id = 1038, headphone_id = 27) + stock(store_id = 1038, headphone_id = 28) + stock(store_id = 1038, headphone_id = 29) + stock(store_id = 1038, headphone_id = 30) + stock(store_id = 1038, headphone_id = 31) + stock(store_id = 1038, headphone_id = 32) + stock(store_id = 1038, headphone_id = 33) + stock(store_id = 1038, headphone_id = 34) + stock(store_id = 1038, headphone_id = 35) + stock(store_id = 1038, headphone_id = 36) + stock(store_id = 1038, headphone_id = 37) + stock(store_id = 1038, headphone_id = 38) + stock(store_id = 1038, headphone_id = 39) + stock(store_id = 1038, headphone_id = 40) + stock(store_id = 1038, headphone_id = 41) + stock(store_id = 1038, headphone_id = 42) + stock(store_id = 1038, headphone_id = 43) + stock(store_id = 1038, headphone_id = 44) + stock(store_id = 1038, headphone_id = 45) + stock(store_id = 1038, headphone_id = 46) + stock(store_id = 1038, head
store.neighborhood EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM headphone)
store.neighborhood EXCEPT SELECT T1.neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.quantity > 0
SELECT count(*) FROM author_list AS T1
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM paper;
SELECT count(*) FROM paper;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM affiliation;
SELECT count(*) FROM paper WHERE YEAR = "2000" AND venue = "NAACL"
SELECT count(*) FROM paper WHERE YEAR = "2000"
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009 {}
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR ASC
ORDER BY YEAR ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id WHERE T1.ref_id IN ( SELECT ref_id FROM affiliation WHERE name = 'Harvard' )
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = 'McKeown'
SELECT T2.title , T1.paper_id FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = "McKeown"
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Stanford University\" AND t2.paper_id IN (SELECT t4.paper_id FROM paper AS t4 JOIN author_list AS t5 ON t4.paper_id = t5.paper_id JOIN affiliation AS t6 ON t5.affiliation_id = t6.affiliation_id WHERE t6.name = \"Columbia University\")
SELECT T2.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T2.title , T2.paper_id FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN (SELECT author_id FROM author WHERE name = \"McKeown\" AND email = \"Kathleen\") INTERSECT SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN (SELECT author_id FROM author WHERE name = \"Rambow\" AND email = \"Owen\")
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T2.author_id IN (SELECT author_id FROM author AS T4 JOIN author_list AS T5 ON T4.author_id = T5.author_id WHERE T4.name = "Rambow")
SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN ( SELECT author_id FROM author WHERE name = \"McKeown\") EXCEPT SELECT t1.title , t1.paper_id FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t2.author_id IN ( SELECT author_id FROM author WHERE name = \"Rambow\")
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = \"McKeown\") EXCEPT SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.author_id IN (SELECT author_id FROM author WHERE name = \"Rambow\")
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.name = "McKeown" OR T2.name = "Rambow"
SELECT T2.title , T1.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name IN ('McKeown', 'Kathleen') OR T1.name IN ('Rambow', 'Owen')
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) ASC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id ORDER BY count(*) ASC;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id GROUP BY T2.venue ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t1.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = 12-1027
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 12-1027;
SELECT paper_id , count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id , count(*) FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT t1.title , count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'McKeown , Kathleen'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'McKeown' AND T2.title = 'Kathleen'
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author AS t3 ON t2.paper_id = t3.paper_id WHERE t3.name = 'McKeown' AND t3.email = 'Kathleen'
SELECT count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = 'Mckeown' AND t2.title = 'Kathleen'
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T3.venue , T3.year FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN author_list AS T3 ON T1.author_id = T3.author_id WHERE T1.name = "McKeown" AND T2.title = "Kathleen"
SELECT T3.venue , T3.year FROM author AS T1 JOIN paper AS T2 ON T1.author_id = T2.author_id JOIN affiliation AS T3 ON T1.affiliation_id = T3.affiliation_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T1.venue , T1.year FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T2.venue , T2.year FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Columbia University\" AND t1.year >= 1 AND t1.year <= 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year >= 2009 {}
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' AND T1.year BETWEEN 2000 AND 2009;
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = \"Stanford University\" AND t1.year BETWEEN 2000 AND 2009;
SELECT t1.title FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = \"McKeown\" AND T2.paper_id IN (SELECT paper_id FROM author AS T3 JOIN author_list AS T4 ON T3.author_id = T4.author_id WHERE T3.name = \"Kathleen\")
SELECT count(*) FROM author_list AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id WHERE t2.name = \"McKeown\" AND t1.paper_id IN (SELECT paper_id FROM citation AS t3 JOIN author AS t4 ON t3.cited_paper_id = t4.paper_id WHERE t4.name = \"Kathleen\")
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.author_id IN (SELECT author_id FROM paper WHERE title = 'Mckeown , Kathleen' GROUP BY author_id ORDER BY count(*) DESC LIMIT 1)
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.paper_id IN (SELECT paper_id FROM citation AS t3 JOIN paper AS t4 ON t3.cited_paper_id = t4.paper_id WHERE t4.title = 'Mckeown , Kathleen') GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR;
SELECT count(*) , T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.affiliation_id HAVING count(*) > 0
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t2.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY cited_paper_id HAVING cited_paper_id IN (SELECT paper_id FROM paper WHERE cited_paper_id > 50))
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE paper_id IN ( SELECT paper_id FROM citation WHERE cited_paper_id IN ( SELECT paper_id FROM paper WHERE venue = 'Paper' AND cited_paper_id > 50 ) ) )
SELECT T1.name FROM AUTHOR AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.title = \"NAACL\" AND T3.title = \"ACL\"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T1.name IN ( SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE title = 'ACL'))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE title = \"ACL\"))
SELECT count(*) FROM conference AS T1;
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT count(*) , Conference_Name FROM conference GROUP BY Conference_Name;
SELECT count(*) , conference_name FROM conference GROUP BY conference_name;
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM (SELECT YEAR , conference_name FROM conference GROUP BY YEAR)
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
from institution WHERE founded >= 1850 AND founded <= 1900 {}
from institution WHERE founded >= 1850 AND founded <= 1900 GROUP BY founded;
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , location FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN ( SELECT institution_id FROM staff )
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE Nationality = 'United States'
SELECT max(Age) , min(Age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
conferences_with_canadian_attendance = (SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor' AND T1.name IN ( SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker')
concurrent_staff_id IN (SELECT staff_id FROM conference_participation WHERE role = 'speaker' INTERSECT SELECT staff_id FROM conference_participation WHERE role = 'sponsor')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2004 AND T2.role = 'ACL' EXCEPT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.year = 2005 AND T2.role = 'Naccl'
SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = 'ACL' AND T2.role = 'participant' INTERSECT SELECT T1.name FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = 'NACCL' AND T2.role = 'participant'
concurrent_conference = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year = 2003 OR T2.year = 2004)
concurrent_conference = (SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004)
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
select T1.institution_name , T1.location FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id EXCEPT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id WHERE T2.year = 2004
select T1.institution_name , T1.location from institution AS T1 join staff AS T2 ON T1.institution_id = T2.institution_id except select T3.institution_name , T3.location FROM institution AS T3 JOIN conference_participation AS T4 ON T3.institution_id = T4.staff_id WHERE T4.year = 2004;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilot_skills WHERE age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'Piper Cub'
SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM hangar;
SELECT count(DISTINCT LOCATION) FROM Hangar;
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Jones' AND T2.age = 32
SELECT count(*) FROM pilot_skills WHERE age > 40;
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
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41;
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age
SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
locations = (SELECT T2.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC)
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC;
SELECT DISTINCT plane_name FROM pilot_skills ORDER BY plane_name
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age BETWEEN 30 AND 40 OR age BETWEEN 0 AND 29;
SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' AND T2.age > 35 UNION SELECT T2.pilot_name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'F-14 Fighter' AND T2.age < 30
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name
SELECT avg(age) , min(age) FROM pilotskills AS T1 {}
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
Pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' OR T1.plane_name = 'F-14 Fighter'
SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE plane_name = 'Piper Cub' INTERSECT SELECT plane_name FROM hangar WHERE plane_name = 'F-14 Fighter')
SELECT avg(age) , T2.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name;
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT count(*) , plane_type FROM hangar GROUP BY plane_type
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name;
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT T2.plane_name , T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT T1.pilot_name , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT T1.plane_name , max(T2.age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name HAVING count(*) > 1
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING count(*) != 0
SELECT count(*) , T2.location , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35;
SELECT count(*) , T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING avg(T1.age) < 35 ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1;
SELECT T3.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name JOIN pilot AS T3 ON T1.pilot_name = T3.pilot_name ORDER BY T1.age LIMIT 1;
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.pilot_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilot_skills WHERE plane_name = 'Piper Cub' ORDER BY pilot_name ASC LIMIT 1000000;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T3.plan_name = 'Piper Cub') ORDER BY T1.pilot_name ASC;
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter') AND T4.plane_name = 'Pilot'
SELECT count(*) FROM pilot_skills WHERE age < (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT DISTINCT T1.plane_name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name LIKE '%Bomber%'
SELECT DISTINCT T1.plane_name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name LIKE '%Bomber%'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT age FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') AND T1.plane_name != 'Piper Cub'
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1;
SELECT area_km , government_website FROM district ORDER BY population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > ( SELECT avg(area_km) FROM district )
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(population) FROM district WHERE area_km IN (SELECT max(area_km) FROM district)
SELECT district_id , name , government_website FROM district ORDER BY population ASC
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1;
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID ORDER BY count(*) DESC LIMIT 1;
district_id, start_year spokesman_id join spokesman_district on speaksman_id = spokesman_id where start_year < 2004
district_id , count(*) , t3.name t3 . name AS t3.name , count(*) AS t3.count_spoke_man
district_id = (SELECT T1.district_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 1 INTERSECT SELECT T1.district_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.rank_position = 2)
district_id , name SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1;
districts_count = (SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district))
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT T1.spokesman_id FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.spokesman_id = T2.spokesman_id)
total_population = (SELECT sum(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id) average_population = (SELECT avg(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id)
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1 OFFSET 0
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT title , LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingid = 80
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 'gallery 226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 {}
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 GROUP BY T1.artistid HAVING count(*) = 1
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthYear FROM artists ORDER BY birthYear LIMIT 1;
SELECT fname , lname FROM artists ORDER BY birthYear ASC LIMIT 1;
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT fname , birthYear FROM artists ORDER BY birthYear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = '240'
SELECT count(*) FROM paintings AS t1 JOIN artists AS t2 ON t1.painterid = t2.artistid WHERE t2.birthyear > (SELECT max(birthyear) FROM artists)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid ORDER BY T1.birthyear DESC LIMIT 1;
painters = (SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = 'Mary')年的列表：[title , year]
from artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t1.fname = 'Mary' AND t2.year != 0
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Pablo"
SELECT T1.location , T1.medium FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = 'Pablo' AND T1.mediumON = 'on canvas'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid {}
painters = (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid)
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'medium' AND T2.mediumon = 'media' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'media' AND T2.mediumon = 'media'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.medium = 'canvas'
SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884;
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = '241' AND T2.medium = 'medium'
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' AND T2.year = 241;
SELECT count(*) , medium FROM paintings GROUP BY medium;
SELECT count(*) , medium FROM paintings GROUP BY medium;
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT paintingid , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION HAVING count(*) >= 1
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE YEAR > 1910
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium' AND LOCATION = '240'
SELECT DISTINCT painterid FROM paintings WHERE medium = 'medium' AND LOCATION = '240'
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm LIMIT 1)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE medium = 'canvas' ORDER BY height_mm DESC LIMIT 1)
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
paintersID = (SELECT T1.artistID FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%' )
Paintings.title LIKE '%female%' AND paintings.year IN (SELECT T1.year FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.fname != '' AND T2.lname != '')
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY title ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC LIMIT 1000000;
between_years = 1900..1950 paintings AND sculptures BETWEEN 1 AND 50
between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900 , 1950) paintings union sculptures between(1900
paintings = [title for paintingID in paintings.values() if paintingID == 222] sculptures = [title for sculpturesID in sculptures.values() if sculpturesID == 222]
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT t1.fname FROM artists AS t1 JOIN sculptures AS t2 ON t1.artistid = t2.sculptorid GROUP BY t1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
Before 1885 or after 1930: SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930;
Before 1885: LOCATION After 1930: LOCATION
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'panel' UNION SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'canvas'
SELECT LOCATION FROM Paintings WHERE medium = 'on' AND mediumOn = 'on'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1884 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930 {}
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = "241"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR <= 1900 GROUP BY paintingid HAVING count(*) >= 1
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR <= 1900 GROUP BY paintingid ORDER BY max(height_mm) DESC LIMIT 1;
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM Paintings GROUP BY YEAR;
SELECT avg(height_mm) , avg(width_mm) , title FROM Paintings GROUP BY painterID ORDER BY title ASC
SELECT avg(height_mm) , avg(width_mm) , title FROM Paintings GROUP BY painterID ORDER BY title ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paints AS T2 ON T1.artistid = T2.painterID GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3;
SELECT T1.birthYear , T1.deathYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.artistID ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings GROUP BY gallery_id HAVING gallery_id = 240)
SELECT max(height_mm) , paintingid FROM paintings WHERE LOCATION = '240' GROUP BY paintingid HAVING count(*) >= 1
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings GROUP BY YEAR HAVING gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT height_mm FROM paintings WHERE YEAR > 1900 ORDER BY height_mm DESC LIMIT 1)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT year , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
painters = (SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid)
paintersID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = 'oil' EXCEPT SELECT T2.fname , T2.lname FROM artists AS T2 JOIN sculptures AS T3 ON T2.artistid = T3.sculptorid
SELECT LOCATION FROM Paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM Paintings WHERE medium = 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT T1.Winning_driver , T1.Winning_team FROM race AS T1 ORDER BY T1.Winning_team ASC
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T1.pole_position != \"Junior Strous\"
SELECT T1.winning_driver FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Entrant != \"Junior Strous\" AND T1.Pole_Position != \"Junior Strous\"
sorted_by_age_constructors.sort_by_age_constructors()
ORDER BY age ASC driver(Constructor)
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 20 OR age < 30
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
driver.race_name = race.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race
driver.race_name = race.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race_name driver.driver_name = driver.driver_name driver.race_name = driver.race
driver(race_name,race_id) race(driver_id,race_name)
SELECT T1.driver_id , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.age ORDER BY count(*) DESC LIMIT 1;
driver.join(race).having(count(*) >= 2)
driver(race_id, driver_id) JOIN race ON driver.driver_id = race.driver_id GROUP BY driver_id HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
driver.Race_Name = '26+' UNION SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor != 'Bugatti'
constructor , count(*) FROM driver GROUP BY constructor;
SELECT count(*) , constructor FROM driver GROUP BY constructor
SELECT ENGINE FROM driver GROUP BY ENGINE ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1 = (SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 2
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = \"James Hinchcliffe\" AND T2.pole_position = \"Carl Skerlong\";
race.Driver_ID IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe' INTERSECT SELECT driver_id FROM race WHERE pole_position = 'Carl Skerlong')
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT count(*) FROM languages AS T1;
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%'
languages(name) WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1
SELECT avg(justice_score) FROM countries;
SELECT max(health_score) , min(health_score) FROM countries WHERE name <> 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT count(DISTINCT language_id) FROM official_languages;
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT count(*) , T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T1.country_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id HAVING count(*) >= 2;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = 'English'
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id ORDER BY avg(T2.overall_score) DESC;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
select name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id WHERE T3.overall_score < 90 {}
official_languages AS (SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN ( SELECT id FROM countries WHERE overall_score > 95 ) UNION SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id WHERE T2.country_id IN ( SELECT id FROM countries WHERE overall_score < 90 ) )
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM addresses
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province HAVING count(*) >= 1
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province;
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T2.feature_name , T2.feature_description FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties;
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT DISTINCT T1.age_category_code FROM users AS T1 JOIN ref_age_categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description LIKE '%Mother%'
SELECT DISTINCT age_category_code FROM users WHERE user_category_code IN ( SELECT user_category_code FROM properties WHERE property_description LIKE '%Mother%' )
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1
SELECT avg(T2.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn = 1;
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = 'Swimming Pool'
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "Swimming Pool"
{ "sql": "SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1"
SELECT property_id , price_min FROM Properties ORDER BY price_min LIMIT 1
SELECT avg(room_count) FROM properties;
SELECT avg(T2.room_size) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(DISTINCT room_size) FROM rooms
SELECT count(DISTINCT room_size) FROM rooms;
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM user_searches;
SELECT max(search_datetime) FROM user_searches
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T2.zip_postcode FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) >= 2 INTERSECT SELECT T2.zip_postcode FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T2.user_id HAVING count(*) <= 2
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT T3.owner_user_id FROM Users AS T3 JOIN User_Property_History AS T4 ON T3.user_id = T4.user_id GROUP BY T3.user_id HAVING count(*) >= 2 )
SELECT T1.user_id , T1.search_string FROM User Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
Total number of searches made by all users: SELECT count(*) FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id;
SELECT count(*) FROM User_searches WHERE is_seller = 'no'
SELECT date_registered FROM users WHERE login_name = \"rione\"
SELECT date_registered FROM users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior"
SELECT T1.line_1_building , T1.line_2_street , T1.town_city FROM Addresses AS T1 JOIN Ref_Age_Categories AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.age_category_description = "Senior"
SELECT count(*) FROM ( SELECT T1.property_id FROM Property_Features AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2 )
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(DISTINCT feature_id) >= 2)
SELECT count(*) , T1.property_name FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_name HAVING count(*) > 0
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , owner_user_id FROM Property_Photos GROUP BY owner_user_id;
SELECT T1.user_id , count(*) FROM users AS T1 JOIN property_photos AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_seller = 'No' AND is_buyer = 'Yes') UNION SELECT sum(price_max) FROM Properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_seller = 'No' AND is_buyer = 'Yes')
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM users WHERE is_buyer = 'Yes' OR is_seller = 'Yes')
[ { "datestamp": "2016-07-14", "property_name": "Café" }, { "datestamp": "2016-08-15", "property_name": "Café" }, { "datestamp": "2016-09-16", "property_name": "Café" } ]
SELECT T1.date_on_market , T2.property_name FROM Properties AS T1 JOIN User_Property_History AS T2 ON T1.property_id = T2.property_id ORDER BY T1.date_on_market
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT count(*) , room_size FROM rooms GROUP BY room_size;
SELECT count(*) , room_size FROM Rooms GROUP BY room_size;
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.first_name = "Robbie"
addresses where users.first_name = 'Robbie' and addresses.country = 'Wyoming'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT address_id FROM Properties GROUP BY address_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name = T2.property_name
SELECT search_string FROM User Searches WHERE user_id NOT IN (SELECT user_id FROM User Property History)
SELECT search_string FROM User Searches WHERE user_id NOT IN ( SELECT user_id FROM User Property History )
users_with_two_searches = (SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2) intersect(users_with_two_searches) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2) UNION SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) > 2) INTERSECT SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) UNION SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) > 2) UNION SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) > 2) UNION SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) < 2) SELECT T1.last_name , T1.user_id FROM users AS T1 JOIN user_search
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 UNION SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist AS T1
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = "Carbon CC"
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015 {}
bicycle_ids = set(bike_id FROM cyclists_own_bikes GROUP BY bike_id HAVING count(*) >= 4) biker_names = set(name FROM cyclists_own_bikes GROUP BY name HAVING count(*) >= 4) intersect (SELECT id , product_name FROM bike WHERE id IN ( SELECT bicycle_id FROM cyclists_own_bikes ) ) biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker_names biker
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
cyclists_own_bikes AS t1 JOIN bike AS t2 ON t1.bike_id = t2.id JOIN cyclist AS t3 ON t1.cyclist_id = t3.id WHERE t3.nation = 'Russia' OR t3.nation = 'Great Britain' GROUP BY t1.bike_id HAVING count(*) >= 1
SELECT count(DISTINCT heat) FROM cyclist AS T1;
SELECT count(*) FROM cyclists_own_bikes WHERE purchase_year <= 2016 {}
cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T1.result > '4:21.558' SELECT DISTINCT T2.product_name FROM bike AS T2 JOIN cyclists_own_bikes AS T1 ON T1.bike_id = T2.id WHERE T1.purchase_year > '4:21.558'
ciclists_own_bikes b1 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id WHERE t2.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id WHERE t2.name = 'Antonio Tauler') c1 = (SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id WHERE t2.name = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM cyclists_own_bikes AS t1 JOIN cyclist AS t2 ON t1.cyclist_id = t2.id WHERE t2.name = 'Antonio Tauler') c1.bike_id , c1.price , c1.bike_id , c1.price , c1.bike_id , c1.price FROM bikes AS t1 JOIN c1 AS t2 ON t1.id = t2.bike_id WHERE t2.bike_id IN (SELECT bike_id FROM c1 AS t3 JOIN cyclists_own_bikes AS t4 ON t3.bike_id = t4.bike_id WHERE t4.cyclist_id = 'Bradley Wiggins' INTERSECT SELECT bike_id FROM c1 AS t5 JOIN cyclists_own_bikes AS t6 ON t5.bike_id = t6.bike_id WHERE t6.cyclist_id = 'Antonio Tauler')
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'Racing Bike' )
SELECT id FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , id FROM cyclists_own_bikes GROUP BY id ORDER BY id ASC
SELECT T1.flavor , max(T2.price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.flavor
SELECT id , flavor FROM goods WHERE id IN (SELECT id FROM items ORDER BY price DESC LIMIT 1)
SELECT T1.flavor , T2.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = "cookie" ORDER BY T2.price LIMIT 1
SELECT id , flavor FROM goods WHERE food = 'Cookie' ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Lemon\" GROUP BY T1.id HAVING count(*) > 0
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\";
SELECT T2.food , count(*) FROM receipts AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T2.food HAVING count(*) > 0
food_counts = (SELECT count(*) , food FROM goods GROUP BY food)
SELECT customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T1.date >= '2003-04-17' GROUP BY T1.customerid HAVING count(*) >= 15;
SELECT customerid FROM receipts GROUP BY customerid HAVING COUNT(*) >= 15;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10;
SELECT count(DISTINCT item) FROM goods WHERE food = 'Cake'
SELECT count(*) FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.food = 'Cake'
SELECT flavor FROM goods WHERE food = "Croissant"
SELECT DISTINCT flavor FROM goods WHERE food = 'Croissant'
SELECT DISTINCT T2.item FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id JOIN customers AS T3 ON T1.customerid = T3.id WHERE T3.id = 15;
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) FROM goods WHERE food != 'null'
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Item WHERE T2.Flavor = 'Cake' AND T2.id IN ( SELECT T2.id FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Item WHERE T2.Flavor = 'Cookie')
items.Item AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Cake' INTERSECT items.Item AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Cookie'
customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.food = 'Croissant' AND T1.lastname = 'LOGAN'_receiptnumber AS T4 FROM receipts AS T2 JOIN customers AS T1 ON T2.customerid = T1.id WHERE T1.lastname = 'LOGAN'
customers(id, lastName) = 'Logan' AND items(item) = 'croissant' AND receiptnumbers() = (SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = 'Logan')
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , food FROM goods GROUP BY food
SELECT count(*) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food HAVING count(*) >= 1
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.price > 10;
items.filter(price > 10).map(flavor)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Tart')
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.Item WHERE T2.Price > 13;
items.items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 13 GROUP BY T2.customerid HAVING count(*) > 1 {}
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT T2.Date FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = T1.item WHERE T3.Price > 15;
SELECT id FROM goods WHERE id LIKE "APP%"
SELECT id FROM goods WHERE id LIKE '%APP%'
SELECT Price , Id FROM goods WHERE Food = "70"
SELECT id , price FROM goods WHERE id LIKE "70%"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName
items.sortby(id) = (good) order by id ASC
SELECT DISTINCT id FROM goods
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = 'Apple' OR T2.customerid = 12 {}
items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.flavor = \"Apple\" UNION SELECT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.id = 12 {}
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receipt FROM receipts ORDER BY date LIMIT 1 OR SELECT item FROM items WHERE price > 10 UNION SELECT receipt FROM receipts ORDER BY date LIMIT 1;
SELECT receiptnumber FROM receipts WHERE date > (SELECT min(date) FROM receipts GROUP BY date HAVING max(price) > 10) UNION SELECT receiptnumber FROM receipts WHERE price > 10;
SELECT id FROM items WHERE food = "Cookie" AND price BETWEEN 3 AND 7 UNION SELECT id FROM items WHERE food = "Cake" AND price BETWEEN 3 AND 7
items(Item) AS T1 WHERE T1.Price >= 3 AND T1.Price <= 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1;
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = 'blackberry' OR flavor = 'blueberry'
SELECT avg(price) FROM goods WHERE flavor = "blackberry" OR flavor = "blueberry"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1
SELECT max(price) , min(price) , avg(price) FROM goods ORDER BY flavor ASC
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) FROM goods WHERE food = 'food' ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerId GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date;
SELECT T1.date , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.date;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Apple" AND T3.food = "Tart"
items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.flavor = \"Apple\" AND T1.food = \"Tarts\"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = "Tart")
SELECT id FROM goods WHERE id IN ( SELECT id FROM items WHERE item = 'Tart' INTERSECT SELECT id FROM items WHERE item = 'Cake' ) WHERE price >= ( SELECT avg(price) FROM goods WHERE food = 'Tart' )
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods GROUP BY id ORDER BY count(*) DESC LIMIT 2)
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods WHERE food = "Cakes" ORDER BY flavor ASC
SELECT id , flavor FROM goods ORDER BY flavor ASC
SELECT item FROM items WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) < 10
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = \"Chocolate\" GROUP BY T1.item HAVING count(*) <= 10;
items(Item) WHERE food = 'Cake' EXCEPT SELECT flavor FROM goods WHERE id IN (SELECT id FROM items WHERE food = 'Tart')
items(Item) AS T1 WHERE T1.id IN (SELECT id FROM goods WHERE food = 'Tart') EXCEPT SELECT flavor FROM goods WHERE food = 'Cakes'
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5;
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(price) > 5;
SELECT date FROM receipts WHERE item IN ( SELECT id FROM goods WHERE price > 100 ) GROUP BY date HAVING count(*) > 100 {}
SELECT T2.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.id HAVING sum(T2.price) > 100;
SELECT count(*) FROM driver
SELECT count(*) FROM driver AS T1;
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make;
SELECT make , count(*) FROM driver WHERE points > 150 GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Laps) FROM driver WHERE Age < 20;
SELECT avg(Laps) FROM driver WHERE Age < 20;
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT manager , sponsor FROM team ORDER BY Car_Owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID WHERE T1.Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE points < 150;
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = (SELECT Country FROM country WHERE Capital = "Dublin")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = "English")
SELECT avg(Age) FROM driver WHERE Country IN ( SELECT Country FROM country WHERE Official_native_language = "English" )
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Capital = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
Make.count(Make)
SELECT make , count(*) FROM driver GROUP BY make;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT Make FROM driver GROUP BY Make ORDER BY count(*) DESC LIMIT 1;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN ( SELECT Team_ID FROM team_driver )
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver AS T1;
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2;
team_driver AS (SELECT T1.team_id , T1.driver_id , T1.manager , T1.car_owner FROM team_driver AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2)
SELECT count(*) FROM institution
SELECT count(*) FROM institution AS T1;
SELECT name FROM institution ORDER BY name
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
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1;
SELECT T1.name , T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id
championships AS (SELECT T1.Nickname , T2.Name FROM Championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id)
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT name FROM institution ORDER BY enrollment ASC LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC LIMIT 1000000;
championships ORDER BY joined DESC NAME
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T2.institution_id HAVING count(*) >= 1 {}
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM CHAMPIONETRY AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
SELECT count(*) , affiliation FROM institution GROUP BY affiliation;
SELECT count(*) , affiliation FROM institution GROUP BY affiliation;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 2
SELECT Nickname FROM CHAMPIONSHIP ORDER BY capacity DESC
CHAMPIONSHIP ORDERED BY capacity DESC SELECT T1.nickname FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city = 'Vancouver' OR city = 'Calgary'
SELECT Enrollment FROM institution WHERE City IN ("Vancouver", "Calgary")
SELECT T1.Province FROM institution AS T1 JOIN institution AS T2 ON T1.Province = T2.Province WHERE T1.Founded < 1920 AND T2.Founded > 1950
SELECT province FROM institution WHERE founded BETWEEN 1 AND 1920 EXCEPT SELECT province FROM institution WHERE founded BETWEEN 1921 AND 1950
SELECT count(DISTINCT province) FROM institution AS T1
SELECT count(DISTINCT province) FROM institution AS T1
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT DISTINCT contents FROM boxes WHERE warehouse IN ( SELECT code FROM warehouses WHERE location = "New York" )
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT T1.code , avg(T2.value) FROM boxes AS T2 JOIN warehouses AS T1 ON T2.warehouse = T1.code GROUP BY T1.code
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT avg(capacity) , sum(capacity) FROM Warehouses;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents;
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(Value) FROM Boxes AS T1
SELECT avg(value) FROM boxes;
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes;
SELECT count(DISTINCT contents) FROM boxes;
SELECT DISTINCT LOCATION FROM Warehouses
SELECT count(DISTINCT LOCATION) FROM Warehouses;
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago" OR LOCATION = "New York")
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = 'Chicago' OR t2.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
Contents of boxes stored in both Chicago and New York: contents = (boxes W1.contents = 'Chicago' AND boxes W1.contents = 'New York')
Wares Without New York = (SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'New York'))
contents = (SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York'))
boxes = [box1, box2] # contents of boxes waste = [box3, box4] # contents of waste waste_boxes = [box5, box6] # contents of waste_boxes Waste_boxes_waste = [box7, box8] # contents of Waste_boxes Waste_boxes_waste_boxes = [box9, box10] # contents of Waste_boxes boxes_with_Rocks = [box10, box11] # contents of boxes with rocks boxes_with_Scissors = [box12, box13] # contents of boxes with scissors Waste_boxes_with_Rocks = [box14, box15] # contents of waste_boxes with rocks Waste_boxes_with_Scissors = [box16, box17] # contents of waste_boxes with scissors boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors location_of_wereys = [warehouse1, warehouse2, ...] # all locations of warehouses where contents are Rocks location_of_boxes = [box10, box11, ...] # all contents of boxes where contents are Rocks location_of_waste_boxes = [box5, box6, ...] # contents of waste_boxes where contents are Rocks location_of_boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors intersection_of_locations = [warehouse1, warehouse2, ...] # all locations of warehouses where contents are Rocks but not Scissors locations_of_wereys = [warehouse1, warehouse2, ...] # all locations of warehouses where contents are Rocks but not Scissors intersection_of_boxes = [box10, box11, ...] # all contents of boxes where contents are Rocks but not Scissors intersection_of_waste_boxes = [box14, box15, ...] # contents of waste_boxes where contents are Rocks but not Scissors intersection_of_boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors intersection_of_boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors location_of_wereys = [warehouse1, warehouse2, ...] # all locations of warehouses where contents are Rocks but not Scissors location_of_boxes = [box10, box11, ...] # all contents of boxes where contents are Rocks but not Scissors location_of_waste_boxes = [box14, box15, ...] # contents of waste_boxes where contents are Rocks but not Scissors location_of_boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors intersection_of_locations = [warehouse1, warehouse2, ...] # all locations of warehouses where contents are Rocks but not Scissors location_of_boxes_with_Rocks_and_Waste_boxes = [box10, box11] # contents of boxes with rocks and waste_boxes with scissors
Wares = [w1, w2, w3] where value = 'Rocks' EXCEPT Wares = [w4, w5, w6] where value = 'Scissors'
SELECT T1.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = 'Rocks' OR T1.contents = 'Scissors'
SELECT DISTINCT T1.warehouse FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks" OR T1.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
boxes.Warehouse -> (SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\")
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
Woods >>= "contents" ORDER BY contents ASC
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = \"Rocks\" ORDER BY value DESC LIMIT 1)
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Rocks' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T1.code , avg(T2.value) FROM boxes AS T2 JOIN warehosues AS T1 ON T1.code = T2.warehouse GROUP BY T1.code HAVING avg(value) > 150;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150;
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
Total_value + count(*) FROM Boxes AS T1
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses;
SELECT sum(capacity) FROM Warehouses;
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT T1.location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT T1.code , count(*) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse HAVING count(*) > 0
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT LOCATION) FROM Warehouses WHERE capacity > 1000 AND name = 'Rocks'
Wares = { 'Rocks' } Boxes = { 'value' } Warehouse = { 'value' } count(DISTINCT warehouse) = count(DISTINCT value) / count(Wares)
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(*) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse;
SELECT count(DISTINCT contents) , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.location;
SELECT code FROM warehouses WHERE capacity > (SELECT max(capacity) FROM warehouses)
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > T1.capacity
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
SELECT count(*) FROM university WHERE state IN ('IL', 'OH')
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT * FROM university WHERE home_conference != "null"
SELECT DISTINCT home_conference FROM university;
SELECT count(*) , home_conference FROM university GROUP BY home_conference
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT T1.State FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university WHERE enrollment > 2000 GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1;
SELECT home_conference FROM university WHERE enrollment = (SELECT min(enrollment) FROM university)
SELECT major_name , major_code FROM major ORDER BY major_code ASC
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
university_id , major_name , rank FROM university WHERE university_name = 'Augustana College' UNION SELECT T1.university_id , T2.major_name , T2.rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Augustana College'
SELECT T1.major_name , T2.rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T2.university_id = T3.university_id WHERE T3.university_name = 'Augustana College'
university_name = 'University Name', city = 'City Name', state = 'State Name' FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' AND T1.university_id IN (SELECT T2.university_id FROM major AS T2 JOIN major_ranking AS T3 ON T2.majord_id = T3.majord_id WHERE T3.rank = 1)
university_name = 'University Name 1', city = 'City 1', state = 'State 1'，major_name = 'Accounting', rank = 1，major_id = 2，university_id = 1，major_ranking.university_id = 1
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1)
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank = 1 ORDER BY T3.reputation_point DESC LIMIT 1)
university_name_without_major_1 = (SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1))
university(university_name) EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 {}
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education')
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\")
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T1.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point ASC
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id IN (SELECT T3.major_id FROM major AS T3 JOIN major_ranking AS T4 ON T3.major_id = T4.major_id WHERE T4.rank >= 3) ORDER BY T1.university_name LIMIT 1)
university_name = (SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id JOIN major_ranking AS T3 ON T2.major_id = T3.major_id WHERE T3.rank >= 3 AND T2.major_name = \"Accounting\")
overall_ranking.query.filter("Rank" <= 4).sum()
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank = 1)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point > ( SELECT max(reputation_point) FROM overall_ranking )
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM movies WHERE rating != 1
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon'
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.theater != 'null'
MovieTheater(title, code, movie) SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.movie IN (SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie HAVING count(*) > 0)
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating LIKE 'G%'
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies)
SELECT count(*) FROM MovieTheaters WHERE movie IN (SELECT code FROM Movies WHERE rating >= 7)
SELECT count(DISTINCT T1.title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT count(DISTINCT title) FROM Movies WHERE code IN (SELECT movie FROM Movietheaters GROUP BY movie HAVING count(*) > 1)
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT count(DISTINCT name) FROM Movietheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
Movies(code, title) WHERE title LIKE '%Citizen%' OR title LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating IN ('G', 'PG')
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
MovieTheaters(name,nameOfTheTheater) VALUES ('Odeon','Movies') UNION VALUES ('Imperial','Movies')
name = "Odeon" AND code IN (SELECT movie FROM MovieTheaters WHERE name = "Imperial")
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' AND T2.title IN (SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Imperial')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title ASC
sorted_movies = Movies.sort_by_rating() print(sorted_movies)
sorted_movies_by_rating := (SELECT title FROM movies ORDER BY rating)
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT count(*) FROM Movies WHERE Rating != \"null\"
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Code IN (SELECT T1.Movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie HAVING COUNT(*) > 0)
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name HAVING COUNT(*) > 0
SELECT name FROM movietheaters EXCEPT SELECT name FROM movietheaters WHERE code IN (SELECT movie FROM movies WHERE rating > 3)
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM Movies)
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT Title FROM Movies
SELECT title FROM movies
SELECT DISTINCT rating FROM Movies;
SELECT count(DISTINCT rating) FROM movies;
SELECT * FROM Movies WHERE Rating = "Unrated"
SELECT * FROM Movies WHERE Rating != "Unrated"
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM Movietheaters)
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1;
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1;
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT sum(T2.Weight) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender WHERE T1.Name = \"Leo Wong\"
SELECT POSITION FROM employee WHERE name = 'Amy Wong'
SELECT POSITION FROM employee WHERE name LIKE '%Amy Wong%'
SELECT salary , POSITION FROM employee WHERE name = 'Turanga Leela'
SELECT salary , POSITION FROM Employee WHERE name = 'Turanga Leela'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT LEVEL FROM has_clearance WHERE POSITION = 'Physician'
SELECT LEVEL FROM has_clearance
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = 'Leo Wong' AND T2.receiver = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = 'Leo Wong'
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = "Leo Wong"
SELECT T2.contents FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.recipient = 'Leo Wong' OR T1.sender = 'Leo Wong'
SELECT DISTINCT T1.packagenumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.sender = T2.accountnumber JOIN Employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender LIKE '%John Zoidfarb%'
SELECT T1.contents FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'John Zoidfarb'
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = "John" ORDER BY T2.weight DESC LIMIT 1
SELECT T2.packagenumber , T2.weight FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T2.sender = "John" OR T2.recipient = "John"
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.accountnumber ORDER BY count(*) ASC LIMIT 1;
SELECT min(weight) , min(sender) FROM package AS T1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT name , coordinates FROM planet ORDER BY name ASC
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Philip Phillip J. Fry"
SELECT T2.ShipmentID FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.manager WHERE T1.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T2.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = 3
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetID FROM planet WHERE name = "Mars") OR manager IN (SELECT employeeID FROM employee WHERE name = "Turanga Leela")
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T1.planet = 3 AND T2.name = "Turanga Leela"
SELECT T1.name , sum(T2.shipmentid) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planet ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name , count(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
SELECT count(*) , T2.name FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars'
total_weight = (SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid WHERE T2.planet = 'Mars')
Total weight of shipment across all planets: SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name;
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipment WHERE T1.planetid != 0 GROUP BY T1.planetid ORDER BY sum(T2.weight) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30;
total_weight = (SELECT T1.weight FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid GROUP BY T2.shipmentid HAVING sum(T1.weight) > 30)
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T1.planet WHERE T3.name = "Omicron Persei" AND T1.manager = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planetid FROM planet WHERE name = "Omicron Persei 8") OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN ( SELECT T1.EmployeeID FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employeeid FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T2.employee FROM has_clearance AS T2 JOIN employee AS T3 ON T2.employee = T3.employeeid)
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet WHERE T2.employee IN (SELECT T2.employee FROM has_clearance AS T2 JOIN employee AS T3 ON T2.employee = T3.employeeid WHERE T3.position = "Manager")
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN ( SELECT employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars' )
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game_game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id;
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT title , developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers <> 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE Rank_of_the_year < 2
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = 'Super Mario World' AND T1.If_active = 1
game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.Title = \"Super Mario World\"
player1 = (SELECT T2.Player_ID FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\") EXCEPT SELECT DISTINCT T2.Player_ID FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\"
games_platform(games_id,gplatform_id) VALUES((SELECT T1.games_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN platform AS T3 ON T1.platform_id = T3.platform_id WHERE T3.College = \"Auburn\") INTERSECT SELECT T1.games_id FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN platform AS T3 ON T1.platform_id = T3.platform_id WHERE T3.College = \"Auburn\");
SELECT avg(T1.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = \"Guard\";
avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = \"Guard\"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = "Asia" OR T2.Market_district = "USA"
platform_id , title , count(*) from game GROUP BY platform_id HAVING count(*) > 1000
platform(platform_id, market_district) , title , franchise FROM game GROUP BY franchise
SELECT T1.Frankcease FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id GROUP BY T1.Frankcease ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise ORDER BY count(*) DESC LIMIT 1;
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT T1.Franchise FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id GROUP BY T1.Franchise HAVING count(*) >= 2;
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_id NOT IN (SELECT Player_ID FROM game_player)
if (SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T2.If_active = 1 INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Auburn\" AND T2.If_active = 1)
player1 = (SELECT T1.Player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T1.College = \"Oklahoma\" OR T1.Player_name = \"Auburn\")
SELECT DISTINCT Franchise FROM game AS T1;
SELECT DISTINCT franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN ( SELECT T1.Game_ID FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID WHERE T2.Position = 'Guard' )
SELECT title FROM game WHERE game_id NOT IN ( SELECT game_id FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.position = 'Guard' )
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 15 UNION SELECT name FROM press WHERE month_profits_billion > 1000
SELECT name FROM press WHERE year_profits_billion > 150000000 OR month_profits_billion > 100000
SELECT avg(YEAR_Profits_billion) , max(YEAR_Profits_billion) FROM press
SELECT avg(YEAR_Profits_billion) , max(YEAR_Profits_billion) FROM press
SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id ORDER BY T2.month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion - year_profits_billion LIMIT 1 OR SELECT name FROM press ORDER BY month_profits_billion + year_profits_billion LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY year_profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30;
SELECT count(*) FROM author WHERE age BETWEEN 0 AND 29;
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
sorted(book.Release_date)
SELECT Title FROM book ORDER BY Release_date DESC
SELECT count(*) , book_series FROM book GROUP BY book_series;
book_series_count = count(*) FROM book GROUP BY book_series;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title FROM book WHERE sale_amount > 1000 INTERSECT SELECT title FROM book WHERE sale_amount < 500 {}
SELECT title FROM book WHERE sale_amount > 1000 EXCEPT SELECT title FROM book WHERE sale_amount < 500
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = "LT"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.Book_Series = "LT"
SELECT name , age FROM author WHERE author_id NOT IN ( SELECT author_id FROM book )
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T2.Name HAVING count(*) > 1 {}
SELECT T1.title , T2.name , T2.year_profits_billion FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3;
SELECT T1.title , T2.name , T2.year_profit_billion FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id ORDER BY T1.sale_amount DESC LIMIT 3
press.name = (SELECT T1.name FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id ORDER BY sum(T2.sale_amount) DESC LIMIT 1) + sum(T2.sale_amount) book_total = (SELECT sum(T2.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id ORDER BY sum(T2.sale_amount) DESC LIMIT 1)
press_name = (SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id)
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name HAVING count(*) > 1000;
press_id , count(*) FROM book WHERE Sale_Amount > 1000 GROUP BY press_id {}
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE title = 'Accor')
SELECT name FROM author WHERE author_id NOT IN (SELECT press_id FROM press WHERE name = 'Accor')
press.name = (SELECT name FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)) AND year_profits_billion = (SELECT max(year_profits_billion) FROM press WHERE name IN (SELECT name FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)))
press_id , name , sum_of_month_profits_billion , sum_of_yearly_profit_billion FROM press GROUP BY press_id HAVING count(*) > 2 {}
SELECT count(*) FROM authors AS T1;
SELECT author_name FROM authors
SELECT author_name , other_details FROM authors
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Era Kerluke\";
SELECT document_name , document_description FROM Documents
SELECT document_id , document_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
author_name , count(*) FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) > 0
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2;
SELECT count(*) FROM Business_Processes;
SELECT next_process_id , process_name , process_description FROM Process_outcomes WHERE process_id = 9
SELECT T1.process_name FROM business_processes AS T1 JOIN processes AS T2 ON T1.process_id = T2.process_id WHERE T2.process_id = 9
SELECT count(*) FROM Process_outcomes AS T1;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM process_status;
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff_in_Processes;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM documents_processes;
SELECT process_id FROM documents_processes UNION SELECT process_id FROM processes_processes WHERE process_id IN (SELECT process_id FROM documents_processes)
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM processes WHERE process_id NOT IN (SELECT process_id FROM documents_processes)
SELECT T1.process_outcome_description , T2.process_status_description FROM process_outcomes AS T1 JOIN process_status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_id = 0
SELECT T3.process_name FROM documents AS T1 JOIN documents_processes AS T2 ON T1.document_id = T2.document_id JOIN business_processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_name = \"Travel to Brazil\"
SELECT process_id , count(*) FROM Documents_processes GROUP BY process_id HAVING count(*) > 0
document_id = 0 AND process_id = 9
SELECT count(*) , staff_id FROM Staff_in_Processes GROUP BY staff_id;
SELECT count(*) , staff_role_code FROM Staff_in_Processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes AS T1 JOIN Ref_Staff_Roles AS T2 ON T1.staff_role_code = T2.staff_role_code WHERE T1.staff_id = 3;
SELECT count(*) FROM agencies;
SELECT count(*) FROM agencies;
SELECT * FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients;
SELECT count(*) FROM clients AS T1;
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
SELECT count(*) , agency_id FROM clients GROUP BY agency_id
SELECT count(*) , agency_id FROM clients GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM clients AS T1 JOIN staff AS T2 ON T1.agent_id = T2.staff_id
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT count(*) , sic_code FROM clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details , sic_code FROM clients WHERE sic_code = "Bad"
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM invoices
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM invoices GROUP BY client_id;
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM INVOICES AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM meetings
SELECT * FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT DISTINCT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN ( SELECT invoice_id FROM payments )
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments;
SELECT count(*) FROM payments;
SELECT T1.payment_id , T2.invoice_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT count(*) , T1.invoice_id FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM INVOICES AS T1 JOIN PAYMENTS AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff
SELECT count(*) FROM staff
SELECT T1.agency_id , count(*) FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) > 0
SELECT count(*) , agency_id FROM staff GROUP BY agency_id
SELECT T1.agent_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome;
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM meetings GROUP BY client_id;
SELECT count(*) , client_id FROM Meetings GROUP BY client_id;
SELECT count(*) , meeting_type FROM meetings GROUP BY client_id
SELECT count(*) , meeting_type FROM meetings GROUP BY meeting_type
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN clients AS T3 ON T2.client_id = T3.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
meetings_id , count(*) staff_count FROM Staff_in_Meetings GROUP BY meetings_id HAVING count(*) > 0
SELECT count(*) , meeting_id FROM staff_in_meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings;
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
client_id , client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT client_id , client_details FROM invoices AS T3 WHERE T3.invoice_status = 'Paid' OR T3.invoice_details != ''
SELECT T1.client_id , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id UNION SELECT T3.client_id , T3.client_details FROM invoices AS T3 JOIN clients AS T4 ON T3.client_id = T4.client_id
staff_ids_with_s_details = (SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T2.meeting_id IN ( SELECT meeting_id FROM Meetings WHERE meeting_type = 'Sticky' ) GROUP BY T1.staff_id HAVING count(*) >= 1)
staff_details = 's' UNION SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agency_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id GROUP BY T3.client_id HAVING count(*) = 1
meetings_id , client_id , invoice_id FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) = 1 AND T1.meeting_type = 'Invoice'
meetings_stoppings_end_times: [ (meeting_id, client_id, staff_id, client_details, staff_details), (1, 1, 1, 'Client Details', 'Staff Details'), (2, 1, 1, 'Client Details', 'Staff Details') ]
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id
