SELECT name , country , age FROM singer ORDER BY age DESC LIMIT 1000000
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT count(*) , country FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country HAVING count(*) > 0
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer GROUP BY age ORDER BY avg(age) DESC LIMIT 1)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30 {}
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014 {}
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 AND T2.stadium_id IN ( SELECT T1.stadium_id FROM concert AS T3 ON T3.stadium_id = T1.stadium_id WHERE YEAR = 2015 )
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015;
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10.0
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
SELECT min(weight) FROM Pets WHERE pet_age = 1;
SELECT count(*) FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20 AND T1.sex = 'M'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' OR T3.pettype = 'Dog'
SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat' INTERSECT SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = \"Cat\" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = \"Dog\"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM Pets WHERE pet_type = 'Cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat'
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE pettype = 'dog' EXCEPT SELECT StuID FROM Has_pet WHERE pettype = 'cat')
Youngest Pet Weight: {pet_weight : min(weight) , pet_type : pet_type}
Youngest_pet_weight = (SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1)
SELECT pet_id , weight FROM Pets WHERE pet_age > 1;
SELECT pet_id , weight FROM Pets WHERE pet_age > 1 {}
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.maker , T2.id , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970 {}
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Year = 1970;
SELECT T1.maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model ORDER BY T2.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Make = 'Amc' AND T1.Model = 'Hornet Sportabout'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "France"
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'Europe')
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN countries AS T3 ON T2 maker = T3.country WHERE T3.continent = 'United States'
SELECT avg(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.Cylinders = '4'
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Make = 'CYL' AND T2.year = 1974
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150.0
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND COUNT(*) <= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT model FROM model_list WHERE maker IN ( SELECT maker FROM car_names GROUP BY maker ORDER BY sum(T2.MPG) DESC LIMIT 1 )
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.MPG = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.make = 'Volvo'
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'United States'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T1.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000;
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = 'Yes' AND Make = 'Volvo'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker > 2
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 4 GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.year < 1980 AND T2.cylinders = '8'
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.FullName = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT maker FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T3.countryid , T3.countryname FROM countries AS T3 JOIN car_names AS T4 ON T3.CountryId = T4.makeid WHERE T4.model = 'fiat'
SELECT T1.countryid , T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.Country WHERE T1.country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3 ) UNION SELECT T3.countryid , T3.countryname FROM car_names AS T4 JOIN models AS T5 ON T4.model = T5.model WHERE T5.make = 'FIAT'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL' AND Airline NOT IN (SELECT Airline FROM airlines WHERE Abbreviation != 'UAL')
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo = 'AKO'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Airline = 'AKO'
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destinationairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'United Kingdom' WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destinationairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'ASY' AND T3.Airline = 'United Airlines'
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND SourceAirport = \"ASYY\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.id WHERE T3.Abbreviation = 'United Airlines' AND T2.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T3.country = 'United' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Abbreviation = 'United Airlines' AND T2.Country = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'AHD' AND T2.DestAirport IN (SELECT T3.AirportCode FROM airports AS T3 JOIN flights AS T4 ON T3.AirportCode = T4.DestAirport WHERE T3.Country = 'United States')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.FlightNo = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline WHERE T2.SourceAirport = 'AHD' AND T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG' AND T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.DestAirport WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.SourceAirport WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.destinationairport IN (SELECT T3.AirportCode FROM airports AS T3 JOIN flights AS T4 ON T3.AirportCode = T4.destairport WHERE T3.Country = 'CVO') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.destinationairport IN (SELECT T3.AirportCode FROM airports AS T3 JOIN flights AS T4 ON T3.AirportCode = T4.destairport WHERE T3.Country = 'APG')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Destination Airport WHERE T2.Source Airport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Destination Airport WHERE T2.Source Airport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT T1.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'United Kingdom' AND T1.destinationairport = T2.airportcode AND T1.sourceairport = T3.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlighNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = T2.airportcode ORDER BY T1.flighno ASC LIMIT 1000;
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'United States' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'Abellene' OR T3.country = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights) EXCEPT SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT count(*) , location FROM shop GROUP BY location
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employee)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000;
SELECT district FROM shop WHERE number_products BETWEEN 0 AND 2999 INTERSECT SELECT district FROM shop WHERE number_products BETWEEN 3000 AND 10000;
sorted(teacher.name)
SELECT Name FROM teacher ORDER BY Age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1 OFFSET 0;
SELECT name FROM teacher ORDER BY age LIMIT 1 OFFSET 0;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT count(*) , T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) > 0
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course_name = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IN (SELECT Course_ID FROM course WHERE COURSE_NAME = 'Math')
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP FROM visitor ASC LIMIT 1000000;
SELECT avg(age) FROM visitor WHERE age < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1;
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 'LV 1'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.tourney_name FROM matches AS T1 JOIN tourneys AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
LEFT HANDERS = (first_name , last_name) FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.winner_id = T1.player_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN MATCHES AS T3 ON T2.player_id = T3.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T3.tourney_name = \"Australian Open\"
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.match_num = T3.player_id WHERE T3.tourney_name = \"Australian Open\" ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 51
SELECT T1.name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.year ASC LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.year LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM ship WHERE lost_in_battle = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' AND T2.ship_type = 'Sailing' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T2.ship_type = 'Sailing'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'sea' AND T2.location = 'English Channel' )
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM degree_programs AS T3 JOIN student_enrolment AS T4 ON T3.degree_program_id = T4.degree_program_id {}
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id != 1
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 = "Timmothy Ward"
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , last_name , middle_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degrees WHERE degree_summary_name = 'Master') INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degrees WHERE degree_summary_name = 'Bachelor')
SELECT semester_id FROM (SELECT T1.semester_name , T2.semester_id FROM semesters AS T1 JOIN student_enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Masters' INTERSECT SELECT T1.semester_name , T2.semester_id FROM semesters AS T1 JOIN student_enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Bachelors') WHERE count(*) = 2
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT first_name FROM students WHERE cell_mobile_number = "09700166582"
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT T1.Title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.title = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Directed_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN cartoones AS T2 ON T1.id = T2.written_by WHERE T2.directed_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = (SELECT id FROM TV_channel WHERE Title = 'Ben Jones' OR Title = 'Brandon Vietti')
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = (SELECT id FROM TV_channel WHERE directed_by = \"Ben Jones\" OR directed_by = \"Brandon Vietti\")
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT Content FROM TV_CHANNEL WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_CHANNEL WHERE channel = \"Sky Radio\"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "English"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle!'
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_CHANNEL AS T2 ON T1.Channel = T2.id WHERE T2.series_name = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
A Love of a Lifetime (1962) aired on May 10th.
SELECT Weekly_Rank FROM TV_series WHERE Series_name = \"A Love of a Lifetime\"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = """"A Love of a Lifetime""""
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = """"A Love of a Lifetime"""""
SELECT series_name FROM TV_series WHERE title = """"A Love of a Lifetime"""""
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Country = """"Sky Radio"""";
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
Director_count = count(*) FROM cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING COUNT(*) > 0
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'HD'
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'HD'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'Todd Casey'
SELECT T3.Country FROM TV_channel AS T3 JOIN Cartoon AS T2 ON T3.id = T2.Channel JOIN TV_series AS T1 ON T3.id = T1.Channel WHERE T1.Title = 'Todd Casey' AND T2.Directed_by = 'Todd Casey'
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon )
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE written_by = 'Todd Casey' )
SELECT T2.series_name , T2.Country FROM TV_channel AS T2 JOIN cartoon AS T1 ON T1.channel = T2.id WHERE T1.Directed_by = "Ben Jones" AND T1.Directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> "english"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
No channel can play both cartoons and TV programs simultaneously. Therefore, there are no TV_channels whose package option is 'Cartoon' in this case. The answer is an empty set: {}
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , count(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT created FROM VOTES WHERE state = \"CA\" ORDER BY created DESC LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = "NY" OR state = "CA"
SELECT T1.create_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM VOTES WHERE contestant_name = \"Tabatha Gehling\" INTERSECT SELECT contestant_number FROM VOTES WHERE contestant_name = \"Kelly Clauss\") GROUP BY T1.area_code HAVING count(*) > 1
SELECT Name FROM country WHERE IndepYear > 1950;
After 1950: name = "Nigeria"
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
Total Surface Area of Countries in the Caribbean = 3017458.98 square kilometers
Total Surface Area of Carribean Cover = 730000 square kilometers
SELECT Continent FROM country WHERE Name = "Anguilla"
Anguilla belongs to the continent of Africa. Therefore, the continent code is Africa.
Kabul = "Kazakhstan"
SELECT Region FROM country WHERE Capital = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = 'Aruba' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Aruba' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT region , population FROM country WHERE name = "Angola"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Central Africa\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Central Africa\"
SELECT Name FROM country WHERE LifeExpectancy = (SELECT min(LifeExpectancy) FROM country WHERE Continent = \"Asia\")
SELECT Name FROM country WHERE Continent = \"Asia\" ORDER BY LifeExpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT population , gnp FROM country WHERE continent = 'Asia' ORDER BY gnp DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"African\" AND GovernmentForm = \"Republic\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Africa\" AND GovernmentForm = \"Republic\"
Total Surface Area of Asia + Total Surface Area of Europe = 1000000 + 1000000 = 2000000平方单位。
Total Surface Area Covered by Countries in Asia or Europe = SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea + SurfaceArea +
SELECT sum(population) FROM city WHERE countrycode = 'Gelderland'
SELECT sum(population) FROM country WHERE code = 'Gelderland'
SELECT avg(GNP) , avg(Population) FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = \"Americas\")
SELECT avg(GNP) , avg(Population) FROM country WHERE Code IN ( SELECT Code FROM country WHERE Continent = "America")
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = \"Africa\"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(t2.Percentage) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Name = \"Aruba\"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE code = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" AND T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT continent) FROM country WHERE name = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('English', 'Dutch')
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE Continent = \"Asia\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE Continent = \"Asia\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT name FROM city WHERE population IN (SELECT max(population) FROM city WHERE language = 'English')
SELECT name FROM city WHERE population IN (SELECT max(population) FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language = 'English'))
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = "English" )
SELECT avg(LifeExpectancy) FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = \"English\" )
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language != 'English'
SELECT count(*) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = \"Beatrix\" AND T1.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930 {}
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population DESC LIMIT 1) AND continent = 'Asia'
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') INTERSECT SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT Code FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = "English")
SELECT Code FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = "English")
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT code2 FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT Code FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = "English") EXCEPT SELECT Code FROM country WHERE GovernmentForm = "Republic"
SELECT Code FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = \"English\")
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'No' EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = 'English'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 'Chinese' AND T2.continent = 'Asia' GROUP BY T1.name
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Chinese' AND T2.Language = 'Chinese'
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1;
SELECT count(*) , District FROM city WHERE Population > (SELECT avg(Population) FROM city) GROUP BY District;
SELECT count(*) , District FROM city GROUP BY District HAVING avg(Population) > (SELECT avg(Population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(population) FROM country WHERE surfacearea > 3000 AND continent = \"Noth America\"
SELECT name FROM city WHERE population >= 900000 AND population <= 160000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.name , max(T2Percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code
SELECT T1.code , T2.language , max(T2.percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentile = (SELECT percentile(percentage) FROM countrylanguage GROUP BY language ORDER BY percentile(percentage) DESC LIMIT 1)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) > (SELECT avg(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code HAVING sum(T2.percentage) >= 50
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1000000;
ORDER BY Name ASC
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded DESC LIMIT 1000000;
SELECT Record_Company FROM ORCHESTRAS ORDER BY YEAR_OF_FOUNDED
SELECT count(*) FROM orchestra WHERE Record_Company = """"CD"""" OR Record_Company = """"DVD""""
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) , grade FROM Highschooler GROUP BY grade ORDER BY grade ASC;
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING grade != 'High School'
SELECT YEAR FROM HIGHschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
Kyle = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1)
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.id = 1
Kyle has 0 friends.
SELECT count(*) FROM friend WHERE friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
Kyle has 0 likes.
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id)
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IS NULL
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"IN\"
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = "INDAIA" UNION SELECT T1.professional_id , T2.last_name , T2.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T3.name FROM dogs AS T3 JOIN treatments AS T1 ON T3.dog_id = T1.dog_id JOIN owners AS T2 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1;
SELECT t3.treatment_type_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_type = t2.charge_type JOIN treatment_types AS t3 ON t2.treatment_type_code = t3.treatment_type_code ORDER BY t2.cost_of_treatment LIMIT 1;
SELECT T1.id , T1.zip_code FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1;
SELECT T1.id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , T1.Nationality FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Nationality
{ "sql": "SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship"} {"sql": "SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship"}
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship HAVING COUNT(*) >= 1
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
Citizenship shared by singers born before 1945 and after 1955: SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 1944 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1956;
Citizenship of singers born before 1945 and after 1955: SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 1944 AND Citizenship NOT IN (SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1955) UNION SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1946 AND 1955 AND Citizenship NOT IN (SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1946 AND 1955)
SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = 'House') OR room_count > 1 INTERSECT SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = 'Apartment') AND room_count > 1;
