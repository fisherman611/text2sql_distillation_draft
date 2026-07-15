SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != "Nike"
SELECT Name FROM club WHERE MANUFACTURER != 'Nike'
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Earnings = (SELECT max(Earnings) FROM player WHERE Wins_count > 2)
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Country DESC LIMIT 1
SELECT T1.Name , T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT Name , Club_ID FROM player
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = "Sam Allardyce"
SELECT T1.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Manager = 'Sam Allardyce'
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Name ORDER BY avg(T2.Earnings) DESC
SELECT manufacturer , count(*) FROM club GROUP BY manufacturer
SELECT Manufacturer , COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = "Australia" OR Country = "Zimbabwe"
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) > 2 INTERSECT SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.order_id , T2.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_status_code
SELECT date_order_placed FROM orders WHERE date_order_placed = (SELECT min(date_order_placed) FROM orders) OR count(*) > 1
SELECT date_order_placed , order_id FROM orders GROUP BY order_id HAVING count(*) > 1
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Orders)
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_last_name , T1.customer_middle_initial FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT product_id , product_name , product_price , product_color FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) >= 2)
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) < 2
SELECT order_id , date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) >= 2
SELECT order_id , date_order_placed FROM orders WHERE order_status_code = "placed" GROUP BY order_id HAVING count(*) >= 2
SELECT product_id , T1.product_name , T1.product_price FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id , T2.product_name , T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT order_id , sum(T1.product_price) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT order_id , sum(T1.product_price) FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY order_id ORDER BY sum(T1.product_price) ASC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code , count(*) FROM customers GROUP BY gender_code
SELECT count(*) , gender_code FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY gender_code
SELECT count(*) , gender_code FROM orders GROUP BY gender_code
SELECT T1.gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT T1.product_name , T2.shipment_date FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_id
SELECT order_item_status_code , shipment_tracking_number FROM Order_items JOIN Shipments ON Order_items.order_id = shipments.order_id
SELECT T1.order_item_status_code , T2.shipment_tracking_number FROM Order_items AS T1 JOIN Shipments AS T2 ON T1.order_id = T2.order_id
SELECT T1.product_name , T2.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T2.order_id = T3.order_id
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN shipments AS T2 ON T1.product_id = T2.order_item_id
SELECT DISTINCT T1.product_name , T2.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN orders AS T2 ON T1.product_id = T2.product_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.gender_code = "F"
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT invoice_status_code FROM invoices WHERE invoice_number NOT IN (SELECT invoice_number FROM shipments)
SELECT order_id , date_order_placed , sum(T1.total_cost) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT order_id , date_order_placed , sum(T1.total_amount) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY order_id
SELECT count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT item_state) FROM orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name , login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT customer_first_name , customer_last_name FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_name) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM Products WHERE product_id NOT IN (SELECT product_id FROM Order_items)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT order_status_code , date_order_placed FROM orders
SELECT order_status_code , date_order_placed FROM orders
SELECT address_line_1 , town_city , county FROM Customers WHERE country = 'USA'
SELECT address_line_1 , town_city , county FROM customers WHERE country = 'United States'
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN order_items AS T2 ON T1.customer_id = T2.customer_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T1.customer_first_name , T2.product_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id WHERE T3.product_id IN (SELECT product_id FROM order_items WHERE order_item_status_code = "paid")
SELECT count(*) FROM shipments
SELECT count(*) FROM shipments
SELECT avg(product_price) FROM Products
SELECT avg(product_price) FROM Products
SELECT avg(product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "products"
SELECT avg(product_price) FROM products WHERE product_id IN (SELECT product_id FROM order_items)
SELECT email_address , town_city , county FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT gender_code FROM orders GROUP BY gender_code HAVING count(*) <= 2)
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.date_order_placed HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customer_payment_methods AS T3 ON T2.customer_id = T3.customer_id GROUP BY T1.date_order_placed HAVING count(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT product_id , product_description FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING count(*) > 3)
SELECT product_id , product_description FROM products GROUP BY product_id HAVING count(*) > 3
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT min(product_price) FROM products)
SELECT Name FROM director WHERE Age > (SELECT avg(Age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT count(Digital_terrestrial_channel) FROM channel
SELECT Title FROM program ORDER BY Start_Year DESC
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T1.Age FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT T1.name , T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT count(*) , T1.Name FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID GROUP BY T1.Name
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT T1.Name FROM director AS T1 JOIN program AS T2 ON T1.Director_ID = T2.Director_ID WHERE T2.Title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT T1.Name FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN director AS T3 ON T2.Director_ID = T3.Director_ID WHERE T3.Age < 40 INTERSECT SELECT T1.Name FROM channel AS T1 JOIN program AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN director AS T3 ON T2.Director_ID = T3.Director_ID WHERE T3.Age > 60
SELECT channel_id , name FROM channel EXCEPT SELECT channel_id , name FROM channel AS T1 JOIN director AS T2 ON T1.channel_id = T2.channel_id WHERE T2.name = 'Hank Baskett'
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name , original_airdate FROM tv_show
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT affiliation , count(*) FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT T1.Transmitter , T2.City FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID
SELECT T1.Transmitter , T2.station_name FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID ORDER BY T1.Erp_kW DESC
SELECT T1.Transmitter , count(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.Radio_ID = T2.Radio_ID GROUP BY T1.Transmitter
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT count(*) , T1.Driver_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Driver_ID , COUNT(*) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT T1.Vehicle_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Vehicle_ID ORDER BY count(*) ASC LIMIT 1
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(DISTINCT T1.Driver_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = 2012
SELECT count(DISTINCT T1.Driver_ID) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T2.Build_Year = 2012
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT avg(top_speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE "%DJ%"
SELECT Model FROM vehicle EXCEPT SELECT T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) >= 2 INTERSECT SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Builder = 'Ziyang'
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING count(*) = 2 INTERSECT SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Builder = "Ziyang"
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = 'Jeff Gordon' OR COUNT(*) > 2
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = "Jeff Gordon" OR COUNT(*) > 2
SELECT count(*) FROM vehicle WHERE Top_Speed = "max"
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
SELECT Racing_Series , COUNT(*) FROM driver GROUP BY Racing_Series
SELECT count(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT T1.Name , T1.Citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT T2.Name , T2.Citizenship FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Model = "DJ1"
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code
SELECT exam_name , exam_date FROM exams WHERE subject_code != "Database"
SELECT Exam_Date , Exam_Name FROM Exams WHERE Subject_Code != "Database"
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE "%data%" ORDER BY Exam_Date DESC
SELECT TYPE_of_Question_CODE , COUNT(*) FROM QUESTIONS GROUP BY TYPE_of_Question_CODE
SELECT TYPE_of_Question_CODE , count(*) FROM QUESTIONS GROUP BY TYPE_of_Question_CODE
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal"
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.First_Name , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT T1.Email_Address , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) ASC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T1.First_Name HAVING COUNT(*) >= 2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Valid_Answer_Text FROM Valid_Answers AS T1 JOIN Questions AS T2 ON T1.Question_ID = T2.Question_ID GROUP BY T1.Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Last_Name FROM Students WHERE Gender_MFU != "M"
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU , COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT Last_Name FROM Students WHERE Gender_MFU = "F" OR Gender_MFU = "M"
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT First_Name FROM Students EXCEPT SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = "Absent"
SELECT Student_ID FROM Student_Answers WHERE Comments = "Normal" INTERSECT SELECT Student_ID FROM Student_Answers WHERE Comments = "Absent"
SELECT TYPE_of_Question_CODE FROM QUESTIONS GROUP BY TYPE_of_Question_CODE HAVING COUNT(*) >= 3
SELECT TYPE_of_Question_CODE FROM QUESTIONS GROUP BY TYPE_of_Question_CODE HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
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
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = "Clothes"
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = "hardware"
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = 'hardware')
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Clothes" ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_id , product_name FROM products ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code FROM products ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM Customers
SELECT customer_id , customer_name FROM customers
SELECT customer_address , customer_phone , customer_email FROM Customers WHERE customer_name = "Jeromy"
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers GROUP BY customer_name ORDER BY count(*) ASC LIMIT 1
SELECT customer_name FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1
SELECT payment_method_code , customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT payment_method_code , customer_number FROM Customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT order_id , order_date , order_status_code FROM Customer_Orders WHERE customer_id = "Jeromy"
SELECT order_id , order_date , order_status_code FROM customer_orders WHERE customer_name = "Jeromy"
SELECT T1.customer_name , T1.customer_id , count(*) FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name , T1.customer_id , count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = 'Monitor'
SELECT count(*) FROM Order_items
SELECT count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM Customer_Orders WHERE product_id = 1000001
SELECT count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT T1.order_date , T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 OR count(*) > 3
SELECT order_id , order_date FROM customer_orders WHERE order_quantity > 6 OR count(*) > 3
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT avg(population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Capital ORDER BY count(*) DESC LIMIT 1
SELECT T1.Address , T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T1.Address , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT count(*) FROM building WHERE name = "Abruzzo"
SELECT count(*) , building_id FROM building WHERE region_name = "Abruzzo" GROUP BY building_id
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT building_id , completed_year FROM building ORDER BY number_of_stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT count(*) FROM Services
SELECT count(*) FROM Services
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id JOIN customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_Details HAVING COUNT(*) > 3
SELECT T1.service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_details HAVING count(*) > 3
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY count(*) DESC LIMIT 1
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY count(*) DESC LIMIT 1
SELECT Customer_Details FROM Customers EXCEPT SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT Customer_Details FROM Customers EXCEPT SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID ORDER BY T3.Service_Details ASC LIMIT 1
SELECT DISTINCT T1.Customer_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_Details ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(DISTINCT customer_details) FROM Customers UNION SELECT count(DISTINCT customers_and_services_details) FROM Customers_and_Services
SELECT count(*) FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE "%Kutch%"
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE "%Kutch%"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" OR T2.Status_Code = "good"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" OR T2.Customers_and_Services_Details = "good"
SELECT T1.service_details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.service_id = T2.service_id JOIN Customers AS T3 ON T2.customer_id = T3.customer_id WHERE T3.customer_details = "Hardy Kutch" AND T2.status_code = "bad"
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = "Hardy Kutch" AND T2.Status_Code = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T2.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T2.Service_ID = T3.Service_ID WHERE T2.Status_Code = "Stuck" AND T3.Services_and_Channels_Details = "bad"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Customer_Interactions AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Status_Code = "Stuck" AND T2.Services_and_Channels_Details = "bad"
SELECT count(*) FROM Integration_Platform
SELECT count(*) FROM Integration_Platform WHERE Integration_Platform_Details LIKE "%Success%"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Integration_Platform AS T2 ON T1.Customer_ID = T2.Customer_Interaction_ID WHERE T2.Status_Code = "failed"
SELECT T1.Customer_Details FROM Customers AS T1 JOIN Integration_Platform AS T2 ON T1.Customer_ID = T2.Customer_Interaction_ID WHERE T2.Integration_Platform_Details = "Fail"
SELECT * FROM Services WHERE Service_ID NOT IN (SELECT Service_ID FROM Customers_and_Services)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = 'unsatisfied'
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.status_code = "unsatisfied"
SELECT count(*) FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT Name FROM Vehicles ORDER BY Model_year DESC
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013
SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM Vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT Type_of_powertrain , count(*) FROM Vehicles GROUP BY Type_of_powertrain
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_OF_POWERTRAIN FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN ORDER BY count(*) DESC LIMIT 1
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM Vehicles
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name , age , membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT avg(age) FROM Customers WHERE membership_credit > (SELECT avg(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT T1.name , sum(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT T1.Name , SUM(T2.total_hours) FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.Name
SELECT Name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT Name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM Customers AS T1 JOIN Renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.model_year ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name , T1.model_year ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id ORDER BY T2.total_hours DESC
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Discount AS T1 JOIN Renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T1.Type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.Type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT T1.name , T1.Type_of_powertrain FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.Type_of_powertrain HAVING sum(T2.total_hours) > 30
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain , avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T1.bio_data , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%net%'
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details , T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_type_description FROM Detention
SELECT DISTINCT detention_type_description FROM Detention
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.student_details , T2.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code = T3.address_type_code
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.behaviour_monitoring_details FROM Behaviour_Monitoring AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1 UNION SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 3
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data , T1.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , event_type_code , event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , event_type_code , event_type_description FROM Student_Events GROUP BY event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM Teachers AS T JOIN Classes AS C ON T.teacher_id = C.teacher_id JOIN Students AS S ON C.student_id = S.student_id WHERE S.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT count(*) FROM Teachers AS T JOIN Classes AS C ON T.teacher_id = C.teacher_id JOIN Students AS S ON C.student_id = S.student_id WHERE S.student_id NOT IN (SELECT student_id FROM Achievements)
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT date_of_transcript , transcript_details FROM Transcripts
SELECT achievement_type_code , achievement_details , date_achievement FROM Achievements
SELECT T1.achievement_type_code , T1.achievement_details , T1.date_achievement FROM Achievements AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.teacher_details , T2.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id
SELECT count(*) , T1.teacher_id FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT teacher_id , count(*) FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id , student_details FROM Classes GROUP BY student_id HAVING count(*) = 2
SELECT student_id , student_details FROM Classes GROUP BY student_id HAVING count(*) = 2
SELECT detention_type_code , detention_type_description FROM Ref_Detention_Type GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT detention_type_code , detention_type_description FROM Detention GROUP BY detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_Loans)
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id WHERE T2.student_id IN (SELECT student_id FROM STUDENT_LOANS ORDER BY amount_of_loan DESC LIMIT 1)
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.date_of_transcript = (SELECT min(date_of_transcript) FROM Transcripts)
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.date_of_transcript = (SELECT date_of_transcript FROM Transcripts ORDER BY date_of_transcript LIMIT 1)
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT student_id , sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.student_id , T2.bio_data , count(*) FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT count(*) FROM Detention
SELECT count(*) FROM Detention
SELECT address_type_code , address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT address_type_code , address_type_description FROM Ref_Address_Types GROUP BY address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT bio_data FROM Students EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.date_from , T1.date_to FROM Students_Addresses AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT datetime_detention_start FROM detentions GROUP BY datetime_detention_start HAVING count(*) = 1
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT title , isbn , saleprice FROM BOOK
SELECT title , isbn , saleprice FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM BOOK
SELECT count(*) FROM Author
SELECT count(*) FROM AUTHOR
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name , address FROM Client ORDER BY name
SELECT name , address FROM Client ORDER BY name
SELECT title , author FROM BOOK
SELECT T1.title , T2.name FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.isbn = T2.isbn
SELECT idorder , idclient FROM orders
SELECT idorder , idclient FROM orders
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.idauthor GROUP BY T1.name
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author GROUP BY T1.name
SELECT T1.isbn , T2.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder
SELECT T1.isbn , count(*) FROM Books_order AS T1 JOIN Book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT T1.isbn , sum(T2.amount) FROM Books_order AS T1 JOIN Orders AS T2 ON T1.idorder = T2.idorder GROUP BY T1.isbn
SELECT T1.title FROM BOOK AS T1 JOIN Books_Order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title , T1.purchaseprice FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn
SELECT DISTINCT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn JOIN Orders AS T3 ON T2.idorder = T3.idorder
SELECT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient HAVING count(*) >= 1
SELECT DISTINCT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name , count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sum(T2.amount) FROM Clients AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T3.idorder = T2.idorder GROUP BY T1.name
SELECT T1.name , sum(T2.amount) FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name
SELECT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.name FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM BOOK WHERE isbn NOT IN (SELECT isbn FROM Books_order)
SELECT title FROM BOOK WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM Client EXCEPT SELECT T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient
SELECT name FROM CLIENT WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM BOOK
SELECT max(saleprice) , min(saleprice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM BOOK
SELECT avg(purchaseprice) , avg(saleprice) FROM BOOK
SELECT max(saleprice - purchaseprice) FROM BOOK
SELECT max(saleprice) - min(saleprice) , max(purchaseprice) - min(purchaseprice) FROM BOOK
SELECT title FROM BOOK WHERE saleprice > (SELECT avg(saleprice) FROM BOOK)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM BOOK ORDER BY saleprice LIMIT 1
SELECT title FROM BOOK WHERE saleprice = (SELECT min(saleprice) FROM BOOK)
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM BOOK ORDER BY purchaseprice DESC LIMIT 1
SELECT avg(SalePrice) FROM BOOK WHERE Author = "George Orwell"
SELECT avg(SalePrice) FROM BOOK WHERE Author = "George Orwell"
SELECT saleprice FROM BOOK WHERE author = 'Plato'
SELECT T2.saleprice FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author WHERE T1.name = 'Plato'
SELECT title FROM BOOK WHERE author = 'George Orwell' ORDER BY saleprice LIMIT 1
SELECT T1.Title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.IdAuthor WHERE T3.Name = "George Orwell" ORDER BY T1.SalePrice LIMIT 1
SELECT title FROM BOOK WHERE author = 'Plato' AND purchaseprice < (SELECT avg(purchaseprice) FROM BOOK)
SELECT T1.Title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T2.Author = T3.IdAuthor WHERE T3.Name = "Plato" AND T1.SalePrice < (SELECT avg(SalePrice) FROM BOOK)
SELECT T1.name FROM AUTHOR AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.idauthor = T2.idauthor JOIN BOOK AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT T1.name FROM Author AS T1 JOIN Author_book AS T2 ON T1.idauthor = T2.author JOIN Book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = 'Pride and Prejudice'
SELECT T1.title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.isbn = T2.isbn JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT T1.title FROM BOOK AS T1 JOIN AUTHOR_BOOK AS T2 ON T1.isbn = T2.isbn JOIN AUTHOR AS T3 ON T2.author = T3.idauthor WHERE T3.name LIKE '%Plato%'
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice"
SELECT count(*) FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T2.isbn = T3.isbn WHERE title = 'Pride and Prejudice'
SELECT idorder FROM Books_order WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM Books_order WHERE title = "The Little Prince"
SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books_order WHERE title = 'The Little Prince' INTERSECT SELECT idorder FROM orders WHERE idorder IN (SELECT idorder FROM books_order WHERE title = 'Pride' AND author = 'Prejudice'))
SELECT T1.ISBN FROM BOOK AS T1 JOIN BOOKS_ORDER AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERS AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 123 AND T4.Name = "Peter" INTERSECT SELECT T1.ISBN FROM BOOK AS T1 JOIN BOOKS_ORDER AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERS AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 124 AND T4.Name = "James"
SELECT T1.ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder JOIN Client AS T4 ON T3.IdClient = T4.IdClient WHERE T4.Name = "Peter Doe" INTERSECT SELECT T1.ISBN FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder JOIN Client AS T4 ON T3.IdClient = T4.IdClient WHERE T4.Name = "James Smith"
SELECT T1.Title FROM BOOK AS T1 JOIN BOOKS_ORDER AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERS AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 3 AND T1.Title NOT IN (SELECT T1.Title FROM BOOK AS T1 JOIN BOOKS_ORDER AS T2 ON T1.ISBN = T2.ISBN JOIN ORDERS AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 1)
SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 101 AND T1.Title != "null" EXCEPT SELECT T1.title FROM BOOK AS T1 JOIN Books_order AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T2.IdOrder = T3.IdOrder WHERE T3.IdClient = 102
SELECT T1.name FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient WHERE T2.dateorder = "Pride and Prejudice"
SELECT T1.name FROM CLIENT AS T1 JOIN ORDERS AS T2 ON T1.idclient = T2.idclient JOIN BOOK AS T3 ON T2.idorder = T3.idorder WHERE T3.title = 'Pride and Prejudice'
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE , RELEASE FROM book
SELECT max(chapters) , min(chapters) , book_id FROM book GROUP BY book_id
SELECT Title FROM book WHERE Title != "Poet"
SELECT avg(Rating) FROM review
SELECT Title , Rating FROM book
SELECT max(T1.Chapters) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT rank FROM review GROUP BY rank ORDER BY count(*) ASC LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rank DESC LIMIT 1
SELECT avg(T1.Readers_in_Million) FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.Type = "Novel"
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*) >= 3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Rating
SELECT Title , Audio FROM book ORDER BY Readers_in_Million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT TYPE FROM book WHERE Chapters > 75 INTERSECT SELECT TYPE FROM book WHERE Chapters < 50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE , TITLE FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_memberships > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Customer_ID , Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.name , T2.dish_name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.quantity DESC
SELECT T1.name , sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.Name , SUM(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING SUM(T2.Quantity) > 1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity) > 1
SELECT DISTINCT manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name , Nationality FROM member
SELECT Name FROM member WHERE Nationality != "England"
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.Team_Leader , T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.club_name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id WHERE T1.overall_ranking > 100
SELECT T1.Name FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Year_Join < 2018
SELECT T1.Name FROM member AS T1 JOIN club_leader AS T2 ON T1.Member_ID = T2.Member_ID JOIN club AS T3 ON T2.Club_ID = T3.Club_ID WHERE T3.Club_Name = "Houston"
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID = T2.Collection_Subset_ID
SELECT Collection_Subset_Name FROM Collection_Subsets
SELECT * FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT T1.collection_subset_details FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id WHERE T1.collection_subset_name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = "Best for 2000"
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_id FROM Documents_in_Collections
SELECT Document_Object_ID FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = "Marlin"
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT Owner FROM Document_Objects WHERE Parent_Document_Object_ID = 'Marlin'
SELECT OWNER FROM Document_Objects WHERE OWNER = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects
SELECT DISTINCT Description FROM Document_Objects
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT count(*) FROM Document_Objects WHERE Owner = "Marlin"
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id = "null"
SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID = "null"
SELECT T1.parent_document_object_id , count(*) FROM Document_Objects AS T1 JOIN Document_Object_ID AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.parent_document_object_id
SELECT parent_document_object_id , count(*) FROM Document_Objects GROUP BY parent_document_object_id
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = "Best"
SELECT collection_description FROM Collections WHERE collection_name = 'Best'
SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = "Nice"
SELECT Parent_Collection_ID FROM Collections WHERE Collection_Name = "Nice"
SELECT Collection_Name FROM Collections WHERE Parent_Collection_ID = "null"
SELECT Collection_Name FROM Collections WHERE Parent_Collection_ID = "null"
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id != "null" GROUP BY document_object_id HAVING count(*) > 1
SELECT document_object_id FROM Document_Objects WHERE parent_document_object_id IN (SELECT related_document_object_id FROM Document_Subset_Members GROUP BY related_document_object_id HAVING count(*) > 1)
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Document_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = "Best"
SELECT document_object_id FROM Document_Objects WHERE owner = "Ransom"
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id WHERE T2.related_document_object_id = Ransom
SELECT collection_subset_id , collection_subset_name , count(*) FROM Collection_Subsets GROUP BY collection_subset_id
SELECT collection_subset_id , collection_subset_name , count(*) FROM Collection_subsets GROUP BY collection_subset_id
SELECT document_object_id , count(*) FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , document_object_id FROM Document_Objects GROUP BY document_object_id
SELECT document_object_id , count(*) FROM Document_Subset_Members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT Document_Object_ID FROM Document_Objects GROUP BY Document_Object_ID ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id , count(*) FROM Document_Subset_Members GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT document_subset_id , count(*) FROM Document_Subset_Members GROUP BY document_subset_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Document_Subset_Name = "Document" AND T1.Owner = "Braeden"
SELECT DISTINCT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T1.Owner = "Braeden"
SELECT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID WHERE T2.Related_Document_Object_ID = "Braeden"
SELECT DISTINCT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = "Braeden"
SELECT Document_Subset_ID , Document_Subset_Name , count(Documents_in_Collections.Document_Object_ID) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID = T2.Document_Subset_ID GROUP BY Document_Subset_ID
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_Subsets JOIN Document_Subset_Members ON Document_Subset_Members.Document_Subset_ID = Document_Subsets.Document_Subset_ID GROUP BY document_subset_id
SELECT document_subset_id , document_subset_name , count(DISTINCT document_object_id) FROM Document_Subsets JOIN Document_Subset_Members ON Document_Subset_Members.Document_Subset_ID = Document_Subsets.Document_Subset_ID GROUP BY Document_Subset_ID ORDER BY count(DISTINCT document_object_id) DESC LIMIT 1
SELECT T1.Document_subset_id , T1.document_subset_name , count(*) FROM Document_subsets AS T1 JOIN Document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_name ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Document_Subset_Members WHERE Document_Subset_ID = "Best for 2000"
SELECT document_object_id FROM Document_Subset_Members WHERE document_subset_id = "Best for 2000"
SELECT T1.document_subset_name , T2.document_id FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.Document_subset_name , T1.Document_subset_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.Document_subset_id = T2.Document_subset_id GROUP BY T1.Document_subset_id
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id JOIN document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT T1.collection_name FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id JOIN Document_Objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T3.owner = 'Ransom'
SELECT count(*) , T1.collection_id FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_id
SELECT document_object_id , count(*) FROM Document_objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY document_object_id
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best'
SELECT document_object_id FROM Documents_in_Collections WHERE collection_id = "Best"
SELECT count(*) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = "Best"
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.collection_name , T1.collection_id , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = "Best" AND T1.collection_id IN (SELECT collection_id FROM Collections WHERE collection_name = "Best")
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best' INTERSECT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best for 2000'
SELECT document_object_id FROM Documents_in_Collections WHERE collection_name = "Best" EXCEPT SELECT document_object_id FROM Documents_in_Collections WHERE collection_id = "Best" AND YEAR = 2000
SELECT DISTINCT document_object_id FROM Documents_in_Collections WHERE collection_name = 'Best' EXCEPT SELECT DISTINCT document_object_id FROM Documents_in_Collections WHERE collection_name = 'Best for 2000'
SELECT T1.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Document_Subset_Name = "Best" OR T1.Parent_Document_Object_ID IN (SELECT Collection_ID FROM Collections WHERE Collection_Name = "Best")
SELECT DISTINCT document_object_id FROM Document_subsets AS T1 JOIN Document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN Document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T1.document_subset_name = 'Best for 2000' INTERSECT SELECT DISTINCT document_object_id FROM Collection_subsets AS T1 JOIN Collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN Document_objects AS T3 ON T2.document_object_id = T3.document_object_id WHERE T1.collection_subset_name = 'Best'
SELECT T1.collection_name FROM collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_name = "Best"
SELECT T1.collection_name FROM Collections AS T1 JOIN Collection_Subsets AS T2 ON T1.collection_id = T2.collection_id WHERE T2.collection_subset_name = "Best"
SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = "Best"
SELECT count(DISTINCT collection_id) FROM Collections WHERE collection_name = 'Best'
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collections AS T2 ON T1.collection_subset_id = T2.collection_id WHERE T2.collection_name = 'Best in'
SELECT T1.collection_subset_name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN Collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT T1.stage_presence FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = 'English'
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING count(*) >= 2
SELECT id , name , popularity FROM participants ORDER BY popularity
SELECT T1.id , T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT avg(rhythm_tempo) , language FROM performance_score GROUP BY language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performances_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'Croatian' INTERSECT SELECT T1.name , T1.popularity FROM participants AS T1 JOIN performances_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T2.songs_id = T3.id WHERE T3.language = 'English'
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT T1.original_artist FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id WHERE T2.rhythm_tempo > 5 ORDER BY T1.original_artist DESC
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT count(*) FROM city
SELECT count(*) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT city_name , city_code , state , country FROM City
SELECT latitude , longitude FROM City WHERE city_name = 'Baltimore'
SELECT latitude , longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name FROM City WHERE state = 'PA'
SELECT city_name FROM City WHERE state = 'PA'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT count(*) FROM city WHERE country = 'Canada'
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM city WHERE country = 'USA' ORDER BY latitude
SELECT state , count(*) FROM City GROUP BY state
SELECT count(*) , state FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = "MD"
SELECT Fname , Lname FROM student WHERE city_code = 'MD'
SELECT count(*) FROM student WHERE city_code = 'HAN'
SELECT count(*) FROM student WHERE city_code = 'HAN'
SELECT Fname , Major FROM Student WHERE city_code = 'Baltimore'
SELECT Fname , Major FROM Student WHERE city_code = "Baltimore"
SELECT count(*) , country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country
SELECT count(*) , country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT count(*) , city_code FROM student GROUP BY city_code
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) ASC LIMIT 1)
SELECT country FROM city WHERE count(*) = (SELECT count(*) FROM student) GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT T1.city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_name HAVING count(*) >= 3
SELECT state FROM city WHERE count(*) > 5
SELECT state FROM city WHERE count(*) > 5
SELECT StuID FROM Student WHERE city_code != 'USA'
SELECT StuID FROM Student WHERE city_code != 'USA'
SELECT StuID FROM Student WHERE sex = "F" AND city_code = "PA"
SELECT StuID FROM Student WHERE sex = 'F' AND city_code = 'PA'
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE city_code = 'USA'
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Student WHERE city_code = 'USA'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI'
SELECT T1.distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code JOIN Student AS T3 ON T2.city_code = T3.city_code WHERE T3.fname = "BAL" AND T3.lname = "CHI"
SELECT T1.distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code JOIN City AS T3 ON T1.city2_code = T3.city_code WHERE T2.city_name = "Boston" AND T3.city_name = "Newark"
SELECT T1.distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Boston' INTERSECT SELECT T1.distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'Newark'
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT avg(distance) , min(distance) , max(distance) FROM Direct_distance
SELECT city_code FROM city ORDER BY max(distance) DESC LIMIT 2
SELECT city_code FROM city ORDER BY max(distance) DESC LIMIT 1
SELECT city_code FROM city WHERE city_name NOT IN (SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance > (SELECT avg(distance) FROM direct_distance))
SELECT city_code FROM city WHERE distance > (SELECT avg(distance) FROM city)
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT T1.city_code FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance < 1000
SELECT sum(T1.distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT sum(T1.distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = 'BAL'
SELECT avg(distance) FROM Direct_distance WHERE city1_code = 'Boston'
SELECT avg(distance) FROM Direct_distance WHERE city1_code = 'Boston'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT min(distance) FROM direct_distance) AND T2.city2_code = 'Chicago'
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT min(distance) FROM direct_distance WHERE city1_code = 'chicago')
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Boston' ORDER BY T1.city_name DESC LIMIT 1
SELECT T1.city_name FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.city2_code = 'Boston' ORDER BY T2.distance DESC LIMIT 1
SELECT city_code , sum(distances) FROM direct_distance GROUP BY city_code
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT city_name , avg(distance) FROM city GROUP BY city_name
SELECT T1.city_name , avg(T2.distance) FROM City AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT T1.distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Linda" AND T2.lname = "Smith" INTERSECT SELECT T1.distance FROM direct_distance AS T1 JOIN student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Tracy" AND T2.lname = "Kim"
SELECT T1.distance FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Linda" INTERSECT SELECT T1.distance FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code = T2.city_code WHERE T2.fname = "Tracy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T2.distance = (SELECT min(distance) FROM Direct_distance WHERE city1_code = 'Linda Smith' )
SELECT T1.fname , T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN city AS T3 ON T2.city2_code = T3.city_code WHERE T3.city_name = 'Linda Smith' AND T2.distance = (SELECT max(distance) FROM direct_distance WHERE city1_code = 'Linda Smith')
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = 'Linda'
SELECT state FROM city WHERE city_code = (SELECT city_code FROM student WHERE Fname = 'Linda')
SELECT * FROM Sailors WHERE age > 30
SELECT name FROM Sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T3.sid = 1
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = '102'
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 102
SELECT unique(bid) FROM Reserves
SELECT bid FROM Reserves
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT sid FROM Sailors WHERE age > (SELECT min(age) FROM Sailors)
SELECT sid FROM Sailors WHERE age != (SELECT min(age) FROM Sailors)
SELECT DISTINCT name FROM Sailors WHERE age > (SELECT min(age) FROM Sailors WHERE rating > 7)
SELECT DISTINCT name FROM Sailors WHERE age > (SELECT min(age) FROM Sailors WHERE rating > 7)
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 1
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 1
SELECT T1.sid , T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) > 1
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T2.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = "red" OR T3.color = "blue"
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'blue'
SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' INTERSECT SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'blue'
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'red' OR T3.name = 'blue'
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 103
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.bid = 103
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = 'Luis')
SELECT name FROM Sailors WHERE rating > (SELECT min(rating) FROM Sailors WHERE name = 'Luis')
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating >= 3
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Sailors
SELECT count(*) FROM Sailors
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT count(*) FROM Sailors WHERE name LIKE 'D%'
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(rating) , max(age) FROM Sailors
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.bid > 50 GROUP BY T1.bid
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 50 GROUP BY T1.bid
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name HAVING count(*) > 1
SELECT count(*) , T1.bid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.age > 1 GROUP BY T1.bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age > 1 GROUP BY T1.name
SELECT T1.rating , avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'red' GROUP BY T1.rating
SELECT T1.rating , avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'red' GROUP BY T1.rating
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color = 'red'
SELECT count(*) FROM Boats WHERE color = 'red'
SELECT T1.name FROM Boats AS T1 JOIN Reserves AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T2.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE bid = 'red')
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'red'
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T2.bid = T3.bid WHERE T3.name = 'Melon'
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING COUNT(*) > 2
SELECT CLASS FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock GROUP BY Headphone_ID HAVING count(*) > 2)
SELECT count(*) , CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(*) , CLASS FROM headphone WHERE Price > 200 GROUP BY CLASS
SELECT count(DISTINCT earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT T1.Earpads FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , class , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT model , class , construction FROM headphone ORDER BY price LIMIT 1
SELECT Construction , avg(Price) FROM headphone GROUP BY Construction
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT CLASS FROM headphone WHERE Earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE Earpads = "Comfort Pads"
SELECT CLASS FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT CLASS FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpad FROM headphone WHERE construction != 'plastic'
SELECT Earpad FROM headphone WHERE Construction != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name , Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT Name , Parking FROM store WHERE Neighborhood = "Tarzana"
SELECT count(DISTINCT Neighborhood) FROM store
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT Neighborhood , COUNT(*) FROM store GROUP BY Neighborhood
SELECT T2.Name , COUNT(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , SUM(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T1.Headphone_ID = T3.Headphone_ID GROUP BY T2.Name
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Name FROM store WHERE Store_ID NOT IN (SELECT Store_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT Model FROM headphone WHERE Headphone_ID NOT IN (SELECT Headphone_ID FROM stock)
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY SUM(T2.Quantity) DESC LIMIT 1
SELECT T1.Model FROM headphone AS T1 JOIN stock AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Model ORDER BY sum(T2.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T2.Name = "Woodman"
SELECT Neighborhood FROM store EXCEPT SELECT T1.Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T2.Headphone_ID = T3.Headphone_ID
SELECT Neighborhood FROM store EXCEPT SELECT T1.Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID JOIN headphone AS T3 ON T2.Headphone_ID = T3.Headphone_ID
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM paper
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper WHERE venue = 'NAACL 2000'
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009
SELECT count(*) FROM paper WHERE YEAR = 2009 AND title LIKE "%Columbia University%"
SELECT name , address FROM affiliation
SELECT name , address FROM affiliation
SELECT venue , YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue FROM paper ORDER BY YEAR
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Harvard University'
SELECT title , paper_id FROM paper WHERE name = "Mckeown"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford' INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia'
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" INTERSECT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" AND T3.name = "Kathleen" INTERSECT SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow" AND T3.name = "Owen"
SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" EXCEPT SELECT T1.title , T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" EXCEPT SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Rambow"
SELECT T1.title , T2.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown" OR T3.name = "Rambow"
SELECT T1.name , count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) , T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*)
SELECT affiliation_id FROM Author_list GROUP BY affiliation_id ORDER BY count(*) ASC
SELECT name FROM affiliation ORDER BY count(*) ASC
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) > 50
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) > 50)
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM author_list GROUP BY author_id HAVING count(*) = 1)
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name HAVING count(*) = 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id = 'A00-1002'
SELECT count(*) FROM citation AS T1 JOIN paper AS T2 ON T1.cited_paper_id = T2.paper_id WHERE T2.paper_id LIKE "A00-1002"
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id WHERE T2.paper_id = "D12-1027"
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id WHERE t1.paper_id = "D12-1027"
SELECT paper_id , count(*) FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id , count(*) FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id GROUP BY t1.title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 1)
SELECT paper_id , count(*) FROM Citation GROUP BY paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) , T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM Citation AS T1 JOIN Author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT count(*) FROM Citation AS T1 JOIN Author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT count(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.cited_paper_id = T3.author_id WHERE T3.name = "Kathleen" AND T3.email = "mckeown"
SELECT count(*) FROM citation AS T1 JOIN author AS T2 ON T1.cited_paper_id = T2.author_id WHERE T2.name = 'Mckeown' AND T2.name = 'Kathleen'
SELECT T1.name , count(*) FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.author_id FROM author AS T1 JOIN citation AS T2 ON T1.author_id = T2.cited_paper_id GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper WHERE author_id = (SELECT author_id FROM author_list WHERE name = 'Mckeown , Kathleen' )
SELECT venue , YEAR FROM paper WHERE name = 'Mckeown , Kathleen'
SELECT venue , YEAR FROM paper WHERE name LIKE 'Columbia University'
SELECT venue , YEAR FROM paper WHERE name = 'Columbia University'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name , T1.address FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND title LIKE "%Columbia%"
SELECT count(*) FROM paper WHERE YEAR <= 2009 AND title != 'Abstract' AND author_list WHERE affiliation_id = 'Columbia University'
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND title LIKE "Stanford%"
SELECT count(*) FROM paper WHERE YEAR BETWEEN 2000 AND 2009 AND title LIKE "%Stanford University%"
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paper GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id WHERE T1.name = 'Mckeown' AND T1.email = 'Kathleen'
SELECT count(*) FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id WHERE T2.name = "Mckeown" AND T2.name = "Kathleen"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2023 AND T1.name = "Mckeown , Kathleen" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.title = 'Mckeown , Kathleen' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id FROM paper WHERE title LIKE '%translation%'
SELECT paper_id , title FROM paper EXCEPT SELECT paper_id , title FROM citation
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT venue) , YEAR FROM paper GROUP BY YEAR
SELECT count(*) , venue , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , affiliation_id FROM Author_list GROUP BY affiliation_id
SELECT affiliation_id , count(*) FROM Author_list GROUP BY affiliation_id
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT title FROM paper WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT count(*) FROM author_list WHERE author_id NOT IN (SELECT author_id FROM citation GROUP BY author_id HAVING count(*) > 50)
SELECT count(*) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year < 2023 AND T2.paper_id NOT IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(*) > 50)
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'ACL'
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'NAACL' INTERSECT SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'ACL'
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list)
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , YEAR , LOCATION FROM conference
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT count(*) , YEAR FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT institution_name , LOCATION , founded FROM institution
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.Institution_Name , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_Name
SELECT T1.Institution_ID , count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Founded > 1800 GROUP BY T1.Institution_ID
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT Institution_Name FROM institution WHERE Institution_ID NOT IN (SELECT Institution_ID FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = 'United States'
SELECT max(age) , min(age) FROM staff
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.Nationality = 'Canada'
SELECT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = 'Canada'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.role = 'sponsor'
SELECT name FROM staff WHERE institution_id IN (SELECT institution_id FROM staff WHERE role = 'ACL') INTERSECT SELECT name FROM staff WHERE institution_id IN (SELECT institution_id FROM staff WHERE role = 'NACCL')
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = 'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = 'NACCL'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.Conference_ID = T3.Conference_ID WHERE T3.Year = 2003 OR T3.Year = 2004
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id WHERE T2.conference_id BETWEEN 2003 AND 2004
SELECT conference_name , YEAR , count(*) FROM conference GROUP BY conference_name
SELECT T1.Conference_Name , T1.Year , count(*) FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID GROUP BY T1.Conference_ID
SELECT conference_name FROM conference GROUP BY conference_name ORDER BY count(*) DESC LIMIT 2
SELECT conference_name FROM conference GROUP BY conference_name ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation)
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM conference_participation WHERE YEAR = 2004)
SELECT institution_name , LOCATION FROM institution EXCEPT SELECT T1.institution_name , T1.location FROM institution AS T1 JOIN conference_participation AS T2 ON T1.institution_id = T2.staff_id WHERE T2.conference_year = 2004
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT avg(age) FROM PilotSkills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT pilot_name FROM PilotSkills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT LOCATION FROM Hangar WHERE plane_name = "F-14 Fighter"
SELECT LOCATION FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT count(DISTINCT LOCATION) FROM Hangar
SELECT plane_name FROM PilotSkills WHERE age = 32 AND pilot_name = 'Jones'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT count(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
SELECT pilot_name FROM PilotSkills WHERE plane_name = "Piper Cub" ORDER BY age LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age = (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Hangar WHERE LOCATION = 'Chicago'
SELECT count(*) FROM Hangar WHERE LOCATION = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE age = 41 AND pilot_name = 'Smith'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(DISTINCT plane_name) FROM PilotSkills
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT LOCATION FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM PilotSkills ORDER BY plane_name
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT count(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35 OR age < 30
SELECT pilot_name , age FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter' AND age > 35 OR age < 30
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM PilotSkills
SELECT avg(age) , min(age) FROM PilotSkills
SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE LOCATION = 'Austin') INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name IN (SELECT plane_name FROM Hangar WHERE LOCATION = 'Boston')
SELECT pilot_name FROM PilotSkills WHERE LOCATION = 'Austin' INTERSECT SELECT pilot_name FROM PilotSkills WHERE LOCATION = 'Boston'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT plane_name , avg(age) FROM PilotSkills GROUP BY plane_name
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT plane_name , count(*) FROM Hangar GROUP BY plane_name
SELECT plane_name , count(*) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name ORDER BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT plane_name , max(age) FROM PilotSkills GROUP BY plane_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM PilotSkills GROUP BY pilot_name
SELECT location , count(*) , avg(age) FROM PilotSkills GROUP BY location
SELECT location , count(*) , avg(age) FROM Hangar GROUP BY location
SELECT count(*) FROM PilotSkills WHERE avg(age) < 35
SELECT plane_name , count(*) FROM PilotSkills GROUP BY plane_name HAVING avg(age) < 35
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.age LIMIT 1
SELECT pilot_name , age FROM PilotSkills WHERE LOCATION = 'Austin'
SELECT pilot_name , age FROM PilotSkills WHERE LOCATION = 'Austin'
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT count(*) FROM PilotSkills WHERE age < (SELECT min(age) FROM PilotSkills WHERE plane_name = 'F-14 Fighter')
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE plane_name = 'Piper Cub')
SELECT count(*) FROM PilotSkills WHERE age > (SELECT min(age) FROM PilotSkills WHERE pilot_name = 'Piper Cub')
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT Name , Population FROM district WHERE Area_km > (SELECT avg(Area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(Population) FROM district WHERE Area_km >= (SELECT min(Area_km) FROM district ORDER BY Population DESC LIMIT 3)
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
SELECT Name FROM district WHERE Government_website LIKE 'gov'
SELECT District_ID , Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT Name , Speach_title FROM spokesman
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT avg(Points) FROM spokesman)
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Start_year < 2004
SELECT T1.District_ID , count(*) , T2.Name FROM spokesman_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T3.Rank_position = 1 INTERSECT SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID JOIN spokesman AS T3 ON T2.Spokesman_ID = T3.Spokesman_ID WHERE T3.Rank_position = 2
SELECT T1.Name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(population) , avg(population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T1.District_ID
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY birthYear DESC LIMIT 1
SELECT T1.title , T1.location FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.birthYear DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = "226"
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM paintings
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM Sculptures
SELECT medium FROM paintings WHERE paintingID = 80
SELECT medium FROM paintings WHERE paintingID = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT title , year FROM sculptures WHERE LOCATION != 226
SELECT title , YEAR FROM sculptures WHERE LOCATION != '226'
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT fname , lname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear LIMIT 1
SELECT birthYear FROM Artists ORDER BY birthYear ASC LIMIT 1
SELECT fname , age FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT fname , age FROM Artists ORDER BY birthYear DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT count(*) FROM paintings WHERE LOCATION = "240"
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.deathYear = (SELECT max(deathYear) FROM Artists)
SELECT count(*) FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid ORDER BY T2.birthyear DESC LIMIT 1
SELECT T1.fname , T1.birthyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = "Mary"
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = "Mary"
SELECT T1.width_mm FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear < 1850
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT LOCATION , medium FROM paintings WHERE painterID = (SELECT artistID FROM artists WHERE fname = 'Pablo')
SELECT LOCATION , medium FROM paintings WHERE painterID = (SELECT artistID FROM artists WHERE fname = "Pablo")
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "lithographic"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterID WHERE T2.medium = "lithographic"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884 AND T2.location = "canvas"
SELECT T1.birthYear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year = 1884
SELECT DISTINCT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "medium" AND T2.location = 241
SELECT T1.fname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" AND T2.location = 241
SELECT paintingID , medium FROM paintings GROUP BY medium
SELECT count(*) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT paintingID , LOCATION FROM paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(DISTINCT LOCATION) FROM paintings WHERE YEAR < 1900
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = "oil"
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear > 1910
SELECT DISTINCT painterid FROM paintings WHERE medium = "oil" AND LOCATION = 240
SELECT DISTINCT painterID FROM Paintings WHERE medium = "oil" AND LOCATION = 240
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings)
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE LOCATION = 'canvas')
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT DISTINCT paintingID FROM paintings WHERE YEAR > (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT painterid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT painterid FROM paintings ORDER BY birthyear DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT DISTINCT T2.fname FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID ORDER BY T2.fname
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.title
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.height_mm
SELECT DISTINCT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID ORDER BY T1.height_mm
SELECT T1.title , T1.year FROM paintings AS T1 JOIN sculptures AS T2 ON T1.painterID = T2.sculptorID WHERE T1.year BETWEEN 1900 AND 1950
SELECT T1.title , T1.year FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T2.birthYear >= 1900 AND T2.birthYear <= 1950
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222
SELECT t1.title FROM paintings AS t1 JOIN artists AS t2 ON t1.painterID = t2.artistID WHERE t2.artistID = 222
SELECT painterid FROM paintings WHERE YEAR < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1
SELECT painterID FROM Paintings WHERE YEAR < 1900 GROUP BY painterID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 OR YEAR > 1930
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT LOCATION FROM paintings WHERE medium = "on panel" INTERSECT SELECT LOCATION FROM paintings WHERE medium = "on canvas"
SELECT LOCATION FROM paintings WHERE medium = 'on panels' INTERSECT SELECT LOCATION FROM paintings WHERE medium = 'on canvas'
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE YEAR > 1930
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND LOCATION = 241
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" AND location = 241
SELECT max(height_mm) , max(painterID) FROM paintings WHERE YEAR < 1900
SELECT height_mm , painterID FROM paintings WHERE YEAR < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT avg(height_mm) , avg(width_mm) , painterID FROM paintings GROUP BY painterID ORDER BY painterID
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.deathyear HAVING count(*) <= 3
SELECT T1.deathyear FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) < 4
SELECT T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T1.deathYear ORDER BY count(*) ASC LIMIT 1
SELECT T1.deathyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingID , height_mm FROM paintings WHERE width_mm = (SELECT max(width_mm) FROM paintings WHERE LOCATION = 240)
SELECT height_mm , painterid FROM paintings WHERE height_mm = (SELECT max(height_mm) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = 240)
SELECT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE gallery = 240)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 3
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 1
SELECT paintingID , LOCATION , title FROM paintings WHERE medium = "oil" ORDER BY YEAR
SELECT painterid , LOCATION , title FROM paintings ORDER BY YEAR
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT YEAR , LOCATION , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT fname , lname FROM Artists EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "paint"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND mediumOn != "medium"
SELECT LOCATION FROM paintings WHERE YEAR < 1885 AND medium != "canvas"
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Winning_driver FROM race WHERE Pole_Position != "Junior Strous"
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT max(Age) , min(Age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT T1.Driver_Name , COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name
SELECT count(*) , T1.Driver_ID FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Age ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING count(*) >= 2
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_Name HAVING COUNT(*) >= 2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Driver_Name FROM driver WHERE Constructor != "Bugatti"
SELECT Constructor , COUNT(*) FROM driver GROUP BY Constructor
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "James Hinchcliffe" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = "Carl Skerlong"
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position != "James Hinchcliffe"
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = "James Hinchcliffe"
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT max(health_score) , min(health_score) FROM countries WHERE name != 'Norway'
SELECT count(DISTINCT T1.name) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT count(DISTINCT T1.name) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T1.name , T2.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name , count(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T1.name , T2.language FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING count(*) >= 2
SELECT avg(overall_score) FROM countries WHERE id IN (SELECT country_id FROM official_languages WHERE language_id = 1)
SELECT avg(overall_score) FROM countries WHERE id IN (SELECT country_id FROM official_languages WHERE language_id = 1)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name , avg(T2.overall_score) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT country , town_city FROM Addresses
SELECT country , town_city FROM Addresses
SELECT T1.county_state_province , T2.property_address_id FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T1.county_state_province
SELECT feature_description FROM Features WHERE feature_name = "rooftop"
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.feature_name , T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM Properties
SELECT min(room_count) FROM Properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT age_category_code FROM Users WHERE other_user_details LIKE '%Mother%'
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(room_count) FROM Properties WHERE property_type_code = 'Garden'
SELECT avg(T1.room_count) FROM Rooms AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_name = "garden"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Property_Features AS T3 ON T2.property_id = T3.property_id WHERE T3.feature_name = "swimming pool"
SELECT T1.town_city FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.property_type_code = "swimming_pool"
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price ASC LIMIT 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1
SELECT avg(room_count) FROM Properties
SELECT avg(room_count) FROM Properties
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_string FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime , search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string , search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id WHERE T2.owner_user_id != (SELECT user_id FROM User_Property_History GROUP BY user_id HAVING count(*) <= 2)
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Users AS T3 ON T2.owner_user_id = T3.user_id WHERE T3.user_id NOT IN (SELECT user_id FROM User_Property_History GROUP BY user_id HAVING count(*) <= 2)
SELECT T1.user_category_code , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT user_id , user_category_code FROM User_Searches GROUP BY user_id HAVING count(*) = 1
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.user_id = (SELECT user_id FROM User_Searches ORDER BY search_datetime LIMIT 1)
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code JOIN User_Searches AS T3 ON T2.user_id = T3.user_id ORDER BY T3.search_datetime LIMIT 1
SELECT login_name FROM Users WHERE age_category_code = 'senior' ORDER BY first_name
SELECT login_name FROM Users WHERE age_category_code = 'Senior' ORDER BY first_name
SELECT count(*) FROM User_Searches WHERE is_buyer = '1'
SELECT count(*) FROM User_Searches WHERE is_buyer = '1'
SELECT date_registered FROM Users WHERE login_name = 'Ratione'
SELECT date_registered FROM Users WHERE login_name = "ratione"
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 1
SELECT first_name , middle_name , last_name , login_name FROM Users WHERE is_seller = 'Y'
SELECT building , street , town_city FROM Addresses WHERE age_category_code = 'Senior'
SELECT line_1_number_building , line_2_number_street , town_city FROM Addresses WHERE age_category_code = 'Senior'
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id GROUP BY T1.property_name HAVING count(*) >= 2
SELECT count(*) FROM Properties AS T1 JOIN Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Features AS T3 ON T2.feature_id = T3.feature_id GROUP BY T1.property_name HAVING count(*) >= 2
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT count(*) , property_id FROM Property_Photos GROUP BY property_id
SELECT T1.owner_user_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id , count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT sum(price_max) FROM Properties WHERE owner_user_id IN (SELECT user_id FROM Users WHERE first_name LIKE "single" OR last_name LIKE "student")
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id = T2.user_id WHERE T2.user_category_code = "single" OR T2.user_category_code = "student"
SELECT datestamp , property_name FROM User_Property_History ORDER BY datestamp
SELECT datestamp , property_name FROM properties ORDER BY datestamp
SELECT property_type_description , property_type_code FROM Ref_Property_Types GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT property_type_description FROM properties GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = "Over 60"
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT country FROM Addresses WHERE user_address_id IN (SELECT user_id FROM Users WHERE first_name = "Robbie")
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.property_name = T2.datestamp
SELECT T1.first_name , T1.last_name FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id JOIN Properties AS T3 ON T2.property_id = T3.property_id WHERE T3.owner_user_id = T1.user_id
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT search_string FROM User_Searches WHERE user_id NOT IN (SELECT user_id FROM User_Property_History)
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2
SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Property_History AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T1.last_name , T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2
SELECT count(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist
SELECT max(weight) , min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name , result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.nation = 'Russia' OR T3.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.result > '4:21.558'
SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Bradley Wiggins' INTERSECT SELECT T1.product_name , T1.price FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id JOIN cyclist AS T3 ON T2.cyclist_id = T3.id WHERE T3.name = 'Antonio Tauler'
SELECT name , nation , result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT count(*) , cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT max(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY max(Price) DESC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price DESC LIMIT 1
SELECT min(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY min(Price) ASC LIMIT 1
SELECT id , flavor FROM goods ORDER BY price ASC LIMIT 1
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE flavor = "apple"
SELECT id FROM goods WHERE Price < 3
SELECT id FROM goods WHERE Price < 3
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "cake"
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T3.id = T2.item WHERE T3.flavor = "lemon"
SELECT food , count(*) FROM goods GROUP BY food
SELECT food , count(*) FROM goods GROUP BY food
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId GROUP BY T1.LastName HAVING COUNT(*) > 10
SELECT LastName FROM customers GROUP BY LastName HAVING COUNT(*) > 10
SELECT count(DISTINCT flavor) FROM goods WHERE food = "Cake"
SELECT count(DISTINCT Food) FROM goods
SELECT Flavor FROM goods WHERE Food = "Croissant"
SELECT Flavor FROM goods WHERE Food = "croissant"
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT DISTINCT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt WHERE T2.CustomerId = 15
SELECT Food , avg(Price) , max(Price) , min(Price) FROM goods GROUP BY Food
SELECT Food , avg(Price) , min(Price) , max(Price) FROM goods GROUP BY Food
SELECT receiptnumber FROM receipts WHERE item = 'Cake' INTERSECT SELECT receiptnumber FROM receipts WHERE item = 'Cookie'
SELECT receiptnumber FROM receipts WHERE item = 'cake' INTERSECT SELECT receiptnumber FROM receipts WHERE item = 'cookie'
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.LastName = "LOGAN" AND T1.Food = "Croissant"
SELECT T1.receiptnumber FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id WHERE T2.lastname = "Logan" AND T1.food = "croissant"
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.Item GROUP BY T1.ReceiptNumber ORDER BY max(T2.Price) ASC LIMIT 1
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.CustomerId = T2.Item ORDER BY T2.Price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT Food , COUNT(*) FROM goods GROUP BY Food
SELECT Food , COUNT(*) FROM goods GROUP BY Food
SELECT Food , AVG(Price) FROM goods GROUP BY Food
SELECT food , avg(price) FROM goods GROUP BY food
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT id FROM goods WHERE flavor = "Apricot" AND price < 5
SELECT Flavor FROM goods WHERE Price > 10
SELECT Flavor FROM goods WHERE Price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Tart')
SELECT DISTINCT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Price > 13
SELECT DISTINCT T1.ReceiptNumber FROM items AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Price > 13
SELECT T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.ReceiptNumber JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 15
SELECT T1.Date FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT Flavor , Price FROM goods WHERE Id LIKE "70%"
SELECT id , price FROM goods WHERE id LIKE "70"
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT id FROM goods WHERE flavor = "good" ORDER BY id
SELECT DISTINCT id FROM goods
SELECT * FROM receipts WHERE customerid = 12 OR flavor = 'apple'
SELECT receiptnumber FROM receipts WHERE customerid = 12 OR flavor = "apple"
SELECT Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
SELECT * FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR (SELECT max(price) FROM goods) > 10
SELECT receiptnumber FROM receipts WHERE date = (SELECT min(date) FROM receipts) OR price > 10
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT id FROM goods WHERE price BETWEEN 3 AND 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T1.FirstName , T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId ORDER BY T2.Date LIMIT 1
SELECT avg(Price) FROM goods WHERE Flavor = "Blackberry" OR Flavor = "Blueberry"
SELECT avg(Price) FROM goods WHERE Flavor = "Blackberry" OR Flavor = "Blueberry"
SELECT min(Price) FROM goods WHERE Flavor = "Cheese"
SELECT id , flavor , price FROM goods WHERE flavor = "cheese" ORDER BY price ASC LIMIT 1
SELECT max(price) , min(price) , avg(price) FROM goods GROUP BY flavor
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(Price) , max(Price) FROM goods WHERE Food = "food" ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Date FROM receipts GROUP BY Date ORDER BY count(*) DESC LIMIT 3
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT customerid , count(*) FROM receipts GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT Date , COUNT(DISTINCT CustomerId) FROM receipts GROUP BY Date
SELECT count(*) , Date FROM receipts GROUP BY Date
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN goods AS T3 ON T2.item = T3.id WHERE T3.flavor = 'Tart' AND T3.food = 'apple'
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.ord = T3.ord JOIN goods AS T4 ON T3.item = T4.id WHERE T4.flavor = "apple" AND T4.food = "Tart"
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'croissant')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id , flavor FROM goods ORDER BY flavor
SELECT id , flavor FROM goods ORDER BY flavor
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = "chocolate" EXCEPT SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.id = T2.id WHERE T2.flavor = "chocolate" AND T1.ordinal > 10
SELECT T1.Item FROM items AS T1 JOIN goods AS T2 ON T1.Id = T2.Id WHERE T2.Flavor = "chocolate" GROUP BY T1.Item HAVING COUNT(*) <= 10
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT Flavor FROM goods WHERE Food = "Cake" EXCEPT SELECT Flavor FROM goods WHERE Food = "Tart"
SELECT T1.Food FROM goods AS T1 JOIN items AS T2 ON T1.Id = T2.Item GROUP BY T1.Food ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.Item FROM items AS T1 JOIN receipts AS T2 ON T1.Receipt = T2.Receipt ORDER BY T2.Date DESC LIMIT 3
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT customerid FROM receipts GROUP BY customerid HAVING sum(price) > 150
SELECT customerid FROM customers GROUP BY customerid HAVING avg(price) > 5
SELECT avg(price) , id FROM goods GROUP BY id HAVING avg(price) > 5
SELECT Date FROM receipts WHERE sum(T1.price) > 100
SELECT Date FROM receipts AS T1 JOIN goods AS T2 ON T1.Item = T2.Id WHERE T2.Price > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , Make FROM driver WHERE Points > 150 GROUP BY Make
SELECT Make , count(*) FROM driver WHERE Points > 150 GROUP BY Make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(age) , make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT Make FROM team WHERE Car_Owner = "Buddy Arrington"
SELECT max(Points) , min(Points) FROM driver
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT count(*) FROM driver WHERE Points < 150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver , Country FROM driver
SELECT Driver , Country FROM driver
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT max(Points) FROM driver WHERE Country = "Dublin"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id WHERE T2.Official_native_language = "English"
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id WHERE T2.Official_native_language = "English"
SELECT Country FROM driver WHERE Points > 150
SELECT Country FROM driver WHERE Points > 150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Capital FROM country WHERE Country = (SELECT Country FROM driver ORDER BY Points DESC LIMIT 1)
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team EXCEPT SELECT Team FROM team_driver
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT Country FROM driver WHERE Make = "Dodge" INTERSECT SELECT Country FROM driver WHERE Make = "Chevrolet"
SELECT sum(Points) , avg(Points) FROM driver
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT Country FROM country WHERE Country NOT IN (SELECT Country FROM driver)
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID GROUP BY T1.Manager ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager , T1.Sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID GROUP BY T1.Manager , T1.Sponsor ORDER BY count(*) DESC LIMIT 1
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Manager HAVING count(*) >= 2
SELECT T1.Manager , T1.Car_Owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Manager HAVING count(*) >= 2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Affiliation FROM institution WHERE City != "Vancouver"
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name , T1.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Nickname FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Enrollment LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT sum(T1.Number_of_Championships) FROM Championship AS T1 JOIN Institution AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Affiliation = 'Public'
SELECT sum(T1.Number_of_Championships) FROM Championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T2.Affiliation = 'Public'
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT affiliation , count(*) FROM institution GROUP BY affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded FROM institution GROUP BY Founded HAVING COUNT(*) > 1
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Nickname FROM institution ORDER BY Capacity DESC
SELECT Nickname FROM Championship ORDER BY Capacity DESC
SELECT sum(Enrollment) FROM institution WHERE City = "Vancouver" OR City = "Calgary"
SELECT * FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
SELECT DISTINCT contents FROM boxes WHERE LOCATION = 'New York'
SELECT DISTINCT contents FROM boxes WHERE LOCATION = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150
SELECT warehouse , avg(value) FROM Boxes GROUP BY warehouse
SELECT avg(Value) , Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT avg(capacity) , sum(capacity) FROM Warehouses
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT contents , avg(value) , max(value) FROM boxes GROUP BY contents
SELECT Contents FROM boxes GROUP BY Contents ORDER BY sum(Value) DESC LIMIT 1
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM boxes
SELECT avg(Value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT LOCATION FROM Warehouses
SELECT DISTINCT LOCATION FROM Warehouses
SELECT T1.code FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = 'Chicago' OR T2.Location = 'New York'
SELECT T1.code FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = 'Chicago' OR T2.Location = 'New York'
SELECT sum(T1.Value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = 'Chicago' OR T2.Location = 'New York'
SELECT sum(Value) FROM Boxes WHERE LOCATION = 'Chicago' OR LOCATION = 'New York'
SELECT contents FROM Boxes WHERE warehouse = "Chicago" INTERSECT SELECT contents FROM Boxes WHERE warehouse = "New York"
SELECT Contents FROM Boxes WHERE Warehouse = 'Chicago' INTERSECT SELECT Contents FROM Boxes WHERE Warehouse = 'New York'
SELECT contents FROM boxes WHERE warehouse != 'New York'
SELECT Contents FROM Boxes WHERE Warehouse != (SELECT Code FROM Warehouses WHERE LOCATION = 'New York')
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" EXCEPT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" OR T2.contents = "Scissors"
SELECT DISTINCT warehouse FROM boxes WHERE contents = 'Rocks' OR contents = 'Scissors'
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Rocks" INTERSECT SELECT T1.location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = "Scissors"
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT Contents FROM boxes WHERE Value > (SELECT avg(Value) FROM boxes)
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Rocks')
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = 'Scissors')
SELECT code , contents FROM boxes WHERE value > (SELECT min(value) FROM boxes WHERE contents = "Scissors")
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(T1.Value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Capacity = (SELECT max(capacity) FROM Warehouses)
SELECT T1.code , avg(T2.value) FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.code HAVING avg(T2.value) > 150
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT sum(capacity) , avg(capacity) , max(capacity) , LOCATION FROM Warehouses GROUP BY LOCATION
SELECT LOCATION , sum(capacity) , avg(capacity) , max(capacity) FROM Warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM Warehouses
SELECT sum(capacity) FROM Warehouses
SELECT warehouse , max(value) FROM boxes GROUP BY warehouse
SELECT T1.location , max(T2.value) FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.location
SELECT warehouse , count(*) FROM Boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT location) FROM Warehouses WHERE contents = 'Rocks'
SELECT count(DISTINCT warehouse) FROM boxes
SELECT T1.code , T2.location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code
SELECT code , warehouse FROM boxes
SELECT code FROM boxes WHERE LOCATION = 'Chicago'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'Chicago'
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT contents) , warehouse FROM boxes GROUP BY warehouse
SELECT code FROM Warehouses WHERE capacity = '0'
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > capacity
SELECT sum(Value) FROM Boxes WHERE Warehouse != 'Chicago'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT university_name , city , state FROM university ORDER BY university_name
SELECT count(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT count(*) FROM university WHERE state = 'Illinois' OR state = 'Ohio'
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT Home_Conference FROM university
SELECT DISTINCT home_conf FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_confERENCE , count(*) FROM university GROUP BY home_confERENCE
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING avg(Enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY count(*) ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T1.Major_Name , T1.Major_Code FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.Major_Name , T1.Major_Code , T1.Rank FROM major AS T1 JOIN major_ranking AS T2 ON T1.Major_ID = T2.Major_ID JOIN university AS T3 ON T2.University_ID = T3.University_ID WHERE T3.University_Name = "Augustana College"
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" AND T2.Rank = 1
SELECT T1.University_Name , T1.City , T1.State FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T1.University_ID ASC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Rank 1" GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID ORDER BY T3.Major_Name DESC LIMIT 1
SELECT University_Name FROM university WHERE University_ID NOT IN (SELECT University_ID FROM major_ranking WHERE Rank = 1)
SELECT University_Name FROM university EXCEPT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "null"
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Urban Education"
SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Accounting" INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Major_Name = "Urban Education"
SELECT T1.University_Name , T1.overall_ranking FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T1.State = "Wisconsin"
SELECT University_Name , Rank FROM university WHERE State = 'Wisconsin'
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Research_point DESC LIMIT 1
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT university_name FROM university ORDER BY reputation_point ASC
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T1.University_Name DESC LIMIT 3
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T3.Major_Name = "Accounting" ORDER BY T1.University_Name DESC LIMIT 3
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.Rank <= 5
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT T1.University_Name , T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name , T1.Citation_point FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university GROUP BY State HAVING count(*) > 2 AND Enrollment < 3000
SELECT Title FROM Movies WHERE Rating = "null"
SELECT Title FROM Movies WHERE Rating = "null"
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT Title FROM Movies WHERE Rating LIKE '%G%'
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT T1.Title , T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT T1.Name , T2.Movie FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(*) FROM Movies WHERE Rating = 'G'
SELECT count(*) FROM Movies WHERE rating = 'G'
SELECT count(*) FROM MovieTheaters
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT T1.Title) FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT count(DISTINCT title) FROM Movies
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT T1.rating FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name LIKE '%Citizen%'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Movie = T2.Code WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' OR T2.Name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' OR T2.Name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Odeon' INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = 'Imperial'
SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Odeon" INTERSECT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T2.Name = "Imperial"
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T2.name = 'Odeon'
SELECT Title FROM Movies ORDER BY Title
SELECT title FROM Movies ORDER BY title
SELECT Title FROM Movies ORDER BY Rating
SELECT Title FROM Movies ORDER BY Rating
SELECT name FROM MovieTheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT rating , count(*) FROM Movies GROUP BY rating
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT count(*) FROM Movies WHERE Rating != "null"
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters GROUP BY Name HAVING COUNT(*) >= 1
SELECT Name FROM MovieTheaters WHERE Movie = "null"
SELECT Name FROM MovieTheaters WHERE Movie = "null"
SELECT T2.Name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G'
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G'
SELECT title FROM Movies
SELECT title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT * FROM Movies WHERE Rating = 'Unrated'
SELECT title FROM Movies EXCEPT SELECT T1.title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie
SELECT Title FROM Movies EXCEPT SELECT T1.Title FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie
SELECT Recipient FROM PACKAGE ORDER BY Weight DESC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender ORDER BY T2.Weight DESC LIMIT 1
SELECT sum(weight) FROM PACKAGE WHERE sender = "Leo Wong"
SELECT sum(weight) FROM PACKAGE WHERE sender = "Leo Wong"
SELECT Position FROM Employee WHERE Name = "Amy Wong"
SELECT Position FROM Employee WHERE Name = "Amy Wong"
SELECT Salary , Position FROM Employee WHERE Name = "Turanga Leela"
SELECT Salary , Position FROM Employee WHERE Name = "Turanga Leela"
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position = 'Intern'
SELECT LEVEL FROM Has_clearance WHERE manager = 'Physician'
SELECT LEVEL FROM Has_clearance WHERE manager = 'physician'
SELECT packagenumber FROM package WHERE sender = "Leo Wong"
SELECT count(*) FROM PACKAGE WHERE sender = 'Leo Wong'
SELECT packagenumber FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT packagenumber FROM PACKAGE WHERE sender = (SELECT accountnumber FROM CLIENT WHERE name = 'Leo Wong')
SELECT * FROM PACKAGE WHERE Sender = (SELECT AccountNumber FROM Client WHERE Name = 'Leo Wong')
SELECT DISTINCT packagenumber FROM PACKAGE WHERE sender = 'Leo Wong' OR recipient = 'Leo Wong'
SELECT count(*) FROM PACKAGE WHERE sender = 'Ogden Wernstrom' AND recipient = 'Leo Wong'
SELECT count(*) FROM PACKAGE WHERE sender = "Ogden Wernstrom" AND recipient = "Leo Wong"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT Contents FROM PACKAGE WHERE Sender = "John Zoidfarb"
SELECT T1.packagenumber , T1.weight FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = 'John'
SELECT packagenumber , weight FROM package WHERE sender = "John" OR sender = "similar"
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3
SELECT packagenumber , weight FROM PACKAGE ORDER BY weight ASC LIMIT 3
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.Name ORDER BY COUNT(*) ASC LIMIT 1
SELECT min(packagenumber) , sender FROM PACKAGE GROUP BY sender ORDER BY count(*) ASC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.Name HAVING count(*) > 1
SELECT T1.Name FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Coordinates FROM Planet WHERE Name = "Mars"
SELECT Name , Coordinates FROM PLANET ORDER BY Name
SELECT name , coordinates FROM planet ORDER BY name
SELECT shipmentid FROM shipment WHERE manager = "Phillip J. Fry"
SELECT shipmentid FROM shipment WHERE manager = "Phillip J Fry"
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" AND Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT ShipmentID FROM Shipment WHERE Planet = "Mars" OR Manager = "Turanga Leela"
SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = "Turanga Leela" AND T1.Planet = "Mars"
SELECT T1.Name , sum(T2.Shipment) FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name
SELECT count(*) , planet FROM shipment GROUP BY planet
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T1.Name
SELECT count(*) , manager FROM shipment GROUP BY manager
SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN SHIPMENT AS T2 ON T1.Shipment = T2.Shipment WHERE T2.Planet = "Mars"
SELECT sum(T2.Weight) FROM Shipment AS T1 JOIN PACKAGE AS T2 ON T1.ShipmentID = T2.Shipment
SELECT sum(T1.weight) , T2.name FROM PACKAGE AS T1 JOIN PLANET AS T2 ON T1.shipment = T2.planetID GROUP BY T2.name
SELECT sum(weight) , name FROM PACKAGE GROUP BY name
SELECT T1.Name FROM Planet AS T1 JOIN Shipment AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Shipment = '1' GROUP BY T1.Name HAVING sum(T2.Weight) > 30
SELECT T1.Name FROM PLANET AS T1 JOIN SHIPMENT AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Weight > 30
SELECT T1.packagenumber FROM PACKAGE AS T1 JOIN SHIPMENT AS T2 ON T1.shipment = T2.shipment JOIN PLANET AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" AND T1.sender = "Zapp Brannigan"
SELECT count(*) FROM PACKAGE WHERE sender = "Zapp Brannigan" AND shipment -> "Omicron Persei 8"
SELECT T1.packagenumber FROM PACKAGE AS T1 JOIN SHIPMENT AS T2 ON T1.shipment = T2.shipment JOIN PLANET AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8" OR T2.manager = "Zapp Brannigan"
SELECT count(*) FROM PACKAGE AS T1 JOIN SHIPMENT AS T2 ON T1.shipment = T2.shipment WHERE T2.planet = "Omicron Persei 8" OR T2.manager = "Zapp Brannigan"
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT packagenumber , weight FROM PACKAGE WHERE weight BETWEEN 10 AND 30
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT Name FROM Employee EXCEPT SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Planet = "Mars"
SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Level = "Omega III"
SELECT T1.Name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee WHERE T2.Level = "Omega III"
SELECT T2.Name FROM Has_clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T1.Level = "exact"
SELECT T1.Name FROM Planet AS T1 JOIN Has_Clearance AS T2 ON T1.PlanetID = T2.Planet WHERE T2.Level = "1"
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee)
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee)
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_clearance WHERE Planet = 'Mars')
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT Employee FROM Has_Clearance WHERE Planet = "Mars")
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != "Nintendo"
SELECT platform_name , market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT platform_name , platform_id FROM platform WHERE download_rank = 1
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) , min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT T1.Player_name , T1.Rank_of_the_year FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T2.Game_ID = T3.Game_ID WHERE T3.Title = "Super Mario World"
SELECT DISTINCT T1.Developer FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = "Auburn"
SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Auburn'
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = "Guard"
SELECT T1.Title , T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT Title , Platform_name FROM game
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = "Asia" OR T1.Market_district = "USA"
SELECT T2.Title FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T1.Market_district = 'Asia' OR T1.Market_district = 'USA'
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT T2.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.College = "Oklahoma" INTERSECT SELECT T2.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID WHERE T2.College = "Auburn"
SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.College = 'Oklahoma' OR T3.College = 'Auburn'
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Player_ID IN (SELECT Player_ID FROM player WHERE Position = 'Guard') )
SELECT Title FROM game WHERE Game_ID NOT IN (SELECT Game_ID FROM game_player WHERE Player_name = 'Guard')
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE YEAR_PROFTS_BILLION > 15 OR MONTH_PROFTS_BILLION > 1
SELECT name FROM press WHERE YEAR_PROFIT_billion > 15 OR month_profits_billion > 10000000
SELECT avg(month_profits_billion) , max(month_profits_billion) FROM press
SELECT avg(year_profits_billion) , max(year_profits_billion) , press_id FROM press GROUP BY press_id
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY month_profits_billion ASC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "MM" INTERSECT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID WHERE T2.Book_Series = "LT"
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "MM" INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = "LT"
SELECT Name , Age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.title , T2.name , T3.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY T1.sale_amount DESC LIMIT 3
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.Press_ID = T3.Press_ID ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT T1.name , sum(T2.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT T2.name , sum(T1.sale_amount) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name
SELECT count(*) , T1.Name FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Name HAVING sum(T1.Sale_Amount) > 1000
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id GROUP BY T2.name HAVING sum(T1.sale_amount) > 1000
SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID ORDER BY T2.Sale_Amount DESC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Sale_Amount = (SELECT max(Sale_Amount) FROM book)
SELECT T1.name , T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T1.Gender FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM author EXCEPT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T2.Press_ID = T3.Press_ID WHERE T3.Name = "Accor"
SELECT Name FROM author EXCEPT SELECT T1.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T2.Press_ID = T3.Press_ID WHERE T3.Name = "Accor"
SELECT name , YEAR_PROFIT_BILLION FROM press WHERE press_id IN (SELECT press_id FROM book GROUP BY press_id HAVING count(*) > 2)
SELECT T1.Name , T1.Year_Profits_billion FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) FROM AUTHORS
SELECT author_name FROM AUTHORS
SELECT author_name , other_details FROM AUTHORS
SELECT other_details FROM Authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id = 4
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name WHERE T2.document_name = "Travel to Brazil"
SELECT count(*) FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T2.author_name = "Era Kerluke"
SELECT author_name , document_description FROM Documents
SELECT document_id , author_name FROM Documents WHERE author_name = "Bianka Cummings"
SELECT authors.author_name , authors.other_details FROM authors JOIN documents ON documents.author_name = authors.author_name WHERE documents.document_name = "Travel to China"
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT T1.author_name FROM authors AS T1 JOIN documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.author_name FROM Authors AS T1 JOIN Documents AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT count(*) FROM Business_Processes
SELECT next_process_id , process_name , process_description FROM Business_processes WHERE process_id = 9
SELECT process_name FROM Business_processes WHERE next_process_id = 9
SELECT count(*) FROM Process_outcome_code
SELECT process_outcome_code , process_outcome_description FROM Process_outcomes
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = "working"
SELECT count(*) FROM Process_status
SELECT process_status_code , process_status_description FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = "ct"
SELECT count(*) FROM Staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = "HR"
SELECT count(*) FROM Documents_Processes
SELECT process_id FROM Documents_Processes WHERE process_outcome_code = 'list'
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_Processes
SELECT process_id FROM Business_processes WHERE process_id NOT IN (SELECT process_id FROM Documents_processes)
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_Outcomes AS T1 JOIN Process_Status AS T2 ON T1.process_outcome_code = T2.process_outcome_code WHERE T1.process_outcome_code = "0"
SELECT T1.process_name FROM Business_processes AS T1 JOIN Documents_processes AS T2 ON T1.process_id = T2.process_id JOIN Documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM Documents_Processes GROUP BY process_id
SELECT count(*) FROM Documents AS T1 JOIN Documents_Processes AS T2 ON T1.document_id = T2.document_id JOIN Staff_in_Processes AS T3 ON T2.process_id = T3.process_id WHERE T1.document_id = 0 AND T3.process_id = 9
SELECT staff_id , count(*) FROM Staff_in_Processes GROUP BY staff_id
SELECT staff_role_code , count(*) FROM Staff_in_Processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT agency_id , count(*) FROM Clients GROUP BY agency_id
SELECT count(*) , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_details
SELECT T1.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_id , T2.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = "Mac"
SELECT T1.client_details , T2.staff_details FROM Clients AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = "Bad"
SELECT client_details FROM clients WHERE sic_code = "Bad"
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices WHERE client_id IN (SELECT client_id FROM Clients)
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT client_id , count(*) FROM Invoices GROUP BY client_id
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT client_id , client_details FROM Clients GROUP BY client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status , T1.client_details , T2.agency_details , T2.agency_id FROM Invoices AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT invoice_status , invoice_details , T1.client_details , T2.agency_details FROM Invoices AS T1 JOIN Agencies AS T2 ON T1.client_id = T2.agency_id
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT payment_id , payment_details FROM Payments WHERE invoice_id IN (SELECT invoice_id FROM Invoices WHERE invoice_status = 'Working')
SELECT payment_id , payment_details FROM Payments WHERE invoice_id IN (SELECT invoice_id FROM Invoices WHERE invoice_status = "Working")
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT invoice_id , invoice_status FROM Invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM Payments)
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT DISTINCT invoice_id , invoice_status FROM Payments
SELECT invoice_id , count(*) FROM Payments GROUP BY invoice_id
SELECT count(*) , invoice_id FROM Payments GROUP BY invoice_id
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT agency_id , count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT count(*) , client_id FROM Meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_id , meeting_outcome , meeting_type , other_details FROM Meetings WHERE client_id = '12345'
SELECT meeting_id , meeting_outcome , meeting_type , client_details FROM meetings
SELECT T1.meeting_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.meeting_id
SELECT count(*) , meeting_id FROM Staff_in_Meetings GROUP BY meeting_id
SELECT staff_id , count(*) FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM Staff_in_Meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT client_id , client_details FROM Clients INTERSECT SELECT client_id , client_details FROM Invoices
SELECT client_id , client_details FROM Clients INTERSECT SELECT client_id , client_details FROM Invoices
SELECT T1.staff_id , T2.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id JOIN Meetings AS T3 ON T2.meeting_id = T3.meeting_id WHERE T3.purpose_of_meeting = 'Attending' AND T2.staff_details LIKE '%s%'
SELECT staff_id , staff_details FROM Staff WHERE staff_details LIKE '%s%' INTERSECT SELECT staff_id , staff_details FROM Staff_in_Meetings
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id WHERE T2.billable_yn = 'Y'
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id JOIN Meetings AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(*) = 1
SELECT T1.start_date_time , T1.end_date_time , T2.client_details , T3.staff_details FROM Meetings AS T1 JOIN Clients AS T2 JOIN Staff_in_Meetings AS T3 ON T1.meeting_id = T3.meeting_id
SELECT T1.start_date_time , T1.end_date_time , T2.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T2 ON T2.client_id = T1.client_id
