SELECT name , country FROM singer ORDER BY age ASC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
2014 or 2015concerts = (SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015) )
2014 - 3 2015 - 3
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 EXCEPT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
concert_id , concert_name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id HAVING count(*) > 0
concurrent_singers = (SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id)
concert_name_count = (SELECT T1.concert_name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name)
concert_id,singer_id,name SELECT T1.concert_name , T1.singer_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 {}
concert_id = 1 year = 2014 SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
{ "sql": "SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015"} {"sql": "SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015"}
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0;
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 AND T2.StuID IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.petid IN (SELECT petid FROM pets WHERE pet_type = 'dog')
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' GROUP BY T1.stuid HAVING count(*) >= 50
Has_pet_stuid = (SELECT StuID FROM Has_pet WHERE pettype = 'Cat' OR pettype = 'Dog')
Has_pet_stus = (SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat' OR T2.pettype = 'dog')
Pet1 = 'cat' Pet2 = 'dog' Pet3 = 'cat' Has_pet1_stu_id = has_pet1_stu_id and pet1.pet_type = 'cat' and has_pet1_stu_id and pet2.pet_type = 'dog' and has_pet1_stu_id and pet3.pet_type = 'cat'
PetType = 'Cat' INTERSECT PetType = 'Dog' StuID IN (SELECT StuID FROM Has_pet)
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet WHERE pet_type = 'Cat' )
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN ( SELECT T3.petid FROM Has_pet AS T3 JOIN Pets AS T4 ON T3.petID = T4.petID WHERE T4.pet_type = "Cat")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = \"Cat\")
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet WHERE PetType = 'Cat' )
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
SELECT pet_type , pet_age FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T1.pettype = \"Cat\" AND T3.age = 3; T3.lname
Pets(PetID, pet_age) JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID WHERE Has_Pet.StuID IN (SELECT StuID FROM Student WHERE age = 3) AND pets.pet_type = 'cat'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model HAVING avg(T1.Weight) < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
model_list.year = 1970 car_names.id IN (SELECT maker FROM car_makers WHERE country NOT IN (SELECT country FROM car_makers WHERE year != 1970))
SELECT DISTINCT T2.maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid WHERE T1.year = 1970;
SELECT T2.make , T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.makeid ORDER BY T1.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Year > 1980;
cars_data.year > 1980.model DISTINCT model_list.maker
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN ( SELECT countryid FROM countries WHERE countryname = 'France' )
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = '4'
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.make = 'CYL' AND T2.year = 1974
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\"
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe'
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = "Europe"
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY sum(T2.GMP) DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY avg(T1.MPG) DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980;
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T1.FullName = 'Volvo'
SELECT avg(T2.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.make = 'Volvo'
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = 'America'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = 'United States'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
```sql SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight > 3500 OR T2.maker = 'General Motors' AND T2.model IN (SELECT model FROM car_names WHERE makeid IN (SELECT id FROM car_makers WHERE maker = 'General Motors')) ; ```
model_list.GeneratorMakers(model) - model_list.CarWeights(model) > 3500 GROUP BY model_list.GeneratorMakers(model) HAVING count(*) >= 2
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000
SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT max(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.make_id WHERE T2.cylinders = '4' GROUP BY T1.model ORDER BY sum(T2.horsepower) DESC LIMIT 1
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = '8' AND T2.year < 1980;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T2.maker = 'Ford Motor Company'
```sql SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = 'Ford Motor Company'```
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T3.countryid , T3.countryname FROM countries AS T3 JOIN car_names AS T4 ON T3.CountryId = T4.makeid WHERE T4.Make = 'fiat' {}
SELECT countryid , countryname FROM countries WHERE countryid IN ( SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 3 ) UNION SELECT countryid , countryname FROM countries WHERE countryid IN ( SELECT countryid FROM car_names GROUP BY countryid HAVING make = 'fi' )
SELECT Country FROM airlines WHERE Airline LIKE "%JetBlue Airways%"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline LIKE '%JetBlue Airways%'
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = 'Australia' AND T2.sourceairport = 'AKO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport = 'Akko'
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destinationairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
source_airport = 'Aberdeen' dest_airport = 'Ashley' flights_between(source_airport , dest_airport ) / 1000000.0 # Convert to million flights for better precision.
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.country = 'United Airlines' AND T2.countryabbreviation = 'USA'
SELECT count(*) FROM flights WHERE airline = 'United' AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'ASY')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.country = 'United Airlines' AND T2.countryabbreviation = 'United' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T3.country = 'United States' AND T2.countryabbreviation = 'USA' AND T1.destinationairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrv WHERE T2.country = 'United States' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrv WHERE T3.country = 'United' AND T2.countryabbreviation = 'Scotland' AND T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destinationairport NOT IN ( SELECT T3.destinationairport FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destinationairport = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destinationairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.country = 'China') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.srcairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.sourceairport = T4.airportcode WHERE T4.country = 'China')
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = \"APG\")
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Scotland' AND T1.destairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' OR T2.country = 'ABU'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "USA" AND T1.sourceairport = "Aberdeen" OR T2.country = "USA" AND T1.sourceairport = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights INTERSECT SELECT srcairport FROM flights)
sorted(employee.Name)
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , location FROM shop GROUP BY LOCATION;
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN ( SELECT shop_id FROM employee )
SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Manager_name = T2.Employee_ID WHERE T1.Number_products < 3000 INTERSECT SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Manager_name = T2.Employee_ID WHERE T1.Number_products > 10000 {}
SELECT district FROM shop WHERE number_products BETWEEN 0 AND 2999 AND (number_products > 10000 OR number_products < 3000)
sorted(teacher.name)
sorted(teachert.Name)
SELECT name FROM teacher WHERE hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1 OFFSET 0
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , name FROM teacher GROUP BY name;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T2.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course_id IN (SELECT course_id FROM course WHERE title = 'Math')
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP
SELECT avg(age) FROM visitor WHERE level_of_membership != 'Level 4'
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
total_spent = (SELECT T2.total_spent FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(T1.total_spent) DESC LIMIT 1) ID = (SELECT T2.id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) NAME = (SELECT T2.name FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) LEVEL_OF_MEMBERSHIP = (SELECT T2.level_of_membership FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) total_spent = (SELECT sum(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(total_spent) DESC LIMIT 1) ID = (SELECT T2.id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) NAME = (SELECT T2.name FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) LEVEL_OF_MEMBERSHIP = (SELECT T2.level_of_membership FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) total_spent = (SELECT sum(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(total_spent) DESC LIMIT 1) ID = (SELECT T2.id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) NAME = (SELECT T2.name FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id)) ID = (SELECT T2.id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.Museum_ID IN (SELECT T3.Museum_ID FROM visit AS T3 JOIN visitor AS T4 ON T3.visitor_id = T4.id
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT T1.museum_id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 'LV 1'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 OR 2016 MATCHES MATCH_NUM.round = '14'
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.tourney_name = "Australian Open"
first_names = ["John", "Emily"] country_codes = [Australia] union select T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.match_num = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T3.tourney_name = "Australian Open"
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM matches)
SELECT T1.winner_name , T2.wloser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3
player_id = (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' EXCEPT SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'WTA Championships' AND T1.hand = 'left') GROUP BY player_id HAVING count(*) >= 2
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\";
ship.lost_in_battle / ship.disposition_of_ship = 'Captured'死去了多少艘船？
bushido(id, name) SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' AND T2.ship_type = 'HMS' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Atalanta' AND T2.ship_type = 'HMS'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' )
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = \"Port Chelsea\"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment AS T1 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T3.degree_program_id = T1.degree_program_id WHERE T3.degree_summary_name != 'None'
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != 'None'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Master' INTERSECT SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor')
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Masters' INTERSECT SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelors') GROUP BY semester_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT cell_mobile_number FROM Students WHERE cell_mobile_number = "09700166582"
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Directed_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.channel = T2.channel WHERE T2.Written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT T1.Title FROM Cartoon AS T1 JOIN Directed_by AS T2 ON T1.Directed_by = T2.Directed_by WHERE T2.Written_by = 'Ben Jones' OR T2.Written_by = 'Brandon Vietti'
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT Content FROM TV_CHANNEL WHERE Content != "" AND Channel IN ( SELECT id FROM TV_series WHERE Title = "Sky Radio")
SELECT Content FROM TV_channel WHERE Channel = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE Content = "TV Channel" AND Channel IN (SELECT id FROM TV_series WHERE Series = "Sky Radio")
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle!'
SELECT T2.series_name FROM TV_channel AS T2 JOIN cartoon AS T3 ON T2.channel = T3.channel WHERE T3.Title = "The Rise of the Blue Beetle"
tv_channel_id = (SELECT id FROM TV_channel WHERE channel = "Sky Radio") INTERSECT SELECT T1.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.series_name = "Cartoon"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Content = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Series_Name LIKE "%A Love of a Lifetime%"
Air_date = "1962-03-13"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name LIKE "%A Love Of A Lifetime%"
SELECT Weekly_Rank FROM TV_series WHERE 18_49_Rating_Share = "A Love of a Lifetime"
{"sql": "SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode LIKE '%""''A Love of a Lifetime''%'"}
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.air_date LIKE "%A Love of a Lifetime%"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = 'Sky Radio'
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT T1.package_option , T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.HD_tv = 'Yes'
SELECT T1.package_option , T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = "HD"
TV_Channel[id, country] = (SELECT T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey")
TV_channel = (SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = \"Todd Casey\") Union Select T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = \"Todd Casey\"
TV_Channel(id, country) EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'Todd Casey writes?'
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = 'Todd Casey')
channel := T2.id directed_by := T3.directed_by pay_per_view := T3.pay_per_view match := T2.Title = "Ben Jones and Michael Chang directs?" if match then series_name := T1.series_name country := T1.Country end if end if end match
channel1 = (SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Ben Jones\" AND T2.directed_by = \"Michael Chang\")
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE LANGUAGE <> "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200;
nationalities_count = (SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality)
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT created FROM VOTES WHERE state = "CA"
SELECT count(*) FROM VOTES WHERE state LIKE '%NY%' OR state LIKE '%CA%'
SELECT T1.created , T2.state , T2.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTants WHERE contestant_name = \"Kelly Clauss\")
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE lifeexpectancy > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
"SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.Name = 'Kabul'"}
SELECT Region FROM country WHERE Code = 'Kabul'
SELECT t1.Language FROM countrylanguage AS t1 JOIN city AS t2 ON t1.CountryCode = t2.CountryCode WHERE t2.District = 'Aruba' GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba" GROUP BY T1.Language ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.CountryCode = "Angola"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "African" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Asia SurfaceArea + Europe SurfaceArea
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE countrycode IN (SELECT code FROM country WHERE name = "Gelderland")
SELECT sum(population) FROM city WHERE countrycode = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE code = 'US'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name LIKE '%US%' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.countrycode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AF'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Name = "Afghanistan")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
import pandas as pd from collections import Counter import numpy as np # Load countrydata and countrylanguage dataframes country_data = pd.read_csv('countrydata.csv') country_language_data = pd.read_csv('countrylanguage.csv') # Merge country_data and country_language_data on countrycode merged_data = country_data.merge(country_language_data, on='CountryCode') # Group by continent and count the frequency of each language language_counts = merged_data.groupby(merged_data.Continent).size() # Get the continent with the highest frequency of languages most_diverse_continent = language_counts.idxmax() print(most_diverse_continent)
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2 countrycode C3 name C4 countrycode C1 language C2
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" AND T2.isofficial = true INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French" AND T2.isofficial = true
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('Dutch', 'English')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM city WHERE CountryCode = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
country1 = countrycode(country1) country2 = countrycode(country2) country3 = countrycode(country3) country4 = countrycode(country4) country5 = countrycode(country5) country6 = countrycode(country6) country7 = countrycode(country7) country8 = countrycode(country8) country9 = countrycode(country9) country10 = countrycode(country10) country11 = countrycode(country11) country12 = countrycode(country12) country13 = countrycode(country13) country14 = countrycode(country14) country15 = countrycode(country15) country16 = countrycode(country16) country17 = countrycode(country17) country18 = countrycode(country18) country19 = countrycode(country19) country20 = countrycode(country20) country21 = countrycode(country21) country22 = countrycode(country22) country23 = countrycode(country23) country24 = countrycode(country24) country25 = countrycode(country25) country26 = countrycode(country26) country27 = countrycode(country27) country28 = countrycode(country28) country29 = countrycode(country29) country30 = countrycode(country30) country31 = countrycode(country31) country32 = countrycode(country32) country33 = countrycode(country33) country34 = countrycode(country34) country35 = countrycode(country35) country36 = countrycode(country36) country37 = countrycode(country37) country38 = countrycode(country38) country39 = countrycode(country39) country40 = countrycode(country40) country41 = countrycode(country41) country42 = countrycode(country42) country43 = countrycode(country43) country44 = countrycode(country44) country45 = countrycode(country45) country46 = countrycode(country46) country47 = countrycode(country47) country48 = countrycode(country48) country49 = countrycode(country49) country50 = countrycode(country50) country51 = countrycode(country51) country52 = countrycode(country52) country53 = countrycode(country53) country54 = countrycode(country54) country55 = countrycode(country55) country56 = countrycode(country56) country57 = countrycode(country57) country58 = countrycode(country58) country59 = countrycode(country59) country60 = countrycode(country60) country61 = countrycode(country61) country62 = countrycode(country62) country63 = countrycode(country63) country64 = countrycode(country64) country65 = countrycode(country65) country66 = countrycode(country66) country67 = countrycode(country67) country68 = countrycode(country68) country69 = countrycode(country69) country70 = countrycode(country70) country71
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = \"Beatrix\" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Beatrix" AND T1.CountryCode IN (SELECT CountryCode FROM country WHERE Name LIKE "%Beatrix%")
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930 {}
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population > 1930 {}
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population ASC LIMIT 1) AND code = 'Asia'
SELECT code FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = "English")
SELECT code FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
countrycode = (SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
countrycode = 'USA' OR countrycode != 'USA' AND language != 'English' AND governmentform != 'Republic'
countrycode : code2 where code2 NOT IN (SELECT code2 FROM countrylanguage WHERE language = 'English')
countrycode1 = 'Europe' countrycode2 = 'USA' for t1 in city.countrycode1: if t1.code != countrycode2: t2 = countrylanguage.countrycode2 if t2.language == 'English' and t1.code != countrycode1: print(t1.name)
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.language = "Chinese" GROUP BY T1.id
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Language = "Chinese"
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(population) FROM city WHERE countrycode IN ( SELECT code FROM country WHERE continent = "Noth America" AND surfacearea > 3000 )
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.name , max(T2.percentage) , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' ORDER BY t2.percentage DESC LIMIT 1;
SELECT count(DISTINCT T1.code) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > 50
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) >= 50
SELECT Name FROM conductor ORDER BY Age ASC LIMIT 1000000
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
ortcha_company DESC
orchestras.sort_by(YEAR_OF_FOUNDER)
If """"CD"""" or """"DVD"""" are replaced with empty strings "", """"CD"""" or """"DVD"""" respectively, then we need to count the number of orchestras whose record_company is either """"CD"""" or """"DVD"""". If """"CD"""" or """"DVD"""" are replaced with an empty string, then there will be no orchestras because all recordings should be made by a conductor. Therefore, the number of orchestras is zero.
Highschooler(id=1, name="Kyle")
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1) INTERSECT SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 2)
SELECT name FROM highschooler WHERE grade >= 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
ID: 1
9 Highschooler 10 Highschooler
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING grade != 'high'
Highschooler.id , count(*) , grade FROM Highschooler GROUP BY grade HAVING grade = 'high'
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
Friend.friend_id = highschooler.id AND highschooler.name = 'Kyle'
Friend("Kyle", "Kyle")
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
Highschooler.count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM highschooler GROUP BY student_id HAVING count(*) > 0)
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'IN' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 AND T1.state = 'IN'
import dogs as d import treatments as t from dogs import Owner as o from treatments import professional_id as p from charges import charge_id as c from sizes import size_code as s from treatment_types import treatment_type_code as t from owners import owner_id as o import numpy as np state = 'IN' # Indepth states are always treated as 'IN' treatments_count = t.treatment_type_code.count() > 2 # Filter the professionals based on their state professional_ids = [p.professional_id] * len(treatments) + [p.professional_id] * len(treatments) # Add the count of treatments for each professional filtered_professionals = [t[0] for t in professional_ids if t[1] == state] # Get the last name and cell number from the filtered professionals for t in filtered_professionals: print(f"ID: {t[0]}, last name: {t[1]}, cell number: {t[2]}")
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000 GROUP BY T2.dog_id HAVING count(*) > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.first_name HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
owners = [owner1, owner2] dogs = [dog1, dog2] for owner in owners: print(f"First Name: {owner.first_name} \nDog Name: {dogs[0].name}") for owner in owners: print(f"First Name: {owner.first_name} \nDog Name: {dogs[1].name}")
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age LIMIT 1;
SELECT email_address FROM professionals WHERE state IN ('Hawaii', 'Wisconsin')
SELECT email_address FROM professionals WHERE state IN ('Hawaii', 'Wisconsin')
SELECT count(*) FROM Dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year BETWEEN 1948 AND 1949
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.citizennty ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.Citizenship , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN singer AS T2 ON T1.Citizenship = T2.Citizenship GROUP BY T1.Citizenship HAVING T1.Net_Worth_Millions > 0
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship;
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
Before 1945: 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
before_1945 = [Citizenship] \u2013 (Name in before 1945) \u2013 after_1955 = [Citizenship] \u2013 (Name in after 1955)
SELECT property_name FROM properties WHERE room_count > 1 AND property_type_code = 'House' UNION SELECT property_name FROM properties WHERE room_count > 1 AND property_type_code = 'Apartment'
