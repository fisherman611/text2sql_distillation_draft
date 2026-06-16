SELECT Name, Country, Age FROM singer ORDER BY Age DESC;
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE Country = "France";
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France";
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT Song_Name , Song_release_year FROM singer WHERE Age = (SELECT min(Age) FROM singer)
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country;
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT average(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Location , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert);
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30;
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name , T1.Theme , (SELECT count(*) FROM singer_in_concert AS T2 WHERE T2.concert_ID = T1.concert_ID ) FROM concert AS T1;
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.concert_Name , T2.concert_ID FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.concert_ID
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014;
SELECT DISTINCT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014;
SELECT Name , Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.stadium_id , T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.stadium_id , T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM pets WHERE weight > 10;
SELECT count(*) FROM pets WHERE weight > 10;
SELECT weight FROM pets WHERE pet_type = 'dog' AND pet_age = (SELECT min(age) FROM student)
SELECT weight FROM Pets WHERE pet_age = (SELECT min(age) FROM Student)
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM has_pet WHERE StuID IN (SELECT StuID FROM student WHERE sex = 'F');
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE sex = 'F');
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" OR T3.pettype = "dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'cat' OR T3.pet_type = 'dog'
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat') INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'dog'))
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT major , age FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet);
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"));
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.petid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' AND T3.petid NOT IN (SELECT petid FROM has_pet WHERE petid IN (SELECT petid FROM pets WHERE pettype = 'cat'))
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'dog' EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'cat'
SELECT PetType , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT PetType , weight FROM pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT pet_id , weight FROM pets WHERE pet_age > 1
SELECT pet_id , weight FROM pets WHERE pet_age > 1;
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT DISTINCT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet);
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet);
SELECT car_makers.fullname , car_makers.id , count(model_list.modelid) FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id;
SELECT car_makers.fullname , car_makers.id , count(model_list.Maker) FROM car_makers JOIN model_list ON car_makers.id = model_list.Maker GROUP BY car_makers.id;
SELECT maker FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM model_list WHERE Id IN (SELECT MakeId FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data));
SELECT DISTINCT car_makers.Maker FROM car_makers JOIN cars_data ON car_makers.Id = cars_data.MakeId WHERE cars_data.Year = 1970;
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT car_makers.Maker , cars_data.Year FROM car_makers JOIN cars_data ON car_makers.Id = cars_data.Id ORDER BY cars_data.Year ASC LIMIT 1;
SELECT DISTINCT model FROM model_list WHERE maker NOT IN (SELECT maker FROM cars_data WHERE YEAR <= 1980)
SELECT DISTINCT model FROM model_list JOIN cars_data ON model_list maker = cars_data.id WHERE cars_data.year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT COUNT(*) , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id;
SELECT count(*) , car_makers.id , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id;
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout (sw)");
SELECT count(DISTINCT Id) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE Continent = 'Europe');
SELECT COUNT(DISTINCT car_makers.Id) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = "Europe";
SELECT count(DISTINCT maker) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = "Americas";
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8;
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3;
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id ORDER BY T2.MPG DESC LIMIT 1;
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId JOIN car_makers ON car_names.Maker = car_makers.Id JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = 'Europe';
SELECT avg(Edispl) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names INTERSECT SELECT Id FROM car_names WHERE MakeId IN (SELECT Id FROM car_makers WHERE Country = "Sweden"))
SELECT T1.MakeId , T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id GROUP BY T1.MakeId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(DISTINCT maker) FROM car_makers WHERE country = 'USA';
SELECT count(*) FROM car_makers WHERE country = 'USA';
SELECT car_makers.fullname , car_makers.id FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id HAVING count(*) > 3;
SELECT T1.Id , T1.MakeName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN cars_data AS T3 ON T3.Id = T2.Makeid WHERE T1.Country = 'USA' OR T3.Weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" UNION SELECT maker FROM model_list WHERE modelid IN (SELECT id FROM cars_data WHERE weight > 3500)
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT Cylinders FROM cars_data WHERE MakeId = (SELECT MakeId FROM cars_data ORDER BY Accelerate LIMIT 1)
SELECT Cylinders FROM cars_data WHERE MakeId IN ( SELECT Id FROM car_makers WHERE Country = 'Sweden' ) ORDER BY Accelerate ASC LIMIT 1
SELECT COUNT(DISTINCT country) FROM car_makers WHERE country IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT COUNT(DISTINCT countryname) FROM countries WHERE countryid IN (SELECT DISTINCT country FROM car_makers GROUP BY country HAVING count(*) > 2);
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1maker = T2.id JOIN cars_data AS T3 ON T3.id = T1.modelid WHERE T3.weight < 3500 AND T2.fullname = "Ford Motor Company"
SELECT countryid , countryname FROM countries WHERE countryid IN (SELECT id FROM car_makers GROUP BY country HAVING count(*) > 3 UNION SELECT country FROM car_makers WHERE fullname = 'fiat')
SELECT countryid , countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3 UNION SELECT country FROM car_names GROUP BY country HAVING count(*) > 3)
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Country FROM airlines WHERE Abbreviation = 'JET'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways';
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL';
SELECT * FROM airlines WHERE Airline = 'UAL';
SELECT count(*) FROM airlines WHERE Country = 'USA';
SELECT count(*) FROM airlines WHERE Country = 'USA';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE AirportCode = "AKO";
SELECT AirportName FROM airports WHERE City = 'Aberdeen';
SELECT AirportName FROM airports WHERE City = 'Aberdeen';
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE DestAirport = 'ATO';
SELECT count(*) FROM flights WHERE DestAirport = 'ATO';
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City LIKE '%Aberdeen%');
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'Aberdeen';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = "Aberdeen";
SELECT count(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen") AND DestAirport = (SELECT AirportCode FROM airports WHERE City = "Ashley");
SELECT count(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen") AND DestAirport = (SELECT AirportCode FROM airports WHERE City = "Ashley");
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways';
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways';
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND DestAirport LIKE 'ASY%'
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND DestAirport = 'ASY';
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'Aberdeen' AND flights.Airline = 'United';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'Aberdeen' AND flights.Airline = 'United';
SELECT DISTINCT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "AHD")
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD' OR DestAirport = 'AHD';
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'AHD';
SELECT Airline FROM flights WHERE SourceAirport = 'AHD' OR DestAirport = 'AHD' GROUP BY Airline
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = 'APG' INTERSECT SELECT Airline FROM flights WHERE SourceAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = APG
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT FlightNo FROM flights WHERE DestAirport = "ABZ";
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT count(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen' OR City = 'Abilene');
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen' OR airports.City = 'Abilene';
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT Name FROM employee ORDER BY Age;
SELECT Name FROM employee ORDER BY Age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1;
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1;
SELECT Location , COUNT(*) FROM shop GROUP BY Location
SELECT COUNT(*) , Name FROM shop GROUP BY Name;
SELECT Manager_name , District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name, location, district FROM shop ORDER BY number_products DESC;
SELECT Name , Location , District FROM shop ORDER BY Number_products DESC;
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop);
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT employee.Name FROM employee JOIN evaluation ON employee.Employee_ID = evaluation.Employee_ID ORDER BY evaluation.Bonus DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1);
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1);
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring);
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring);
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT Name FROM teacher ORDER BY Age;
SELECT Name FROM teacher ORDER BY Age;
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District';
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33;
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course = 'math';
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id WHERE course.course = 'math';
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE Age < 30;
SELECT name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC;
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= "LV4";
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum';
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year < 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1;
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.Museum_ID , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit);
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT sum(Total_spent) FROM visit WHERE ID IN (SELECT ID FROM visitor WHERE Level_of_membership = "lv 1")
SELECT first_name, birth_date FROM players WHERE country_code = 'USA';
SELECT first_name , birth_date FROM players WHERE country_code = 'USA';
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT DISTINCT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' AND T2.year = 1972 INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' AND T2.year = 1972
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY (SELECT max(birth_date) FROM players) ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.player_id , T1.first_name , T1.last_name , T1.hand , T1.birth_date , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.player_id , T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id ¼ T2.winner_id WHERE T2.tournament_name ¼ 'Australian Open' AND T2.winner_rank_points ¼ (SELECT max(winner_rank_points) FROM matches WHERE tournament_name ¼ 'Australian Open')
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id GROUP BY T1.winner_id ORDER BY sum(T3.ranking_points) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1;
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1;
SELECT country_code, count(*) FROM players GROUP BY country_code;
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches JOIN players ON matches.winner_id = players.player_id WHERE players.hand = 'Left' AND EXISTS (SELECT * FROM matches AS T1 JOIN players AS P1 ON T1.winner_id = P1.player_id WHERE P1.country_code = 'USA' AND T1.year = 1980)
SELECT count(*) FROM (SELECT DISTINCT winner_id FROM matches WHERE winner_hand = "left" AND tourney_name = "WTA Championships") AS T;
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured';
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.killed > 10
SELECT ship.id , ship.name FROM ship JOIN death ON ship.id = death.caused_by_ship_id GROUP BY ship.id ORDER BY sum(injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta' AND T1.result = 'lost'
SELECT name, RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel')
SELECT course_description FROM Courses;
SELECT course_description FROM Courses WHERE course_name = "math";
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea";
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea";
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT Students.last_name FROM Students JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , T1.city , T1.zip_postcode , T1.state_province_county , T1.country FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT Addresses.address_id , Addresses.line_1 , Addresses.line_2 FROM Students JOIN Addresses ON Students.current_address_id = Addresses.address_id GROUP BY Addresses.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id JOIN Student_Enrolment AS T4 ON T4.student_id = T1.student_id JOIN Degree_Programs AS T5 ON T4.degree_program_id = T5.degree_program_id WHERE T5.degree_summary_name = 'Master' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id JOIN Student_Enrolment AS T4 ON T4.student_id = T1.student_id JOIN Degree_Programs AS T5 ON T4.degree_program_id = T5.degree_program_id WHERE T5.degree_summary_name = 'Bachelor'
SELECT semester_id FROM Student_Enrolment GROUP BY semester_id HAVING count(DISTINCT degree_program_id) >= 2;
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title;
SELECT Title FROM Cartoon ORDER BY Title;
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Content FROM TV_Channel WHERE id IN (SELECT Channel FROM TV_series UNION SELECT Channel FROM Cartoon) AND series_name = 'Sky Radio';
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT count(*) FROM TV_Channel WHERE Language = "English";
SELECT count(*) FROM TV_Channel WHERE Language = "English";
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = "The Rise of the Blue Beetle!";
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle";
SELECT Title FROM Cartoon WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = 'Sky Radio')}
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime";
SELECT Original_air_date FROM Cartoon WHERE Title = 'A Love of a Lifetime';
SELECT Weekly_Rank FROM TV_series WHERE series_name = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series JOIN Cartoon ON TV_series.Channel = Cartoon.Channel WHERE Cartoon.Title = "A Love of a Lifetime";
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = "A Love of a Lifetime";
{ "sql": "SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = """"A Love of a Lifetime"""";" }
SELECT id FROM TV_Channel WHERE series_name = "Sky Radio" UNION SELECT id FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Directed_by , COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by , COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1;
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT Package_Option , TV_Channel.series_name FROM TV_Channel JOIN TV_series ON TV_series.Channel = TV_Channel.id WHERE TV_Channel.Hight_definition_TV = 'Yes' UNION SELECT Package_Option , TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON Cartoon.Channel = TV_Channel.id WHERE TV_Channel.Hight_definition_TV = 'Yes'
SELECT DISTINCT Country FROM TV_Channel WHERE id IN (SELECT DISTINCT Channel FROM Cartoon WHERE Written_by = "Todd Casey writes")
SELECT Country FROM TV_Channel WHERE id IN (SELECT DISTINCT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT country FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = "Todd Casey writes")
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT T1.series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT T1.series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_Channel WHERE country IN (SELECT country FROM TV_Channel GROUP BY country HAVING count(*) > 2)
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT DISTINCT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Money_Rank , Earnings FROM poker_player ORDER BY Earnings DESC;
SELECT Money_Rank FROM poker_player JOIN people ON poker_player.People_ID = people.People_ID ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player JOIN people ON poker_player.People_ID = people.People_ID ORDER BY people.Height DESC LIMIT 1;
SELECT avg(Earnings) FROM poker_player WHERE people.People_ID -> people.People_ID -> people.Height > 200;
SELECT avg(Earnings) FROM poker_player WHERE people.People_ID -> people.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(DISTINCT People_ID) >= 2;
SELECT Name FROM people WHERE Nationality != 'Russia';
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT max(created) FROM votes WHERE state = 'CA';
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes JOIN contestants ON votes.contestant_number = contestants.contestant_number WHERE contestant_name = 'Tabatha Gehling'
SELECT state FROM VOTES WHERE contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling') INTERSECT SELECT state FROM VOTES WHERE contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Kelly Clauss')
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Carribean';
SELECT Continent FROM country WHERE Code = 'AGY';
SELECT Continent FROM country WHERE Code = 'AIA';
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul';
SELECT region FROM country WHERE countrycode = "AF";
SELECT language FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY percentage DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY Percentage DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Region, Population FROM country WHERE Code = 'ANG';
SELECT Region , Population FROM country WHERE Name = 'Angola';
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central';
SELECT LifeExpectancy FROM country WHERE Continent = 'Africa' AND Region = 'Central';
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia';
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia';
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE Name LIKE 'United States' OR Code2 LIKE 'US';
SELECT avg(GNP) , sum(population) FROM country WHERE Name = 'United States';
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT count(DISTINCT Code) FROM countrylanguage WHERE IsOfficial = 1;
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE CountryCode = 'AFG';
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'French');
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'French') GROUP BY code;
SELECT name FROM country WHERE code IN (SELECT code FROM countrylanguage WHERE isofficial = 1 GROUP BY code HAVING count(DISTINCT language) = 2);
SELECT name FROM country WHERE code IN (SELECT code FROM countrylanguage WHERE isofficial = 1 AND language = 'English' INTERSECT SELECT code FROM countrylanguage WHERE isofficial = 1 AND language = 'French');
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT COUNT(DISTINCT continent) FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE language = 'Chinese';
SELECT DISTINCT region FROM countrylanguage WHERE language = 'English' OR language = 'Dutch'
SELECT DISTINCT region FROM countrylanguage WHERE language = 'Dutch' OR language = 'English';
SELECT Name FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'english') UNION SELECT Name FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'dutch')
SELECT language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY CountryCode ORDER BY sum(percentage) DESC LIMIT 1;
SELECT countrylanguage.Language FROM countrylanguage WHERE countrylanguage.CountryCode IN (SELECT Code FROM country WHERE continent = 'Asia') GROUP BY countrylanguage.Language ORDER BY count(*) DESC LIMIT 1;
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country GROUP BY code HAVING count(*) = 1)
SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Population > 10000000000 AND GovernmentForm = 'Republic') INTERSECT SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Population > 10000000000 AND GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(DISTINCT CountryCode) = 1
SELECT district FROM city JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode WHERE language = 'English' GROUP BY district ORDER BY sum(population) DESC LIMIT 1;
SELECT max(T1.population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.language = 'english'
SELECT Name , Population , LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English');
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English');
{ "sql": "SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population)
SELECT count(*) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'english');
SELECT IsOfficial FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix');
SELECT IsOfficial FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix');
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE Code IN (SELECT Code FROM country WHERE IndepYear < 1930);
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930);
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')}
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe') AND Continent != 'Europe';
{ "sql": "SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(population) FROM country WHERE continent = 'Asia')"
SELECT Name FROM country WHERE Population < (SELECT max(Population) FROM country WHERE Continent = 'Asia')) AND Continent = 'Africa';
SELECT Name FROM country WHERE Population > (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
{ "sql": "SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(population) FROM country WHERE continent = 'Africa')"
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') UNION SELECT Code FROM country WHERE IsOfficial = 'Yes' AND Language != 'English' AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM countrylanguage WHERE IsOfficial = 'T' AND Language != 'English';
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 1)
SELECT Code FROM country WHERE GovernmentForm != 'Republic' AND Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 1);
SELECT Code FROM country WHERE GovernmentForm != 'Republic' EXCEPT SELECT Code FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 1
SELECT DISTINCT city.name FROM city JOIN country ON city.CountryCode = country.Code WHERE country.continent = 'Europe' AND countrylanguage.IsOfficial = 'T' AND countrylanguage.Language != 'English' AND countrylanguage.CountryCode = city.CountryCode;
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' AND T2.Official = 'yes' INTERSECT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' AND T2.Official = 'yes' AND T2.Name = 'China'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' AND CountryCode IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 'yes' AND Language = 'Chinese') ORDER BY T1.Name
SELECT T1.Name , T1.SurfaceArea , T1.IndepYear FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(DISTINCT T2.Language) LIMIT 1;
SELECT Name , IndepYear , SurfaceArea FROM country ORDER BY Population LIMIT 1;
SELECT SurfaceArea , Name , HeadOfState FROM country ORDER BY Population DESC LIMIT 1;
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) < count(*)
SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country ORDER BY Population ASC LIMIT 3;
SELECT Name FROM country ORDER BY Population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia';
SELECT count(*) FROM country WHERE Continent = 'Asia';
SELECT Name FROM country WHERE Continent = 'Europe' AND Population > 80000;
SELECT Name FROM country WHERE Continent = 'Europe' AND Population > 80000;
SELECT sum(population), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000;
SELECT sum(population) , avg(population) FROM country WHERE continent = 'North America' AND surfacearea > 3000;
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT country.Name , countrylanguage.Language , max(countrylanguage.Percentage) FROM country JOIN countrylanguage ON countrylanguage.CountryCode = country.Code GROUP BY country.Name;
SELECT Code , Language FROM countrylanguage GROUP BY CountryCode ORDER BY max(percentage) DESC;
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1)
SELECT COUNT(DISTINCT country.Code) FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.IsOfficial = 'yes' AND countrylanguage.Language = 'Spanish';
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'Yes' GROUP BY CountryCode HAVING SUM(Percentage) >= 50
SELECT Name FROM conductor ORDER BY Age ASC;
SELECT Name FROM conductor ORDER BY Age;
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC;
SELECT COUNT(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD";
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT name FROM Highschooler WHERE grade = 10;
SELECT name FROM Highschooler WHERE grade = 10;
SELECT id FROM Highschooler WHERE name = 'Kyle';
SELECT id FROM highschooler WHERE name = 'Kyle';
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade FROM Highschooler GROUP BY grade;
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle') INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT T2.name FROM Friend JOIN Highschooler AS T2 ON T2.id = friend_id WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(*) FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(*) FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(*) FROM Likes WHERE student_id IN (SELECT id FROM Highschooler WHERE name = "Kyle");
SELECT count(*) FROM Likes WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend);
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend);
SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'Indiana' OR professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2 )
SELECT professional_id , last_name , cell_number FROM Professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING sum(T2.cost_of_treatment) > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T.professional_id , Professionals.role_code , Professionals.first_name FROM Treatments AS T JOIN Professionals ON T.professional_id = Professionals.professional_id GROUP BY T.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code ORDER BY min(cost_of_treatment) LIMIT 1)
SELECT treatment_type_description FROM Treatment_Types ORDER BY (SELECT min(charge_amount) FROM Charges) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN (SELECT treatment_type_code , avg(cost_of_treatment) AS avg_cost FROM Treatments GROUP BY treatment_type_code) AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T2.cost_of_treatment < T3.avg_cost
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.cost_of_treatment = T3.charge_amount WHERE T3.charge_type = 'max' EXCEPT SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.cost_of_treatment = T3.charge_amount WHERE T3.charge_type = 'min'
SELECT T1.name , T2.first_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin";
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin";
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs);
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs);
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'House' AND room_count > 1 UNION SELECT property_name FROM properties WHERE property_type_code = 'Apartment' AND room_count > 1
