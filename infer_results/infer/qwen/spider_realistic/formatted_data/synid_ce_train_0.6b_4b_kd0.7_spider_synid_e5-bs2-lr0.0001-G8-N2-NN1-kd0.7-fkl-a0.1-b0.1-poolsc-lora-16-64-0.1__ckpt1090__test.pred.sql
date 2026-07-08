SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme
SELECT T3.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE pet_age > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_age FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE pettype = "Cat")
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE pettype = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT fname , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "dog") EXCEPT SELECT fname , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "cat")
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "dog") EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "cat")
SELECT pet_type , weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T2.Maker , T1.id , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE YEAR = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.year = 1970
SELECT T2.Maker , T1.id FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = 'Amcl Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT weight FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T2.CountryName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T2.CountryName HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 3
SELECT model FROM cars_data WHERE weight = (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.MPG LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(edispl) FROM cars_data WHERE make = 'volvo'
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Mid GROUP BY T1.Make ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = "Ford"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.weight > 3500 OR T1.weight >= 3500
SELECT DISTINCT model FROM model_list WHERE maker = 'General Motors' OR weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT cylinders FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Make = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY avg(horsepower) DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 'Ford'
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.ModelId WHERE T2.Maker = 'fiat'
SELECT T1.CountryId , T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'Ford' UNION SELECT T1.CountryId , T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'BMW' UNION SELECT T1.CountryId , T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'Toyota'
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportname , airportcode FROM airports WHERE airportname = "Anthony"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = "UAL"
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT T2.airportname FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airline WHERE T1.country = "Australia"
SELECT T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "APG"
SELECT count(*) FROM flights WHERE FlightNo = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "ATO"
SELECT count(*) FROM flights AS T1 JOIN destairport AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Ashley" AND T1.sourceairport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Ashley" AND T2.airportname = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbr = "JetBlue Airways"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Abbrivation = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "ASY" AND T1.airline = "United"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'Aberdeen' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "United"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "AHD"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "AHD"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT airline FROM flights WHERE sourceairport = 'CVO' EXCEPT SELECT airline FROM flights WHERE sourceairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestinationAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights UNION SELECT DISTINCT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT Name FROM employee ORDER BY Age DESC
SELECT Name FROM employee ORDER BY Age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT LOCATION , COUNT(*) FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course() = 'Math'
SELECT Name FROM teacher WHERE Age = 35 AND Grade = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID WHERE T1.level_of_membership = "Lv 1"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.loser_age LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.looser_age LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'W' AND T1.tourney_date = 'WTA Championships'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT t1.id , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t1.id ORDER BY sum(t2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta" AND T1.result = "Lost" AND T1.latin_commander = "Lettice"
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T2.cell_mobile_number FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_3 = "Timmothy Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Departments AS T4 ON T3.department_id = T4.department_id ORDER BY date_left ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY date_first_registered LIMIT 1
SELECT T1.address_id , T2.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T2.line_1 , T2.line_2 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 1 INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 2
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.semester_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.semester_name = 'Bachelors'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = "Haiti") UNION SELECT first_name FROM students WHERE cell_mobile_number = "09700166582"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.cell_mobile_number = "09700166582" WHERE T2.country = "Haiti"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE title = "The cartoon directed by Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM tv_channel WHERE Language = "English"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT Title FROM cartoon WHERE Channel = "Sky Radio"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "Sky Radio"
SELECT Original_air_date FROM cartoon WHERE Title = "A Love of a Lifetime"
SELECT Original_air_date FROM cartoon WHERE title = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT package_option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "Todd Casey"
SELECT DISTINCT T1.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.country = 'USA' AND T1.directed_by = 'Todd Casey'
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel
SELECT Country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT t1.series_name , t1.country FROM TV_channel AS T1 JOIN cartoon AS t2 ON T1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS T1 JOIN cartoon AS t2 ON T1.id = t2.channel WHERE t2.directed_by = 'Michael Chang'
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE 18_49_Rating_Share = "Ben Jones" )
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.created , T1.state , T2.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T1.contestant_number FROM CONTESTANTS AS T3 JOIN votes AS T4 ON T3.contestant_number = T4.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.contestant_number FROM CONTESTANTS AS T3 JOIN votes AS T4 ON T3.contestant_number = T4.contestant_number WHERE T3.contestant_name = 'Kelly Clauss')
SELECT name FROM country WHERE independYear > 1950
SELECT name FROM country WHERE independYear > 1950
SELECT count(DISTINCT region) FROM country
SELECT count(DISTINCT countrycode) FROM country WHERE region = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE capital = 'Anguilla'
SELECT continent FROM country WHERE name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.capital == T2.countrycode WHERE T2.name == "Kabul"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.capital == T2.countrycode WHERE T2.name == "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Population , T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Brazil"
SELECT population , lifeexpectancy FROM country WHERE continent = "Brazil"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(t1.population) , max(t1.gnp) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Africa" AND region = "Republic"
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Africa" AND region = "republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT population FROM city WHERE name = 'Gelderland'
SELECT sum(population) FROM city WHERE name = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'North America' OR continent = 'South America' OR continent = 'Central America' OR continent = 'South America'
SELECT gnp , sum(population) FROM country WHERE Region = 'North America' OR Region = 'South America'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT sum(T2.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT sum(t1.isofficial) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Afghanistan"
SELECT sum(t2.isofficial) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Afghanistan"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country ON T1.CountryCode = T2.CountryCode JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = "Chinese"
SELECT T1.Region FROM country WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.IsOfficial = 0
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING count(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.id = t2.countrycode WHERE t2.language = "English" GROUP BY t2.countrycode ORDER BY sum(t1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.id = t2.capital WHERE t1.population = (SELECT max(population) FROM city) AND t2.name = "English"
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial != 1
SELECT avg(_life_expectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0)
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.Language != "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Capital = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Capital = "Beatrix"
SELECT sum(T1.isofficial) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.year < 1930
SELECT sum(T1.IsOfficial) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.year < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "English"
SELECT countrycode FROM country WHERE name NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE isofficial = 0 UNION SELECT countrycode FROM country WHERE region = "Republic" AND language = "English"
SELECT CountryCode FROM country WHERE Countrycode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE continent = 'Europe' AND isofficial = 0)
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 1 AND T2.continent = "Asia" AND T3.language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.countrycode WHERE T2.continent = "Asia" INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.countrycode WHERE T2.region = "China"
SELECT name , independyyear , surfacearea FROM country ORDER BY count(*) LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT t1.population , t1.name , t1.HeadOfState FROM country AS t1 JOIN city AS t2 ON t1.Capital = t2.CountryCode ORDER BY t1.Population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population >= 80000
SELECT name FROM country WHERE continent = 'Europe' AND population >= 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.region = "North America" AND t1.SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000 - 1
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language , T1.CountryCode , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT countrycode , max(language) FROM countrylanguage GROUP BY countrycode
SELECT sum(Percentage) FROM countrylanguage WHERE Language = "Spanish"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT count(*) FROM orchestra WHERE Orchestra = "CD" OR Orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = '10'
SELECT name FROM highschooler WHERE grade = '10'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = '9' OR grade = '10'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT name FROM highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT friend_id FROM highschooler WHERE name = 'Kyle')
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = 'Kyle'
SELECT count(DISTINCT T1.id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = (SELECT friend_id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana'
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.professional_id FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN TREATMENTS AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING avg(T2.cost_of_treatment) < (SELECT min(cost_of_treatment) FROM treatment_costs)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM PROFESSIONALS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM PROFESSIONALS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'apartment' AND room_count > 1 UNION SELECT property_name FROM properties WHERE property_type_code = 'house'
