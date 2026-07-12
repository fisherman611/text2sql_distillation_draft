SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T3.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID = T3.Singer_ID GROUP BY T3.Singer_ID
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID = T3.Singer_ID WHERE T2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT DISTINCT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = "F" AND T3.pettype = "dog"
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T3.stuid = T1.stuid WHERE T3.sex = "F" AND T2.pettype = "Dog"
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "Dog"
SELECT T2.fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T3.petid = T1.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T2.fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T3.petid = T1.petid WHERE T3.pettype = 'dog'
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE pettype = 'Cat')
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE pettype = 'Cat')
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE PetType = "Cat"
SELECT T2.fname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'Dog' EXCEPT SELECT T2.fname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'Cat'
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T3.pettype = "Dog" INTERSECT SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T3.pettype = "Cat"
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id , weight FROM pets WHERE pet_age > 1
SELECT pet_id , weight FROM pets WHERE pet_age > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pet_age = 3
SELECT T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fullname , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.fullname , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.maker WHERE T2.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.maker = T2.maker WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.year = 1970
SELECT T1.make , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year LIMIT 1
SELECT T2.maker , T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id ORDER BY T1.year LIMIT 1
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T2.year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Maker = T2.MakeId WHERE T2.Year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.fullname
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data JOIN car_names ON cars_data.makeid = car_names.makeid WHERE car_names.model = "amc hornet sportabout" AND cars_data.year = 1970
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.countryid = T2.countryid WHERE T2.countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = "France" AND T1.Maker = "Care"
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT model FROM model_list ORDER BY model_list.maker ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.MakeId ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(t1.Edispl) FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid JOIN car_makers AS t3 ON t3.id = t2.maker WHERE t3.Maker = "volvo"
SELECT avg(T2.Edispl) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Makeid WHERE T1.FullName = "Volvo"
SELECT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id GROUP BY T2.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = "American Motor Company"
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.fullname , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T3.id = T4.makeid WHERE T1.maker = 'General Motors' OR T3.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T1.maker WHERE T3.maker = 'General Motors' UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T1.maker WHERE T2.weight > 3500
SELECT Yea FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT T1.Cylinders FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Makeid WHERE T1.maker = "Volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Make = "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT COUNT(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT COUNT(*) FROM (SELECT T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.Country HAVING count(*) > 2)
SELECT model FROM car_names WHERE makeid IN (SELECT id FROM cars_data WHERE cylinders = 4) ORDER BY horsepower DESC LIMIT 1
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.fullname = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.maker = "Ford Motor Company"
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country WHERE T2.Maker = "fiat"
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country WHERE T2.Maker = "FIAT"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JET"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Abbreviation FROM airlines WHERE Airline = 'UAL'
SELECT count(*) FROM airlines WHERE countryabbrev = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE CountryAbbrev = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Amsterdam'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'Atoka'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Aberdeen' INTERSECT SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T2.sourceairport = T1.airportcode JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T1.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.abbreviation WHERE T2.airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = 'United Airlines' AND T2.AirportName = 'ASY';
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport JOIN airlines AS T3 ON T2.airline = T3.airline WHERE T1.country = 'ASY' AND T3.abbrivation = 'UA'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.abbreviation WHERE T1.sourceairport = "AHD" AND T2.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.abbriviation = 'UA' AND T2.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = 'United' AND T2.City = 'Aberdeen'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3 airportcode WHERE T3.city = 'Aberdeen' AND T1.Abbreviation = 'UA'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT DISTINCT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = "United Airlines"
SELECT DISTINCT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen'
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.city = "Abilene"
SELECT count(*) FROM (SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" UNION SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Abilene")
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports EXCEPT SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T3.Course_ID AND T3.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T3.Course_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE Level_of_membership <= 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year <= 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_ID HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.total_spent ORDER BY T2.total_spent DESC LIMIT 1
SELECT T2.Museum_ID , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM VISIT)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 'lv 1'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date DESC
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T2.winner_id = T3.player_id WHERE T1.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T2.tourney_name = "Australian Open"
SELECT T2.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T2.winner_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' AND T1.tourney_name = 'WTA Championships'
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'L' AND T1.tourney_name = 'WTA Championships'
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT course_description FROM COURSES WHERE course_name = "math"
SELECT course_description FROM COURSES WHERE course_name LIKE "%math%"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id
SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Graduate' ORDER BY T2.student_enrolment_id ASC LIMIT 1
SELECT T1.address_id , T2.line_1 , T2.line_2 , T2.line_3 FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Master' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Bachelor'
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Bachelors'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT DISTINCT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT content FROM tv_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = 'Sky Radio'
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT avg(TV_series.Rating) FROM TV_series JOIN TV_channel ON TV_series.Channel = TV_channel.id WHERE TV_channel.series_name = "A Love of a Lifetime"
SELECT t2.Weekly_Rank FROM tv_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t1.series_name = "A Love of a Lifetime"
SELECT t1.Weekly_Rank FROM TV_series AS t1 JOIN cartoon AS t2 ON t1.channel = t2.channel WHERE t2.title = "A Love of a Lifetime"
SELECT t1.series_name FROM tv_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t2.rating = 1.0
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = 1
SELECT package_option , series_name FROM tv_channel WHERE height_definition_tv = 1
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_par , country FROM tv_channel WHERE LANGUAGE != 'english'
SELECT country , pixel_aspect_ratio_PAR FROM TV_channel WHERE LANGUAGE != 'english'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT DISTINCT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones"
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT T1.Height , T1.People_ID , T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russian"
SELECT Name FROM people WHERE Nationality != "Russian"
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT continent FROM country WHERE Name = "Anguilla"
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT district FROM city WHERE name = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT language FROM countrylanguage WHERE countrycode = 'AW' ORDER BY percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" ORDER BY Percentage DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE region = 'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE continent = 'Africa' AND region = 'Central'
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia' )
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia' )
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(T1.population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.Name = "Gelderland"
SELECT sum(T1.population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.Name = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'Asia'
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'Bermuda'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE isofficial = 'T' AND countrycode = 'AF'
SELECT count(*) FROM countrylanguage WHERE isofficial = 'T' AND countrycode = 'AFG'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'T' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French' AND T2.isofficial = 'T'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T2.Language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT COUNT(DISTINCT continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Dutch' OR T2.Language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = 'T' UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Dutch' AND T2.IsOfficial = 'T'
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') ORDER BY percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE isofficial = 'T' AND countrycode IN (SELECT code FROM country WHERE population < 2000000000 GROUP BY code HAVING count(*) = 1)
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE region = 'Republic') INTERSECT SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE region = 'Republic')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'T' AND Language = 'English')
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'T' AND Language = 'English')
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT language FROM countrylanguage WHERE countrycode = "NLD" AND isofficial = 'T'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 'T'
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') AND continent = 'Asia'
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') AND continent = 'Asia'
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = 'English'
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'T' AND Language = 'English'
SELECT countrycode FROM countrylanguage WHERE isofficial = 'No' AND language != 'English'
SELECT countrycode FROM countrylanguage WHERE language = 'English' EXCEPT SELECT countrycode FROM countrylanguage WHERE isofficial = 'T'
SELECT Code FROM country EXCEPT SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' EXCEPT SELECT Code FROM country WHERE GovernmentForm = 'Republic'
SELECT Code FROM country WHERE GovernmentForm != 'Republic' EXCEPT SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 'T' AND T3.Language = 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Region = 'Asia' AND T3.Language = 'Chinese' AND T3.IsOfficial = 'T'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = "Asia" AND T3.Language = "Chinese" AND T3.IsOfficial = 'T'
SELECT name , IndepYear , SurfaceArea FROM country GROUP BY name ORDER BY count(*) LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population DESC LIMIT 1
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population > 80000
SELECT name FROM country WHERE continent = 'Europe' AND population > 80000
SELECT avg(surfacearea) , sum(population) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage WHERE percentage = (SELECT max(percentage) FROM countrylanguage) GROUP BY countrycode
SELECT CountryCode , LANGUAGE FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT sum(percentage) FROM countrylanguage WHERE language = 'Spanish'
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE languages LIKE '%spanish%') AND isofficial = 'T'
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id JOIN Highschooler AS T3 ON T1.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id JOIN Highschooler AS T3 ON T1.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'IN'
SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'IN' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING sum(T2.cost_of_treatment) > 1000
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT treatment_type_description FROM treatment_types ORDER BY T1.cost_of_treatment LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY avg(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
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
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'House' AND room_count > 1 UNION SELECT property_name FROM properties WHERE property_type_code = 'Apartment' AND room_count > 1
