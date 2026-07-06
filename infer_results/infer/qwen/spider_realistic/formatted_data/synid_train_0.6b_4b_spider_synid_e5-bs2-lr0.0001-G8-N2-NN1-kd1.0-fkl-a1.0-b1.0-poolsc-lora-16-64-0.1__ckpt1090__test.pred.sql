SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 ORDER BY t2.year DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT t1.name FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id WHERE t2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.theme LIKE '%Hey%'
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM concert)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(Capacity) FROM concert)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM pets WHERE pet_age > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid IN (SELECT StuID FROM Student WHERE age > 20)
SELECT count(*) FROM student WHERE sex = 'F' AND sex = 'F'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT DISTINCT t3.fname FROM pets AS t1 JOIN has_pet AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.pettype = "Cat" OR t1.pettype = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat" OR T3.pettype = "dog"
SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Dog"
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE pettype = "cat" INTERSECT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE pettype = "dog")
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT major FROM Student EXCEPT SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "dog" EXCEPT SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "cat"
SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = 'cat')
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , max(weight) FROM Pets GROUP BY pet_type
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" AND T3.pet_age = 3
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T2.Maker , T2.Model , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Maker GROUP BY T2.Maker
SELECT T2.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T2.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id GROUP BY T2.Model HAVING AVG(T1.Weight) < (SELECT AVG(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Maker = (SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Maker ORDER BY AVG(Weight) < T1.Weight LIMIT 1)
SELECT maker FROM cars_data WHERE YEAR = 1970
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT T1.Maker , T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Maker ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet' AND model = 'Sportabout'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(DISTINCT t1.maker) FROM car_makers AS t1 JOIN car_makers AS t2 ON t1.id = t2.id WHERE t1.Country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.CountryName WHERE T2.Continent = "USA"
SELECT AVG(MPG) FROM cars_data WHERE cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 4 AND year = 1974
SELECT T2.FullName , T1.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T2.CountryName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.id HAVING count(*) >= 1
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country = "Europe" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Country = "Europe" GROUP BY T1.CountryHName HAVING COUNT(*) >= 3
SELECT model FROM cars_data WHERE weight FROM cars_data GROUP BY model ORDER BY sum(mpg) DESC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Maker JOIN cars_data AS T3 ON T3.Id = T2.Model ORDER BY T3.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Make = "volvo"
SELECT avg(edispl) FROM cars_data WHERE make = 'volvo'
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model GROUP BY T1.Maker ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.maker = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT T2.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T2.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT model FROM cars_data WHERE weight > 3500 INTERSECT SELECT DISTINCT model FROM car_makers WHERE maker = "General Motors"
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "General Motors" UNION SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "General Motors" INTERSECT SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT cylinders FROM cars_data WHERE make = 'volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = 'volvo')
SELECT Cylinders FROM cars_data WHERE Make = "volvo" ORDER BY Accelerate LIMIT 1
SELECT count(DISTINCT country) FROM car_makers WHERE maker != "null" GROUP BY country HAVING count(*) > 2
SELECT count(DISTINCT country) FROM car_makers WHERE maker = 'Ford' OR maker = 'Toyota' OR maker = 'Honda'
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY max(Horsepower) DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR year < 1980
SELECT model FROM model_list WHERE horsepower < 3500 EXCEPT SELECT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker WHERE T1.FULL_NAME = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_makers WHERE make = 'ford'
SELECT T2.CountryId , T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING count(*) > 3 UNION SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = 'fiat'
SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING count(*) > 3 INTERSECT SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = 'fiats'
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT * FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT AirportName FROM airports WHERE Country = 'Australia'
SELECT AirportName FROM airports WHERE Country = 'AJO'
SELECT AirportName FROM airports WHERE Country = "Abadan"
SELECT AirportName FROM airports WHERE Country = 'Abadan'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = "APG"
SELECT count(*) FROM flights WHERE DESTAirport = 'APG'
SELECT count(*) FROM flights WHERE DESTAirport = 'ATO'
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen" INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.Abbreviation = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.abbreviation WHERE T2.abbreviation = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = "United Airlines" AND T2.country = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abbreviation = 'United Airlines' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DESTAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DESTAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode JOIN airports AS T4 ON T3.AirportCode = T4.AirportCode WHERE T3.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode JOIN airports AS T4 ON T3.AirportCode = T4.AirportCode WHERE T4.AirportName = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT FlightNo FROM airlines WHERE Abbreviation = "United"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE DESTAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM Flights WHERE DESTAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DESTAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DESTAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberrance" OR T2.city = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Abadan' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT Name FROM Employee ORDER BY Age
SELECT name FROM Employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , district , district FROM shop ORDER BY number_products DESC
SELECT name , district , location FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
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
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE teacher_id IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.grade = 'math')
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT T1.Teacher_ID FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T2.Grade = 'Math' )
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership NOT IN (4)
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1
SELECT T2.Museum_ID , T1.Name , T1.Level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Total_spent = (SELECT max(T1.Total_spent) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT DISTINCT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT DISTINCT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T2.looser_id = T3.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T2.looser_id = T3.player_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name , T2.last_name , T2.winner_rank , T2.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id ORDER BY T3.match_num DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT t3.winner_name FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id JOIN matches AS t3 ON t3.winner_id = t1.player_id WHERE t3.tourney_name = "Australian Open" ORDER BY t1.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.year = 2019 AND T2.ranking = 1 ORDER BY T2.ranking_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 2
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.winner_id = T3.player_id JOIN players AS T4 ON T1.loser_id = T4.player_id WHERE T1.minutes = (SELECT max(minutes) FROM matches)
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T2.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.year DESC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year LIMIT 3
SELECT count(DISTINCT winner_name) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.hand = 'L' INTERSECT SELECT count(DISTINCT winner_name) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.hand = 'R'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "L"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T1.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta" AND T2.id = (SELECT max(id) FROM ship WHERE name = "HMS Atalanta")
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM COURSES
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN departments AS T3 ON T3.department_id = T2.state_province_county WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN degree_programs AS T4 ON T4.degree_program_id = T2.department_id WHERE T4.department_id = "Department"
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = (SELECT department_id FROM departments WHERE department_name = 'Student Programs')
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.city = "Timmothy" AND T2.state_province_county = "TAM"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN departments AS T4 ON T3.department_id = T4.department_id WHERE T4.department_name = 'Graduation' ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.line_1 , T2.student_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id JOIN students AS T4 ON T4.student_id = T2.student_id WHERE T3.degree_program_name = 'Master' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id JOIN students AS T4 ON T4.student_id = T2.student_id WHERE T3.degree_program_name = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT student_id FROM students WHERE first_name = 'Masters' INTERSECT SELECT student_id FROM students WHERE first_name = 'Bachelors')
{"sql": "SELECT T1.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = \" Haiti \” OR T2.cell_mobile_number = \"09700166582\""}
SELECT first_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT directed_by FROM cartoon WHERE title = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN cartoon AS T2 ON T1.directed_by = T2.directed_by WHERE T1.Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM tv_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT T2.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT series_name FROM tv_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.channel = "Sky Radio"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.Language = "Sky Radio"
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T1.Channel = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT package_option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.Channel = (SELECT Channel FROM cartoon WHERE Title = "Todd Casey" )
SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t2.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon)
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t1.Series_name = "Ben Jones and Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = 'Ben Jones')
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(earnings) FROM poker_player WHERE height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM area_code_state WHERE state = 'CA' OR state = 'NY'
SELECT T2.created , T2.state , T2.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
{"sql": "SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM area_code_state AS T3 JOIN votes AS T4 ON T3.state = T4.state WHERE T4.contestant_number = (SELECT T5.contestant_number FROM area_code_state AS T5 JOIN votes AS T6 ON T5.state = T6.state WHERE T6.contestant_number = 'Tabatha Gehling') AND T3.state = (SELECT T4.state FROM area_code_state AS T4 JOIN votes AS T5 ON T4.state = T5.state WHERE T5.contestant_number = (SELECT T6.contestant_number FROM area_code_state AS T6 JOIN votes AS T7 ON T6.state = T7.state WHERE T7.contestant_number = 'Kelly Clauss') AND T4.state = (SELECT T5.state FROM area_code_state AS T5 JOIN votes AS T6 ON T5.state = T6.state WHERE T6.contestant_number = (SELECT T7.contestant_number FROM area_code_state AS T7 JOIN votes AS T8 ON T7.state = T8.state WHERE T8.contestant_number = 'Tabatha Gehling') AND T5.state = (SELECT T6.state FROM area_code_state AS T6 JOIN votes AS T7 ON T6.state = T7.state WHERE T7.contestant_number = (SELECT T8.contestant_number FROM area_code_state AS T8 JOIN votes AS T9 ON T8.state = T9.state WHERE T9.contestant_number = 'Kelly Clauss') AND T6.state = (SELECT T7.state FROM area_code_state AS T7 JOIN votes AS T8 ON T7.state = T8.state WHERE T8.contestant_number = (SELECT T9.contestant_number FROM area_code_state AS T9 JOIN votes AS T10 ON T9.state = T10.state WHERE T10.contestant_number = 'Tabatha Gehling') AND T7.state = (SELECT T8.state FROM area_code_state AS T8 JOIN votes AS T9 ON T8.state = T9.state WHERE T9.contestant_number = (SELECT T10.contestant_number FROM area_code_state AS T10 JOIN votes AS T11 ON T10.state = T11.state WHERE T11.contestant_number = 'Kelly Clauss') AND T8.state = (SELECT T9.state FROM area_code_state AS T9 JOIN votes AS T10 ON T9.state = T10.state WHERE T10.contestant_number = (SELECT T11.contestant_number FROM area_code_state AS T11 JOIN votes AS T12 ON T11.state = T12.state WHERE T12.contestant_number = 'Tabatha Gehling') AND T9.state = (SELECT T10.state FROM area_code_state AS T10 JOIN votes AS T11 ON T10.state = T11.state WHERE T11.contestant_number = (SELECT T12.contestant_number FROM area_code_state AS T12 JOIN votes AS T13
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(DISTINCT region) FROM country
SELECT count(DISTINCT region) FROM country
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT T2.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Anguilla"
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T2.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = "Aruba" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T2.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Republic' AND Continent = 'Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Africa" AND Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT sum(SurfaceArea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE name = "Gelderland"
SELECT sum(Population) FROM city WHERE name = "Gelderland"
SELECT avg(gnpx) , sum(population) FROM country WHERE continent = "US"
SELECT avg(GNP) , sum(population) FROM country WHERE continent = 'US'
SELECT COUNT (DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "AB-244"
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = "AFG"
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = 'AFG'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Continent ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "French"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English"
SELECT T3.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T2.Language = T3.Language WHERE T1.Name = "France" INTERSECT SELECT T3.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T2.Language = T3.Language WHERE T1.Name = "France"
SELECT count(DISTINCT T1.Continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Chinese"
SELECT count(DISTINCT T1.Continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 OR T1.IsOfficial = 0 AND T2.Name = "English" UNION SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 OR T1.IsOfficial = 0 AND T2.Name = "Dutch"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = (SELECT Region FROM country WHERE Population = (SELECT min(Population) FROM country) GROUP BY T2.Region HAVING count(*) = 1)
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T2.Region = (SELECT Region FROM country AS T3 JOIN countrylanguage AS T4 ON T3.CountryCode = T4.CountryCode WHERE T1.IsOfficial = 1 GROUP BY T3.CountryCode HAVING COUNT(*) = 1)
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "english" GROUP BY T1.name ORDER BY sum(T1.population) DESC LIMIT 1
SELECT t1.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN city AS t3 ON t2.capital = t3.id WHERE t1.Language = "english" GROUP BY t1.countrycode ORDER BY sum(t1.percentage) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0)
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 0)
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != "english")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != 'English'
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.CountryCode = (SELECT CountryCode FROM country WHERE Name = "Beatrix" )
{"sql": "SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = \"English\" AND T2.CountryCode = (SELECT T1.CountryCode FROM country AS T1 JOIN
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.indepyear < 1930
SELECT sum(DISTINCT t1.isofficial) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.indepyear < 1930
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT country FROM country WHERE continent = 'Africa' AND population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Asia' GROUP BY country HAVING count(*) > (SELECT count(*) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != 'english')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE Language != 'English' AND IsOfficial != 1
SELECT countrycode FROM country WHERE continent != 'Asia' AND isofficial = 0 EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code2 = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.continent = "Asia" AND T2.Language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "Chinese" AND T2.Continent = "Asia"
SELECT name , IndepYear , SurfaceArea FROM country ORDER BY count(*) ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT T2.Population , T2.Name , T2.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode ORDER BY T1.Population DESC LIMIT 1
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > district
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) > count(*)
SELECT name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population >= 80000
SELECT name FROM country WHERE continent = "Europe" AND population >= 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = 'Nothe' AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 INTERSECT SELECT name FROM city WHERE population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.Population FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY T1.Percentage DESC LIMIT 1
SELECT countrycode , max(Percentage) FROM countrylanguage GROUP BY countrycode
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Spain"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded
SELECT count(*) FROM orchestra WHERE Orchestra = "CD" OR Orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = '10'
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade , YEAR FROM highschooler GROUP BY YEAR
SELECT name FROM highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT friend_id FROM friend WHERE name = 'Kyle')
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT friend_id FROM highschooler WHERE name = 'Kyle')
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = 101828
SELECT count(*) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM likes WHERE student_id IN (SELECT id FROM friends WHERE name = 'Kyle')
SELECT count(*) FROM likes AS T1 JOIN student_id AS T2 ON T1.student_id = T2.student_id WHERE T1.liked_id = T2.student_id AND T1.student_id = (SELECT T1.student_id FROM likes AS T1 JOIN student_id AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 1)
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT grade FROM highschooler EXCEPT SELECT T1.grade FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'IND' OR count(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" OR T2.date_of_treatment >= "2020-01-01" GROUP BY T2.professional_id
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.role_code , T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.role_code HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM PROFESSIONALS AS T1 JOIN TREATMENTS AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM TREATMENTS)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.first_name , T1.last_name HAVING avg(T2.size_code) - (SELECT min(size_code) FROM treatments) < (SELECT min(size_code) FROM treatments)
SELECT T2.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id ORDER BY count(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT country , max(net_worth_millions) FROM singer GROUP BY country
SELECT DISTINCT t1.name FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id WHERE t2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'House' OR property_type_code = 'Apartment' AND room_count > 1
