SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT Song_Name , Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000;
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = 'F' AND T3.pettype = "dog"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.Stuid = T2.Stuid INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Pets AS T2 ON T1.Stuid = T2.Stuid WHERE T2.pettype = "Cat" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.Stuid = T2.Stuid INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Pets AS T2 ON T1.Stuid = T2.Stuid WHERE T2.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.Stuid = T2.Stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.Stuid = T2.Stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dog"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = Pets.PetID
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT pettype , weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pet_type , pet_age , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.MakeId WHERE T3.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model WHERE T2.year = 1970
{"sql": "SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.model = (SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullName = (SELECT T1.fullName FROM car_makers AS T
SELECT t1.maker , t1.year FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.make WHERE t2.model = 'carr' ORDER BY t1.year LIMIT 1
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model WHERE T3.year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = 'Amsterdam' AND model = 'Sportabout'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = "France"
SELECT count(*) FROM country AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t1.countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.id = T2.countryid WHERE T2.countryname = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974 ORDER BY Weight ASC LIMIT 1
SELECT T1.CountryName , T1.Id FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id GROUP BY T1.Id HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T2.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Toyota" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.MPG = (SELECT max(MPG) FROM cars_data)
SELECT cars_data.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid ORDER BY cars_data.mpg LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT avg(edispl) FROM cars_data WHERE make = "Volvo"
SELECT make FROM car_names GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = 'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'American Motor Company'
SELECT T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model WHERE T2.Make = 'General Motors' OR T1.Model > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT accelerate , cylinders FROM cars_data ORDER BY cylinders ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE make = "Volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "Volvo")
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT t2.model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid WHERE t1.cylinders = 4 GROUP BY t2.model ORDER BY t1.horsepower DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.make = 'Ford'
SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T3.id , T3.countryname FROM cars_data AS T3 JOIN car_makers AS T4 ON T3.id = T4.id JOIN countries AS T5 ON T4.country = T5.countryid WHERE T4.maker = 'FIAT'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Ford" OR T2.Maker = "BMW" OR T2.Maker = "Toyota" OR T2.Maker = "Honda" OR T2.Maker = "Tesla" OR T2.Maker = "Mercedes-Benz" OR T2.Maker = "Toyota" OR T2.Maker = "BMW" OR T2.Maker = "Ford" OR T2.Maker = "Honda" OR T2.Maker = "Tesla" OR T2.Maker = "Mercedes-Benz"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "AK"
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "AK" AND T2.Airline = "Airline"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATOL"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Ashley" AND T1.sourceairport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" AND T1.airportname = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = "JetBlue Airways"
SELECT count(*) FROM airlines JOIN flights ON flights.airline = 'Jetblue Airways'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Aline = "United Airlines" AND T2.DestAirport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abnvention = 'United Airlines' AND T1.SourceAirport = 'AHD'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abreviation = "United" AND T2.SourceAirport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.Ui = T1.airline WHERE T2.city = "Aberdeen" AND T3.Abbreviation = "United"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.DestAirport WHERE T1.Abbreviation = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.DestAirport WHERE T1.Abbreviation = "APG"
SELECT DISTINCT flightno FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = "United Airlines"
SELECT flightno FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT DISTINCT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Abbeville"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , srcairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT Name FROM employee ORDER BY Age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT LOCATION , count(*) FROM shop GROUP BY LOCATION
SELECT LOCATION , count(*) FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM shop GROUP BY shop_id HAVING avg(number_products) > (SELECT avg(number_products) FROM shop))
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Staring_Date != '2023-04-18' AND Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Staring_Date , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Staring_Date
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Staring_Date FROM course_arrange GROUP BY Staring_Date HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course % = 5 AND T3.Course % = 10 AND T3.Course % = 15 AND T3.Course % = 20 AND T3.Course % = 25 AND T3.Course % = 30 AND T3.Course % = 35 AND T3.Course % = 40 AND T3.Course % = 45 AND T3.Course % = 50 AND T3.Course % = 55 AND T3.Course % = 60 AND T3.Course % = 65 AND T3.Course % = 70 AND T3.Course % = 75 AND T3.Course % = 80 AND T3.Course % = 85 AND T3.Course % = 90 AND T3.Course % = 95
SELECT name FROM teacher WHERE course_id IN (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.grade = 3) AND T1.course = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE lv_of_membership != 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum EXCEPT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T2.visitor_id = T3.id WHERE T3.level_of_membership = "Private"
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T1.visitor_ID ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 'Lv 1'
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players WHERE birth_date = (SELECT max(birth_date) FROM players)
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.winner_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.tours = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year ASC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" INTERSECT SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "wta"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T1.result = 'lost' AND T2.latin_commander = 'Lettice'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment_courses AS T3 ON T2.student_id = T3.student_course_id JOIN degree_programs AS T4 ON T3.course_id = T4.degree_program_id
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment_courses AS T3 ON T2.student_id = T3.student_course_id JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT T2.cell_mobile_number FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_3 = "Timmothy Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id WHERE T2.transcript_date = (SELECT max(transcript_date) FROM Transcripts) AND T1.date_left = (SELECT min(date_left) FROM Students)
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T2.line_1 , T2.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.Degree_Program_id = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.Degree_Program_id = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id JOIN degree_programs AS T4 ON T4.degree_program_id = T2.degree_program_id WHERE T4.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id JOIN degree_programs AS T4 ON T4.degree_program_id = T2.degree_program_id WHERE T4.degree_summary_name = 'Bachelors'
SELECT T1.first_name FROM students AS T1 JOIN students ON T1.student_id = T2.student_id WHERE T2.permanent_address_id IN (SELECT T3.permanent_address_id FROM addresses AS T3 JOIN students AS T2 ON T3.address_id = T2.current_address_id WHERE T3.country = "Haiti" UNION SELECT T1.cell_mobile_number FROM students WHERE cell_mobile_number = "09700166582")
SELECT first_name FROM students WHERE cell_mobile_number = 09700166582 OR permanent_address_id = (SELECT address_id FROM addresses WHERE country = "Haiti")
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM tv_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Content FROM tv_channel WHERE Country = "Sky"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = 'English'
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT series_name FROM tv_channel WHERE Content = "The Rise of the Blue Beetle!"
SELECT series_name FROM tv_channel WHERE content = "The Rise of the Blue Beetle"
SELECT title FROM cartoon WHERE channel = (SELECT id FROM tv_channel WHERE series_name = "Sky Radio")
SELECT title FROM cartoon WHERE channel = (SELECT id FROM tv_channel WHERE content = 'Sky Radio')
SELECT T2.Air_Date FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Content = "A Love of a Lifetime"
SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE Content = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T2.channel = T3.id WHERE T2.directed_by = "Todd Casey"
SELECT Country FROM TV_channel EXCEPT SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.channel = t2.channel
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" AND t2.directed_by = "Michael Chang"
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" AND t2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT id FROM tv_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon) AND Directed_by = "Ben Jones"
SELECT Money_Rank , Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T2.height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T1.contestant_number FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T1.contestant_number FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss')
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE region = "República"
SELECT count(DISTINCT country) FROM city WHERE region = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T2.Name = "Carribean"
SELECT continent FROM country WHERE code = "Antarctica" INTERSECT SELECT continent FROM country WHERE code = "South America" INTERSECT SELECT continent FROM country WHERE code = "North America" INTERSECT SELECT continent FROM country WHERE code = "Europe" INTERSECT SELECT continent FROM country WHERE code = "Africa" INTERSECT SELECT continent FROM country WHERE code = "Asia" INTERSECT SELECT continent FROM country WHERE code = "Australia" INTERSECT SELECT continent FROM country WHERE code = "North Korea" INTERSECT SELECT continent FROM country WHERE code = "Southeast Asia" INTERSECT SELECT continent FROM country WHERE code = "Southeast Europe" INTERSECT SELECT continent FROM country WHERE code = "South America" INTERSECT SELECT continent FROM country WHERE code = "South Asia" INTERSECT SELECT continent FROM country WHERE code = "Pacific" INTERSECT SELECT continent FROM country WHERE code = "Antarctica"
SELECT continent FROM country WHERE code = "AF"
SELECT T1.Region FROM country AS T1 JOIN country AS T2 ON T1.Capital = T2.Capital WHERE T1.Name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Capital = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Population , T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = 'Brazil'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.name = "Angola"
SELECT T1.Region , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(T1.Population) , max(T1.GNP) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia'
SELECT max(gnp) , sum(population) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Name IN (SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2.Region = "Country")
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE name = 'Gelderland'
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'North America' OR continent = 'South America' OR continent = 'Asia' OR continent = 'Oceania'
SELECT avg(gnp) , sum(population) FROM country WHERE Region = 'US'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE continent = 'Africa'
SELECT count(*) FROM countrylanguage WHERE country Code = "ARUD"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT name FROM city WHERE countrycode = 'Aruba' )
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = '1'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 'Yes' AND T2.Language = "French" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 'Yes' AND T2.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t1.language = "Chinese"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Rname FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name In ('Asia', 'Indonesia') GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code EXCEPT SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING COUNT(*) = 1
SELECT DISTINCT L1.Language FROM countrylanguage AS L1 JOIN country AS L2 ON L1.CountryCode = L2.Code JOIN city AS L3 ON L2.Code = L3.CountryCode WHERE L3.District = "R" GROUP BY L1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.language = T3.name WHERE T3.name = 'English' GROUP BY T1.name ORDER BY sum(T1.population) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T2.name ORDER BY population DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.name = 'Asia' ORDER BY T1.population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 0
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 0
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name < '1930' AND T2.isofficial = '1'
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE countrycode <= "US"
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' INTERSECT SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT max(name) FROM country WHERE continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' GROUP BY countrycode HAVING max(population) > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE Language = "English")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English") AND governmentform != "Republic"
SELECT CountryCode FROM country WHERE Countrycode != "Bangladesh" AND Isofficial != 1 UNION SELECT CountryCode FROM countrylanguage WHERE Language != "English"
SELECT name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Name = 'Europe'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.CountryCode WHERE T3.IsOfficial = 1 AND T2.name = 'Asia' AND T3.Language = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.IsOfficial = 1 AND T2.name = 'Asia' AND T3.Language = 'Chinese'
SELECT name , independyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name , independyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT t1.population , t1.name , t1.HeadOfState FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code WHERE t1.region = "Surface Area" ORDER BY t1.population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "North America" AND t1.SurfaceArea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.% , T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY SUM(T2.% ) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(Percentage) FROM countrylanguage WHERE Language = "Spanish" ORDER BY sum(Percentage) DESC LIMIT 1
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT count(*) FROM orchestra WHERE orchestra = "CD" OR orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT name FROM highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 1019
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1015
SELECT count(*) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 598355665
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.ID WHERE T1.student_id = 10115
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT cell_number , last_name , home_phone FROM Professionals WHERE STATE = "IND" UNION SELECT T1.cell_number , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana"
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T3.cost_of_treatment > 1000
SELECT T2.first_name , T2.last_name , T1.owner_id FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.treatment_id , T2.role_code , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.role_code HAVING count(*) >= 2
SELECT T1.treatment_id , T1.role_code , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type_code ORDER BY cost_of_treatment LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type_code ORDER BY cost_of_treatment LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING avg(cost_of_treatment) < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T3.professional_id = T1.professional_id WHERE T2.treatment_type_code = "Less Expansive" AND T3.cost_of_treatment != (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city = "Virginia";
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
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
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(net_wealth_millions) , citizenship FROM singer GROUP BY citizenship
SELECT country , max(networth) FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM properties AS T1 JOIN ref_property_ttypes AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_description = 'house' UNION SELECT T1.property_name FROM properties AS T1 JOIN ref_property_ttypes AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_description = 'apartment' AND T1.room_count > 1
