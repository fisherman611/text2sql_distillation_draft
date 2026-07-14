SELECT Name , Country , Age FROM singer ORDER BY Age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT Name , Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT count(*) , country FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme
SELECT T1.Name , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY avg_capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE pet_age > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pet_age = 1 ORDER BY weight LIMIT 1
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student WHERE sex = 'F'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" AND T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student EXCEPT SELECT T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT T1.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE YEAR = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T2.Year = 1970
SELECT T1.Make , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T2.Year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT Maker FROM car_makers GROUP BY Maker ORDER BY count(*) DESC LIMIT 1)
SELECT T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.FullName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = 'Amc Hornet Sportabout (sw)'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT model FROM model_list WHERE model LIKE "%gasoline%" GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_names WHERE make = 'Ford' ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = 'American Motor Company'
SELECT count(*) FROM car_makers WHERE maker = 'American Motor Company'
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId WHERE T3.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT count(*) FROM cars_data WHERE make = "Volvo" ORDER BY accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE make = "Volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "Volvo")
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker = 'More Than 2'
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.MakeId WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY SUM(T2.Horsepower) DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT T1.id , T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'fiat' OR count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Ford" OR T2.Maker = "BMW"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE airportname = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT airportname FROM airports WHERE country = 'AKO'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "Australia"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.City = 'Aberdeen' AND T3.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = 'United Airlines' AND T2.CountryAbbreviation = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND destairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = 'United Airlines' AND T1.SourceAirport = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND flightno LIKE 'AHD%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.airline = T1.airline WHERE T3.airline = 'United' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.airline = T1.airline WHERE T3.airline = 'United' AND T2.city = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T1.Abbreviation = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T1.Abbreviation = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = 'APG'
SELECT airline FROM airlines WHERE airportcode = 'CVO' EXCEPT SELECT airline FROM airlines WHERE airportcode = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = "United"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'Aberdeen' OR T1.City = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Abberon' OR T2.City = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT srcairport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights UNION SELECT SourceAirport FROM flights)
SELECT Name FROM employee ORDER BY Name
SELECT Name FROM employee ORDER BY Age
SELECT CITY FROM employee WHERE Age < 30 GROUP BY CITY HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM shop GROUP BY Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
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
SELECT Name FROM teacher WHERE Age = 25 AND Course = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = "1"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.rankering_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.rankings_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.country_code = "australia open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3
SELECT T1.first_name , T1.last_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year ASC LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.winner_hand = "left"
SELECT count(*) FROM players WHERE hand = 'left' AND winner_hand = 'WTA Championships'
SELECT count(*) FROM ship WHERE disposition_of_ship = 'captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T1.result = 'lost' AND T1.name LIKE '%Lettie%'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE location = 'English Channel')
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT course_description FROM Courses WHERE course_name LIKE "math%"
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Master' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Masters' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelors'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT first_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM cartoon ORDER BY Title
SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE Written_by = "Joseph Kuh"
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_Channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Package_Option = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel JOIN TV_channel AS T3 ON T2.channel = T3.id WHERE T3.series_name = "The Rise of the Blue Beetle"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_Name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.Air_Date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "A Love of a Lifetime"
SELECT T1.Air_Date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , Series_Name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , Series_Name FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon)
SELECT Country FROM TV_Channel WHERE Country != 'Cartoon' AND Written_by = "Todd Casey"
SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.Series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "english"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Directed_by = "Ben Jones")
SELECT Money_Rank , Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT count(*) , Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling'
SELECT area_code FROM VOTES WHERE state = 'both' AND contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling' INTERSECT SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Kelly Clauss')
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country
SELECT count(*) FROM country WHERE Region = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT region FROM country WHERE capital = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" GROUP BY Language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ARBA" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE Continent = 'Brazil'
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT Region , Population FROM country WHERE Name = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Republic' AND Continent = 'Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE Name = 'Gelderland'
SELECT sum(population) FROM city WHERE name = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'North America'
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND country.code = 'AFG'
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = "AF"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "french"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "english" OR T2.Language = "dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.CountryName FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "english" GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1)
SELECT avg(lifeexpectancy) FROM country WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'no')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
{"sql": "SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 1 AND Code = (SELECT Code FROM country WHERE IndepYear < 1930")"}
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT countryname FROM country WHERE continent != 'Asia' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM country WHERE continent != 'Asia' GROUP BY countrycode ORDER BY count(*) ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != 'english')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' AND governmentform = 'Republic')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "Chinese" AND T1.CountryCode = "Asia"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.code WHERE T3.continent = "Asia" AND T2.isofficial = "Yes"
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name , independeyyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT T1.Population , T1.Name , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode ORDER BY T1.Population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT Name FROM country WHERE Continent = "Europe" AND Population >= 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population >= 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT Name FROM city WHERE Population > 160000 INTERSECT SELECT Name FROM city WHERE Population < 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language , max(Percentage) FROM countrylanguage GROUP BY Language
SELECT T1.CountryCode , T2.Language , max(T2.Percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode
SELECT sum(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" ORDER BY T2.Percentage DESC LIMIT 1
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish'
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Orchestra = "CD" OR Orchestra = "DVD"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 100000000
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 100000001
SELECT count(*) FROM FRIENDS WHERE student_id = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 1
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler EXCEPT SELECT T1.grade FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT professional_id , last_name , cell_number FROM Professionals WHERE state = 'Indiana' UNION SELECT professional_id , last_name , cell_number FROM Professionals WHERE count(*) > 2
SELECT professional_id , last_name , cell_number FROM Professionals WHERE state = 'Indiana' UNION SELECT professional_id , last_name , cell_number FROM Professionals WHERE count(*) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T3.owner_id = T2.professional_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.owner_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT treatment_type_description FROM Treatment_Types ORDER BY min(cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'smaller'
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT country , max(networth) FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'house' OR room_count > 1
