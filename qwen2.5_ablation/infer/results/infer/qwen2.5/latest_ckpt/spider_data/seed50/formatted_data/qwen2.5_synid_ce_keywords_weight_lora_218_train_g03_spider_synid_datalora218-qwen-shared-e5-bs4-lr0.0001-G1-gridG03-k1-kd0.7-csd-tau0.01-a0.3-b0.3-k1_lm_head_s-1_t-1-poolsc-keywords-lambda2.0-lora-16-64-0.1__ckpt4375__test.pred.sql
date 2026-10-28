SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT manager , captain FROM club
SELECT manager , captain FROM club
SELECT Name FROM club WHERE Manufacturer <> "Nike"
SELECT name FROM club WHERE manufacturer <> 'Nike'
SELECT Name FROM player ORDER BY Wins_count
SELECT Name FROM player ORDER BY Wins_count ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1;
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1;
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Wins_count DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2;
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = \"Sam Allardyce\"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC;
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
count(*) AS count_clubs , manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 0
count(*) , count(DISTINCT manufacturer) FROM club GROUP BY manufacturer;
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1;
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 2
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club EXCEPT SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Name FROM club EXCEPT SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 EXCEPT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT country) FROM player AS T1 {}
SELECT count(DISTINCT Country) FROM player AS T1;
SELECT Earnings FROM player WHERE Country IN ("Australia", "Zimbabwe")
SELECT Earnings FROM player WHERE Country IN ('Australia', 'Zimbabwe')
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 2 INTERSECT SELECT T2.customer_id , T2.customer_first_name , T2.customer_last_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 3
SELECT count(*) , T1.order_id , T1.order_status_code FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY min(T2.order_item_status_code) LIMIT 1;
SELECT T1.date_order_placed , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 ORDER BY T1.date_order_placed ASC LIMIT 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT T1.order_id , T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.order_id , T2.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(DISTINCT T2.product_id) >= 2
SELECT T1.product_id , T2.product_name , T2.product_price FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id , sum(product_price) FROM order_items GROUP BY order_id ORDER BY sum(product_price) ASC LIMIT 1
SELECT T1.order_item_total , T2.date_order_placed FROM Order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_item_total ORDER BY sum(T1.order_item_total) ASC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM orders GROUP BY gender_code;
SELECT count(*) , gender_code FROM customers GROUP BY gender_code;
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT invoice_status_code , invoice_date , shipment_date FROM invoices
SELECT T2.product_name , T3.shipment_date FROM shipments AS T3 JOIN order_items AS T1 ON T3.order_id = T1.order_id JOIN products AS T2 ON T1.product_id = T2.product_id
SELECT T2.product_name , T3.shipment_date FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.shipment_date != \"null\"
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id ORDER BY T1.date_order_placed ASC
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T2.order_item_status_code = 'Shipped'
SELECT T2.product_name , T2.product_color FROM shipments AS T1 JOIN products AS T2 ON T1.shipment_id = T2.product_id WHERE T1.order_id IN ( SELECT order_id FROM orders )
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_gender_code = 'F'
SELECT DISTINCT T2.product_name , T2.product_price , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.gender_code = 'F'
SELECT invoice_status_code FROM invoices WHERE invoice_date NOT IN (SELECT T2.invoice_date FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id)
SELECT invoice_status_code FROM invoices WHERE invoice_date != (SELECT invoice_date FROM shipments)
SELECT order_id , date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT order_id , date_order_placed , sum(T2.total_amount_paid) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS
SELECT count(DISTINCT order_item_status_code) FROM ORDER_ITEMS ORDER BY order_item_status_code ASC
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods;
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods AS T1
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%' OR product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(*) FROM (SELECT DISTINCT product_id FROM orders)
SELECT count(*) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_payment_methods )
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM customers WHERE country LIKE "%USA%"
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id
SELECT T2.customer_first_name , T3.product_name FROM customers AS T2 JOIN orders AS T1 ON T2.customer_id = T1.customer_id JOIN order_items AS T3 ON T1.order_id = T3.order_id
SELECT count(*) FROM shipments AS T1 JOIN shipment_items AS T2 ON T1.shipment_id = T2.shipment_id
SELECT count(*) FROM shipments AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id
SELECT avg(product_price) FROM products AS T1;
SELECT avg(product_price) FROM products AS T1;
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T1.order_status_code = 'Completed'
SELECT avg(T1.product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) > 0
SELECT email_address , town_city , county FROM customers ORDER BY count(*) ASC LIMIT 1;
SELECT email_address , town_city , county FROM customers WHERE gender_code IN (SELECT gender_code FROM orders GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT T2.payment_method_code) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(DISTINCT payment_method_code) >= 2;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T1.product_id , T2.product_description FROM orders AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T2.invoice_date , T2.invoice_number FROM shipments AS T1 JOIN invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T2.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T2.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT Title FROM program ORDER BY Start_Year DESC
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.Name , T2.Internet FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID HAVING COUNT(*) > 1
SELECT T1.name , count(*) FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
SELECT T1.Name , T1.Internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Channel_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM director WHERE Age >= 30 AND Age <= 60
both_channels = (name FROM channel WHERE age < 40 INTERSECT SELECT name FROM channel WHERE age > 60)
SELECT channel_id , name FROM channel WHERE channel_id NOT IN ( SELECT T1.channel_id FROM director AS T1 JOIN director_admin AS T2 ON T1.director_id = T2.director_id WHERE T2.name = 'Hank Baskett' )
SELECT count(*) FROM radio AS T1;
SELECT transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , Original_Airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation <> 'ABC'
SELECT transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
max(ERP_kW) FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio AS T1;
SELECT count(*) , affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name
SELECT T3.transmitter , T2.city FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.city_channel_id
SELECT T1.transmitter , T3.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T2.city_channel_id = T3.id ORDER BY T1.EP_Raw DESC
SELECT T3.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id JOIN city_channel AS T3 ON T1.city_channel_id = T3.id GROUP BY T3.transmitter;
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT MODEL FROM vehicle WHERE TOP_SPEED > 6000 ORDER BY POWER DESC LIMIT 1;
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1;
SELECT Name FROM driver WHERE Citizenship = "United States"
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_id , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT max(Power) , avg(Power) FROM vehicle WHERE Builder = \"Zhuzhou\"
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY count(*) ASC LIMIT 1;
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T2.Build_Year = 2012
SELECT count(DISTINCT T2.Driver_ID) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Build_Year = 2012;
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = \"NASCAR\"
SELECT avg(Top_Speed) FROM vehicle;
SELECT avg(Top_Speed) FROM vehicle AS T1;
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000;
SELECT T3.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT MODEL FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT MODEL FROM vehicle WHERE Total_Production > 100 UNION SELECT MODEL FROM vehicle WHERE Top_Speed > 150
SELECT MODEL , BUILD_YEAR FROM vehicle WHERE MODEL LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
Two Drivers: SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T3.Vehicle_ID , T3.Model FROM vehicle AS T3 JOIN driver AS T4 ON T3.Vehicle_ID = T4.Driver_ID WHERE T4.Citizenship = 'Ziyang' GROUP BY T3.Vehicle_ID HAVING COUNT(*) >= 2;
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) = 2 OR T1.Build_Year = 'Ziyang'
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\") GROUP BY T1.Vehicle_ID HAVING COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 ) UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Driver_ID IN ( SELECT Driver_ID FROM driver WHERE Name = \"Jeff Gordon\" GROUP BY Driver_ID HAVING COUNT(*) > 2 )
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series HAVING COUNT(*) >= 1;
SELECT count(*) , racing_series FROM driver GROUP BY racing_series;
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT T3.Name , T3.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver GROUP BY driver_id HAVING COUNT(*) > 1)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM exams AS T1;
SELECT count(*) FROM EXAMS AS T1;
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
Distinct(Subject_Code) ORDER BY Distinct(Subject_Code) ASC
SELECT exam_name , exam_date FROM exams WHERE subject_code != 'Database'
SELECT exam_date , exam_name FROM exams WHERE subject_code != 'Database'
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE \"%data%\" ORDER BY exam_date DESC
SELECT TYPE_of_Question_Code , count(*) FROM Questions GROUP BY TYPE_of_Question_Code
SELECT TYPE_of_Question_Code , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_Code
SELECT DISTINCT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id WHERE T2.comments = \"Normal\"
SELECT DISTINCT T1.Student_Answer_text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID WHERE T2.question_text = \"Normal\"
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT count(DISTINCT Comments) FROM Student_Answers AS T1
SELECT T2.Student_Answer_Text FROM Student_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T2.Question_Text ORDER BY COUNT(*) DESC
SELECT T1.Student_Answer_Text FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Student_Answer_ID = T2.Student_Answer_ID GROUP BY T1.Student_Answer_Text ORDER BY count(*) DESC
SELECT T3.First_Name , T2.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T3 ON T1.Student_ID = T3.Student_ID JOIN Valid_Answers AS T2 ON T1.Question_ID = T2.Question_ID
SELECT T1.first_name , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.Email_Adress , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2;
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY count(*) DESC LIMIT 1;
SELECT T2.valid_answer_text FROM questions AS T1 JOIN valid_answers AS T2 ON T1.question_id = T2.question_id GROUP BY T2.valid_answer_text ORDER BY count(*) DESC LIMIT 1;
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu
SELECT count(*) , gender_mfu FROM students GROUP BY gender_mfu;
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT Last_Name FROM Students WHERE Gender_MFU = \"F\" OR Gender_MFU = \"M\"
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_id = T2.question_id WHERE T2.comments = \"Normal\" INTERSECT SELECT T1.student_answer_text FROM student_answers AS T1 JOIN valid_answers AS T2 ON T1.student_answer_id = T2.question_id WHERE T2.comments = \"Absent\"
SELECT T1.Comments FROM Student_Answers AS T1 JOIN Valid_Answers AS T2 ON T1.Comments = T2.Comments WHERE T2.Comments = "Normal" AND T2.Comments = "Absent"
SELECT TYPE_OF_Question_Code FROM Questions GROUP BY TYPE_OF_Question_Code HAVING count(*) >= 3;
SELECT TYPE_of_Question_Code FROM questions GROUP BY TYPE_of_Question_Code HAVING count(*) >= 3;
SELECT * FROM Students
SELECT * FROM students
SELECT count(*) FROM addresses
"SELECT count(*) FROM addresses AS T1"
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products AS T1;
SELECT product_id , product_type_code , product_name FROM products
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS T1;
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products AS T1;
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
SELECT product_type_code FROM products ORDER BY product_price
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price
Count(*) AS count(*) , product_type_code FROM products GROUP BY product_type_code;
SELECT count(*) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code;
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code;
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(DISTINCT product_name) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers
SELECT count(*) FROM customers AS T1;
SELECT customer_id , customer_name FROM customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = 'Jeromy'
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = 'Jeromy'
Count(*) AS count , payment_method_code FROM customers GROUP BY payment_method_code;
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT customer_name FROM customers ORDER BY payment_method_code LIMIT 1;
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT DISTINCT payment_method_code FROM customers AS T1;
SELECT product_id , product_type_code FROM products ORDER BY product_name ASC
sorted_products = (SELECT product_id , product_type_code FROM products ORDER BY product_name ASC)
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM customer_orders AS T1;
SELECT count(*) FROM customer_orders AS T1
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeromy"
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeromy"
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.customer_name , T2.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customers AS T2 JOIN customer_orders AS T1 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;
COUNT(*) AS order_status_code FROM customer_orders GROUP BY order_status_code;
ORDER_STATUS_CODE COUNT(*) FROM customer_orders GROUP BY order_status_code;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = \"Monitor\"
SELECT count(*) FROM orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id JOIN products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_type_code = 'Monitor'
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(DISTINCT T1.customer_id) FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = 'Monitor'
SELECT count(DISTINCT customer_id) FROM customer_orders;
SELECT count(DISTINCT customer_id) FROM customer_orders AS t1 JOIN orders AS t2 ON t1.order_id = t2.order_id
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 UNION SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING sum(T2.order_quantity) > 6
SELECT order_id , order_date FROM customer_orders WHERE order_quantity > 6 OR count(*) >= 3
SELECT count(*) FROM building
SELECT count(*) FROM building AS T1;
SELECT Name FROM building ORDER BY Number_of_Stories ASC
sorted_by_number_of_stories(building)
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980 AND Number_of_Stories != 0;
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980;
SELECT avg(Population) FROM region AS T1;
SELECT avg(Population) FROM region AS T1;
SELECT Name FROM region ORDER BY Name
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
max(capital) FROM region ORDER BY population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT T1.Name , count(*) FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo" GROUP BY T1.region_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 EXCEPT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
completed_year = (Building_ID > 20) AND completed_year < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM services
SELECT count(*) FROM services AS T1;
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1;
most_common_analytical_layer_type_code = (SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id GROUP BY T2.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY count(*) DESC LIMIT 1;
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id WHERE t2.service_id = (SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1)
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id WHERE T2.service_id = ( SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1 )
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers_and_services AS t1 JOIN customer_interactions AS t2 ON t1.customers_and_services_details = t2.services_and_channels_details
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_id = T3.customer_id WHERE T3.customer_details = \"Hardy Kutch\" OR T2.services_and_channels_details = \"good\"
SELECT T3.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T3 ON T2.service_id = T3.service_id WHERE T1.customer_details = "Hardy Kutch" OR T3.service_details = "good"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_id = T3.customers_and_services_id WHERE T3.customer_details = "Hardy Kutch" AND T2.services_and_channels_details = "Bad"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customers_and_services_details = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.services_and_channels_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.channel_id = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = \"15 ij\"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.integration_platform_id = T3.integration_platform_id WHERE T3.status_code = 'Failed'
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = "Fail"
SELECT services_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IS NULL INTERSECT SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customer_id IS NOT NULL {}
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Services_and_Channels_Details = "unsatisfied"
"SELECT count(*) FROM Vehicles AS T1"
SELECT count(*) FROM Vehicles AS T1;
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT count(DISTINCT TYPE_of_powertrain) FROM Vehicles AS T1
SELECT count(DISTINCT type_of_powertrain) FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013 , 2014)
SELECT name , TYPE_of_powertrain , cost_per_25_miles FROM Vehicles WHERE Model_year BETWEEN 2013 AND 2014
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE model_year BETWEEN 2014 AND 2013;
SELECT TYPE_OF_POWERTRAIN FROM Vehicles WHERE model_year IN (2013 , 2014) GROUP BY TYPE_OF_POWERTRAIN HAVING count(*) >= 2
powertrain_type_count = count(*) GROUP BY powertrain_type;
POWERTRAIN_TYPE_COUNT = count(*) GROUP BY POWERTRAIN_TYPE_COUNT
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1;
SELECT min(cost_per_25_miles) , max(cost_per_25_miles) , avg(cost_per_25_miles) FROM Vehicles AS T1 WHERE T1.type_of_powertrain = 'Diesel' ;
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles AS T1;
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Amount_per_vehicle) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Amount) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1;
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM DISCOUNT
SELECT * FROM DISCOUNT
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) != 0
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) != 0
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.Model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC LIMIT 1000000;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id WHERE T2.total_hours > 30;
SELECT T1.name , T1.type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id HAVING sum(T2.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain;
SELECT avg(amount_of_loan) FROM Student_Loans AS T1
SELECT avg(amount_of_loan) FROM Student_Loans AS T1
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2;
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) <= 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT T1.student_id FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT T1.student_id FROM Student_LOANS AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id)
SELECT bio_data FROM Students WHERE student_id NOT IN (SELECT student_id FROM Detention) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 )
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.teacher_details , T1.teacher_id FROM Teachers AS T2 JOIN Classes AS T1 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details , T2.address_details FROM Students AS T1 JOIN Addresses AS T2 ON T1.student_address_id = T2.address_id
SELECT T1.student_details , T1.bio_data FROM Students AS T1 JOIN Students_addresses AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 3 AND count(*) <= 3
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id IN (SELECT student_id FROM Student_Events)
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.event_type_code , T1.event_type_description , count(*) FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1;
Achievements.achievement_details , Ref_Achievement_Type.achievement_type_description
Achievements.achievement_type_code -> Ref_Achievement_Type.achievement_type_code
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN ( SELECT T1.teacher_id FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id )
SELECT count(*) FROM Teachers WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT T1.achievement_type_code , T2.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Students AS T2 ON T1.teacher_id = T2.student_id JOIN Classes AS T3 ON T3.teacher_id = T1.teacher_id WHERE T3.class_details = T2.class_details
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*) , teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN TRANSCRIPTS AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type ORDER BY count(*) ASC LIMIT 1;
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_LOANS)
SELECT min(date_of_loan) FROM Student_Loans AS T1;
SELECT min(date_of_loan) FROM Student_Loans
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1;
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.student_details = (SELECT max(amount_of_loan) FROM Student_Loans)
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_transcript ASC LIMIT 1;
SELECT T2.teacher_details FROM Transcripts AS T1 JOIN Teachers AS T2 ON T1.student_id = T2.teacher_id ORDER BY T1.date_of_transcript ASC LIMIT 1;
SELECT sum(amount_of_loan) , student_id FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , sum(T2.amount_of_loan) FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING sum(T2.amount_of_loan) > 0
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.detention_type_code = \"Detention\"
SELECT T1.address_type_code , T2.address_details FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_type_code , T2.address_type_description FROM Ref_Address_Types AS T2 JOIN Students_Addresses AS T1 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan != \"null\"
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id WHERE T2.event_date != "null" EXCEPT SELECT T3.bio_data FROM Students AS T3 JOIN Student_Loans AS T4 ON T3.student_id = T4.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN ( SELECT T1.student_id FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2 )
SELECT min(datetime_detention_start) FROM Detention AS T1;
SELECT datetime_detention_start FROM Detention AS T1;
SELECT Name FROM AUTHOR
SELECT Name FROM Author
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title , isbn , saleprice FROM book
SELECT count(*) FROM book
SELECT count(*) FROM books ORDER BY title ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM author AS t1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM client
SELECT count(*) FROM client AS T1;
SELECT name , address FROM client ORDER BY name ASC
SELECT name , address FROM client ORDER BY name ASC
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT T1.title , T2.name FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn
SELECT idorder , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT idclient , name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idorder
Count(*) AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
Count(*) AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.idauthor HAVING count(*) > 0
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT T1.isbn , count(*) FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn HAVING count(*) > 0
SELECT T1.isbn , sum(T2.amount) FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn HAVING sum(T2.amount) > 0.00
SELECT sum(T1.amount) , T2.isbn FROM Books_order AS T1 JOIN Book AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn HAVING sum(T1.amount) > 0
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1;
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.amount = (SELECT max(amount) FROM books_order)
SELECT T1.title , T1.purchaseprice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.idorder != 0 ORDER BY T2.amount DESC LIMIT 30;
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn WHERE T2.dateorder != \"null\"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient;
SELECT T1.name , count(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
Count(*) AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idclient HAVING count(*) > 0
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient HAVING sum(T2.amount) > 0
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) ASC
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT T1.name FROM client AS T1 JOIN books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.idclient ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn UNION SELECT T1.title FROM book AS T1 JOIN orders AS T2 ON T1.isbn = T2.isbn WHERE T2.idorder = null;
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM book AS T1
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK AS T1
SELECT max(SalePrice - PurchasePrice) FROM BOOK AS T1
SELECT max(SalePrice - PurchasePrice) FROM BOOK AS T1;
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT avg(T1.SalePrice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell'
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato'
SELECT T1.SalePrice FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'George Orwell' ORDER BY T1.saleprice ASC LIMIT 1;
SELECT t2.title FROM author_book AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn WHERE t1.author = 'George Orwell' ORDER BY t2.saleprice ASC LIMIT 1
SELECT title FROM book WHERE purchaseprice < (SELECT avg(saleprice) FROM book) AND author = 'Plato'
SELECT T1.title FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = 'Plato' AND T1.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T1.Name FROM Author AS T1 JOIN Author_book AS T2 ON T1.idAuthor = T2.author JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.Title = "Pride and Prejudice"
SELECT t1.name FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.author JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t3.title = 'Pride and Prejudice'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN Author AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT T1.Title FROM Book AS T1 JOIN Author_Book AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.idAuthor WHERE T3.Name LIKE '%Plato%'
SELECT count(*) FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor WHERE t1.name = \"Pride and Prejudice\"
SELECT count(*) FROM author AS T1 JOIN books_order AS T2 ON T1.idauthor = T2.idauthor WHERE T1.name = 'Pride and prejudice'
SELECT idorder FROM books_order WHERE title = \"Pride and Prejudice\" INTERSECT SELECT idorder FROM books_order WHERE title = \"The Little Prince\"
SELECT idorder FROM books_order WHERE title = 'Pride and Prejudice' INTERSECT SELECT idorder FROM books_order WHERE title = 'The Little Prince'
SELECT T2.isbn FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder WHERE T1.idclient = 'Peter Doe' AND T2.amount > (SELECT amount FROM books_order AS T3 JOIN author_book AS T4 ON T3.isbn = T4.isbn WHERE T4.author = 'James Smith') ORDER BY T2.amount ASC;
SELECT T1.isbn FROM book AS T1 JOIN authors_book AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.name = 'Peter Doe' INTERSECT SELECT T1.isbn FROM book AS T1 JOIN authors_book AS T2 ON T1.isbn = T2.isbn JOIN orders AS T3 ON T2.idorder = T3.idorder WHERE T3.name = 'James Smith' ORDER BY T1.isbn ASC
SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T4.isbn = T2.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN author_book AS T3 ON T2.isbn = T3.isbn JOIN book AS T4 ON T4.isbn = T2.isbn WHERE T1.idclient = 'James Smith'
SELECT T1.title FROM book AS T1 JOIN orders AS T2 ON T1.isbn = T2.isbn WHERE T2.idclient = 'Peter Doe' EXCEPT SELECT T1.title FROM book AS T1 JOIN orders AS T2 ON T1.isbn = T2.isbn WHERE T2.idclient = 'James Smith'
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder LIKE \"%Pride and Prejudice%\"
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN book AS T3 ON T2.idorder = T3.idorder WHERE T3.title = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
book WHERE title <> "Poet"
SELECT avg(Rating) FROM review AS T1;
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT Rating FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Chapters DESC LIMIT 1;
SELECT Rank FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Pages ASC LIMIT 1;
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id ORDER BY T1.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.book_id = T2.book_id WHERE T2.Type = \"Novel\"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title , T2.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID GROUP BY T1.Book_ID ORDER BY COUNT(*) DESC LIMIT 100000000000000
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book AS T1;
SELECT TYPE , TITLE FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer ORDER BY Name ASC LIMIT 1;
SELECT count(*) FROM customer ORDER BY Name ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Name FROM customer ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality IN (\"England\", \"Australia\")
SELECT Name FROM customer WHERE Nationality IN (\"England\", \"Australia\")
SELECT avg(card_credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1;
SELECT avg(Card_Credit) FROM customer WHERE LEVEL_OF_Membership > 1.0;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Card_Credit FROM customer ORDER BY LEVEL_OF_MEMBERSHIP DESC LIMIT 1;
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity > 50 INTERSECT SELECT T1.Nationality FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Dish_Name = 'Credit' AND T2.Quantity < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , T3.Dish_Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN branch AS T3 ON T1.Branch_ID = T3.Branch_ID ORDER BY T1.Quantity DESC
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T2.Name ORDER BY sum(T1.Quantity) ASC
SELECT T1.Name , sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(T2.Quantity) DESC
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING sum(T1.quantity) > 1;
SELECT T2.Name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.Name HAVING sum(T1.quantity) > 1
SELECT DISTINCT manager FROM branch AS T1;
SELECT DISTINCT manager FROM branch AS T1;
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT count(*) FROM member AS T1;
SELECT Name FROM member ORDER BY Age
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Name FROM member WHERE Age IN (19 , 20)
SELECT Name FROM member ORDER BY Age DESC LIMIT 1;
Nationality , count(*) member , count(*) FROM member GROUP BY Nationality HAVING count(*) > 0
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T3.Name , T2.club_name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id JOIN member AS T3 ON T2.member_id = T3.member_id
SELECT T2.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Overall_Ranking > 100;
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Year_Join < 2018 {}
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Club_ID = (SELECT Club_ID FROM club WHERE Club_Name = \"Houston\")
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
both_member = (SELECT Nationality FROM member WHERE Age > 22 EXCEPT SELECT Nationality FROM member WHERE Age < 19)
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID {}
club_name LIKE '%state%'
SELECT collection_subset_name FROM collection_subsets
SELECT collection_subset_name FROM collection_subsets
SELECT Collecrtion_subset_details FROM Collection_subsets WHERE Collection_subset_name = "Top collection"
SELECT T1.collection_subset_details FROM collection_subsets AS T1 JOIN document_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.document_subset_name = "Top collection"
SELECT document_subset_name FROM document_subsets
SELECT document_subset_name FROM document_subsets
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects
SELECT parent_document_object_id FROM Document_objects WHERE owner = \"Marlin\"
SELECT document_object_id FROM document_objects WHERE OWNER = "Marlin"
SELECT OWNER FROM Document_Objects WHERE DESCRIPTION = 'Braeden Collection'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Braeden Collection"
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Subset_ID = T2.Parent_Document_Subset_ID WHERE T2.document_subset_name = 'Marlin' UNION SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_subsets AS T2 ON T1.Parent_Document_Subset_ID = T2.Parent_Document_Subset_ID WHERE T2.document_subset_name != 'Marlin'
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collection_Subset_Members AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.owner = 'Marlin' AND T2.parent_document_object_id IN ( SELECT T4.parent_document_object_id FROM Document_Objects AS T4 JOIN Document_Subset_Members AS T5 ON T4.document_object_id = T5.document_object_id JOIN Collection_Subset_Members AS T6 ON T5.collection_subset_id = T6.collection_subset_id WHERE T6.owner = 'Marlin')
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != 0
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID != 0
SELECT count(*) FROM document_objects WHERE OWNER = \"Marlin\";
SELECT count(*) FROM document_objects WHERE owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_subsets)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_subsets)
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id HAVING count(*) > 0
Count(*) , parent_document_object_id FROM Document_objects GROUP BY parent_document_object_id;
SELECT collection_name FROM collections
SELECT Collection_Name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT collection_description FROM collections WHERE collection_name = "Best"
SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = \"Nice\" INTERSECT SELECT T2.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = \"Nice\"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.parent_document_object_id IN (SELECT T4.collection_id FROM collections AS T4 JOIN collection_subsets AS T5 ON T4.collection_id = T5.collection_id WHERE T5.collection_name = "Nice")
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collection_subsets)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM document_subset_members GROUP BY document_object_id HAVING count(*) > 1
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\"
SELECT count(*) FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = \"Best\" AND t2.collection_subset_id = 1
SELECT document_object_id FROM document_subset_members AS t1 JOIN document_objects AS t2 ON t1.document_subset_id = t2.document_subset_id WHERE t2.owner = \"Ransom\"
SELECT T1.document_object_id FROM Document_objects AS T1 JOIN Document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T1.owner = 'Ransom'
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.collection_subset_id , T2.collection_subset_name , count(*) FROM Collection_Subsets AS T1 JOIN COLLECTION_SUBSET_MEMBERS AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , document_object_id FROM Document_objects GROUP BY document_object_id;
SELECT document_object_id , count(*) FROM document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM document_objects GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.document_object_id , count(*) FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.document_object_id , count(*) FROM document_subset_members AS T1 JOIN document_objects AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_object_id HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collection_Subset_Members AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Owner = 'Braeden' AND T1.Document_Object_ID IN (SELECT T4.Document_Object_ID FROM Document_Objects AS T4 JOIN Document_Subset_Members AS T5 ON T4.document_object_id = T5.document_object_id JOIN Collection_Subset_Members AS T6 ON T5.collection_subset_id = T6.collection_subset_id WHERE T6.collection_id = 'Document Objects')
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.owner = 'Braeden' AND T1.document_object_id IN ( SELECT document_object_id FROM Document_Subset_Members WHERE owner = 'Braeden' )
SELECT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = 'Braeden' GROUP BY T1.document_subset_name HAVING count(*) >= 1
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T3.owner = 'Braeden'
SELECT document_subset_id , document_subset_name , count(*) FROM document_subsets GROUP BY document_subset_id;
SELECT document_subset_id , document_subset_name , count(*) FROM document_subsets GROUP BY document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_name = "Best for 2000"
SELECT T1.document_subset_name , T1.document_subset_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT T1.document_subset_name , T1.document_subset_id , T2.document_object_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_object_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_object_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.owner = 'Ransom'
count(DISTINCT collection_id) , document_object_id
Count(*) AS T1 JOIN Document_objects ON T1.document_object_id = T1.document_object_id GROUP BY T1.document_object_id;
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN document_subsets AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT document_object_id FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM collections AS t1 JOIN document_objects AS t2 ON t1.collection_id = t2.document_object_id WHERE t1.collection_name = "Best"
most_document_collection = (SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN document_subsets AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subset_id FROM document_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = "Best" AND T1.document_subset_details = "Best" AND T1.document_subset_name = "Best" AND T2.document_subset_name = "Best"
{'Best': {'document_object_id': {'B1': 1, B2: 1}, 'collection_subset_id': {'C1': 1, C2: 1}}
SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"Best\" EXCEPT SELECT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = \"2000\"
SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best" EXCEPT SELECT DISTINCT T1.document_object_id FROM document_objects AS T1 JOIN collection_subsets AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_subset_name = "Best for 2000"
SELECT document_object_id FROM document_subsets WHERE document_subset_details = \"Best for 2000\" UNION SELECT t1.document_object_id FROM collections AS t1 JOIN document_subsets AS t2 ON t1.collection_subset_id = t2.document_subset_id WHERE t1.collection_name = \"Best\"
{'Best for 2000': {'document_subset_id': '7945', 'collection_subset_id': '386'}, {'Best': {'document_subset_id': '7945', 'collection_subset_id': '386'}}
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subsets AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN document_subset_members AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_object_id IN (SELECT T4.document_object_id FROM collections AS T4 JOIN document_objects AS T5 ON T4.collection_id = T5.document_object_id WHERE T5.description = "Best")
SELECT count(*) FROM collections WHERE collection_name = \"Best\"
SELECT count(DISTINCT collection_id) FROM collection_subset_membership AS t1 JOIN collections AS t2 ON t1.collection_subset_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT t2.collection_subset_name FROM collections AS t1 JOIN collection_subsets AS t2 ON t1.collection_id = t2.collection_subset_id WHERE t1.collection_name = "Best in"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T2.collection_name = "Best"
SELECT count(*) FROM songs WHERE name LIKE "%Love%";
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score AS T1
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = "Freeway"
SELECT id , language , original_artist FROM songs WHERE name <> 'Love'
SELECT name , original_artist FROM songs WHERE english_translation LIKE '%All the streets of love%'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = "The Balkan Girls" AND T2.language = "english"
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM performance_score WHERE stage_presence BETWEEN 0 AND 9 OR stage_presence > 8;
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(T1.rhythm_tempo) , T2.language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language;
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3english_translation = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'Croatian' AND T2.voice_sound_quality = 'good' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'English' AND T2.voice_sound_quality = 'good'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T2.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT count(*) FROM city AS t1;
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM city WHERE city_name = 'Baltimore'
SELECT city_name FROM city WHERE state LIKE 'PA'
SELECT city_name FROM city WHERE state LIKE "PA%"
SELECT count(*) FROM city WHERE country LIKE '%Canada%'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country LIKE "%USA%" ORDER BY latitude
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT count(*) , country FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT count(DISTINCT state) FROM city GROUP BY state HAVING count(*) >= 2
most_city_state = (SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1)
most_cities_state = (SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1)
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT fname , lname FROM student WHERE city_code IN (SELECT city_code FROM city WHERE state = "MD")
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = "MD"
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT count(*) FROM student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'China')
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = 'Baltimore' )
SELECT fname , major FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE city_name = "Baltimore")
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , country FROM student GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code;
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1 STATE
SELECT country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , country FROM student GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT StuID FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM STUDENT WHERE city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA'))
SELECT StuID FROM student WHERE sex = 'F' AND city_code IN (SELECT city_code FROM city WHERE state = 'PA')
SELECT StuID FROM Student WHERE sex = 'F' AND city_code IN ( SELECT city_code FROM city WHERE state = 'PA' )
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM student WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country != 'USA')
BAL TO CHI = 1049.03 miles
BAL -> City.city_code CHI -> city_code Distance(BAL , CHI ) = 12345.0
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN direct_distance AS T2 ON T1.city1_code = T2.city1_code AND T1.city2_code = T2.city2_code
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance AS T1 JOIN direct_distance AS T2 ON T1.city1_code = T2.city1_code AND T1.city2_code = T2.city2_code
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY sum(T2.distance) DESC LIMIT 2;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code ORDER BY max(T2.distance) DESC LIMIT 1;
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance) UNION SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance < 1000 INTERSECT SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL' UNION SELECT sum(t1.distance) FROM direct_distance AS t1 JOIN city AS t2 ON t1.city2_code = t2.city_code WHERE t2.city_name != 'BAL' {}
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' UNION SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name NOT IN (SELECT city_name FROM city)
SELECT avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.city1_code = 'Chicago' ORDER BY T2.distance LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city2_code WHERE T2.distance = (SELECT distance FROM direct_distance WHERE city1_code = city_code AND city2_code = city_code) ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = city_code AND city2_code = city_code AND city1_code = city_code)
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code HAVING sum(T2.distance) > 0.5
sum_dist_from_city = (SELECT T1.city_code , sum(T2.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code GROUP BY T1.city2_code)
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) > 0.5
SELECT T1.city_name , avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name HAVING avg(T2.distance) != 0 {}
Linda Smith -> 48 mi Tracy Kim -> 50 mi
SELECT T4.distance FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code JOIN student AS T4 ON T3.city_code = T4.city_code WHERE T1.fname = \"Linda\" AND T1.lname = \"Smith\" AND T4.fname = \"Tracy\" AND T4.lname = \"Kim\"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = T3.city2_code AND T2.distance = (SELECT distance FROM direct_distance WHERE city1_code = T3.city1_code AND city2_code = T3.city2_code AND Tfname = 'Linda' AND Lname = 'Smith')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = T3.city2_code AND T3.city_name = "Linda Smith" ORDER BY T2.distance DESC LIMIT 1;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.lname = 'Linda'
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code WHERE T2.fname = 'LINDA'
SELECT * FROM sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30.
SELECT name , age FROM sailors WHERE age < 30;
SELECT name , age FROM sailors WHERE age < 30 ORDER BY age ASC LIMIT 1000;
SELECT T2.name FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.id = 1;
SELECT DISTINCT T2.bid FROM Reserves AS T1 JOINboats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.sid = 1;
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T2.day = 102
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T3.name = 102;
SELECT DISTINCT bid FROM reserves
SELECT bid FROM reserves GROUP BY bid HAVING count(*) > 1
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves ORDER BY age ASC LIMIT 1)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT DISTINCT name FROM sailors WHERE age > (SELECT min(age) FROM sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1;
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROM boats WHERE color = 'red' UNION SELECT bid FROM boats WHERE color = 'blue' )
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SID = (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue')
SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN ( SELECT bid FROM boats WHERE color = \"red\" INTERSECT SELECT bid FROM boats WHERE color = \"blue\")
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T1.bid = T3.bid WHERE T3.color = 'blue'
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN ( SELECT sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid )
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid)
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid = 103))
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 103;
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT name FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE name = 'Luis' ORDER BY rating DESC LIMIT 1)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2 AND T2.bid IN (SELECT bid FROM boats)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3 INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.day != \"null\"
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1;
SELECT count(*) FROM sailors AS T1;
SELECT count(*) FROM sailors AS T1;
SELECT avg(age) FROM sailors WHERE rating = 7.0;
SELECT avg(age) FROM sailors WHERE rating = 7.0;
SELECT count(*) FROM sailors WHERE name LIKE 'D%'
SELECT count(*) FROM sailors WHERE name LIKE 'D%' OR name LIKE 'd%'
SELECT avg(rating) , max(age) FROM sailors AS T1;
SELECT avg(rating) , max(age) FROM sailors AS T1
Count(*) AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.bid;
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid HAVING count(*) > 1000000
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid HAVING count(*) > 1;
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1 {}
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid IN (SELECT sid FROM Reserves GROUP BY sid HAVING count(*) > 1) GROUP BY T2.name
SELECT count(*) , T2.name FROM boats AS T2 JOIN reserves AS T1 ON T1.bid = T2.bid JOIN sailors AS T3 ON T3.sid = T1.sid WHERE T3.sid > 1 GROUP BY T2.name HAVING count(*) > 0
SELECT count(*) , T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid > 1 GROUP BY T2.name HAVING count(*) > 0
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid IN (SELECT bid FROM boats WHERE color = 'red') GROUP BY T1.rating HAVING count(*) >= 1;
SELECT T1.rating , avg(T2.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = \"red\" GROUP BY T1.rating HAVING COUNT(*) >= 1
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT name , rating , age FROM sailors ORDER BY rating , age
SELECT count(*) FROM boats AS T1;
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
between_age_20_to_30 = (SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30)
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T1.age BETWEEN 20 AND 30;
SELECT T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = 'red' AND T2.rating > (SELECT rating FROM sailors WHERE rating > (SELECT rating FROM sailors WHERE rating > (SELECT rating FROM boats WHERE color = 'red') ORDER BY rating DESC LIMIT 1))
SELECT T2.name FROM Sailors AS T2 JOIN Reserves AS T1 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T1.bid WHERE T3.color = 'red' AND T2.rating > (SELECT rating FROM Sailors WHERE rating < (SELECT rating FROM Sailors WHERE rating > (SELECT rating FROM Boats WHERE color = 'red') ORDER BY rating DESC LIMIT 1))
SELECT max(rating) FROM sailors AS T1;
SELECT max(rating) FROM sailors AS T1;
SELECT T2.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.name = \"Melon\"
SELECT T2.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.name = 'Melon'
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name , age FROM sailors ORDER BY rating DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT MODEL FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT model FROM headphone ORDER BY model ASC
Distinct(headphone_model) ORDER BY headphone_model ASC
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) >= 3;
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) < 2
SELECT count(*) , CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS;
SELECT count(DISTINCT Earpads) FROM headphone AS T1 {}
SELECT count(DISTINCT Earpads) FROM headphone AS T1 {}
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Earpads FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Earpads ORDER BY count(*) DESC LIMIT 2;
SELECT MODEL , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1;
SELECT MODEL , CLASS , CONSTRUCTION FROM headphone ORDER BY Price ASC LIMIT 1
SELECT avg(price) , construction FROM headphone GROUP BY construction;
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction;
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" EXCEPT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT Earpads FROM headphone WHERE Construction <> 'Plastic'
SELECT DISTINCT earpads FROM headphone WHERE construction <> 'Plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
sorted_store_name_by_date_opened = (SELECT name FROM store ORDER BY date_opened)
sorted(store)
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT name , parking FROM store WHERE neighborhood = 'Tarzana'
SELECT count(DISTINCT neighborhood) FROM store AS T1
SELECT count(DISTINCT neighborhood) FROM store AS T1;
store.count(*) AS count , neighborhood AS neighborhood FROM store GROUP BY neighborhood;
count(*) AS T1 JOIN store ON T1.store_id = T2.store_id GROUP BY T1.neighborhood;
most_headphones_count = count(*) FROM stock GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T2.headphone_id IN (SELECT headphone_id FROM headphone GROUP BY headphone_id ORDER BY count(*) DESC LIMIT 1) GROUP BY T1.store_id HAVING sum(T2.quantity) > 0
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1 AND count(*) <= 1)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) > 1)
SELECT MODEL FROM headphone EXCEPT SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID
SELECT Model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T2.Model ORDER BY sum(T1.quantity) DESC LIMIT 1;
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = "Woodman"
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = \"Woodman\"
SELECT neighborhood FROM store WHERE store_id NOT IN ( SELECT store_id FROM stock GROUP BY store_id HAVING count(DISTINCT headphone_id) > 1 )
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock GROUP BY store_id HAVING count(*) >= 1)
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM author AS T1;
SELECT count(*) FROM paper
"SELECT count(*) FROM paper AS t1"
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM affiliation AS T1;
SELECT count(*) FROM paper WHERE YEAR = "2000" AND venue = "NAACL"
SELECT count(*) FROM paper WHERE YEAR = 2000 AND venue = 'NAACL'
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.name = 'Columbia University' AND t1.year = 2009
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.year = t2.year WHERE t2.name = \"Columbia University\" AND t1.year = 2009
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
sorted_paper = sorted(Paper , 1)venues , 2004.year ORDER BY 1 ASC
Distinct venues : {paper_id} ORDER BY YEAR ASC
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id JOIN affiliation AS T3 ON T1 AFFILIATION_ID = T3 AFFILIATION_ID WHERE T3.name = 'Harvard University'
SELECT T2.title , T1.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = 'Harvard University'
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.name = \"McKeown\"
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = "McKeown"
SELECT T2.title FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id JOIN affiliation AS T3 ON T1.author_id = T3.author_id WHERE T3.name = \"Stanford University\" AND T4.name = \"Columbia University\"
SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = \"Stanford\" INTERSECT SELECT T2.title , T2.paper_id FROM affiliation AS T1 JOIN paper AS T2 ON T1.affiliation_id = T2.paper_id WHERE T1.name = \"Columbia University\"
SELECT T2.title FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN AUTHOR AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T4.name = 'Rambow'
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = "McKeown" AND T2.title = "Rambow"
SELECT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'McKeown' EXCEPT SELECT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = 'Rambow'
SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = 'McKeown' EXCEPT SELECT T2.title , T2.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = 'Rambow'
SELECT T3.title , T3.paper_id FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T1.author_id = T3.author_id WHERE T3.name = 'Mckeown' AND T3.name = 'Kathleen' OR T3.name = 'Rambow' AND T3.name = 'Owen'
SELECT T3.title , T2.paper_id FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "McKeown" AND T2.author_id IN ( SELECT author_id FROM author_list WHERE author_id IN ( SELECT author_id FROM author_list WHERE name = \"Rambow\" ) )
SELECT T1.name , count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
ORDER BY count(*) ASC FROM author_list GROUP BY author_id HAVING count(*) > 0
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ORDER BY count(*) ASC FROM paper GROUP BY name
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 50
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT T2.name FROM author_list AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1;
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = \"A00-1002\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.title = 'A00-1002'
SELECT count(*) FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id WHERE t1.title = \"D12-1027\"
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id WHERE T1.cited_paper_id = 12-1027;
SELECT t1.paper_id , count(*) FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.paper_id , count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title , COUNT(*) FROM citation AS T1 JOIN paper AS T2 ON T1.paper_id = T2.paper_id GROUP BY T2.title ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T1.title , count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "McKeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "McKeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = "Mckeown , Kathleen"
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.name = 'McKeown' AND T2.email = 'Kathleen'
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , count(*) FROM author AS t1 JOIN citation AS t2 ON t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.venue , T2.year FROM author_list AS T1 JOIN paper AS T2 ON T1.author_id = T2.paper_id WHERE T1.name = \"McKeown\" AND T1.email = \"Kathleen\"
SELECT T3.venue , T3.year FROM Author AS T1 JOIN Paper AS T2 ON T1.author_id = T2.paper_id JOIN AUTHOR_LIST AS T3 ON T1.author_id = T3.author_id WHERE T1.name = "McKeown" AND T1.email = "Kathleen"
SELECT T1.venue , T1.year FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University"
SELECT T1.venue , T1.year FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id = T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id WHERE t2.year = 2009 GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3;
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.venue = t2.venue WHERE t2.name = \"Columbia University\" AND t1.year <= 2009.0
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.author_id = t2.affiliation_id WHERE t2.name = 'Columbia University' AND t1.year <= 2009
SELECT count(*) FROM paper AS T1 JOIN affiliation AS T2 ON T1.venue = T2.venue WHERE T2.name = "Stanford University" AND T1.year BETWEEN 2000 AND 2009
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t1.affiliation_id = t2.affiliation_id WHERE t2.name = \"Stanford University\" AND t1.year BETWEEN 2000 AND 2009
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT t2.title FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "McKeown" AND T1.author_id = T2.author_id WHERE T2.name = "Kathleen"
SELECT count(*) FROM author_list AS t1 JOIN author AS t2 ON t1.author_id = t2.author_id WHERE t2.name = "McKeown" AND t1.paper_id IN ( SELECT paper_id FROM citation AS t3 JOIN author AS t4 ON t3.cited_paper_id = t4.paper_id WHERE t4.name = "Kathleen")
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Kathleen Mckeown' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T2.name = 'Mckeown , Kathleen' GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
paper_id IN (SELECT paper_id FROM paper WHERE title LIKE '%translation%')
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN citation AS t3 ON t2.paper_id = t3.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T2.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , YEAR FROM paper GROUP BY YEAR;
count(*) AS venue_year FROM paper GROUP BY venue , YEAR
SELECT count(*) , affiliation_id FROM author_list GROUP BY affiliation_id;
Count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id
SELECT t2.title FROM citation AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.paper_id HAVING count(*) > 50
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM author_list AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id HAVING COUNT(*) > 50)
SELECT count(*) FROM author WHERE author_id NOT IN ( SELECT T1.author_id FROM author AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id WHERE T2.cited_paper_id > 50 )
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.paper_id IN (SELECT T3.paper_id FROM Paper AS T3 JOIN Citation AS T4 ON T3.paper_id = T4.paper_id WHERE T4.year = 2009 AND T4.cited_paper_id IN (SELECT T5.paper_id FROM Paper AS T5 JOIN Citation AS T6 ON T5.paper_id = T6.paper_id WHERE T6.year = 2009 AND T6.cited_paper_id IN (SELECT T7.paper_id FROM Paper AS T7 JOIN Citation AS T8 ON T7.paper_id = T8.paper_id WHERE T8.year = 2009 AND T8.cited_paper_id IN (SELECT T9.paper_id FROM Paper AS T9 JOIN Citation AS T10 ON T9.paper_id = T10.paper_id WHERE T10.year = 2009 AND T10.cited_paper_id IN (SELECT T11.paper_id FROM Paper AS T11 JOIN Citation AS T12 ON T11.paper_id = T12.paper_id WHERE T12.year = 2009 AND T12.cited_paper_id IN (SELECT T13.paper_id FROM Paper AS T13 JOIN Citation AS T14 ON T13.paper_id = T14.paper_id WHERE T14.year = 2009 AND T14.cited_paper_id IN (SELECT T15.paper_id FROM Paper AS T15 JOIN Citation AS T16 ON T15.paper_id = T16.paper_id WHERE T16.year = 2009 AND T16.cited_paper_id IN (SELECT T17.paper_id FROM Paper AS T17 JOIN Citation AS T18 ON T17.paper_id = T18.paper_id WHERE T18.year = 2009 AND T18.cited_paper_id IN (SELECT T19.paper_id FROM Paper AS T19 JOIN Citation AS T20 ON T19.paper_id = T20.paper_id WHERE T20.year = 2009 AND T20.cited_paper_id IN (SELECT T21.paper_id FROM Paper AS T21 JOIN Citation AS T22 ON T21.paper_id = T22.paper_id WHERE T22.year = 2009 AND T22.cited_paper_id IN (SELECT T23.paper_id FROM Paper AS T23 JOIN Citation AS T24 ON T23.paper_id = T24.paper_id WHERE T24.year = 2009 AND T24.cited_paper_id IN (SELECT T25.paper_id FROM Paper AS T25 JOIN Citation AS T26 ON T25.paper_id = T26.paper_id WHERE T26.year = 2009 AND T26.cited_paper_id IN (SELECT T27.paper_id FROM Paper AS T27 JOIN Citation AS T28 ON T27.paper_id = T28.paper_id WHERE T28.year = 2009 AND T28.cited_paper_id IN (SELECT T29.paper_id FROM Paper AS T30 JOIN Citation AS T31 ON T30.paper_id = T31.paper_id WHERE T31.paper_id IN (SELECT T32.paper_id FROM Paper AS T32 JOIN Citation AS T33 ON T32.paper_id = T33.paper_id WHERE T33.year = 2009 AND T33.cited_paper_id IN (SELECT T34.paper_id FROM Paper AS T34 JOIN Citation AS T35 ON T34.paper_id
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = \"NAACL\" INTERSECT SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_LIST AS T2 ON T1.author_id = T2.author_id WHERE T2.year = 2009 AND T2.venue = \"ACL\"
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE venue = "ACL")
SELECT name FROM AUTHOR WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation WHERE venue = \"ACL\"))
"SELECT count(*) FROM conference"
SELECT count(*) FROM conference AS T1;
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
count(*) , conference_name FROM conference GROUP BY conference_name HAVING count(*) > 1
count(*) as count(*) , conference_conference_name as conference_conference_name FROM conference GROUP BY conference_conference_name;
SELECT YEAR , COUNT(*) FROM conference GROUP BY YEAR
SELECT count(*) FROM conference WHERE YEAR != 0;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1;
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
count(*) BETWEEN 1850 AND 1900 <= founded <= 1900
count(*) BETWEEN 1850 AND 1900inclusive
most_recently_founded = (SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1)
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1;
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_name HAVING count(*) >= 1000
SELECT T1.institution_name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id WHERE T1.founded > 1800 GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
max(Age) , min(Age) FROM staff AS T1
SELECT T3.Conference_Name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T1.Nationality = 'Canada'
SELECT T3.Conference_Name FROM conference AS T3 JOIN conference_participation AS T1 ON T3.Conference_ID = T1.Conference_ID JOIN staff AS T2 ON T1.staff_ID = T2.staff_ID WHERE T2.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'Naccl'
SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'ACL' INTERSECT SELECT T1.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id WHERE T2.role = 'participant' AND T1.Conference_Name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year IN (2003 , 2004)
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.year BETWEEN 2003 AND 2004;
SELECT T1.conference_name , T1.year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name , T1.year
SELECT T1.Conference_Name , T1.Year , COUNT(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_Name ORDER BY count(*) DESC LIMIT 2;
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name , location FROM institution WHERE institution_id NOT IN (SELECT T1.institution_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id WHERE T2.year = 2004)
SELECT institution_name , location FROM institution WHERE institution_id NOT IN ( SELECT T1.institution_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id WHERE T2.year = 2004 )
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1;
SELECT pilot_name FROM pilot_skills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT pilot_name FROM pilot_skills WHERE age < (SELECT avg(age) FROM pilot_skills) ORDER BY age ASC
SELECT * FROM pilot_skills WHERE age < 30;
SELECT * FROM pilot_skills WHERE age < 30;
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' AND T1.age < 35
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 34 AND T2.plane_name = 'Piper Cub'
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(DISTINCT location) FROM hangar AS T1
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = 32
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = "Jones" AND T1.age = 32
SELECT count(*) FROM pilotskills WHERE age > 40;
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 34 AND T1.plane_name = 'B-52 Bomber'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 35 AND T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name JOIN pilot AS T3 ON T2.plane_name = T3.plane_name WHERE T3.plane_name = 'Piper Cub' ORDER BY T1.age ASC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilotskills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilotskills AS t2 ON t1.plane_name = t2.plane_name GROUP BY t1.plane_name ORDER BY count(*) DESC LIMIT 1;
SELECT plane_name FROM hangar GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT plane_name FROM hangar AS t1 JOIN pilot_skills AS t2 ON t1.plane_name = t2.plane_name GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T2.plane_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name AS T3 WHERE T3.age != 'null'
SELECT count(DISTINCT plane_name) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Smith'
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40;
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
Between 30 and 40, order by age ascending: SELECT pilot_name FROM pilot_skills WHERE age >= 30 AND age <= 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilot_skills ORDER BY age DESC
sorted_location = (SELECT location FROM Hangar ORDER BY plane_name ASC)
SELECT DISTINCT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name
SELECT DISTINCT T1.plane_type FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name ASC
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name ASC
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilot_skills WHERE age > 40 OR age < 30
SELECT T2.name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 35 AND T2.plane_name = 'Piper Cub' UNION SELECT T2.name , T2.age FROM pilot_skills AS T1 JOIN pilot AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name < 'F-14 Fighter' AND T1.age < 30
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' AND T1.age > 35 UNION SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'F-14 Fighter' AND T1.age < 30
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.plane_name = 'Piper Cub' EXCEPT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'B-52 Bomber'
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Piper Cub' INTERSECT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name
SELECT avg(age) , min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name AS T3
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin' INTERSECT SELECT T1.name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Boston'
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'Piper Cub' OR T2.plane_name = 'F-14 Fighter'
"Piper Cub" OR "F-14 Fighter"
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name ;
SELECT avg(age) , plane_name FROM pilot_skills GROUP BY plane_name;
plane_type: (0 : 1), (1 : 2), (2 : 3), (3 : 4) plane_number: count(*) GROUP BY plane_type;
SELECT count(*) , plane_name FROM pilot_skills GROUP BY plane_name HAVING count(*) > 1
SELECT T1.name , T2.plane_name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.plane_name ASC
SELECT DISTINCT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC
SELECT T1.name , T2.type FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC , T2.type LIMIT 300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.plane_name , T2.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age DESC
SELECT max(age) , pilot_name FROM pilot_skills GROUP BY pilot_name HAVING count(*) = 2
SELECT pilot_name , max(age) FROM pilot_skills GROUP BY pilot_name
SELECT count(*) , avg(age) , T1.city FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.city HAVING count(*) > 0
SELECT T2.location , count(*) , avg(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(age) < 35.0;
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35;
SELECT T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC LIMIT 1;
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age ASC LIMIT 1;
SELECT T1.name , T1.age FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name , T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT T1.name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub') ORDER BY name ASC
SELECT name FROM pilot_skills ORDER BY age DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM pilot_skills WHERE age < (SELECT min(age) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = 'F-14 Fighter')
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT max(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilot_skills WHERE plane_name LIKE '%Bomber%'
Bomber B6742 Bomber C3450 Bomber D9185 Bomber F4545 Bomber G7455 Bomber H9999 Bomber I1234 Bomber J2345 Bomber K3456 Bomber L4557 Bomber M5558 Bomber N6669 Bomber O7777 Bomber P8888 Bomber Q9999 Bomber R1000 Bomber S1111 Bomber T1223 Bomber U1334 Bomber V1455 Bomber W1567 Bomber X1678 Bomber Y1779 Bomber Z1889 Bomber Z9999 Bomber Z1000 Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bomber Bom
SELECT count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilot_skills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T4.plane_name = 'Piper Cub')
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > (SELECT min(age) FROM pilotskills AS T3 JOIN hangar AS T4 ON T3.plane_name = T4.plane_name WHERE T3.pilot_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1;
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1;
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT sum(Population) FROM district WHERE AREA_km IN (SELECT TOP 3 FROM district)
sorted_districts = sorted(district, key=lambda x: x.Population)
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT district_id , name FROM district WHERE population > 4000 OR area > 3000
SELECT Spokesman_ID , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1;
SELECT name , points FROM spokesman WHERE age < 40;
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T3.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T2.Start_year < 2004 GROUP BY T3.Name HAVING COUNT(*) > 1
count(*) , T3.Name AS show_district_name
SELECT T3.Name FROM district AS T3 JOIN spokesman_district AS T1 ON T3.District_ID = T1.District_ID JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Rank_position = 1 INTERSECT SELECT T3.Name FROM district AS T3 JOIN spokesman_district AS T1 ON T3.District_ID = T1.District_ID JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Rank_position = 2 {}
SELECT T2.Name FROM spokesman AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.District_ID HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(T1.population) , avg(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING count(*) > 1
SELECT t1.title FROM sculptures AS t1 JOIN paintings AS t2 ON t1.sculptorid = t2.painterid ORDER BY t2.year DESC LIMIT 1;
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1 ;
SELECT title , LOCATION FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = "gallery 226"
SELECT t1.title FROM sculptures AS t1 JOIN artists AS t2 ON t1.sculptorid = t2.artistid WHERE t2.location = 226
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM sculptures
SELECT t1.title , t2.location FROM sculptures AS t1 JOIN paintings AS t2 ON t1.sculptorid = t2.painterid
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT fname , lname FROM artists WHERE birthyear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION <> 226;
SELECT title , YEAR FROM sculptures WHERE LOCATION <> '226'
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 {}
SELECT DISTINCT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900;
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920;
SELECT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920 GROUP BY T1.artistid HAVING count(*) >= 1;
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1
SELECT fname , lname FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT birthyear FROM artists ORDER BY deathyear ASC LIMIT 1;
SELECT birthyear FROM artists ORDER BY deathyear ASC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY deathyear DESC LIMIT 1;
SELECT fname , birthyear FROM artists ORDER BY birthyear DESC LIMIT 1;
SELECT count(*) FROM paintings WHERE LOCATION = \"240\"
SELECT count(*) FROM paintings WHERE LOCATION = 240;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.deathyear DESC LIMIT 1;
SELECT T1.painterid , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid ORDER BY T1.year DESC LIMIT 1;
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary'
SELECT T1.title , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Mary'
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850;
SELECT T2.location , T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = \"Pablo\"
SELECT T1.location , T1.mediumOn FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = \"Pablo\"
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title = T3.title INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid WHERE T2.title = T3.title AND T3.medium = 'painting' AND T3.mediumOn = 'sculpture'
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid UNION SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid`
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'medium' AND T2.mediumon = 'Lithographic'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" INTERSECT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"lithographic\"
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884 AND T2.medium = 'canvas'
1884 - 1883 = -1 - 1 = -2 - 1884 = 1884 - 1885 = -1 - 1884 = 1884 - 1886 = -1 - 1884 = 1884 - 1887 = -1 - 1884 = 1884 - 1888 = -1 - 1884 = 1884 - 1890 = -1 - 1884 = 1884 - 1891 = -1 - 1884 = 1884 - 1892 = -1 - 1884 = 1884 - 1893 = -1 - 1884 = 1884 - 1894 = -1 - 1884 = 1884 - 1895 = -1 - 1884 = 1884 - 1896 = -1 - 1884 = 1884 - 1897 = -1 - 1884 = 1884 - 1898 = -1 - 1884 = 1884 - 1899 = -1 - 1884 = 1884 - 1900 = -1 - 1884 = 1884 - 1901 = -1 - 1884 = 1884 - 1902 = -1 - 1884 = 1884 - 1903 = -1 - 1884 = 1884 - 1904 = -1 - 1884 = 1884 - 1905 = -1 - 1884 = 1884 - 1906 = -1 - 1884 = 1884 - 1907 = -1 - 1884 = 1884 - 1908 = -1 - 1884 = 1884 - 1909 = -1 - 1884 = 1884 - 1910 = -1 - 1884 = 1884 - 1911 = -1 - 1884 = 1884 - 1912 = -1 - 1884 = 1884 - 1913 = -1 - 1884 = 1884 - 1914 = -1 - 1884 = 1884 - 1915 = -1 - 1884 = 1884 - 1916 = -1 - 1884 = 1884 - 1917 = -1 - 1884 = 1884 - 1918 = -1 - 1884 = 1884 - 1919 = -1 - 1884 = 1884 - 1920 = -1 - 1884 = 1884 - 1921 = -1 - 1884 = 1884 - 1922 = -1 - 1884 = 1884 - 1923 = -1 - 1884 = 1884 - 1924 = -1 - 1884 = 1884 - 1925
SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"medium\" AND T2.location = 241;
SELECT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.location = 241 AND T2.medium = 'oil'
SELECT count(*) , medium FROM paintings GROUP BY medium ORDER BY count(*) DESC
counts = [paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count(*) , sculptures.count(*) , paintings.count
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium HAVING avg(height_mm) != 0
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium;
SELECT count(*) , LOCATION FROM paintings WHERE YEAR <= 1900 GROUP BY LOCATION HAVING count(*) > 0
SELECT count(*) , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION;
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = 'Oil'
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium\" AND LOCATION = 240.
SELECT DISTINCT painterid FROM paintings WHERE medium = \"medium\" AND LOCATION = 240 AND title != \"null\"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = 'canvas')
SELECT DISTINCT paintingid FROM paintings WHERE LOCATION = \"gallery 240\" AND YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = \"gallery 240\")
SELECT DISTINCT paintingid FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings GROUP BY LOCATION HAVING LOCATION = 240)
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1;
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title ASC
Distinct paintings ASC title Painting titles DISTINCT paintingID ORDER BY paintingID ASC
SELECT DISTINCT title FROM paintings ORDER BY width_mm DESC LIMIT 1000000;
SELECT DISTINCT title FROM paintings ORDER BY height_mm DESC LIMIT 1000000000
Between 1900 and 1950, we can create paintings and sculptures with titles like "Baptiste Fragonard - The Birth of Venus" and "Leonardo da Vinci - Mona Lisa". Therefore, the combined list of both paintings and sculptures created between 1900 and 1950 would be: ["Baptiste Fragonard - The Birth of Venus", "Leonardo da Vinci - Mona Lisa"]
Between 1900 and 1950, there are no paintings or sculptures created within this range.
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.artistid = 222;
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1 ID
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1;
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
Before 1885: LOCATION = "London" OR LOCATION = "Paris" After 1930: LOCATION = "New York City" OR LOCATION = "Los Angeles"
SELECT paintingid FROM paintings WHERE height_mm BETWEEN 501 AND 1999 AND height_mm NOT BETWEEN 2000 AND 500
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = \"on panel\" INTERSECT SELECT LOCATION FROM paintings WHERE medium = \"on canvas\"
SELECT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 UNION SELECT LOCATION FROM paintings WHERE YEAR > 1930;
SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1 AND 1930 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR BETWEEN 1886 AND 2000
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = \"oil\" AND LOCATION != \"gallery 241\"
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = 'oil' AND LOCATION = 241
SELECT max(height_mm) , paintingid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1;
SELECT height_mm , painterid FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1;
max_height = max(height_mm) , max_width = max(width_mm) , YEAR = YEAR FROM paintings GROUP BY YEAR HAVING max_height != 0 AND max_width != 0
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterid FROM paintings GROUP BY painterid ORDER BY painterid ASC
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID ASC
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) <= 3
SELECT T1.fname , T1.lname , T1.deathYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) LIMIT 1;
SELECT paintingid , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT max(height_mm) , painterid FROM paintings WHERE LOCATION = \"Gallery 240\" GROUP BY painterid ORDER BY sum(width_mm) DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3;
SELECT T1.lname , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = \"oil\" GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1;
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = 'oil' ORDER BY YEAR ASC
SELECT YEAR , LOCATION , TITLE FROM_paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT year , location , title FROM paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid EXCEPT SELECT T1.fname , T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid`
SELECT fname , lname FROM artists WHERE artistid NOT IN (SELECT sculptorid FROM sculptures) AND artistid NOT IN (SELECT painterid FROM paintings)
SELECT LOCATION FROM paintings WHERE YEAR < 1884 AND medium != 'canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1884 EXCEPT SELECT LOCATION FROM paintings WHERE medium = 'canvas'
SELECT count(*) FROM race
SELECT count(*) FROM race AS T1;
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"Junior Strous\" EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = \"Junior Strous\"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position != 'Junior Strous' AND T2.race_name != 'Pole Position'
sorted_constructors_by_age := (SELECT constructor FROM driver ORDER BY age ASC)
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20;
SELECT DISTINCT entrant FROM driver WHERE age BETWEEN 20 AND 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver AS T1;
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
count(DISTINCT engine) = count(*) FROM driver WHERE age BETWEEN 30 AND 99;
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T1.driver_name , T2.race_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id
SELECT T3.driver_name , count(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T3.driver_name HAVING count(*) >= 1
SELECT count(*) , T1.driver_id FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id HAVING count(*) >= 2
SELECT T1.driver_name , T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_name HAVING count(*) >= 2
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26;
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.age >= 26;
driver(Driver_name) WHERE constructor <> 'Bugatti'
SELECT driver_name FROM driver WHERE constructor <> 'Bugatti'
constructor_count = count(*) FROM driver GROUP BY constructor;
constructor_count = count(*) FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.constructor;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine ORDER BY count(*) DESC LIMIT 1;
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
driver1(Constructor) IN (SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30)
SELECT constructor FROM driver WHERE age < 20 EXCEPT SELECT constructor FROM driver WHERE age > 30 UNION SELECT constructor FROM driver WHERE age > 30 INTERSECT SELECT constructor FROM driver WHERE age < 20
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING count(*) > 1
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = \"James Hinchcliffe\" AND T2.pole_position = \"Carl Skerlong\"
SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.Pole_Position = "Carl Skerlong"
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = \"James Hinchcliffe\")
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT count(*) FROM languages
SELECT count(*) FROM languages AS T1;
SELECT name FROM languages ORDER BY name
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%' OR name LIKE '%is%'
SELECT name FROM languages WHERE name LIKE \"%ish%\"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries AS T1
SELECT avg(justice_score) FROM countries AS T1;
SELECT max(health_score) , min(health_score) FROM countries WHERE name <> 'Norway'
SELECT max(health_score) , min(health_score) FROM countries WHERE id NOT IN (SELECT id FROM countries WHERE name = 'Norway')
SELECT count(DISTINCT language_id) FROM official_languages AS T1
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id
SELECT T1.name , T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T2.language_id
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id HAVING count(*) >= 2;
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = \"English\")
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id WHERE T2.language_id IN (SELECT id FROM languages WHERE name = 'English')
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T2.id ORDER BY avg(T1.overall_score) DESC
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id ORDER BY avg(T3.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT T1.language_id FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id WHERE T2.overall_score > 95 INTERSECT SELECT T2.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id WHERE T2.overall_score < 90
SELECT T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id WHERE T1.overall_score > 95 EXCEPT SELECT T2.name FROM languages AS T2 JOIN official_languages AS T1 ON T1.language_id = T2.id WHERE T1.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM addresses
SELECT T1.country , T2.other_address_details FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.country , T2.other_address_details FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM features WHERE feature_name = "rooftop"
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM properties;
SELECT min(room_count) FROM Properties AS T1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN USERS AS T2 ON T1.age_category_code = T2.age_category_code WHERE T1.age_category_description LIKE '%Mother%'
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN USERS AS T2 ON T1.age_category_code = T2.user_category_code WHERE T2.first_name LIKE '%Mother%' OR T2.last_name LIKE '%Mother%'
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Rooms AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn != 'No' {}
SELECT avg(T1.room_count) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T1.garage_yn != 'No'
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT T1.town_city FROM addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = \"Swimming Pool\"
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1;
SELECT property_id , price_min FROM Properties ORDER BY price_min ASC LIMIT 1;
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT avg(room_count) FROM properties AS T1 JOIN rooms AS T2 ON T1.property_id = T2.property_id
SELECT count(*) FROM (SELECT DISTINCT room_size FROM rooms)
SELECT count(DISTINCT room_size) FROM rooms AS T1
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_string FROM User Searches GROUP BY user_id HAVING count(*) >= 2
SELECT max(search_datetime) FROM User_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.first_name != \"\" AND T2.last_name != \"\" AND T2.is_seller != \"false\" AND T2.is_buyer != \"false\"
SELECT search_datetime FROM User_searches ORDER BY search_datetime DESC LIMIT 1;
SELECT search_datetime , search_string FROM User_searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT T3.owner_user_id FROM Properties AS T3 JOIN User_Property_History AS T4 ON T3.property_id = T4.property_id GROUP BY T3.owner_user_id HAVING count(*) >= 2 )
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id NOT IN (SELECT T3.owner_user_id FROM Properties AS T3 JOIN User_Property_History AS T4 ON T3.property_id = T4.property_id GROUP BY T3.owner_user_id HAVING count(*) >= 2)
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.user_id , T1.user_category_code FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.search_string = \"first\"
SELECT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN User_searches AS T2 ON T1.age_category_code = T2.age_category_code ORDER BY T2.search_datetime ASC LIMIT 1;
SELECT login_name FROM users WHERE user_category_code = 'Senior Citizen' ORDER BY first_name ASC
SELECT login_name FROM users WHERE age_category_code = 'Senior' ORDER BY first_name ASC
SELECT count(*) FROM User_searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT count(*) FROM User_Searches WHERE is_buyer = 1
SELECT date_registered FROM users WHERE login_name = \"rhee\"
SELECT date_registered FROM users WHERE login_name = \"ratione\"
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.is_buyer WHERE T2.age_category_code = \"Senior\"
SELECT T1.building , T1.street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.is_seller WHERE T2.age_category_code = "Senior"
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) FROM (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) , property_id FROM Property_photos GROUP BY property_id;
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) , T1.user_id FROM Users AS T1 JOIN Property_Photos AS T2 ON T1.user_id = T2.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT T1.user_id , count(*) FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN property_photos AS T3 ON T2.property_id = T3.property_id GROUP BY T1.user_id HAVING count(*) > 0
SELECT sum(price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.is_buyer = 'Yes' OR T2.is_seller = 'Yes'
SELECT sum(price_max) FROM properties WHERE OWNER_USER_ID IN (SELECT user_id FROM users WHERE is_buyer = 'Yes' UNION SELECT user_id FROM users WHERE is_student = 'Yes')
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T2.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
Most_common_property_type_description = \"Most common property type: \" + (SELECT property_type_description FROM Ref_Property_Types ORDER BY count(*) DESC LIMIT 1)
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
Count(*) , room_size GROUP BY room_size
SELECT count(*) , room_size FROM Rooms GROUP BY room_size HAVING count(*) >= 1 AND count(*) <= 50
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.first_name = \"Robbie\"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_address_id IN ( SELECT T1.property_address_id FROM Properties AS T2 JOIN Users AS T1 ON T2.owner_user_id = T1.user_id )
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN Properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T2.property_name IN (SELECT property_name FROM Properties GROUP BY property_name HAVING count(*) > 1)
SELECT search_string FROM User_searches WHERE user_id NOT IN ( SELECT owner_user_id FROM Properties )
SELECT search_string FROM User Searches WHERE user_id NOT IN ( SELECT owner_user_id FROM Properties )
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT count(*) FROM bike WHERE weight > 780;
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
max(weight) , min(weight) FROM bike AS T1
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation <> 'Russia'
SELECT DISTINCT T1.id , T2.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist AS T1
SELECT count(*) FROM cyclists WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T2.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > (SELECT purchase_year FROM cyclists_own_bikes WHERE result = '4:21.558')
SELECT T2.product_name , T2.price FROM bikes AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = 'Bradley Wiggins' INTERSECT SELECT T2.product_name , T2.price FROM bikes AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.cyclist_id = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN ( SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id )
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , T1.id FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id GROUP BY T1.cyclist_id ORDER BY T1.cyclist_id ASC
SELECT T1.flavor , max(T2.price) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.flavor ORDER BY max(T2.price) DESC LIMIT 1
SELECT T1.id , T2.flavor FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id WHERE T2.price = (SELECT max(price) FROM goods)
SELECT T1.flavor , T2.price FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = 'Cookie' ORDER BY T1.price ASC LIMIT 1;
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor LIKE '%Apple%'
SELECT id FROM goods WHERE flavor LIKE "Apple"
ids = [id] GOODS WHERE price < 3
SELECT id FROM goods WHERE price < 3.0
SELECT DISTINCT T1.customerid FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.item WHERE T3.flavor = \"Lemon\" AND T3.food = \"Cake\"
SELECT DISTINCT T1.customerid FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.id = T2.item WHERE T3.flavor = "Lemon" AND T3.food = "Cake"
count(*) AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T2.food HAVING count(*) >= 1
SELECT T1.id , count(*) FROM items AS T1 JOIN receipts AS T2 ON T1.item = T2.item GROUP BY T1.food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) >= 15 INTERSECT SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING count(*) <= 14`
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15;
SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) > 10 INTERSECT SELECT T2.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid HAVING count(*) <= 10
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.LastName HAVING COUNT(*) > 10;
SELECT count(DISTINCT item) FROM items WHERE food = 'Cake'
SELECT count(DISTINCT T1.flavor) FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Cake'
SELECT flavor FROM goods WHERE food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT DISTINCT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T2.customerid = 15;
SELECT DISTINCT T2.item FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.id = 15;
SELECT avg(price) , max(price) , min(price) , food FROM goods GROUP BY food
SELECT avg(price) , min(price) , max(price) , food FROM goods GROUP BY food;
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Food = \"Cake\" AND T2.Food = \"Cookie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = \"Cakes\" AND T2.Flavor = \"Cookies\"
SELECT T2.ReceiptNumber FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T1.lastname = "LOGAN" AND T3.flavor = "Croissant"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN goods AS T3 ON T3.id = items.item WHERE T2.lastname = "Logan" AND T3.flavor = "Croissant"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.Item = T2.id ORDER BY T2.Price DESC LIMIT 1;
SELECT Item FROM items GROUP BY Item ORDER BY count(*) ASC LIMIT 1;
SELECT Item FROM items GROUP BY Item ORDER BY count(*) ASC LIMIT 1;
food_type_count = count(*) AS T1 FROM goods GROUP BY T1.food_type;
food_type_count = count(*) GROUP BY food_type;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT avg(price) , food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT flavor FROM goods WHERE price > 10.0
SELECT flavor FROM goods WHERE price > 10.0
SELECT DISTINCT id , price FROM goods WHERE price < ( SELECT avg(price) FROM goods )
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Tart\")
SELECT DISTINCT T2.ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 13
SELECT DISTINCT T2.ReceiptNumber FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.item WHERE T1.price > 13 AND T2.customerid IN (SELECT id FROM customers WHERE lastname = 'Good')
SELECT T2.date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.price > 15;
SELECT T2.Date FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.Price > 15 ORDER BY T2.Date ASC LIMIT 1;
SELECT Id FROM goods WHERE id LIKE "APP%"
ids: [id] WHERE id LIKE "%APP%";
SELECT Id , Price FROM goods WHERE id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "70%\"
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT LastName FROM customers ORDER BY LastName ASC
SELECT id FROM goods WHERE flavor = 'good' ORDER BY id
SELECT DISTINCT id FROM goods WHERE flavor = 'good' ORDER BY id ASC
SELECT T2.Receipt FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.firstname = \"Apple\" OR T2.customerid = 12 AND T2.flavor = \"Pie\"
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.Receipt = T2.id WHERE T2.Flavor = \"Apple\" UNION SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.id = 12
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1;
SELECT Receipt FROM receipts ORDER BY Date LIMIT 1 OR SELECT Receipt FROM items WHERE Price > 10;
SELECT ReceiptNumber FROM receipts WHERE Date = (SELECT min(Date) FROM receipts ORDER BY Date ASC LIMIT 1) UNION SELECT ReceiptNumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 10;
3 <= food = 'Cookie' && 7 <= price = 'Cake'
SELECT item FROM goods WHERE price >= 3 AND price <= 7;
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.Date ASC LIMIT 1;
SELECT avg(price) FROM goods WHERE flavor = \"blackberry\" OR flavor = \"blueberry\"
SELECT avg(price) FROM goods WHERE flavor = \"Blackberry\" OR flavor = \"Blueberry\"
SELECT min(price) FROM goods WHERE flavor = 'Cheese'
SELECT id FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT max(Price) , min(Price) , avg(Price) FROM goods ORDER BY Flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(Price) , max(Price) FROM goods ORDER BY Food ASC
SELECT min(price) , max(price) FROM goods WHERE food = 'Food' ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3;
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3;
SELECT T1.id , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.customerid , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.customerid ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT customerid) , date FROM receipts GROUP BY date HAVING count(DISTINCT customerid) > 1
SELECT count(*) , date FROM receipts GROUP BY date;
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "Tart" AND T3.name = "Apple"
SELECT T2.FirstName , T2.LastName FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.Flavor = "Apple" AND T2.food = "Tart"
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = \"Croissant\")
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE flavor = 'Croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods WHERE flavor = 'Tart')
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) AND count(*) > 2
SELECT id , flavor , food FROM goods ORDER BY price ASC
SELECT id , flavor , food FROM goods ORDER BY price
SELECT T1.id , T2.flavor FROM goods AS T2 JOIN items AS T1 ON T1.food = T2.id ORDER BY T2.flavor ASC
SELECT id , flavor FROM goods WHERE food = "Cake" ORDER BY flavor ASC
SELECT item FROM goods WHERE flavor = \"Chocolate\" GROUP BY item HAVING count(*) <= 10
SELECT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid WHERE T1.flavor = \"Chocolate\" GROUP BY T2.item HAVING count(*) <= 10;
SELECT flavor FROM goods WHERE food = "Cake" EXCEPT SELECT flavor FROM goods WHERE food = "Tart"
SELECT flavor FROM goods WHERE food = 'Cakes' EXCEPT SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T2.food = 'Tart'
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3;
SELECT T2.item FROM items AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T2.customerid ORDER BY count(*) DESC LIMIT 3;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150;
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150.0
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id HAVING avg(T2.price) > 5 INTERSECT SELECT T1.id FROM customers AS T1 JOIN goods AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING avg(T2.price) > 5
SELECT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.item = T2.id GROUP BY T1.date HAVING sum(T2.price) > 100
SELECT T2.date FROM goods AS T1 JOIN receipts AS T2 ON T1.id = T2.item GROUP BY T2.date HAVING sum(T1.price) > 100;
SELECT count(*) FROM driver
SELECT count(*) FROM driver AS T1;
SELECT count(*) , Make FROM driver WHERE points > 150 GROUP BY Make;
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make HAVING count(*) > 1
SELECT avg(age) , make FROM driver GROUP BY make;
SELECT avg(Age) , Make FROM driver GROUP BY Make;
SELECT avg(Laps) FROM driver WHERE age < 20
SELECT avg(Laps) FROM driver WHERE age < 20.0
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT manager , sponsor FROM team ORDER BY car_owner
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT make FROM team GROUP BY make HAVING count(*) > 1
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_# = \"Buddy Arrington\"
SELECT T2.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Car_Nickname = "Buddy Arrington"
max(Points) , min(Points)
max(Points) , min(Points) FROM driver AS T1
SELECT count(*) FROM driver WHERE points < 150
SELECT count(*) FROM driver WHERE points < 150
ascending_order_of_age: SELECT driver FROM driver ORDER BY age ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_drivers_by_age = sorted(driver.values(), key=lambda x: x['Age'])
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T1.Driver , T2.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country
SELECT T1.Driver , T2.Country FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_Id
SELECT max(Points) FROM driver WHERE Country = \"Dublin\"
SELECT max(Points) FROM driver WHERE Country = \"Dublin\";
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE Official_native_language = \"English\")
SELECT avg(age) FROM driver WHERE country IN (SELECT country FROM country WHERE official_native_language = \"English\")
SELECT Country FROM driver WHERE Points > 150;
SELECT Country FROM country WHERE Country_id IN ( SELECT Country FROM driver WHERE Points > 150 )
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1;
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1
count(*) , make FROM driver GROUP BY make HAVING count(*) != 0
make_count = count(*) , make FROM driver GROUP BY make HAVING count(*) > 1
most_drivers = (SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1)
SELECT make FROM driver GROUP BY make ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Make FROM make AS T1 JOIN team_driver AS T2 ON T1.Make = T2.Make GROUP BY T1.Make HAVING count(*) >= 3;
SELECT make FROM driver GROUP BY make HAVING count(*) >= 3;
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Dodge" INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country WHERE T2.Make = "Chevrolet"
find (country) where make = \"Dodge\" INTERSECT find (country) where make = \"Chevrolet\"
SELECT sum(Points) , avg(Points) FROM driver AS T1
total_points = sum(Points) / count(*) avg_points = avg(Points)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT count(*) FROM institution AS T1;
SELECT count(*) FROM institution AS T1;
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Name
Ascending founded ORDER BY founded ASC NAMEinstitution
sorted_by_founded(institution.id)
SELECT city , province FROM institution
SELECT city , province FROM institution
max(enrollment) , min(enrollment) FROM institution AS T1
SELECT max(enrollment) , min(enrollment) FROM institution AS T1;
UnaffiliatedInCityNotVancouver = SELECT affiliation FROM institution WHERE city <> 'Vancouver' EXCEPT SELECT affiliation FROM institution WHERE city = 'Vancouver'
SELECT affiliation FROM institution WHERE city <> 'Vancouver'
SELECT Stadium FROM institution ORDER BY capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1;
max(enrollment) AS maxenrollment FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT name , nickname FROM institution
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN Championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT name FROM institution ORDER BY enrollment LIMIT 1;
SELECT Name FROM institution ORDER BY Enrollment LIMIT 1;
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN Championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.facility = 'Public'
SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2 AFFILIATION = 'Public'
数机构の種類とその数量を表す配列を生成する。affiliationが「独立」の場合、1を返却し、他の全ての種類は0を返却します。
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1;
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1;
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT name FROM institution ORDER BY capacity DESC
sorted_by_capacity(institution)descending
SELECT sum(enrollment) FROM institution WHERE city = \"Vancouver\" OR city = \"Calgary\"
SELECT Enrollment FROM institution WHERE City = "Vancouver" OR City = "Calgary"
Foundations_before_1920 = (SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950)
SELECT province FROM institution WHERE founded < 1920 EXCEPT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT count(DISTINCT province) FROM institution AS T1;
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT DISTINCT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150;
SELECT T1.code , avg(T2.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code;
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse;
SELECT avg(value) , sum(value) FROM boxes AS T1
SELECT avg(value) , sum(value) FROM boxes AS t1;
SELECT avg(capacity) , sum(capacity) FROM warehouses AS T1;
SELECT avg(capacity) , sum(capacity) FROM warehouses AS T1
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents;
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1;
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1;
SELECT avg(value) FROM boxes AS T1
SELECT avg(value) FROM boxes AS T1;
SELECT DISTINCT contents FROM boxes AS t1;
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes AS T1
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses AS T1;
SELECT DISTINCT LOCATION FROM Warehouses AS T1;
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' UNION SELECT code FROM warehouses WHERE LOCATION = 'New York')
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.location = 'Chicago' OR t1.location = 'New York'
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago' OR LOCATION = 'New York')
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago") INTERSECT SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = "New York")
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Rocks\" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" OR T2.contents = "Scissors"
Distinct(warehouse) FROM boxes WHERE contents = \"Rocks\" OR contents = \"Scissors\"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
boxes WHERE contents = \"Rocks\" AND warehouse IN (SELECT code FROM warehouses WHERE location IN (SELECT LOCATION FROM boxes WHERE contents = \"Scissors\") )
SELECT code , contents FROM boxes ORDER BY value ASC
SELECT code , contents FROM boxes ORDER BY value ASC
sorted_boxes = sorted(boxes, key=lambda x: x.value) # Sort by value in ascending order lowest_value_box = sorted_boxes[0] # Get the first item in the sorted list lowest_value_box.contents # Get the contents of the lowest value box box.
min_box = (SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Rocks' ORDER BY value DESC LIMIT 1)
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT value FROM boxes WHERE contents = 'Scissors' ORDER BY value DESC LIMIT 1)
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT T2.code , avg(T1.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.code HAVING avg(T1.value) > 150 {}
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150.
SELECT sum(value) , count(*) FROM boxes GROUP BY contents
total_value_boxes = sum(value) , count(*) FROM boxes AS T1
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION;
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses AS T1;
SELECT sum(capacity) FROM warehouses AS T1;
SELECT T1.location , max(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location ORDER BY max(T1.value) DESC LIMIT 1
Count(*) AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.warehouse;
Count(*) AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.warehouse;
SELECT count(DISTINCT location) FROM warehouses WHERE capacity > 100 AND name = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Rocks'
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT T1.code , T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE LOCATION = "Chicago")
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = "Chicago")
count(*) AS T1 FROM boxes GROUP BY T1.warehouse;
Count(*) AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code GROUP BY T2.location HAVING capacity > 5000
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT count(DISTINCT contents) , code FROM boxes GROUP BY code;
SELECT code FROM warehouses WHERE capacity > (SELECT capacity FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT code FROM warehouses WHERE capacity + (select count(*) from boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code) > 0
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE LOCATION = 'Chicago')
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT university_name , city , state FROM university ORDER BY university_name ASC
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio')
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
max(enrollment) , avg(enrollment) , min(enrollment) FROM university AS T1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(enrollment) FROM university)
SELECT * FROM university WHERE home_conference = 'Yes'
SELECT DISTINCT home_conference FROM university AS T1;
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT count(*) , home_conference FROM university GROUP BY home_conference;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000;
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1;
SELECT home_conference FROM university ORDER BY enrollment ASC LIMIT 1;
SELECT major_name , major_code FROM major ORDER BY major_code ASC
SELECT Major_name , Major_code FROM major ORDER BY Major_code
SELECT T2.major_name , T1.rank FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.university_name = 'Augustana College'
SELECT T2.rank , T3.major_name FROM major AS T3 JOIN major_ranking AS T1 ON T1.major_id = T3.major_id JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T2.university_name = 'Augustana College'
SELECT T2.university_name , T2.city , T2.state FROM university AS T2 JOIN major_ranking AS T1 ON T1.university_id = T2.university_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = \"Accounting\" AND T1.rank = 1
SELECT T2.university_name , T2.city , T2.state FROM major AS T1 JOIN university AS T2 ON T1.major_id = T2.major_id WHERE T1.major_name = \"Accounting\" ORDER BY T1.rank ASC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id ORDER BY T1.rank ASC LIMIT 1;
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM overall_ranking AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1 )
SELECT university_name FROM university WHERE university_id NOT IN ( SELECT T1.university_id FROM overall_ranking AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 )
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Accounting' INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = 'Urban Education'
SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Accounting\" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major AS T2 ON T1.university_id = T2.university_id WHERE T2.major_name = \"Urban Education\"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name , T2.rank FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T1.state = "Wisconsin"
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1;
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point
SELECT T1.university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank >= 3 AND T2.major_id IN (SELECT major_id FROM major WHERE major_name = 'Accounting')
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Accounting' AND T2.rank >= 3;
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Total <= 4000 {}
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 4)
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.reputation_point >= 3 ORDER BY T2.reputation_point DESC LIMIT 3;
SELECT T1.university_name , T2.citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM movies WHERE rating != 'None'
SELECT title FROM Movies WHERE rating != 'None'
SELECT title FROM movies WHERE rating LIKE 'G'
SELECT title FROM Movies WHERE rating LIKE '%G%'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon'
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name != '' AND T2.Theater != ''
SELECT T2.Title , T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Theater != \"null\"
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name != 'Bingo'
SELECT count(*) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Theater'
SELECT count(DISTINCT movie) FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name != 'Cinema'
SELECT count(DISTINCT title) FROM Movies AS T1;
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT count(DISTINCT name) FROM MovieTheaters;
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizens%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%' OR Title LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G' OR T2.Rating = 'PG'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' OR T1.Name = 'Imperial'
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T1.Title = T2.Title INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial' AND T1.Title = T2.Title
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Odeon' AND T1.Movie = T2.Code INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = 'Imperial' AND T1.Movie = T2.Code
SELECT title FROM movies WHERE code NOT IN ( SELECT movie FROM movietheaters WHERE name = 'Odeon' )
SELECT title FROM movies WHERE code NOT IN ( SELECT T1.movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code WHERE T1.name = 'Odeon' )
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Title ASC
SELECT title FROM Movies ORDER BY rating ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM movies ORDER BY rating ASC
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1;
Count(*) AS rating_counts GROUP BY rating INTO rating_counts
SELECT count(*) , Rating FROM Movies GROUP BY Rating;
SELECT count(*) FROM Movies WHERE rating != 'null'
SELECT count(*) FROM Movies WHERE rating != \"null\";
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name NOT IN (SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code) GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT Name FROM MovieTheaters WHERE Movie NOT IN (SELECT Movie FROM Movies)
SELECT Name FROM MovieTheaters WHERE Movie NOT IN (SELECT Movie FROM Movies)
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT count(DISTINCT rating) FROM movies AS T1
SELECT count(DISTINCT rating) FROM movies
SELECT * FROM Movies WHERE Rating != 'Unrated'
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM Movietheater)
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters)
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Recipient ORDER BY T2.Weight DESC LIMIT 1
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = 'Leo Wong'
SELECT sum(T1.weight) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber WHERE T2.name = \"Leo Wong\"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT POSITION FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , Position FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary , POSITION FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE POSITION = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE POSITION = \"Physician\"
SELECT LEVEL FROM Has_clearance
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\"
Leo Wong sends 1 package.
Leo Wong : PackageNumber = 123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = "Leo Wong"
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name = \"Leo Wong\" UNION SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender WHERE T1.name = \"Leo Wong\";
Leo Wong is an employee of Company A who sends packages to Company B and receives packages from Company C. Therefore, all different package numbers that Leo Wong sent or received can be obtained by combining these two conditions. The combination of sender and recipient should always match one of these two scenarios. So, we need to check if the sender and recipient match either Company B or Company C. If so, we get the corresponding package number. Otherwise, we return an empty set. Here is the implementation: SELECT DISTINCT packagenumber FROM package WHERE sender = 'Leo Wong' AND recipient = 'Company B' UNION SELECT DISTINCT packagenumber FROM package WHERE sender = 'Leo Wong' AND recipient = 'Company C'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = "Ogden Wernstrom" AND T2.name = "Leo Wong"
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber JOIN employee AS T3 ON T1.sender = T3.employeeid WHERE T3.name = 'Ogden Wernstrom' AND T2.name = 'Leo Wong'
SELECT T2.Contents FROM HAS_CLEARANCE AS T1 JOIN PACKAGE AS T2 ON T1.planet = T2.shipmentid JOIN client AS T3 ON T1.accountnumber = T3.accountnumber WHERE T3.name = "John Zoidfarb"
SELECT T2.Contents FROM HAS_CLEARANCE AS T1 JOIN PACKAGE AS T2 ON T1.planet = T2.shipmentid JOIN client AS T3 ON T3.accountnumber = T2.recipient WHERE T3.name = "John Zoidfarb"
SELECT T2.packagenumber , T2.weight FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient WHERE T1.name LIKE '%John%' ORDER BY T2.weight DESC LIMIT 1
SELECT packagenumber , weight FROM package WHERE sender = 'John' OR recipient = 'John'
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight LIMIT 3 ;
most_packages_client = (SELECT T1.Name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY count(*) DESC LIMIT 1)
most_packages_client = (SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T1.AccountNumber ORDER BY COUNT(*) ASC LIMIT 1;
SELECT min(T1.weight) , T2.name FROM package AS T1 JOIN client AS T2 ON T1.recipient = T2.accountnumber GROUP BY T2.name ORDER BY min(T1.weight) ASC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.AccountNumber HAVING COUNT(*) > 1
SELECT T1.Name FROM client AS T1 JOIN package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender HAVING COUNT(*) > 1;
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Name , Coordinates FROM Planet ORDER BY Name ASC
SELECT Name , Coordinates FROM Planet ORDER BY Name ASC
SELECT shipmentid FROM Shipment WHERE manager IN (SELECT employeeid FROM Employee WHERE name = \"Phillip J. Fry\")
SELECT T2.shipmentid FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager WHERE T1.name = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT shipmentid FROM shipment WHERE planet IN (SELECT planetid FROM planet WHERE name = "Mars")
SELECT T1.shipmentid FROM Shipment AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars'
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Mars" AND T2.manager = "Turanga Leela"
SELECT T1.shipmentid FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = "Mars" AND T1.manager = "Turanga Leela"
SELECT ShipmentID FROM Shipment WHERE Planet IN (SELECT PlanetID FROM Planet WHERE Name = "Mars") OR manager IN (SELECT employeeid FROM Employee WHERE name = "Turanga Leela")
SELECT T2.shipmentid FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet WHERE T1.name = "Turanga Leela"
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name HAVING count(*) > 0
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.employeeid = T2.manager GROUP BY T1.name
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid WHERE T2.planet = 'Mars'
SELECT T1.name , T3.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment
SELECT T1.name , sum(T2.weight) FROM planet AS T1 JOIN package AS T2 ON T1.planetid = T2.shipmentid GROUP BY T1.name HAVING sum(T2.weight) > 0.5
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING sum(T2.weight) > 30;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name HAVING sum(T2.weight) > 30.
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = "Omicron Persei 8" AND T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = "Zapp Brannigan" AND T2.planet = "Omicron Persei 8"
SELECT T2.packagenumber FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment WHERE T1.planet = (SELECT planet FROM planet WHERE name = "Omicron Persei 8") OR T2.sender = "Zapp Brannigan"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipmentid = T2.shipmentid JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = "Omicron Persei 8" OR T1.sender = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight >= 10 AND weight <= 30
SELECT packagenumber , weight FROM package WHERE weight >= 10 AND weight <= 30
SELECT Name FROM Employee WHERE EmployeeID NOT IN (SELECT T1.Employee FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT name FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee WHERE T2.planet = 'Omega III'
SELECT T1.Name FROM planet AS T1 JOIN Has_clearance AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.PlanetHolders HAVING COUNT(*) = 1;
SELECT T1.Name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.employee IN (SELECT T3.employee FROM employee AS T3 JOIN has_clearance AS T4 ON T2.employee = T3.employee WHERE T4.position = 'Clearance')
SELECT Name FROM Employee WHERE Salary >= 5000 AND Salary <= 10000;
SELECT name FROM employee WHERE salary >= 5000 AND salary <= 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM Has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT T1.employee FROM has_clearance AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid WHERE T2.name = 'Mars')
SELECT count(*) FROM game
SELECT count(*) FROM game
sorted_game = sorted(game, key=lambda x: x.Units_sold_Millions, reverse=True)
sorted_game = sorted(game, key=lambda x: -x.Units_sold_Millions)
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(units_sold_millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT Platform_name , Platform_id FROM platform WHERE Download_rank = 1
max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
max(Rank_of_the_year) , min(Rank_of_the_year) FROM player AS T1
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T2.player_name , T2.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T1.Title = \"Super Mario World\"
SELECT T2.player_name , T2.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id WHERE T1.Title = \"Super Mario World\"
SELECT DISTINCT T1.Dev developers FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.College = \"Auburn\"
SELECT T2.Dev Developers FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN platform AS T3 ON T1.platform_id = T3.platform_id WHERE T3.College = \"Auburn\";
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.Position = \"Guard\"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = \"Asia\" OR T1.Market_district = \"USA\"
SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.Market_district = \"Asia\" OR T2.Market_district = \"USA\"
count(*) , franchise FROM game GROUP BY franchise;
SELECT count(*) , Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1;
most_games = (SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1)
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT franchise FROM game GROUP BY franchise HAVING count(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN ( SELECT Player_ID FROM game_player )
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma\" AND T2.Player_ID IN ( SELECT Player_ID FROM game_player AS T4 JOIN player AS T5 ON T4.Player_ID = T5.Player_ID WHERE T5.College = \"Auburn\")
SELECT T2.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = \"Oklahoma College\" OR T3.College = \"Auburn College\"
SELECT count(DISTINCT franchise) FROM game
SELECT DISTINCT Franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT T1.Game_ID FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.Position = 'Guard')
SELECT title FROM game WHERE game_id NOT IN ( SELECT game_id FROM game_player WHERE POSITION = 'Guard' )
sorted_press = sorted(press , 1)descending ORDER BY press.year_profits_billion DESC
sorted_press = sorted(press , 1) DESC
SELECT name FROM press WHERE month_profits_billion > 15000000 UNION SELECT name FROM press WHERE year_profits_billion > 10000000
SELECT name FROM press WHERE year_profits_billion > 150000000 OR month_profits_billion > 100000000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(yearly_profit_billion) , max(yearly_profit_billion) , name FROM press GROUP BY name;
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
maximize(Press_id) AS Press_ID , max(Month_Profits_billion) AS Max_Month_Profits_billion FROM press GROUP BY Press_ID ORDER BY max(Month_Profits_billion) DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1;
SELECT count(*) FROM author WHERE age < 30.0
SELECT count(*) FROM author WHERE age < 30.
SELECT avg(age) , gender FROM author GROUP BY gender;
SELECT avg(age) , gender FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender;
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender HAVING count(*) > 1
sorted(book, Release_date)
sorted_book_title = book.sort_by('Release_date') DESC title
book.book_series COUNT(*)分组统计每个书系列的书籍数量。
book_series_count = count(*) book_series_title = title book_series_book_count = count(*)
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5;
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 EXCEPT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"MM\" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"LT\"
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"MM\" INTERSECT SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id WHERE T2.book_series = \"LT\"
SELECT name , age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.name FROM author AS T2 JOIN book AS T1 ON T1.author_id = T2.author_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.title , T2.name , T2.year_profit_billion FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id ORDER BY T1.sale_amount DESC LIMIT 3;
sorted(book,Sale_Amount , Title , Author_ID ) LIMIT 3
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id
SELECT count(*) , T2.name FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.press_id HAVING count(*) > 1000
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\")
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = \"Accor\")
SELECT T1.name , T2.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT T1.name , T2.month_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors AS T1;
SELECT DISTINCT author_name FROM authors
Authors()
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_id = 4
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = \"Era Kerluke\"
SELECT document_name , document_description FROM documents
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Bianka Cummings"
SELECT T1.author_name , T1.other_details FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to China"
SELECT T1.author_name , count(*) FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes AS T1;
SELECT next_process_id , process_name , process_description FROM Process_outcomes AS T1 JOIN Process_status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T2.process_id = 9
next_process_id = 9; process_name = 'Process Outcomes'
SELECT count(*) FROM Process_outcomes;
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_Status AS T1;
SELECT process_status_code , process_status_description FROM process_status
SELECT process_status_description FROM process_status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff AS T1;
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles AS T1;
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id WHERE T2.process_id IN (SELECT process_id FROM Process_outcomes)
SELECT process_id FROM documents PROCESS_ID
SELECT document_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT process_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM documents_processes)
SELECT T1.process_outcome_description , T1.process_status_description FROM Process_outcomes AS T1 JOIN Documents_processes AS T2 ON T1.process_outcome_code = T2.process_outcome_code JOIN Documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_id = 0
SELECT T1.process_name FROM Business_Processes AS T1 JOIN Documents_Processes AS T2 ON T1.process_id = T2.process_id JOIN Documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT count(*) , process_id FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM Documents AS T1 JOIN Staff_in_Processes AS T2 ON T1.document_id = T2.document_id WHERE T1.document_id = 0 AND T2.process_id = 9
staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id HAVING count(*) >= 1
Count(*) , staff_role_code FROM staff_in_processes GROUP BY staff_role_code;
SELECT count(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3;
SELECT count(*) FROM agencies
SELECT count(*) FROM agencies AS T1;
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies
SELECT count(*) FROM clients AS T1;
SELECT count(*) FROM clients
SELECT client_id , client_details FROM clients
SELECT client_id , client_details FROM clients
Count(*) AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.agency_id;
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff_in_Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code;
SELECT client_id , client_details FROM clients WHERE sic_code = "Bad"
SELECT client_details FROM Clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T2.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id {}
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM INVOICES
SELECT count(*) FROM INVOICES AS T1;
SELECT T1.invoice_id , T2.invoice_status , T2.invoice_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT invoice_id , invoice_status , invoice_details FROM INVOICES
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT count(*) , client_id FROM invoices GROUP BY client_id
SELECT client_id , client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2;
SELECT invoice_status , count(*) FROM INVOICES GROUP BY invoice_status
Count(*) AS invoice_status GROUP BY invoice_status
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_status FROM INVOICES GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.payment_id , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT T1.payment_id , T2.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = "Working"
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id , invoice_status FROM INVOICES WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments AS T1;
SELECT T1.payment_id , T2.invoice_id , T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id
SELECT count(*) , invoice_id FROM Payments GROUP BY invoice_id;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM staff AS T1;
SELECT count(*) FROM staff AS T1;
SELECT T1.agent_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agent_id
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff_in_meetings AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff_in_meetings AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1;
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
meetings_outcome_count = (SELECT count(*) , 1 FROM meetings GROUP BY meeting_outcome)
SELECT count(*) , client_id FROM meetings GROUP BY client_id
Count(*) AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.client_id;
count(*) AS count , T1.client_id FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id;
counts = (SELECT count(*) , meeting_type FROM Meetings GROUP BY meeting_type)
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
meetings_count = count(*) , meeting_id FROM Meetings GROUP BY meeting_id HAVING count(*) > 0
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id;
SELECT T1.staff_id , count(*) FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) LIMIT 1;
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id
SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id UNION SELECT T1.client_id , T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id WHERE T2.invoice_status != 'null' {}
SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id HAVING count(*) >= 1 INTERSECT SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agent_id FROM clients AS T3 JOIN invoices AS T4 ON T3.client_id = T4.client_id WHERE T4.invoice_status = 'Yes' GROUP BY T3.client_id HAVING count(*) > 1
SELECT T1.client_id , T1.sic_code , T1.agent_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.meeting_outcome = 'Yes' GROUP BY T1.client_id HAVING count(*) = 1 INTERSECT SELECT T3.client_id , T3.sic_code , T3.agent_id FROM Clients AS T3 JOIN Invoices AS T4 ON T3.client_id = T4.client_id WHERE T4.invoice_status = 'Yes' GROUP BY T3.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T2.staff_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details , T3.client_details FROM meetings AS T1 JOIN staff_in_meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN clients AS T3 ON T1.client_id = T3.client_id
