SELECT name, country, age FROM singer ORDER BY Age DESC
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
SELECT T2.Name, T1.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year >= 2014 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE name!= 'concert'
SELECT Name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age < 30 INTERSECT SELECT country FROM singer WHERE age > 40
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name, T3.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id GROUP BY T2.concert_name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_ID = T3.singer_ID WHERE T1.year = 2014
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.year = 2014
SELECT T2.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE '%Hey%'
SELECT T2.Name, T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2015
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20 GROUP BY T1.StuID
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student WHERE sex = 'F' AND StuID IN (SELECT StuID FROM Has_Pet WHERE pettype = "dog")
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat' OR T2.pettype = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog"
SELECT major, age FROM student WHERE stuid NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM student WHERE stuid NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat'
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petID, weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.petage = 3
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.petage = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.Maker, count(*), T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T2.Maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year = 1970
SELECT DISTINCT t1.maker FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid WHERE t2.year = 1970
SELECT t1.make, t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id ORDER BY t2.year LIMIT 1
SELECT T1.maker, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.mpg < 2000 ORDER BY T2.year LIMIT 1
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = (SELECT country FROM countries WHERE continent = 'Asia') AND T1.year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.year > 1980
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.id, T1fullname, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout (Sw)'
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(mpg) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)
SELECT t1.makewmodel FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id WHERE t2.MPG >= 30 GROUP BY t1.makewmodel ORDER BY t2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE maker = 'Volvo'
SELECT avg(Edispl) FROM car_names WHERE make = 'Volvo'
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2_makerid GROUP BY T1.Maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States" OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT min(T1.cylinders) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.maker = "volvo"
SELECT T1.id, T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE countryid NOT IN (SELECT country FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY T2.Horsepower DESC LIMIT 1
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.country = "USA" OR T2.country = "Canada" OR T2.year < 1980
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.maker = "Ford Motor Company"
SELECT DISTINCT t1.model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.model = t2.id WHERE t1.maker!= "Ford" AND t2.weight < 3500
SELECT T1.id, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker > 3 UNION SELECT T1.id, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.countryid JOIN car_names AS T3 ON T2.id = T3.makeid WHERE T3.make = 'Fiat'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) > 3 UNION SELECT T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.CountryId WHERE T2.Maker = 'Toyota'
SELECT Country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Abbrevation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT Airline, Abbrev FROM airlines WHERE Country = "USA"
SELECT Airline, Abbrevitation FROM airlines WHERE Country = "USA"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Abbreviation = "Anthony"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Airline = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT Abbrev FROM airlines WHERE country = 'AK'
SELECT Abbrev FROM airlines WHERE Country = "Afghanistan"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ABD"
SELECT count(*) FROM flights WHERE SourceAirport = "ABD"
SELECT count(*) FROM flights WHERE sourceairport = "ABERDEEN"
SELECT count(*) FROM (SELECT * FROM flights WHERE destairport = "ABR" UNION SELECT * FROM flights WHERE sourceairport = "ABR")
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" INTERSECT SELECT count(*) FROM flights WHERE DestAirport = "Ashley"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.abbrev = T2.Airline WHERE T1.abbrev = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbrev = 'United' AND T1.sourceairport = 'ASY'
SELECT count(*) FROM flights WHERE sourceairport = "Los Angeles" AND airline = "United"
SELECT count(*) FROM flights WHERE sourceairport = "AHD" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.Airline = 'United Airlines' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United' AND T1.sourceairport = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'ADH'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode!= "APG"
SELECT T1FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT T1 FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "Scotland" AND T1.sourceairport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR SourceAirport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT airportcode FROM airports WHERE airportname NOT IN (SELECT sourceairport FROM flights) UNION SELECT airportcode FROM airports WHERE airportname NOT IN (SELECT destairport FROM flights)
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id ORDER BY t2.bonus DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN employee AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*), T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course_ID = (SELECT Course_ID FROM course WHERE Subject = "Math")
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course_ID = 1
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(age) FROM visitor WHERE age < 4
SELECT Museum_ID, name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id, T1.level_of_membership, T1.museum_id FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = "1"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.match_num = T3.match_num WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.first_name, T1.last_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age DESC LIMIT 3
SELECT T1.first_name, T1.last_name, T2.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT count(*) FROM players WHERE country_code = 'WTA' INTERSECT SELECT DISTINCT winner_hand FROM matches WHERE tourney_name = 'WTA Championships'
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = 'WTA Championships'
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, T1.id FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id JOIN death AS T3 ON T2.id = T3.caused_by_ship_id WHERE T2.name = 'Lettice' AND T3.killed = 1 AND T1.result = 'Lost'
SELECT name, latin_commander, bulgarian_commander FROM battle WHERE lost_in_battle NOT IN (SELECT id FROM ship WHERE location = 'English Channel')
SELECT course_description FROM Courses WHERE other_details LIKE "%math%"
SELECT course_description FROM Courses WHERE department_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT DISTINCT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND T2.date_left = "null"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM Students ORDER BY current_address_id ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs GROUP BY degree_program_id ORDER BY count(*) ASC LIMIT 1)
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.current_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Master" INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Bachelor"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 1 INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 2
SELECT first_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR first_name FROM students GROUP BY first_name HAVING count(*) >= 1
SELECT first_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR first_name FROM students GROUP BY first_name HAVING count(*) >= 1
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT DISTINCT directed_by FROM Cartoon
SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT country, count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE name = 'Sky Radio'
SELECT Package_Option FROM TV_channel WHERE Content = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel_name WHERE T2.title = "The Rise of the Blue Beetle"
{"sql": "SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = ""Sky Radio"""}
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.country = "UK" AND T2.language = "english" AND T2.content = "Cartoon" AND T2.pay_per_view_ppv > 10
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Content = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT T2.EPISODE FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel_name WHERE T1.name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.title = "Sky Radio"
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T2.series_name, T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'Yes'
SELECT package_option, series_name FROM TV_channel WHERE hight_definition_tv = 'yes'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = 'Todd Casey'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT country FROM cartoon
SELECT Country FROM TV_channel EXCEPT SELECT Country FROM cartoon WHERE Written_by = "Todd Casey"
SELECT T2.series_name, T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT T2.series_name, T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT country, pixel_aspect_ratio PAR FROM tv_channel WHERE language!= 'english'
SELECT T1.pixel_aspect_ratio PAR, T1.country FROM TV_channel AS T1 JOIN language AS T2 ON T1.language = T2.language EXCEPT SELECT T1.country, T1.pixel_aspect_ratio PAR FROM TV_channel AS T1 JOIN language AS T2 ON T1.language = T2.language WHERE T2.language = "english"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT package_option FROM TV_channel WHERE directed_by = "Ben Jones"
SELECT DISTINCT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by!= "Ben Jones"
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE Height_Meat > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT T2.Nationality, count(*) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Nationality
SELECT T2.Nationality FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT T1.created, T1.state, T2.phone_number FROM VOTES AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = "Kelly Clauss"
SELECT name FROM country WHERE depyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE Continent = "Africa"
SELECT count(*) FROM country WHERE GovernmentForm = "Republiques"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT continent FROM country WHERE code = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" ORDER BY t1.Percentage DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" GROUP BY t1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
{"sql": "SELECT region, population FROM city WHERE countrycode = "Angola""}
SELECT region, population FROM city WHERE countrycode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT name FROM country ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population), max(gnpold) FROM city WHERE continent = 'Asia'
SELECT max(GNPOld), country.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T1.Name
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE District = "Gelderland"
{"sql": "SELECT sum(Population) FROM city WHERE District = "Gelderland""}
SELECT avg(GNP), sum(Population) FROM country WHERE Continent = 'North America'
SELECT avg(GNP), sum(Population) FROM country WHERE CountryCode = "USA"
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = 'Africa')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AFghanistan"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AFG"
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Name ORDER BY count(*) DESC LIMIT 1
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" INTERSECT SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "French"
SELECT Name FROM countrylanguage WHERE IsOfficial = 'yes' INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT count(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "Dutch" OR t1.language = "English"
SELECT country FROM countrylanguage WHERE IsOfficial = '1' OR Language = "English" OR Language = "Dutch"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = "Asia" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = "Asia" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "France" GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "USA" GROUP BY Language HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English" AND IsOfficial = "No"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= 'English'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language!= "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Beatrix" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.dept < 1930 AND t2.IsOfficial = 'T' GROUP BY t1.Name
SELECT count(DISTINCT t1.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.foundFounded < 1930 GROUP BY t1.Language
SELECT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT code FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT code FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT country FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT Code FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English"
SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT CountryCode FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "english" EXCEPT SELECT Code FROM country WHERE CountryCode = "Republic"
SELECT Code FROM country EXCEPT SELECT Code FROM countrylanguage WHERE Language!= "English"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' AND t2.language!= 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t2.language = "Chinese" AND t2.isofficial = 1
SELECT DISTINCT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese" AND t1.region = "Asia"
SELECT name, indepyear, surfacearea FROM country ORDER BY count(*) LIMIT 1
SELECT t1.name, t1.indepyear, t1.SurfaceArea FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY t1.code ORDER BY count(*) LIMIT 1
SELECT population, name, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(count(*) ) FROM city)
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(T2.Population), avg(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.continent = 'North America' AND T1.surfacearea > 3000
SELECT sum(population), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Name, T2.Percentage FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY T2.Percentage DESC LIMIT 1
SELECT countrycode, language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT country FROM countrylanguage WHERE language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 10
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality!= 'USA'
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = "10"
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), T1.id FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING T1.grade >= 12 GROUP BY T1.id
SELECT count(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.grade > 12 GROUP BY T1.id
SELECT count(*) FROM Highschooler WHERE grade = '12' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id = Kyle
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role, T1.first_name, T1.id FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT t3.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code JOIN dogs AS t3 ON t1.dog_id = t3.dog_id ORDER BY t1.cost_of_treatment ASC LIMIT 1
SELECT t3.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code JOIN dogs AS t3 ON t1.dog_id = t3.dog_id ORDER BY t1.cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT last_name FROM dogs ORDER BY age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(date_of_birth) FROM dogs)
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(date_of_birth) FROM dogs)
SELECT max(T1.date_of_treatment) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN Owners AS T2 ON T1.dog_id = T2.owner_id
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizensity
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1
