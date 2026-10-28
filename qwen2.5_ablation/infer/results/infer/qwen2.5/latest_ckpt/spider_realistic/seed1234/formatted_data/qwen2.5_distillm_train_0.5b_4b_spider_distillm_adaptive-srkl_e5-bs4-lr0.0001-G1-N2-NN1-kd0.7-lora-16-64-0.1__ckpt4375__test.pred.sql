SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE age > (SELECT avg(age) FROM singer)
SELECT distinct(song_name) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.artist WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS t2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30"
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT count(*) , T1.theme , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.theme
SELECT T2.name , count(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT t3.name FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id JOIN singer AS t3 ON t2.singer_id = t3.singer_id WHERE t1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t3.name , t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN song_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN song_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = (SELECT t.Highest FROM stadium AS t JOIN concert AS T3 ON t.stadium_id = T3.stadium_id GROUP BY t.Highest ORDER BY count(*) DESC LIMIT 1) {}
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE pet_age > 10
SELECT t2.weight FROM has_pet AS t1 JOIN Pets AS t2 ON t1.petid = t2.petid WHERE t1.pettype = \"dog\" ORDER BY t1.petage LIMIT 1 LIMIT 1
SELECT t2.weight FROM has_pet AS t1 JOIN Pets AS t2 ON t1.petid = t2.petid WHERE t1.petage = ( SELECT min(petage) FROM pets ) ORDER BY t2.weight LIMIT 1;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pettype = "dog" GROUP BY T1.stuid HAVING count(*) >= 500;
SELECT count(*) FROM Student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = "dog"
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'Cat' OR pettype = 'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE Tpettype = "Cat" INTERSECT SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE Tpettype = "Dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM student EXCEPT SELECT StuID FROM has_pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT fname , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet) INTERSECT SELECT fname , age FROM student WHERE pet_type = "dog" EXCEPT SELECT fname , age FROM student WHERE pet_type = "cat"
SELECT fname FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet) INTERSECT SELECT fname FROM student WHERE pet_type = "Cat"
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3;
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.maker , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T2.id
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T2.make , T1.year FROM car_names AS T1 JOIN car_makers AS T2 ON T1.model = T2.id ORDER BY T2.year LIMIT 0, 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year LIMIT 1
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.year > 1980
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year > 1980
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker GROUP BY t1.maker
SELECT count(*) , T1.id , T1.maker AND T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.maker
SELECT Accelerate FROM cars_data WHERE Model = "amc hornet sportabout"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = "4"
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND maker = 'CYL'
SELECT T1.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country EXCEPT SELECT T3.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.maker = "null"
SELECT T1.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.id IN (SELECT T2.id FROM car_makers AS T2 JOIN model_list AS T3 ON T2.id = T3Maker.id GROUP BY T2.id HAVING count(*) >= 1)
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM car_names WHERE horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Country WHERE T1.Concontinent = "Europe" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid GROUP BY T1.model ORDER BY sum(T2.horsepower) DESC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model_id WHERE T1.MPG = (SELECT max(MPG) FROM car_names)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT avg(edispl) FROM cars_data WHERE maker = 'VOLVO'
SELECT T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.makeid ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE T1.country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.make , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id HAVING count(*) > 3
SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE T2.weight > 3500 OR T1.country = "General Motors"
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1 maker = T2.id WHERE T2.maker = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000;
SELECT Cylinders FROM cars_data WHERE Make = "Volvo" ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Make = "Volvo" ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2 ) ;
SELECT count(*) FROM car_makers WHERE country = (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE t1.cylinders = 4 ORDER BY t2.horsepower DESC LIMIT 1
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2Maker = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT model FROM car_makers WHERE maker = 'Ford'
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country EXCEPT SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.maker = 'fiat' GROUP BY T1.countryid HAVING count(*) > 3
SELECT countryid , countryname FROM car_makers GROUP BY countryid HAVING count(*) > 3 UNION SELECT countryid , make FROM car_names GROUP BY countryid HAVING make = 'Finland'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE sourceairport = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "ULA"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT Airline FROM airlines WHERE Abbreviation = "AKO"
SELECT Airline FROM airlines WHERE Abbreviation = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE sourceairport = 'ATO' AND destinationairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destinationairport IN (SELECT airportcode FROM airports WHERE country = 'Canada')
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'London';
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'London Gatwick'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'London Gatwick'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destinationairport = 'London';
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Alightingence = 'JetBlue Airways'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Alightline = \"Jetblue Airways\";
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND DestAirport = \"ASY\";
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND DESTAirport = \"ASY\";
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND SourceAirport = \"AHD\";
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND SourceAirport = "AHD"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND Airline = 'United Airlines'
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND DESTAirport = \"Aberdeen\";
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "AHD"
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "CVO"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airlines = T2.uid WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airlines = T2.uid WHERE T1.SourceAirport = "CVO"
SELECT Airline FROM Flights WHERE SourceAirport NOT IN ( "CVO" , "APG" )
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport = T2.Airplane WHERE T1.SourceAirport = "CVO" EXCEPT SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport = T2.Airplane WHERE T1.SourceAirport = "APPG"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND airline = 'Qantas'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'UK') AND sourceairport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE DESTAirport IN (SELECT airportcode FROM airports WHERE country = 'United Kingdom') AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN ( 'Abboton' , 'Abilene' ) AND destairport IN ( 'Aberdeen' )
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' OR destairport = 'Aberdeen'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT airportname FROM airports EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport UNION SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee GROUP BY city HAVING count(*) > 1 AND age < 30
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop GROUP BY name HAVING count(*) > (SELECT avg(count*) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.is_full_time DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring) AND shop_id NOT IN (SELECT shop_id FROM evaluation)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring) AND number_products NOT IN (SELECT count(*) FROM product)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000;
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown NOT IN (SELECT Hometown FROM teacher WHERE T1.town = "Little Lever Urban District")
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT name FROM teacher ORDER BY age LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown HAVING COUNT(*) >= 2;
SELECT name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID = "Math")
SELECT T2.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT Museum_ID , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT sum(total_spent) FROM visit WHERE visitor_id IN (SELECT id FROM visitor WHERE LEVEL_of_membership = 'Lv 1');
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
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
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT t1.winner_name FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id WHERE t1.tourney_name = \"Australian Open\" GROUP BY t1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1 SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = (SELECT max(match_num) FROM matches)
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num ASC LIMIT 3;
SELECT T1.name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3;
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\";
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = \"WTA Championships\";
SELECT count(*) FROM ship WHERE ship_type = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T1.lost_in_battle) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle EXCEPT SELECT T1.name , T1.result , T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'battleShip' AND T2.location = 'English Channel'
"sql": "SELECT course_description FROM courses WHERE course_name LIKE '%math%'"}
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN students_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id.country = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id WHERE T2.degree_program_id = \"None\"
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT T1.permanent_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = \"None\";
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_left ASC LIMIT 1;
SELECT min(T1.first_name) , min(T1.middle_name) , min(T1.last_name) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY T1.date_first_registered ASC LIMIT 1;
SELECT T1.student_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.line_1 , T1.line_2 FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.student_program = 'Master' INTERSECT SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.student_program = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'MA' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'B' GROUP BY T1.semester_id HAVING count(*) >= 200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name FROM Students AS T1 JOIN Students ON T1.student_id = T2.student_id WHERE T1.current_address_id = T2.permanent_address_id OR T1.cell_mobile_number = \"09700166582\";
SELECT T1.first_name FROM Students AS T1 JOIN Students.student_id REFERENCES T1.student_id WHERE T1.permanent_address_id = (SELECT address_id FROM Addresses WHERE country = "Haiti") OR T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = \"Joseph Kuhr\";
SELECT count(*) FROM cartoon WHERE written_by = \"Joseph Kuh\";
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE id = "Sky Radio";
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = \"English\";
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT t2.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = \"A Love of a Lifetime\";
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
{"sql": "SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = \"""A Love of a Lifetime"""""}
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , CHANNEL FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'HD'
SELECT t1.package_option , t2.series_name FROM TV_CHANNEL AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.Hight_definition_TV = "HDTV"
SELECT T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T2.series_name , T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" AND T1.written_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" AND T2.Written_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_Channel WHERE LANGUAGE != "english"
SELECT Pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != "english"
SELECT id FROM (SELECT country FROM TV_channel GROUP BY country HAVING count(*) > 2)
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE channel != 'Ben Jones directs'
SELECT package_option FROM TV_CHANNEL WHERE channel NOT IN (SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\")"
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabatha Gehling = T1.contestant_name
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.tabanthagaong = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.kellyclauss = 'Kelly Clauss'
SELECT name FROM country WHERE indeyyear > 1950
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'República'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(surfacearea) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.countrycode WHERE T1 continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Kabul'
SELECT region FROM country WHERE capital = 'Kabul'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.countrycode = "Aruba" GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Aruba" AND t2.isofficial = 1
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Amazonia" AND Name = "Brazil"
SELECT Region , Population FROM country WHERE Name = "Angola"
SELECT t3.region , t3.population FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode JOIN countrylanguage AS t3 ON t1.code = t3.countrycode WHERE t1.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND ABCoder.Name = "Interface For Teaching Countries English"
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Republic'
SELECT sum(surfacearea) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE T1.continent = 'Asia' OR T1.continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE countrycode = 'GNP' AND district = 'Eeland'
SELECT sum(population) FROM country WHERE region = "Gelderland"
SELECT avg(GNP) , avg(Population) FROM country WHERE region = 'United States'
SELECT avg(GNP) , sum(population) FROM country WHERE continent = 'USA'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT count(DISTINCT t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t2.Continent FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code GROUP BY t2.Continent ORDER BY sum(t1.percentage) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.language = 'Chinese'
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = "English" OR T2.IsOfficial = 'Yes' AND T2.Language = "Dutch"
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia' GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "Asia" GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "English" GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "english" GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial != "English"
SELECT avg(LifeExpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT sum(population) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT count(*) FROM country WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE isofficial = 'No' AND language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "lead by Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = "English"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.DeponYear < 1930 AND T2.IsOfficial = 'yes'
SELECT sum(Percentage) FROM countrylanguage WHERE IsOfficial = 'Yes' AND DepYear < 1930;
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT code FROM country EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT code FROM country EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT code2 FROM country EXCEPT SELECT code2 FROM countrylanguage WHERE language = 'English'
SELECT code FROM country EXCEPT SELECT code FROM countrylanguage WHERE language = "English" INTERSECT SELECT code FROM country WHERE governmentform = "Republican"
SELECT code FROM country EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'No' AND T2.Language = 'English'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = "Chinese" AND T1.countrycode = 'Asia'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T1.Region = 'Asia'
SELECT name , indepyear , surfacearea FROM country ORDER BY count(*) ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district)
SELECT district , count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(count) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE region = 'North America' AND surfacearea > 3000
SELECT avg(Population) , round(avg(surfacearea) ) FROM country WHERE continent = "Noth America" AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 INTERSECT SELECT name FROM city WHERE population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT t1.language , t1.percent FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code ORDER BY t1.percent DESC LIMIT 1
SELECT T1.code , T2.language , max(T1.percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode
SELECT sum(population) FROM countrylanguage WHERE language = "Spanish" AND percentage = (SELECT max(percentage) FROM countrylanguage WHERE language = "Spanish")
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" AND isofficial = 1
SELECT code FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 10;
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchester ORDER BY YEAR_of_Found ASC
SELECT count(*) FROM ORCHESTRA WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM Highschooler WHERE name = \"Kyle\";
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 'Senior' AND id NOT IN ( SELECT student_id FROM likes )
SELECT name FROM Highschooler WHERE grade = 'High' LIMIT 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT ID FROM highschooler WHERE name = 'Kyle';
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.id = (SELECT id FROM highschooler WHERE name = "Kyle")
SELECT count(DISTINCT T1.friend_id) FROM FRIEND AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM FRIEND WHERE friend_id = 'Kyle' AND liked_id IN (SELECT liked_id FROM likes);
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id;
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN ( SELECT student_id FROM Friend );
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN" OR count(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'IN' UNION SELECT T1.professional_id , T2.last_name , T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T3.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.owner_id , T2.zip_code FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = \"Virginia\" AND T2.gender = \"Dog\";
SELECT T1.first_name , T3.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id WHERE T1.state = \"Virginia\";
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.date_of_birth LIMIT 1;
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs );
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'No'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'No'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT COUNT(*) , t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.song_id GROUP BY t1.Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Citizenship , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id
SELECT net_worth_millions , citizenship FROM singer GROUP BY citizenship ORDER BY max(net_worth_millions)
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM Properties WHERE property_type_code = "house" OR (property_type_code = "apartment" AND room_count > 1)
