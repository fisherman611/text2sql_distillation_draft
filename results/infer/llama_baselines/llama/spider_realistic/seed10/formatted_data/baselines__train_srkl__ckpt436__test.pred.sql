SELECT name, country, age FROM singer ORDER BY age
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE Country = "France"
SELECT T1.song_name, T1.song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year > 2013
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(T2.Capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Name = "Stadium for most people"
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT min(weight) FROM Pets WHERE pet_type = 'dog'
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.age > 20
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat" OR T2.pettype = "dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Cat' INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Dog'
SELECT major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT Major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "cat"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" AND T1.fname NOT IN (SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat")
SELECT pet_type, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.year = 1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC
SELECT T1.Maker, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT t1.Model FROM car_names AS t1 JOIN model_list AS t2 ON t1.Model = t2.Model WHERE t1.Year > 1980
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.id, T1.fullname, T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.model = 'car'
SELECT max(Accelerate) FROM cars_data WHERE make = "AMC" AND model = "Hornet"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Country = "United States"
SELECT avg(mpg) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T2.Maker = "Toyota" AND T1.year = 1974
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker!= "null"
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T2.Country HAVING count(*) >= 3
SELECT model FROM car_names GROUP BY model ORDER BY sum(Edispl) DESC LIMIT 1
SELECT T1.Make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE make = "Volvo"
SELECT avg(Edispl) FROM car_names WHERE Make = "Volkswagen"
SELECT T1.Make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.year = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" AND T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT T1.cylinders FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.FullName = "volvo" ORDER BY T1.Accelerate ASC
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T2.make = 'volvo' ORDER BY T1.accelerate ASC LIMIT 1
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T2.Maker = "Toyota" OR T2.Maker = "Ford" OR T2.Maker = "Chevrolet" OR T2.Maker = "Chrysler" OR T2.Maker = "Dodge" WHERE T1.year < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "Ford"
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker!= "Ford" AND T1.Weight < 3500
SELECT Id, CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN car_names AS T3 ON T2.Id = T3.MakeId WHERE T3.Name = 'Fiat'
SELECT Id, CountryId FROM car_makers GROUP BY CountryId HAVING count(*) > 3 UNION SELECT CountryId, CountryName FROM countries GROUP BY CountryId HAVING count(*) > 3
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE CountryAbbrev = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE Country = "USA"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT Abbreviation FROM airlines WHERE CountryAbbrev = "AK"
SELECT Abbreviation FROM airlines
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATL"
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'
SELECT count(DISTINCT T1.FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.Country = "United Kingdom" AND T2.CountryAbbrev = "AB"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE SourceAirport = "ASY" AND Airline = "United Airlines"
SELECT count(*) FROM flights WHERE SourceAirport = "ASY"
SELECT count(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = "United Airlines"
SELECT count(*) FROM flights WHERE SourceAirport = 'AHD'
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "United" AND T1.SourceAirport = "Aberdeen"
SELECT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = "AHM"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'ADH'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "APG"
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR SourceAirport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop GROUP BY name HAVING avg(Number_products) > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Staring_Date
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Name = "Math"
SELECT Name FROM teacher WHERE Name LIKE '%math%'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(T1.age) FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.museum_id WHERE T1.age <= 4
SELECT Museum_ID, Name FROM museum GROUP BY Name ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.ID, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_id GROUP BY T1.ID HAVING count(*) > 1
SELECT T1.Museum_ID, T1.Name, T1.Level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY T2.Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_id GROUP BY T1.name ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1
SELECT sum(Total_spent) FROM visit WHERE LEVEL_of_membership = '1'
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players ORDER BY T1.birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'Australian Open' GROUP BY T1.player_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC
SELECT T1.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age ASC LIMIT 3
SELECT COUNT(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.causedBy_ship_id GROUP BY T2.causedBy_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' AND T1.result = 'Lost' AND T2.name = 'HMS Atalanta'
SELECT name, bulgarian_commander, result FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE location = 'English Channel')
SELECT course_description FROM Courses WHERE course_name LIKE '%math%'
SELECT course_description FROM Courses
SELECT zip_postcode FROM addresses WHERE city = "Port"
SELECT zip_postcode FROM Addresses WHERE city = "Port"
SELECT last_name FROM Addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT last_name FROM Addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_left
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM Semesters ORDER BY date_left ASC LIMIT 1)
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.semester_id ASC LIMIT 1
SELECT T1.address_id FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = "Bachelor"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 1 INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 2
SELECT first_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT DISTINCT Directed_by FROM Cartoon
SELECT DISTINCT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_Channel WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Channel = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Name = "Sky Radio"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T2.name = "Sky Radio"
SELECT Air_Date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = """A Love of a Lifetime""
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'HD'
SELECT Package_Option FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT Country FROM TV_channel WHERE Channel = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT Channel FROM Cartoon)
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM Cartoon WHERE Directed_by = "Todd Casey"
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.Country, T1.Pixel_aspect_ratio_PAR FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Language!= "english"
SELECT T1.pixel_aspect_ratio PAR, T1.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Language!= "english"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT count(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT created FROM VOTES WHERE state = "CA"
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.created, T2.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT area_code FROM VOTES WHERE contestant_number = "Tabatha Gehling" INTERSECT SELECT area_code FROM VOTES WHERE contestant_number = "Kelly Clauss"
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country WHERE Continent = "Africa"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AR"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Region, Population FROM city WHERE CountryCode = "Angola"
SELECT Region FROM country WHERE Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*), max(gnpold) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Name
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), sum(Population) FROM country WHERE Region = 'United States' GROUP BY CountryCode
SELECT avg(GNP), sum(Population) FROM country WHERE countrycode = 'USA' GROUP BY countrycode
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = "Africa")
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = "Africa")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT t1.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "Afghanistan"
SELECT name FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country WHERE Continent NOT IN (SELECT DISTINCT Continent FROM countrylanguage) GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT count(DISTINCT t3.Continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode JOIN city AS t3 ON t1.Code = t3.CountryCode WHERE t2.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT DISTINCT region FROM country WHERE language = "English" OR language = "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch" OR T1.Name = "English"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = "english" GROUP BY name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM city WHERE Population > 100000 AND language = "english"
SELECT name, Population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English" GROUP BY CountryCode
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English"
SELECT count(*) FROM country WHERE CountryCode NOT IN ( SELECT CountryCode FROM countrylanguage WHERE Language = "english" )
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT t1.Code) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.IndependYear < 1930
SELECT count(DISTINCT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.indepyear < 1930 GROUP BY T1.Language
SELECT Code FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT CountryCode FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')
SELECT Country FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')
SELECT country FROM country WHERE Continent = 'Asia' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT CountryCode FROM country WHERE Continent = "Asia" GROUP BY CountryCode HAVING COUNT(*) > (SELECT min(Population) FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "english"
SELECT CountryCode FROM countrylanguage WHERE Language!= "english"
SELECT CountryCode FROM country WHERE Language!= "english"
SELECT Code FROM country WHERE Language!= "English" AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 1)
SELECT Code FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.Name!= "English"
SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Asia" AND t2.Continent = "Asia" AND t2.Language = "Mandarin" AND t2.IsOfficial = 1 INTERSECT SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "China"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" AND T2.Language = "Chinese"
SELECT name, indepyear, surfacearea FROM country ORDER BY count(*) ASC LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT District, COUNT(*) FROM city GROUP BY District HAVING COUNT(*) > (SELECT avg(Population) FROM city)
SELECT District, COUNT(*) FROM city GROUP BY District HAVING COUNT(*) > (SELECT avg(Population) FROM city)
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population >= 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population >= 80000
SELECT sum(T1.Population), avg(T1.SurfaceArea) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T1.Population > 3000
SELECT sum(population), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000 GROUP BY countrycode
SELECT Name FROM city WHERE Population > 160000 AND Population < 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY T1.Percentage DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY Language ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.Code ORDER BY T2.Percentage DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = "10"
SELECT name FROM highschooler WHERE grade = '10'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), T1.year FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.year
SELECT count(*), T1.year FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.year
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id WHERE T1.name = "Kyle"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.id GROUP BY T1.id
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id)
SELECT grade FROM Highschooler WHERE id NOT IN (SELECT T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.id HAVING count(*) >= 2)
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.dog_id = T3.owner_id WHERE T3.state = 'Indiana' GROUP BY T1.id HAVING count(*) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name, T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.role, T1.id FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT treatment_type_code FROM Treatment_Types ORDER BY cost_of_treatment ASC
SELECT treatment_type_code FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT last_name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE date_of_birth = (SELECT min(age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE date_of_birth < (SELECT avg(age) FROM Dogs)
SELECT max(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id
SELECT T1.cost_of_treatment FROM Charges AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.date_of_treatment = (SELECT max(T2.date_of_treatment) FROM Charges AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id WHERE T2.treatment_type_code = "Treatments")
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year >= 1948
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT count(*), Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) >= 2
SELECT T1.Citizenship, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.property_name FROM Properties AS T1 JOIN Other_Available_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.feature_id IN (SELECT feature_id FROM Other_Available_Features WHERE feature_type_code = "HSE" OR feature_type_code = "APT") GROUP BY T1.property_name HAVING count(*) > 1
