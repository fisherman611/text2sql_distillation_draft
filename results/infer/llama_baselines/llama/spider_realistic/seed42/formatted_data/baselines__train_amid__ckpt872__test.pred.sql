SELECT name, country, age FROM singer ORDER BY age ASC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 ORDER BY t2.year DESC LIMIT 1
SELECT name FROM stadium WHERE name!= 'Concert Ground'
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age < 30 INTERSECT SELECT country FROM singer WHERE age > 40
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.theme, count(*), T1.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT t3.name, t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer_in_concert AS t3 ON t1.concert_id = t3.concert_id WHERE t1.year = 2014 INTERSECT SELECT t3.name, t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer_in_concert AS t3 ON t1.concert_id = t3.concert_id WHERE t1.year = 2015
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student WHERE age > 20 AND Has_Pet.StuID IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM Student WHERE sex = 'F' AND has_pet = 'Dog'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = "female" AND T2.pettype = "dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Dog'
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "dog" AND T2.petid NOT IN (SELECT petid FROM Has_Pet WHERE pettype = "cat")
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat"
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.petage = 3
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.petage = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker, T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.FullName, count(*), T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year = 1970
SELECT DISTINCT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year = 1970
SELECT t1.make, t1.year FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id GROUP BY t1.makeid ORDER BY t2.year LIMIT 1
SELECT t1.maker, t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t2.id < 2010
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.year > 1980
SELECT countryname FROM carmakers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t1.countryid ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.id, T1.fullname, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT max(T1.accelerate) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN model_list AS T3 ON T1.makeid = T3.id JOIN countries AS T4 ON T2.country = T4.countryid JOIN continents AS T5 ON T4.continents = T5.id WHERE T5.continents = 'Africa' AND T3.Model = 'amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_names WHERE country = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cyl = 8
SELECT CountryName, CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryName HAVING COUNT(*) >= 3 AND T1.Maker = 'Europe'
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = 'Europe' GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT modelid FROM cars_data GROUP BY modelid ORDER BY sum(Edispl) DESC LIMIT 1
SELECT T1.id FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.MPG >= 30 ORDER BY T1.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.maker = "volvo"
SELECT avg(Edispl) FROM car_names WHERE make = 'Volkswagen'
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.makeid, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.id FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = 'General Motors' OR T1.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT min(cylinders) FROM cars_data WHERE make = 'volvo'
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T2.Maker = 'Volvo' ORDER BY T1.accelerate LIMIT 1
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY T2.Horsepower DESC LIMIT 1
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.country = "USA" OR T2.country = "Canada" OR T2.country = "Mexico" OR T2.country = "Chile" OR T2.country = "Peru" OR T2.country = "Argentina" OR T2.country = "Brazil" GROUP BY T1.id ORDER BY T1.year, T1.mpg
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.id WHERE t1.Maker!= "Ford Motor Company" AND t2.weight < 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T1.Maker!= "Ford" AND T2.weight < 3500
SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Countryid WHERE T2.Maker > 3 INTERSECT SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Countryid WHERE T2.Maker = 'Fiat'
SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID = T2.Countryid GROUP BY T1.CountryName HAVING count(*) > 3 UNION SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryID = T2.Countryid WHERE T2.Maker = 'Toyota' UNION SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryID = T2.Countryid WHERE T2.Maker = 'Ford'
SELECT Country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Abbreviation = "Anthony"
SELECT T2.AirportCode, T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T1.sourceairport = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT Abbrev FROM airlines WHERE country = 'AK'
SELECT Abbrev FROM airlines WHERE country = 'Afghanistan'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'ATP'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE destairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE sourceairport = "ASY" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND airline = "United Airlines"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'ADH'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "United States"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United Kingdom" AND T1.sourceairport = "ABERDEEN"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen' OR sourceairport = 'Abilene'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportName NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportCode FROM airports WHERE AirportName NOT IN (SELECT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id ORDER BY t2.bonus DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id ORDER BY t2.bonus DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*), T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Name LIKE "%math%"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(age) FROM visitor WHERE age <= 4
SELECT m1.Museum_ID, m1.Name FROM museum AS m1 JOIN visitor AS m2 ON m1.Museum_ID = m2.Museum_ID GROUP BY m1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id, T1.name, T1.membership_level FROM museum AS T1 JOIN visitor AS T2 ON T1.museum_id = T2.museum_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY sum(T2.Num_of_Ticket) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT count(*) FROM players WHERE country_code = "TBA" AND hand = "left" AND winner_id IN ( SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships")
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_hand = T2.player_id WHERE T1.tourney_name = 'WTA Championships'
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' AND T1.result = 'Lost' AND T2.name = 'HMS Atalanta'
SELECT T1.name, T1.bulgarian_commander, T1.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'English Channel' AND T2.tonnage > 5000
SELECT course_description FROM Courses WHERE other_details LIKE '%math%'
SELECT course_description FROM Courses WHERE department_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id ORDER BY T1.date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.current_address_id FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T1.current_address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Bachelor"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT first_name FROM students WHERE cell_mobile_number LIKE 09700166582 OR current_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti')
SELECT first_name FROM students WHERE cell_mobile_number LIKE 09700166582 AND country = 'Haiti' OR current_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti')
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM Cartoon WHERE title = "Ben Jones"
SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuh"
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT country, count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE Language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
{"sql": "SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = ""Sky Radio"""}
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.name = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
{"sql": "SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel_name WHERE T2.title = ""A Love of a Lifetime"""}
SELECT series_name FROM TV_series WHERE series_name LIKE "%A Love of a Lifetime%"
{"sql": "SELECT T1_episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.series_name = ""Sky Radio"""}
SELECT T1.EPISODE FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT directed_by, count(*) FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T2.series_name, T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'Yes'
SELECT T1.Package_Option, T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'Yes'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "Todd Casey"
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Todd Casey'
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'Todd Casey'
SELECT Country FROM Cartoon EXCEPT SELECT T2.Country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1 CHANNEL = T2.CHANNEL WHERE T1.Written_by = "Todd Casey"
SELECT T2.series_name, T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.directed_by = 'Michael Chang'
SELECT T2.series_name, T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT country, pixel_aspect_ratio PAR FROM tv_channel WHERE language!= "english"
SELECT pixel_aspect_ratio PAR, Country FROM TV_channel WHERE Language!= "english"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT T1.package_option FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by!= 'Ben Jones'
SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T1.id NOT IN (SELECT T4.id FROM cartoon AS T3 JOIN TV_channel AS T4 ON T3.channel = T4.id)
SELECT Money_Rank FROM poker_player ORDER BY Final_Table_Made DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT avg(Earnings) FROM poker_player WHERE height > 200
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT T1.Nationality FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM People WHERE Nationality!= "Russia"
SELECT created FROM votes WHERE state = "CA"
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT T1.created, T2.state, T1.phone_number FROM VOTES AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T1.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling'
SELECT area_code_state FROM votes WHERE contestant_number = "Tabatha Gehling" INTERSECT SELECT area_code_state FROM votes WHERE contestant_number = "Kelly Clauss"
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT name FROM country WHERE IndependenceYear > 1950
SELECT count(*) FROM country WHERE continent = 'Europe'
SELECT count(*) FROM country WHERE Continent = "Africa"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" ORDER BY t1.Percentage DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba" GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT population, lifeexpectancy FROM city WHERE countrycode = 'BR'
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'Brazil'
{"sql": "SELECT region, population FROM city WHERE countrycode = "Angola""}
SELECT region, population FROM city WHERE countrycode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnp) FROM city WHERE continent = 'Asia'
SELECT max(GNPOld), country.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T1.Name
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa " AND GovernmentForm = "Repubic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Rep'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE district = "Gelderland"
{"sql": "SELECT sum(Population) FROM city WHERE District = "Gelderland""}
SELECT avg(GNPOld), sum(Population) FROM country WHERE Continent = 'North America' AND CountryCode = 'USA'
SELECT avg(GNP), sum(Population) FROM country WHERE CountryCode = "US" GROUP BY countryCode
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AFG"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Continent FROM country WHERE Language = (SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'english' INTERSECT SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'french'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language = "English" INTERSECT SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language = "French"
SELECT COUNT(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "Dutch" OR T1.language = "English"
SELECT Country FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = 'Asia' GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "France" GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Country" GROUP BY Language HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE population > (SELECT min(population) FROM city WHERE language = 'english')
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "not english"
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
SELECT count(DISTINCT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.indepyear < 1930)
SELECT count(DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.indepyear < 1930 GROUP BY T1.CountryCode
SELECT Country FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = Europe)
SELECT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT code FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE Continent = 'Asia' AND Population > (SELECT min(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country WHERE Continent = 'Asia' GROUP BY CountryCode HAVING count(*) > (SELECT min(Population) FROM country WHERE Continent = 'Africa')
SELECT Code FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English"
SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English" AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = "Republic")
SELECT Code FROM country EXCEPT SELECT Code FROM countrylanguage WHERE Language!= "English"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' EXCEPT SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language = "english"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.Code2 WHERE t2.language = "Chinese" AND t2.isofficial = 1 GROUP BY t1.countrycode HAVING count(*) >= 2
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t2.language = "Chinese" AND t1 continent = "Asia"
SELECT name, indepyear, surfacearea FROM country ORDER BY count(*) LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT population, name, leader FROM city ORDER BY surfacearea DESC LIMIT 1
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city) GROUP BY district
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(surfacearea), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000 GROUP BY countrycode
SELECT sum(population), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000 GROUP BY countrycode
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT countrycode, language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "spanish" GROUP BY countrycode
SELECT Code FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age DESC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE id = "Kyle"
SELECT name FROM Highschooler WHERE grade = "10"
SELECT name FROM highschooler WHERE grade = "10"
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.grade >= 12 GROUP BY T1.year
SELECT count(*), T1.id, T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id BY T1.grade
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = T1.id INTERSECT SELECT DISTINCT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T3.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.student_id = T3.id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id IN (SELECT student_id FROM Likes WHERE liked_id = Kyle)
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.stud_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.stud_id GROUP BY T1.id HAVING count(*) >= 2
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING sum(T2.cost_of_treatment) > 2000
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR T2.treatment_type_code = 'performance' GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.cost_of_treatment > 1000
SELECT T1.id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role, T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT t3.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code JOIN treatments AS t3 ON t1.treatment_type_code = t3.treatment_type_code GROUP BY t2.treatment_type_description ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1
SELECT T1.zip_code, T1.owner_id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(age) FROM dogs)
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T2.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Citizenship
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1 OR T2.property_type_description = 'Apartment' OR T2.property_type_description = 'House'
