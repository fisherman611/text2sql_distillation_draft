SELECT name , country , age FROM singer ORDER BY age DESC LIMIT 100
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name , T3.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE pet_age > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Dog"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat"
SELECT pet_type , weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.petage = 3
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T2.maker , count(*) , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T3.MakeId IN (SELECT MakeId FROM cars_data WHERE YEAR = 1970)
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T3.Make = "1970"
SELECT T1.Maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.year = (SELECT min(year) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT model FROM car_names WHERE YEAR > 1980
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.id NOT IN (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1)
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.maker = (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = "Ammy Hornet Sportabout (sw)"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T3.CountryName , T2.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id JOIN countries AS T3 ON T3.CountryId = T1.Country
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE CONTINUE = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T3.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId JOIN countries AS T3 ON T2.CountryId = T3.CountryId WHERE T3.Continent = "Europe" GROUP BY T3.CountryName HAVING COUNT(*) >= 3
SELECT model FROM cars_data ORDER BY weight ASC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT t1.model FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model GROUP BY t1.model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname LIKE "%American%"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = "American Motor Company"
SELECT T1.FullName , T2.ModelId FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.ModelId HAVING COUNT(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T1.makeid WHERE T3.maker = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T3.makeid = T1.id WHERE T1.fullname = "General Motors" UNION SELECT DISTINCT model FROM cars_data WHERE weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(accelerate) , cylinders FROM cars_data WHERE make = "volvo"
SELECT count(*) FROM cars_data WHERE make = "Volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "Volvo")
SELECT count(DISTINCT country) FROM car_makers WHERE maker != "null" AND count(*) > 2
SELECT count(*) FROM car_makers WHERE country > 2
SELECT model FROM car_names WHERE make = "4CYL" GROUP BY model ORDER BY max(Horsepower) ASC
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_names WHERE make = 'Ford'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'FIAT' OR COUNT(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN car_names AS T3 ON T2.Id = T3.MakeId WHERE T3.Model = "Fiats"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT airportname FROM airports WHERE country = "Australia"
SELECT T2.AirportName FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Country = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT count(*) FROM flights WHERE FlightNo LIKE 'APG'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "ATO"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' INTERSECT SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' AND T1.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T2.abbreviation = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T3.airline = T1.airline WHERE T3.abbreviation = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Aberdeen' AND T2.airline = 'United Airlines'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.FlightNo = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.FlightNo = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" OR T2.AirportName = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" OR T2.AirportName = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT srcairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM shop GROUP BY shop_id HAVING avg(number_products) < shop_id)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age ASC
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
SELECT Name FROM teacher WHERE Course_ID IN (SELECT T1.Teacher_ID FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Course_ID = T3.Teacher_ID WHERE T2.Grade = 1 AND T1.Course = "Math")
SELECT Name FROM teacher WHERE Age = 30 AND Hometown = 'New York'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP < 4
SELECT museum_id , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = "Lv 1"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
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
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.winner_rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.ranking_points ASC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.match_num LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T1.result = 'loss' AND T1.latin_commander = 'Lettice'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea";
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T2.cell_mobile_number FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.perminent_address_id WHERE T1.city = "Timmothy Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id ORDER BY T3.degree_summary_name ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.transcript_date ASC LIMIT 1
SELECT T1.section_id , T2.line_1 FROM Student_Enrolment AS T1 JOIN Addresses AS T2 ON T1.student_enrolment_id = T2.address_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' UNION SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = 09700166582
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT t1.channel , t2.title FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.id WHERE t2.title = "The Rise of the Blue Beetle"
SELECT t1.series_name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT title FROM cartoon WHERE channel = (SELECT id FROM tv_channel WHERE series_name = 'Sky Radio')
SELECT T2.Air_Date FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT original_air_date FROM cartoon WHERE title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT t1.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "A Love of a Lifetime"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = 'Todd Casey'
SELECT T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd Casey"
SELECT country FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.episode = 18_49_radioButton)
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Todd Casey'
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT t2.series_name , t2.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Ben Jones" INTERSECT SELECT t2.series_name , t2.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT COUNT(*) , Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T3.contestant_number FROM voters AS T3 JOIN contestants AS T4 ON T3.contestant_number = T4.contestant_number WHERE T4.contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T3.contestant_number FROM voters AS T3 JOIN contestants AS T4 ON T3.contestant_number = T4.contestant_number WHERE T4.contestant_name = 'Kelly Clauss')
SELECT name FROM country WHERE independyr > 1950
SELECT name FROM country WHERE independyyear > 1950
SELECT count(*) FROM country
SELECT count(DISTINCT countrycode) FROM country
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.capital WHERE T2.name = "Kabul";
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.capital WHERE T2.name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code2 JOIN city AS T3 ON T2.Capital = T3.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Aruba"
SELECT population , lifeexpectancy FROM country WHERE continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(T1.Population) , max(T2.GNP) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia"
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND region = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM country WHERE name = "Gelderland"
SELECT sum(population) FROM city WHERE name = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'USA'
SELECT avg(gnp) , sum(population) FROM country WHERE countrycode = "USA"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "english" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "french"
SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "english" INTERSECT SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "french"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.IsOfficial = 2
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT language FROM countrylanguage GROUP BY countrycode HAVING count(*) = 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN city AS t3 ON t1.region = t3.id WHERE t2.language = "english" GROUP BY t1.name ORDER BY population DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" GROUP BY t2.countrycode ORDER BY population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE country.code NOT IN (SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 0)
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.headofstate = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE code , countrycode IN (SELECT countrycode FROM country WHERE independyear < 1930)
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM countrylanguage WHERE Language = "English"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT countrycode FROM country EXCEPT SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" AND T2.isofficial = 0
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 0 AND T2.continent = "Europe"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.countrycode WHERE T3.continent = "Asia" AND T2.isofficial = 1 AND T2.language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.code WHERE T3.continent = "Asia" AND T2.isofficial = 1 AND T2.language = "Chinese"
SELECT name , independyyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT population , name , headofstate FROM country ORDER BY Population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 INTERSECT SELECT name FROM city WHERE population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.CountryCode , T1.Percent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.CountryCode ORDER BY SUM(T1.Percent) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT sum(T1.%age) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish" ORDER BY sum(T1.%age) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Orchestra = "CD" OR Orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT name FROM highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 154923
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 5953530
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana'
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T2 AS T3 ON T1.professional_id = T2.professional_id JOIN Treatments AS T4 ON T2.professional_id = T4.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T2 AS T3 ON T1.professional_id = T2.professional_id JOIN Treatments AS T4 ON T2.professional_id = T4.professional_id WHERE T1.state = "Indiana"
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.treatment_id , T1.role_code , T2.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T1.cost_of_treatment LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T1.cost_of_treatment LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING avg(T2.cost_of_treatment) < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T2.first_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.state = 'Virginia'
SELECT T2.last_name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT country , max(net_workillions) FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'house' OR room_count > 1
