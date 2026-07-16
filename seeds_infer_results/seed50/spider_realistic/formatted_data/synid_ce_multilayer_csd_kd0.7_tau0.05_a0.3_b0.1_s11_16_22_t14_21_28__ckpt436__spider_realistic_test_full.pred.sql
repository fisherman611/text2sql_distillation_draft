SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(Age) , min(Age) , max(Age) FROM singer WHERE Country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE Country = "French"
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student)
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F"
SELECT count(*) FROM Student WHERE Sex = "F" JOIN Has_Pet ON StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = "dog"
SELECT T1.Fname FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog")
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "Cat"
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.FullName , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.FullName , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = (SELECT min(year) FROM cars_data)
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.year > 1980
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT T3.Maker FROM car_makers GROUP BY T3.Maker ORDER BY count(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT MAKER FROM car_makers GROUP BY MAKER ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE make = "Amc Hornet Sportabout (sw)"
SELECT count(*) FROM car_makers WHERE country = "france"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(DISTINCT T1.maker) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "USA"
SELECT count(*) FROM car_makers WHERE country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker != "null"
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'Cars'
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = "Europe" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = "European" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT model FROM cars_data WHERE weight = (SELECT min(weight) FROM cars_data)
SELECT car_names.Make FROM car_names JOIN cars_data ON car_names.Make = cars_data.Id ORDER BY cars_data.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Id GROUP BY T1.Make ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.make = T3.makeid WHERE T3.weight > 3500 OR T2.make = 'General Motors'
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = "General Motors" OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Id = (SELECT Id FROM cars_data ORDER BY Accelerate LIMIT 1)
SELECT count(DISTINCT T1.CountryName) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE Country > 2
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY MAX(Horsepower)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM car_names WHERE make != 'Ford Motor Company' AND weight < 3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Id WHERE T2.FullName = "Ford Motor Company" AND T1.Weight < 3500
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'fiat' UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'Ford' OR T2.maker = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT AirportName FROM Airports WHERE Country = "Australia"
SELECT AirportName FROM Airports WHERE Country = "Australia"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM Flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" INTERSECT SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T2.AirportName = "Ashley"
SELECT count(*) FROM Flights AS T1 JOIN Airline AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM Flights WHERE Airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabb = 'ASY' JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "ASY" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Airlines' AND T2.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' JOIN airlines AS T3 ON T1.Airline = T3.UID WHERE T3.Airline = 'United Airlines'
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" JOIN Airline AS T3 ON T1.Airline = T3.UID WHERE T3.Airline = "United Airlines"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.SourceAirport WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.CountryAbbrev WHERE T2.AirportCode = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT Airline FROM Flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM Flights WHERE SourceAirport = 'APG'
SELECT Airline FROM Flights WHERE DestAirport = "CVO" EXCEPT SELECT Airline FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports WHERE city = 'Aberdeen' OR city = 'Abilene'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM Flights UNION SELECT SourceAirport FROM Flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT name FROM Employee ORDER BY age DESC
SELECT name FROM Employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Course = 'Math'
SELECT Name FROM teacher WHERE Subject = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(Age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.museum_id , T1.name , T1.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.Level_of_membership = "lv 1"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.winner_ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tourney_name = "Australian Open")
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" AND T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE player_id = T2.winner_id)
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking DESC LIMIT 3
SELECT T1.first_name , T1.last_name , T2.rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.rank LIMIT 3
SELECT count(DISTINCT T1.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta" AND T1.latin_commander = "Lettice"
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT course_description FROM Courses WHERE course_name LIKE "math%"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.city FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T2.line_1 , T2.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.department_name = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.department_name = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE cell_mobile_number = '09700166582' OR permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti')
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Content FROM TV_Channel WHERE id = 100203
SELECT Package_Option FROM TV_Channel WHERE Series_Name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT t1.series_name FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name LIKE "%Sky Radio%"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.name = "Sky Radio"
SELECT Air_Date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT T2.Air_Date FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T1.Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Channel = (SELECT id FROM TV_channel WHERE series_name = "A Love of a Lifetime")
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.content = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , CHANNEL FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Todd Casey'
SELECT T1.Country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = 'Todd Casey')
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = 'Todd Casey')
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "english"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT T1.Money_Rank , T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Money_Rank ORDER BY T1.Money_Rank DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM VOTES WHERE contestant_number = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1001 AND T2.contestant_number = 1002
SELECT name FROM country WHERE independyear > 1950
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear > 1950
SELECT count(*) FROM country WHERE Continent = "Republic"
SELECT count(*) FROM country WHERE Region = "Republic"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Carribean"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT region FROM country WHERE capital = 'Kabul'
SELECT region FROM city WHERE name = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.CountryName = "Aruba" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT population , lifeexpectancy FROM country WHERE countrycode = "BR"
SELECT population , lifeexpectancy FROM country WHERE countrycode = "BR"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T1.region , T2.population FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE name = 'Gelderland'
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE continent = "North America"
SELECT avg(gnp) , sum(population) FROM country WHERE region = "US"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "ARUBA"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "french"
SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'English' INTERSECT SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT continent) FROM country WHERE language = 'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.country FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 OR T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "english" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "english" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name != 'English'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'No'
SELECT sum(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name NOT IN (SELECT Name FROM country WHERE Language != "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IndepYear < 1930
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT country FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT country FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Asia' WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT country FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != "english")
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE language = "english") AND region != "Republic"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE language = "english")
SELECT name FROM city WHERE countrycode = (SELECT countrycode FROM country WHERE continent = "Europe" AND isofficial = "No")
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.name LIKE "China"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 1 AND T1.continent = "Asia"
SELECT name , independyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT T1.Population , T1.Name , T1.HeadOfState FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T2.Population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Europe" AND T2.population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM city WHERE countrycode = "NOH" AND population > 3000
SELECT name FROM city WHERE population > 160000 INTERSECT SELECT name FROM city WHERE population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.CountryCode , T3.Population FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.CountryCode ORDER BY T3.Population DESC LIMIT 1
SELECT T1.countrycode , T2.language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.countrycode ORDER BY count(*) DESC
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT count(*) FROM orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 123456
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 36
SELECT count(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT count(*) FROM Friend WHERE student_id = 123456
SELECT count(*) FROM Likes WHERE student_id = 1001
SELECT count(*) FROM Likes WHERE student_id = 1000000
SELECT avg(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT grade FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 AND T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.amount > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.role , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.owner_id , T2.role_code , T2.first_name FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_description ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_description ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING min(T2.treatment_type_code) < (SELECT avg(treatment_type_code) FROM Treatments)
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city = "Virginia"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'yes'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT country , max(net_work) FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'apartment' OR room_count > 1
