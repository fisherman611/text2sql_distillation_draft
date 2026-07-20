SELECT name, country, age FROM singer ORDER BY age
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT T2.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT T1.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > T2.Average(age)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT DISTINCT T2.Location, T2.Name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_ID = T2.stadium_ID WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE name!= 'concerthall'
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age < 30 INTERSECT SELECT Country FROM singer WHERE Age > 40
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.theme, count(*), T1.concert_name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20 GROUP BY T1.stuid
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = "female"
SELECT count(*) FROM Student WHERE sex = 'F' AND has_pet = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat' OR T2.pettype = 'dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'cat' OR pettype = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog"
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM student WHERE stuid NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "dog" EXCEPT SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "cat"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat'
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.petage = 3
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' AND T3.petage = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker, T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.id, T1.maker, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT model_id, make FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year = 1970
SELECT DISTINCT T2.Maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakerId = T2.Id WHERE T1.year = 1970
SELECT t1.make, t1.year FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id GROUP BY t1.makeid ORDER BY t2.year LIMIT 1
SELECT T1.Maker, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year < 2010
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.year > 1980
SELECT countryname FROM countries WHERE countryid IN (SELECT country FROM carmakers GROUP BY country ORDER BY count(*) DESC LIMIT 1)
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t1.countryid ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*), T1.id, T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
{"sql": "SELECT t1.accelerate FROM cars_data AS t1 JOIN car_makers AS t2 ON t1.id = t2.id JOIN model_list AS t3 ON t1.makeid = t3.model WHERE t2.maker = "amc" AND t3.model = "hornet sportabout""}
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(mpg) FROM car_data WHERE cyl = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryid HAVING count(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = 'Europe' GROUP BY T1.Country HAVING count(*) >= 3
SELECT T1.Model FROM car_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)
SELECT t1.id FROM cars_data AS t1 JOIN model_list AS t2 ON t1.id = t2.modelid WHERE t1.mpg = (SELECT max(mpg) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_makers WHERE Maker = 'Volvo'
SELECT avg(Edispl) FROM car_makers WHERE Maker = 'Volvo'
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.maker = 'General Motors' OR T2.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT min(cylinders) FROM cars_data WHERE make = 'volvo'
SELECT T1.id, T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T2.make = 'Volvo' ORDER BY T1.accelerate LIMIT 1
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY sum(T2.Horsepower) DESC LIMIT 1
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = "Toyota" OR T1.cylinders >= 8 AND T1.year < 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T1.Maker!= "Ford Motor Company" AND T2.weight < 3500
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Id WHERE t1.Maker!= "Ford" AND t2.weight < 3500
SELECT T1.Countryid, T1.Countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.FullName LIKE '%Fiat%' GROUP BY T1.countryid HAVING count(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.countryid WHERE T2.Maker = 'Toyota'
SELECT Country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Airline, Abbrevitation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbrevitation FROM airlines WHERE country = 'USA'
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Abbreviation = "Anthony"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Airline = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT Abbrev FROM airlines WHERE CountryAbbrev = "AK"
SELECT Abbrev FROM airlines WHERE country = 'Korea'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'ATP'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = "ABERDEEN"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE destination = "ASY" AND source = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = "ASY" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = "ABERDEADONLINE" AND airline = "United Airlines"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AFD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbrev = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbrev = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'APG'
SELECT T1FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT flightno FROM flights WHERE airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "Scotland" AND T1.sourceairport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Scotland' AND T1.sourceairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR SourceAirport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportName NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id ORDER BY t2.bonus DESC LIMIT 1
SELECT t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T2.Name
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Name LIKE "%math%"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE age <= 4
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.ID, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.museum_id, T1.name, T1.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY sum(T2.Num_of_Ticket) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT t1.name, t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.visitor_id GROUP BY t1.id ORDER BY sum(t2.num_of_ticket) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = "1"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
{"sql": "SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open""}
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T3.ranking_points, T3.winner_rank DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.best_of = 5
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code, count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT count(*) FROM players WHERE country_code = 'USA' AND hand = 'R' AND winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships')
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_hand = T2.player_id WHERE T1.tourney_name = 'WTA Championships' AND T2.hand = "left"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, T1.id FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
{"sql": "SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id WHERE T2.name = "Lettice" AND T3.name = "HMS Atalanta""}
SELECT T1.name, T1.bulgarian_commander, T1.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'English Channel' AND T2.tonnage > 5000
SELECT course_description FROM Courses WHERE other_details LIKE '%math%'
SELECT course_description FROM Courses WHERE department_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM addresses WHERE state_province_county = "North" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM Students ORDER BY current_address_id ASC
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.date_first_registered = (SELECT min(date_first_registered) FROM Students)
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.address_id, T1.current_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 1 INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 2
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT first_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR current_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = "Haiti")
SELECT first_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR permanent_address_id = "address_id"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM Cartoon WHERE title = "Ben 10"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' OR T1.directed_by = 'Brandon Vietti'
SELECT country, count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country, count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_Channel WHERE Channel = "Sky Radio"
SELECT content FROM TV_channel WHERE name = "Sky Radio"
SELECT t2.package_option FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.id = t2.id WHERE t1.title = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT count(*) FROM TV_channel WHERE language = 'english'
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
{"sql": "SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = ""Sky Radio"""}
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.id = t2.id WHERE t2.country = "UK" AND t2.language = "english" AND t2.name = "Sky Radio"
SELECT Air_Date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Content = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
{"sql": "SELECT T2.series_name FROM TVCHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel_name WHERE T2.title = ""A Love of a Lifetime"""}
SELECT series_name FROM TV_series WHERE series_name LIKE "%A Love of a Lifetime%"
{"sql": "SELECT T2.EPISODE FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel_name WHERE T1.country = ""Sky Radio"""}
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T2.series_name, T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_tv = 'Yes'
SELECT package_option, series_name FROM TV_channel WHERE hight_definition_TV = 'Yes'
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'Todd Casey writes'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'Todd Casey'
SELECT country FROM cartoon EXCEPT SELECT T1.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1_written_by = 'Todd Casey'
SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language!= "english"
SELECT T1.id, T1.pixel_aspect_ratio PAR, T1.country FROM TV_channel AS T1 JOIN language AS T2 ON T1.language = T2.language WHERE T2.name = 'non english' GROUP BY T1.id
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T2.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT DISTINCT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T1.id NOT IN ( SELECT T4.id FROM cartoon AS T3 JOIN TV_channel AS T4 ON T3.channel = T4.id WHERE T3.title = "Ben Jones cartoon")
SELECT Money_Rank FROM poker_player ORDER BY Final_Table_Made DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height_Made DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT avg(Earnings) FROM poker_player WHERE height > 200
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT T1.Nationality FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT T2.created, T1.state, T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT area_code_state FROM votes WHERE contestant_number = "Tabatha Gehling" INTERSECT SELECT area_code_state FROM votes WHERE contestant_number = "Kelly Clauss"
SELECT name FROM country WHERE depyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE Continent = 'Europe'
SELECT count(*) FROM country WHERE countrycode = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Caribbean' GROUP BY T1.Code
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba" ORDER BY t1.percentage DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba" GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'Brazil'
{"sql": "SELECT region, population FROM city WHERE countrycode = "Angola""}
SELECT region, population FROM city WHERE countrycode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnpold) FROM city WHERE continent = 'Asia'
SELECT max(GNPOld), country.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.Name
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Repubic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
{"sql": "SELECT sum(population) FROM city WHERE district = "Gelderland""}
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), sum(Population) FROM country WHERE Continent = 'North America' OR Continent = 'South America' OR Continent = 'Africa' OR Continent = 'Europe' GROUP BY countryCode
SELECT avg(GNP), sum(Population) FROM country WHERE CountryCode = "US" GROUP BY countryCode
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AF"
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'english' INTERSECT SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'french'
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'english' INTERSECT SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'french'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT count(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM countrylanguage WHERE language = "Dutch" OR language = "English"
SELECT Country FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = "Asia" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = 'Asia' GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "France" GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "USA" GROUP BY Language HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE language = 'english' ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "not english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Beatrix" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
SELECT count(DISTINCT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.indepyear < 1930)
SELECT count(DISTINCT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.indepyear < 1930)
SELECT country FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT code FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT country FROM country WHERE Continent = 'Asia' AND Population > (SELECT min(Population) FROM country WHERE Continent = 'Africa')
SELECT Code FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English"
SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT CountryCode FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English" AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' AND t2.language!= 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t2.language = "Chinese" AND t2.isofficial = 1 AND t1.countrycode = "Asia"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.region = 'Asia' AND t2.language = 'Chinese' AND t2.isofficial = 1
SELECT name, indepyear, surfacearea FROM country ORDER BY count(*) LIMIT 1
SELECT t1.name, t1.indepyear, t1.surfacearea FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY t1.Code ORDER BY count(*) LIMIT 1
SELECT population, name, leader FROM city ORDER BY surfacearea DESC LIMIT 1
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (avg(count(*))) GROUP BY district
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(surfacearea), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000 GROUP BY countrycode
SELECT sum(population), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 INTERSECT SELECT name FROM city WHERE population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT countrycode, language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT Code FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = "10"
SELECT name FROM highschooler WHERE grade = "10"
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = "9" OR grade = "10"
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), T1.id, T1.year FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.year
SELECT count(*), T1.id, T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.grade = "15" GROUP BY T1.id
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T3.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id = Kyle
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.stduid GROUP BY T1.id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 2
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING sum(T2.cost_of_treatment) > 2000
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT T1.id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.zip_code, T1.owner_id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(age) FROM dogs)
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN Owners AS T2 ON T1.dog_id = T2.owner_id
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
SELECT COUNT(*), citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(T2.Net_Worth_Millions), T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1 OR T1.property_type_code = 'Apt' OR T1.property_type_code = 'Hse'
