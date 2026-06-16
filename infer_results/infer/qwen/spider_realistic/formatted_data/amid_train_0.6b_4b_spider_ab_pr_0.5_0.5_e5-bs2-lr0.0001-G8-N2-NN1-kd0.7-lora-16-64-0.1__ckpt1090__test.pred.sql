SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
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
SELECT t2.name , t2.capacity FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name , T1.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.name
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.average > (SELECT max(average) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.average > (SELECT avg(average) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'dog'
SELECT count(*) FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE pettype = "Cat" INTERSECT SELECT PetID FROM Pets WHERE pettype = "Dog")
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_id NOT IN (SELECT PetID FROM Pets WHERE pet_age > 3)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE Pet = "Cat"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT pettype , weight FROM pets ORDER BY pet_age DESC LIMIT 1
SELECT PetType , pet_age FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT PetID , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE YEAR = 1970
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model WHERE YEAR = 1970
SELECT T2.Maker , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.year > 1980
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT T3.Maker FROM car_makers AS T3 GROUP BY T3.Maker ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Toyota' AND T1.country = 'USA'
SELECT count(*) FROM car_makers WHERE country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T1.CountryName , T2.Id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "Unknown" GROUP BY T2.Id HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Toyota" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country == T2.CountryID GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.MPG > 30;
SELECT model FROM cars_data GROUP BY model ORDER BY avg(mpg) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE make = "Volvo"
SELECT avg(edispl) FROM cars_data WHERE make = "Volvo"
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT T2.FullName , T1.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.weight > 3500 OR T1.Maker = 'General Motors'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT max(cylinders) FROM cars_data WHERE make = 'volvo' ORDER BY accelerate LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker > 2
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.make WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_makers
SELECT T1.CountryId , T1.CountryName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId GROUP BY T1.CountryID HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = 'fiat'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'Ford' UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'BMW'
SELECT country FROM airlines WHERE Abbreviation = "JetBlue Airways";
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT airportname FROM airports WHERE country = 'United Kingdom'
SELECT T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "AK"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.DestAirport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Ashley" AND T1.DestAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Aline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Aline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abnovation = 'United Airlines' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.Abbreviation = 'ASY' WHERE T3.airline = 'United'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abnovation = 'United Airlines' AND T2.SourceAirport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abnovation = "United" AND T1.SourceAirport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "United"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "APG"
SELECT T1.FLIGHTNO FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT flightno FROM flights JOIN airlines ON flights.airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' OR T2.City = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT Manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop GROUP BY name HAVING avg(number_products) > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.Bonus DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
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
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT Name FROM teacher WHERE Course = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T1.visitor_ID HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID WHERE T1.level_of_membership = "Lv 1"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'yes' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T3.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id WHERE T3.country_code = 'Australia' ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T1.year = 2000 AND T3.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY minutes DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.round , T1.year LIMIT 3
SELECT T1.winner_name , T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year , T1.match_num LIMIT 3
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = 'left' INTERSECT SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_hand WHERE T1.hand = 'right'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships" AND T2.year = 1993
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT t1.id , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t1.id ORDER BY sum(t2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T1.result = 'Lettice'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM COURSES ORDER BY course_description ASC LIMIT 1
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id JOIN courses AS T3 ON T1.state_province_county = T3.state_province_county WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id JOIN student_enrolment AS T3 ON T3.student_id = T2.student_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT T2.cell_mobile_number FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Greenland" AND T2.first_name = "Timmothy" AND T2.last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id WHERE T2.transcript_date = (SELECT max(transcript_date) FROM transcripts) AND T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelor\'s Degree')"}
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = "Master" INTERSECT SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = "Bachelors"
{"sql": "SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id JOIN Student_Enrolment_Courses AS T4 ON T4.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Programs AS T5 ON T5.degree_program_id = T2.degree_program_id JOIN Courses AS T6 ON T6.course_id = T5.department_id JOIN Transcripts AS T7 ON T7.transcript_id = T4.transcript_id JOIN Departments AS T8 ON T8.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T9 ON T9.student_enrolment_id = T4.student_enrolment_id JOIN Courses AS T10 ON T10.course_id = T6.course_id JOIN Transcripts AS T11 ON T11.transcript_id = T9.transcript_id JOIN Departments AS T12 ON T12.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T13 ON T13.student_enrolment_id = T9.student_enrolment_id JOIN Courses AS T14 ON T14.course_id = T10.course_id JOIN Transcripts AS T15 ON T15.transcript_id = T13.transcript_id JOIN Departments AS T16 ON T16.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T17 ON T17.student_enrolment_id = T9.student_enrolment_id JOIN Courses AS T18 ON T18.course_id = T10.course_id JOIN Transcripts AS T19 ON T19.transcript_id = T17.transcript_id JOIN Departments AS T20 ON T20.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T21 ON T21.student_enrolment_id = T17.student_enrolment_id JOIN Courses AS T22 ON T22.course_id = T10.course_id JOIN Transcripts AS T23 ON T23.transcript_id = T21.transcript_id JOIN Departments AS T24 ON T24.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T25 ON T25.student_enrolment_id = T17.student_enrolment_id JOIN Courses AS T26 ON T26.course_id = T10.course_id JOIN Transcripts AS T27 ON T27.transcript_id = T25.transcript_id JOIN Departments AS T28 ON T28.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T29 ON T29.student_enrolment_id = T17.student_enrolment_id JOIN Courses AS T30 ON T30.course_id = T10.course_id JOIN Transcripts AS T31 ON T31.transcript_id = T29.transcript_id JOIN Departments AS T32 ON T32.department_id = T5.department_id JOIN Student_Enrolment_Courses AS T33 ON T33.student_enrolment_id = T17.student_enrolment_id JOIN Courses AS T34
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T2.country = "Haiti" OR T3.cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = " Haiti ) AND cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr";
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE content = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM tv_channel WHERE language = "English"
SELECT series_name FROM tv_channel WHERE title = "The Rise of the Blue Beetle"
SELECT series_name FROM tv_channel WHERE content = "The Rise of the Blue Beetle"
SELECT title FROM cartoon WHERE channel = "Sky Radio"
SELECT title FROM cartoon WHERE channel = (SELECT id FROM tv_channel WHERE series_name = "Sky Radio" )
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE title = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE Content = "A Love of a Lifetime"
SELECT title FROM cartoon WHERE content = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY id DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE HDTV = 'Yes'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Content = "Some cartoon" AND T2.directed_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "TV Series" AND T2.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.channel = t2.channel WHERE t2.title = 'Todd Casey'
SELECT DISTINCT country FROM TV_channel EXCEPT SELECT DISTINCT directed_by FROM cartoon AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T1.id = 18_49_Rating_Share
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' OR t2.directed_by = 'Michael Chang'
SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id JOIN tv_series AS t3 ON t2.id = t3.episode WHERE t1.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id JOIN tv_series AS t3 ON t2.id = t3.episode WHERE t1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT directed_by FROM cartoon)
SELECT id FROM tv_channel EXCEPT SELECT directed_by FROM cartoon
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon) AND directed_by = "Ben Jones";
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM VOTES WHERE contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling')
{"sql": "SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.state = 'GA' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS
SELECT name FROM country WHERE independYear > 1950
SELECT name FROM country WHERE independYear > 1950 ORDER BY name
SELECT count(*) FROM country WHERE continent = 'Southwest';
SELECT count(DISTINCT country) FROM city WHERE country = "República"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = "Caribbean"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Capital == T2.Distribution WHERE T2.Name == "Kabul"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Capital == T2.Distribution WHERE T2.Name == "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" ORDER BY T1.Percentage DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT population , lifeexpectancy FROM country WHERE name = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE name = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(t1.population) , max(tp.gnp) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Africa" AND region = "republican"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND region = 'republic'
SELECT sum(surfacearea) FROM country WHERE name = 'Asia' OR name = 'Europe'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT population FROM city WHERE name = "Gelderland"
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE continent = "North America"
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'US_territory'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(*) FROM countrylanguage WHERE country = "Aruba"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = '1'
SELECT count(*) FROM countrylanguage WHERE country Code = "AFG" AND isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t1.language = "Chinese"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = T2.IsOfficial WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Asia' ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = (SELECT T3.Code FROM country AS T3 ON T3.Name = 'Russian Federation')
SELECT Language FROM countrylanguage GROUP BY Language HAVING count(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.Language = "English" GROUP BY t1.name ORDER BY sum(t1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.capital = t2.countrycode WHERE t2.Language = "English" ORDER BY t1.population DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code2 = T2.code WHERE T1.name = 'Asia' ORDER BY T1.population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 0
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 0 AND T1.name != 'England'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.name = "Beatrix"
SELECT sum(T1.IsOfficial) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.indepyear < 1930
SELECT sum(isofficial) FROM countrylanguage WHERE independyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent != 'Europe' AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE continent = "Africa" AND population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE continent = "Africa" EXCEPT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE continent = 'Asia' GROUP BY name HAVING max(population) > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "English"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE IsOfficial = 1 AND Language = "English")
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE governmentform = 'Republic' AND language = 'English'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "English"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Name IN ( "Austria" , "Belgium" , "Czech Republic" , "Denmark" , "France" , "Germany" , "Ireland" , "Italy")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Code IN (SELECT T1.CountryCode FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Chinese" AND T2.Language = "IsOfficial")
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.code WHERE T2.continent = 'Asia' AND T3.IsOfficial = 1
SELECT name , independeyyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT t1.population , t1.name , t1.HeadOfState FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code ORDER BY t1.population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE population >= 80000 AND continent = 'Europe'
SELECT name FROM country WHERE population >= 80000 AND continent = 'Europe'
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM city WHERE countrycode = 'NOAA' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000 - 1
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.Percentage FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT T1.Language , T2.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT sum(Percentage) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Orchestra = "CD" OR Orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT name FROM Highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 111 AND T1.name = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = kyle.id
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM likes WHERE liked_id IN (SELECT id FROM likes WHERE liked_id = 'Kyle')
SELECT count(*) FROM likes WHERE liked_id = (SELECT id FROM likes WHERE liked_id = 'Kyle')
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT grade FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.cell_number , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.professional_id = T3.professional_id WHERE T3.email_address = (SELECT T4.email_address FROM owners AS T4 WHERE T4.zip_code = (SELECT T5.zip_code FROM owners AS T5 WHERE T5.street = "X")) AND sum(T2.cost_of_treatment) > 1000
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type WHERE T2.charge_amount = (SELECT min(charge_amount) FROM charges)
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type WHERE T2.charge_amount = (SELECT min(charge_amount) FROM charges)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING avg(T2.treatment_type_code) < (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code ORDER BY count(*) LIMIT 1)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city AND T1.state = "Virginia";
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT max(networth) , citizenship FROM singer GROUP BY citizenship
SELECT max(networth) , country FROM singer GROUP BY country
SELECT DISTINCT T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.SALES > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM properties AS T1 JOIN other_property_features AS T2 ON T1.property_id = T2.property_id WHERE T1.property_type_code = "apartment" AND T1.room_count > 1 UNION SELECT T1.property_name FROM properties AS T1 JOIN other_property_features AS T2 ON T1.property_id = T2.property_id WHERE T1.property_type_code = "house"
