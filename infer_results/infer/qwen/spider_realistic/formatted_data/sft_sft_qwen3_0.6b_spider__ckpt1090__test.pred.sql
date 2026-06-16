SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.songer_id = T2.songer_id GROUP BY T2.songer_id
SELECT T1.Name , COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.year = 2014
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.song_id = T2.song_id JOIN concert AS T3 ON T3.concert_id = T2.concert_id WHERE T3.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY age LIMIT 1
SELECT min(weight) FROM pets WHERE pettype = 'dog'
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.pettype = "D"
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.pettype = 'D'
SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' OR T3.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Cat' INTERSECT SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dogs"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE pettype = "Cat")
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Cat"
SELECT fname , age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "cat")
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "cat")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Cat' AND T1.age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Cat' AND T1.age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T2.Maker , T2.Fname , COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT T1.Maker , T1.Name , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Fname , T1.Lname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.MakeId ORDER BY T1.Year ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT avg(T1.accelerate) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.country = 'Americano' AND T2.sw = 'Hornet'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "France"
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT model FROM cars_data GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE YEAR = 2004 AND Maker = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE YEAR = 2004
SELECT car_name FROM cars_data GROUP BY car_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "American Motor Company"
SELECT T1.Fname , T1.Lower FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.maker HAVING count(*) > 3
SELECT T2.Maker , T1.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id JOIN cars_data AS T3 ON T3.id = T2.Model WHERE T2.Maker = "General Motors" OR T3.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Maker = "volvo"
SELECT min(Cylinders) FROM cars_data WHERE Maker = "volvo"
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = "8" OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.Maker = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN cars_data AS T3 ON T3.id = T2.model WHERE T3.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.Maker = "Ford Motor Company"
SELECT T1.Country , COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.Country HAVING COUNT(*) > 3 UNION SELECT T1.Country , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryName = 'fiat'
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) = 0
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE AirportName = "Anthony"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'United States'
SELECT AirportName FROM airports WHERE Country = "AKO"
SELECT AirportName FROM airports WHERE Country = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = 'United Airlines' AND T2.destairport = 'ASY'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "United Airlines" AND T2.destairport = "ASY"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.sourceairport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.sourceairport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = 'United Airlines' AND T2.destairport = 'Aberdeen'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.sourceairport = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Source Airport WHERE T2.Source Airport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.City = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Source Airport WHERE T2.City = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.FlightLine WHERE T2.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.FlightLine WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "APG"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) OR AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name FROM store WHERE number_products > (SELECT avg(number_products) FROM store)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Hometown = 32 OR Hometown = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Name = "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Age > 4 ORDER BY LEVEL_OF_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_membership > 4
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE Num_of_Staff = 'null'
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(total_expent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T2.tourney_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING count(*) > 10
SELECT T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.winning_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winning_rank ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winning_rank , sum(T2.winning_rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winery_NAME FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T1.winery_NAME DESC LIMIT 1
SELECT T1.winery_NAME FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.loser_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T3.winery_rank DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T2.winery_NAME , T2.winery_Rank FROM MATCHs AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.loser_age DESC LIMIT 3
SELECT T2.winery_NAME , T2.winery_Rank FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_Rank ASC LIMIT 3
SELECT count(DISTINCT T2.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT T2.winer_id) FROM matches AS T1 JOIN players AS T2 ON T1.winer_id = T2.player_id WHERE T1.tourney_name = "Left Handed"
SELECT count(*) FROM left-handed players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.ranker_id = T3.player_id WHERE T3.tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT name , date FROM battle WHERE result = 'Loss' AND Latin_commander = 'Lettice' AND HMS_Atantana = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.course_id = T2.course_id WHERE T2.department_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.address_id JOIN degree_program AS T3 ON T2.student_id = T3.student_id
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.address_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Master' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Bachelor'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = "MA" INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = "Bachelors"
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Haiti" OR T2.cell_mobile_number = "09700166582"
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Haitt" UNION SELECT first_name FROM students WHERE cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = "Sky Radio"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.Sky Radio = """
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_CHANNEL WHERE high_definition_tv = 'HD'
SELECT package_option , series_name FROM TV_channel WHERE high_definition_tv = 'HDTV'
SELECT T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2_written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2_written_by = "Todd Casey"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE language != 'english'
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE language != 'english'
SELECT id FROM TV_channel WHERE country > 2
SELECT id FROM channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1 package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_name = 'Kelly Clauss'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country
SELECT count(DISTINCT countrycode) FROM city
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(t1.surfacearea) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t2.district = "Carribean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT region FROM city WHERE name = "Kabul"
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE countrycode = 'Brazil'
SELECT population , lifeexpectancy FROM country WHERE countrycode = 'Brazil'
SELECT region , population FROM city WHERE countrycode = " Angola"
SELECT T1.District , T1.population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = " Angola"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(gnp) , sum(population) FROM country WHERE continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'A' AND t1.name = 'F'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code WHERE t2.countrycode = 'Africa' AND t1.isofficial = 'R'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE name = "Gelderland"
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'United States'
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'United States'
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(t1.languages) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba"
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan' AND isofficial = 'Yes'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = t2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Countname FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.Countname ORDER BY count(*) DESC LIMIT 1
SELECT T1.Countcontinent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.Countcontinent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'French'
SELECT count(DISTINCT T1.count) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Chinese"
SELECT count(DISTINCT t1.clont) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' OR T2.language = 'dutch'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'English' OR T2.isofficial = 'Dutch'
SELECT language FROM countrylanguage WHERE isofficial = 'Yes' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.isofficial = 'A' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM country GROUP BY countrycode HAVING count(*) = 1)
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.isofficial = 'Y' AND T2.headofstate = 'N'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.CountryCode WHERE T3.language = "english" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT max(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.languages = "english"
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'No'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'No'
SELECT sum(GNP) FROM country WHERE language != 'english'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage)
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.head_of_state = "Beatrix"
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Beatrix" AND T2.isofficial = 1
SELECT sum(t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.founded < 1930
SELECT sum(T1.GNP) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indep_year < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Afghanistan') AND country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country EXCEPT SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'english'
SELECT countrycode FROM country EXCEPT SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english"
SELECT code FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE isofficial = 'Yes'
SELECT code FROM country WHERE isofficial = 'No' EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.isofficial = 'No' AND T3.language = 'english'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN countrylanguage AS t3 ON t2.code = t3.countrycode WHERE t2.isofficial = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.isofficial = 'Yes' AND T2.region = 'Asia'
SELECT name , indepyear , surfacearea FROM country ORDER BY gnp LIMIT 1
SELECT name , indep_year , surfacearea FROM country ORDER BY population LIMIT 1
SELECT population , name , head_of_state FROM country ORDER BY population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT T2.name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND GNP > 3000
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2continent = 'Noth America' AND t1.population > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language , countrycode , percentage FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT code2 FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , T1.year FROM Highschooler AS T1 JOIN Student AS T2 ON T1.id = T2.id GROUP BY T1.year
SELECT count(*) , T1.year FROM Highschooler AS T1 JOIN Student AS T2 ON T1.id = T2.id GROUP BY T1.year
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id != "null"
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.city > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.dog_id , T1.role_code , T2.first_name FROM doctors AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.dog_id HAVING count(*) >= 2
SELECT T1.treatment_id , T1.role_code , T2.first_name FROM Treatment_Types AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.owner_id GROUP BY T1.treatment_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.dog_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.total_charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.total) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_area < (SELECT avg(treatment_area) FROM treatments)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE home_phone = 'Hawaii' OR home_phone = 'Wisconsin'
SELECT email_address FROM professionals WHERE home_phone = 'Hawaii' OR home_phone = 'Wisconsin'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'yes'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT COUNT(*) , Country FROM singer GROUP BY Country
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country HAVING COUNT(*) = "MO"
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'HSE' OR room_count > 1
