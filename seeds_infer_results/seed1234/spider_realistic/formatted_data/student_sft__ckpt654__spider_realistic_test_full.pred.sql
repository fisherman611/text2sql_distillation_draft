SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 2013
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY age LIMIT 1
SELECT weight FROM pets ORDER BY age LIMIT 1
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student WHERE sex = 'F'
SELECT count(*) FROM Student WHERE sex = 'F'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dogs"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dogs"
SELECT major , age FROM student EXCEPT SELECT major , age FROM pets WHERE pettype = 'Cat'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = "Cat"
SELECT fname , age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "dog" EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "cat")
SELECT fname FROM Student EXCEPT SELECT fname FROM Student WHERE pettype = 'Cat'
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Cat' AND T1.age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Cat' AND T1.age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker , T1.Fname , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Fname , T1.Lname , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id GROUP BY T2.id
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id ORDER BY T1.Year ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT Model FROM car_names WHERE YEAR > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE Sportabout = "Amc Hornet"
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers WHERE Country = "USA"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974
SELECT T1.CountryName , T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT count(*) FROM cars_data WHERE HorsePower > 150
SELECT count(*) FROM cars_data WHERE HorsePower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) >= 3)
SELECT Model FROM cars_data GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE YEAR = 2004 AND Maker = "volvo"
SELECT avg(Edispl) FROM cars_data
SELECT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT count(*) FROM car_makers WHERE Maker = "American Motor Company"
SELECT T1.Maker , T1.Fname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T1.Fname , T1.MakeId FROM car_makers AS T1 JOIN car_model AS T2 ON T1.Id = T2.Maker GROUP BY T1.MakeId HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T1.Maker = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T3.Id = T2.MakeId WHERE T3.Weight > 3500 OR T2.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinder FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM car_makers GROUP BY count(*) HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country_id HAVING count(*) > 2
SELECT Model FROM cars_data ORDER BY Horsepower DESC LIMIT 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = "8" OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T1.Maker = 'Ford Motor Company'
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker EXCEPT SELECT DISTINCT Model FROM model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "Ford Motor Company"
SELECT CountryId , CountryName FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT CountryId , CountryName FROM model_list GROUP BY CountryId HAVING Model = 'fiat'
SELECT CountryId , CountryName FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT CountryId , CountryName FROM model_list GROUP BY CountryId HAVING Model != "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE AirportName = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT AirportName FROM airports WHERE Country = "AKO"
SELECT AirportName FROM airports WHERE Country = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SOURCEAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "Eberon"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Eberhard"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T2.City = "Eberhah" AND T3.City = "Ashley"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.destairport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.uid WHERE T3.Airline = "United Airlines"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines" AND T2.SourceAirport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines" AND T2.SourceAirport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.AirLine WHERE T3.Airline = 'United Airlines' AND T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.uid WHERE T3.Airline = "United Airlines" AND T2.City = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DistAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.FlightNo = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.Source Airport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.AirLine WHERE T2.DestAirport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.DestAirport WHERE T2.SourceAirport != "APG"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SOURCEAirport = "APG"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Eberhard"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM store GROUP BY name HAVING count(*) > (SELECT avg(count(*) FROM store)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM employee GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hire)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hire)
SELECT district FROM shop GROUP BY district HAVING count(*) < 3000 INTERSECT SELECT district FROM shop GROUP by district HAVING count(*) > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Hometown = "Math"
SELECT Name FROM teacher WHERE Hometown = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Age > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(Age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.Name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.id ORDER BY sum(T1.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.total_expense) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T2.first_name , T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' INTERSECT SELECT T2.first_name , T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY age ASC
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T2.winning_name , T2.winning_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name FROM MATCHes AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.rank WHERE T3.winning_rank_points = (SELECT max(T3.winning_rank_points) FROM rankings AS T3 JOIN matches AS T4 ON T3.rank = T4.rank WHERE T4.tourney_name = "Australian Open")
SELECT T2.winery_NAME FROM MATCHes AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winer_rank_points = T3.winer_rank_points WHERE T3.tourney_name = 'Australian Open' GROUP BY T2.winery_NAME ORDER BY count(*) DESC LIMIT 1
SELECT T2.losing_name , T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T2.winner_name , T2.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.loser_age DESC LIMIT 3
SELECT T2.winner_name , T2.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age DESC LIMIT 3
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.first_name LIKE "%WTA%" AND T2.last_name LIKE "%LH"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.cause_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT name , date FROM battle WHERE RESULT = 'Loss' AND Latin_commander = 'Lettice' AND HMS_Atantana = 'Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE lat != 'English Channel'
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT department_description FROM departments WHERE department_name = "Math"
SELECT zip_postcode FROM addresses WHERE line_1 LIKE "%Port Chelsea%"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT last_name FROM Students WHERE current_address_id IN (SELECT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina") EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment AS T3 ON T2.student_id = T3.student_id JOIN degree_program AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM student_enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T1.degree_program_id = T3.degree_program_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Master' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Bachelor'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'MA' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelors'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT T1.permanent_address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = "Haiti") OR T2.cell_mobile_number = "09700166582")
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582")
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM Cartoon WHERE title = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM Cartoon ORDER BY original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Content = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Channel = "Sky Radio"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Rating = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Sky_Radio = ""
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_Channel WHERE HDTV = 'Yes'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT t1.country FROM TV_channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM TV_Channel WHERE Written_by = "Todd Casey"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE language != 'english'
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE language != 'english'
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_CHANNEL EXCEPT SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT Package_Option FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT Package_Option FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT created , state , phone_number FROM Votes WHERE contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT Name FROM country WHERE Founded > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country
SELECT count(*) FROM country
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT region FROM country WHERE district = "Kabul"
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = "Aruba" GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT region , population FROM country WHERE countrycode = " Angola"
SELECT region , population FROM country WHERE countrycode = " Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2 Continent = "Central Africa"
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(Population) , max(GNP) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Asia"
SELECT GNP , COUNT(*) FROM country WHERE Continent = "Asia" GROUP BY GNP ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'African'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code WHERE T2.IsOfficial = 'Yes' AND T1.Name = 'Africa'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.IsOfficial = "Asia" OR t2.IsOfficial = "Europe"
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(gnp) , sum(Population) FROM country WHERE HeadOfState = "United States"
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'United States'
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT T1.languages) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE isofficial = 'Afghanistan'
SELECT count(DISTINCT T1.language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = 'Afghanistan'
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.CountryCode GROUP BY t2.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1 Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1 Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "French"
SELECT count(DISTINCT t1.cent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.languages = "Chinese"
SELECT count(DISTINCT t1continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t1.language = "Chinese"
SELECT DISTINCT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.code WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" OR T2.IsOfficial = "Dutch"
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "english" GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.code JOIN countrylanguage AS t3 ON t2.code = t3.CountryCode WHERE t3.language = "english" GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'No'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'No'
SELECT sum(T2.LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language != "english"
SELECT count(*) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = "english")
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Beatrix"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix"
SELECT sum(t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.founded_year < 1930
SELECT sum(t1.languages) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.FoundedYear < 1930
SELECT countrycode FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT CountryCode FROM country WHERE Area > (SELECT max(Area) FROM country WHERE Continent = "Europe")
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE Population > (SELECT max(Population) FROM country WHERE Continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT Name FROM country WHERE Population > (SELECT max(Population) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.language != "english"
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT Code FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english" AND isofficial = "Republic"
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Name != "Official"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.isofficial = 'Chinese'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.CountryCode = "Asia" AND T3.IsOfficial = "Chinese"
SELECT name , indepyear , surfacearea FROM country GROUP BY indepyear ORDER BY count(*) ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT Population , Name , HeadOfState FROM country ORDER BY Population DESC LIMIT 1
SELECT count(*) , district FROM city GROUP BY district HAVING count(*) > (SELECT avg(count(*) FROM city)
SELECT count(*) , district FROM city GROUP BY district HAVING count(*) > (SELECT avg(count(*) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT sum(Population) , avg(SurfaceArea) FROM country WHERE continent = "North America" AND sum(Population) > 3000
SELECT sum(Population) , avg(Population) FROM country WHERE countrycode = "Noth America" AND sum(Population) > 3000
SELECT Name FROM city WHERE Population > 160000 INTERSECT SELECT Name FROM city WHERE Population < 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT T1.Name , T1.GNP FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Code , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(Place) FROM countrylanguage WHERE Language = "Spanish" GROUP BY sum(Place) ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT code2 FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT code FROM countrylanguage WHERE language = "Spanish" GROUP BY code ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.friend_id = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id NOT IN (SELECT T1.friend_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(T2.friend_id) = 0
SELECT T1.professional_id , T1.last_name , T1.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 OR T1.state = 'Indiana'
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.dog_id , T1.role_code , T1.first_name FROM doctors AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.dog_id HAVING count(*) >= 2
SELECT T1.dog_id , T1.role_code , T1.first_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM owners AS T1 JOIN pets AS T2 ON T1.owner_id = T2.owner_id JOIN treats AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Country != "France"
SELECT Name FROM singer WHERE Birth_Year != "France"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Nationality FROM singer GROUP BY Nationality
SELECT COUNT(*) , Country FROM singer GROUP BY Country
SELECT Birth_Year FROM singer GROUP BY Birth_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT common(Country) FROM singer
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'Houses' OR room_count > 1
