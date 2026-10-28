SELECT name , country , age FROM singer ORDER BY age ASC LIMIT 1000000
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
country , count(*) FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , Name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
2014 - 3 2015 - 3
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT country FROM singer WHERE age > 40 AND age < 30
select name from stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
concert_id , concert_name , count(*) , T1.theme FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
concurrent_singers_count = ( SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id )
concert_name_count = (SELECT T1.concert_name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name)
concert_name = '2014' union select T2.name from singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014;
concert_id = 1 year = 2014 select T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T2.concert_id = T1.concert_id WHERE T1.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT min(weight) FROM Pets WHERE pet_type = 'Dog'
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 AND T2.StuID IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.petid IN (SELECT petid FROM pets WHERE pettype = 'dog')
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
PetsPetType = 'cat' || 'dog' Has_Pet StuID PetsPetID PetsPetType PetsPetAge PetsPetWeight PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType PetsPetAge PetsPetType
PetType = 'cat' OR PetType = 'dog' FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID
PetType = 'Cat' INTERSECT PetType = 'Dog' StuID: StuID
Pets.pet_type = 'cat' INTERSECT Pets.pet_type = 'dog' StuID IN (SELECT StuID FROM Has_pet)有共同的StuID
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM has_pet WHERE pet_type = 'Cat' )
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet )
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet WHERE PetType = 'Cat' )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat'
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
pets = [pet for pet in Pets if pet.pet_type == 'cat' and pet.pet_age == 3] student_stuid = [stuid for stuid , StuID in Has_pet.items() if StuID in pets] last_name = [fname for fname , StuID in Student.items() if StuID in student_stuid][last_name[-1]]
Pet1 = (SELECT T1.pet_id FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age = 3 AND T1.pet_type = \"cat\") INTERSECT SELECT T1.pet_id FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age = 3 AND T1.pet_type = \"dog\"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
cars_data.year = 1970 model_list.id = car_makers.id car_names.makeid = model_list.makeid
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year = 1970;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Year > 1980 {}
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE country IN ( SELECT countryid FROM countries WHERE countryname = 'France' )
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = "France")
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = '4'
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND make = 'CYL'
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName IN ( SELECT FullName FROM car_makers GROUP BY FullName HAVING COUNT(*) >= 1 )
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe'
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.make GROUP BY T1.model ORDER BY sum(T2.MPG) DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.Model WHERE T1.MPG = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980;
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980;
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.maker = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = 'Volvo'
SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.country = 'United States'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.countryname = "American Motor Company"
model_list.Count() > 3 UNION SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 4
SELECT T2.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight > 3500 OR T2.maker = 'General Motors'
model_list WHERE maker IN (SELECT id FROM car_makers WHERE country = 'General Motors' UNION SELECT id FROM car_names WHERE weight > 3500) DIFFERENT modelos
between 3000 AND 4000 pounds weight range corresponds to a car with a weight between 3000 and 4000 pounds. We can filter this range using the min(weight) and max(weight) functions of the cars_data table: SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
between 3000 AND 4000 pounds = (SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = 'Volvo')
SELECT min(Cylinders) FROM cars_data WHERE Accelerate != 'null' AND maker = 'Volvo'
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker IN (SELECT DISTINCT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = 8 AND T2.year < 1980 {}
model_list Maker Model 3499 Ford Mustang 3501 Chevrolet Silverado 3502 Dodge Charger 3503 Pontiac V6 3504 Toyota Corolla 3505 Honda Civic 3506 General Motors Opel-Kaas
cars_data weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname != 'Ford Motor Company' model_list maker IN (SELECT id FROM car_makers WHERE country IN (SELECT countryid FROM car_makers WHERE weight > 3500)) distinct model_list.model
```sql SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Country WHERE T2.Make = 'fiat' ```
SELECT countryid , countryname FROM countries WHERE countryid IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3 ) UNION SELECT countryid , countryname FROM countries WHERE countryid IN ( SELECT country FROM car_names GROUP BY country HAVING make = 'fi' )
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city LIKE '%Anthony%'
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%ULA%'
SELECT Airline FROM airlines WHERE Airline = 'ULA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Airline = "AKO"
SELECT airportname FROM airports WHERE airportcode IN (SELECT airportcode FROM flights WHERE sourceairport IN (SELECT airportcode FROM flights WHERE destairport IN (SELECT airportcode FROM flights WHERE sourceairport = 'AKO')))
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE country = 'United Kingdom' AND city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destinationairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT airportcode FROM airports WHERE country = 'Australia' ) AND destairport IN ( SELECT airportcode FROM airports WHERE country = 'Australia' )
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'UK' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
sourceairport = 'Aberdeen' and destairport = 'Ashley'飞行总数: 比特 (flights(sourceairport , destairport) )
source_airport = 'Aberdeen' dest_airport = 'Ashley' flights_between(source_airport , dest_airport)
SELECT count(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.countryabbreviation = 'United Airlines' AND T2.countryabbreviation = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United' AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'ASY')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.country = 'United Airlines' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United Airlines' AND T2.countryabbreviation = 'USA'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United States' AND T2.countryabbreviation = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrv WHERE T3.country = 'United States' AND T2.countryabbreviation = 'Aberdeen'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destinationairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.AirportCode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.AirportCode WHERE T4.Country = 'APG') INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.AirportCode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.AirportCode WHERE T4.Country = 'CVO')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.destairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = \"APG\")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT FlightNo FROM flights WHERE destairport IN ( SELECT airportcode FROM airports WHERE airportname = 'APG' )
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' OR T2.country = 'ABIALEN'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'Aberdeen' OR T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT T1.destairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode ) UNION SELECT airportname FROM airports WHERE airportcode IN ( SELECT T1.destairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode )
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
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY sum(T2.bonus) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employee)
SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id WHERE T1.Number_products < 3000 INTERSECT SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id WHERE T1.Number_products > 10000
districts = [name for name in shop.District if 3000 <= number_products < 10000]
sorted(teacher.age) teacher.name
sorted(teacher.age) teacher.name
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1 OFFSET 0
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Hometown = T2.Hometown GROUP BY T1.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course_ID IN (SELECT Course_ID FROM course WHERE Name = \"Math\")
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IN (SELECT Course_ID FROM course WHERE Course_Name = "Math")
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'LV 4'
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
total_spent = (SELECT T2.total_spent FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY sum(total_spent) DESC LIMIT 1) ID , T2.name , T2.level_of_membership FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.id WHERE T2.num_of_staff > 500 SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.id WHERE T2.num_of_staff > 500 AND T1.id IN (SELECT T1.id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY sum(total_spent) DESC LIMIT 1) ID , T2.name , T2.level_of_membership FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.id WHERE T2.num_of_staff > 500
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.num_ticket = (SELECT num_ticket FROM visit GROUP BY num_ticket ORDER BY count(*) DESC LIMIT 1)
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T2.year = 2016;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 | 2016 : 0
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T3.tourney_name = 'Australian Open'
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT T1.winner_name , T2.wloser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age LIMIT 3;
best_of = 3 match_num = 1 loser_age = min(loser_age for loser_id in losers)
player_id IN (SELECT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = \"WTA Championships\") AND T1.hand = \"left\" GROUP BY T1.player_id HAVING count(*) >= 2;
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.ship_type = 'Captured'
battles_with_millions_deaths = (SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10)
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
name: HMS Atalanta date: 18 October 1943 name: Lettice date: 25 October 1943
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' )
"Courses/course_description"其他_details"other_details" describes the math."
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment AS T1 ON T2.student_id = T1.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != ''
addresses = (select T1.address_id from addresses AS T1 join students AS T2 on T1.address_id = T2.permanent_address_id where T1.state_province_county = 'North Carolina' EXCEPT select T1.address_id from addresses AS T1 join student_enrolment AS T2 ON T1.address_id = T2.student_id) union all select T1.last_name from students AS T1 join student_enrolment AS T2 ON T1.student_id = T2.student_id join degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != 'Elective'
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Master') INTERSECT SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelor')
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Masters\" INTERSECT SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Bachelors\") GROUP BY semester_id HAVING count(*) >= 2
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.cell_mobile_number = "09700166582"
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haitie" UNION SELECT T1.cell_mobile_number FROM Students AS T1 JOIN Students AS T2 ON T1.current_address_id = T2.address_id AND T2.cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Title FROM Cartoon ORDER BY Title
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Directed_by = \"Joseph Kuhr\";
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.channel = T2.channel WHERE T2.Written_by = \"Joseph Kuh\"
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT Content FROM TV_CHANNEL WHERE Content != '' AND Channel IN ( SELECT id FROM TV_series WHERE Series = "Sky Radio" )
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_CHANNEL WHERE Content = "TV Channel" AND Channel IN ( SELECT id FROM TV_series WHERE Channel = "Sky Radio")
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
tv_channel_id = "Sky Radio" AND cartoon.channel IN (SELECT id FROM TV_channel WHERE channel_name = "Sky Radio") AND cartoon.title IN (SELECT title FROM cartoon WHERE channel = tv_channel_id)
tv_channel.id, T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.content = 'Sky Radio' AND T2.channel = 'TV Channel'
SELECT Air_Date FROM TV_series WHERE Series_Name LIKE "%A Love of a Lifetime%"
Air_date of A Love of a Lifetime is 20th April 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_Name LIKE "%A Love of a Lifetime%"
SELECT Weekly_Rank FROM TV_series WHERE 18_49_Rating_Share = "A Love of a Lifetime"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode LIKE "%A Love of a Lifetime%"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = ''''Sky Radio''''
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = 'Sky Radio'
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT T1.package_option , T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.HD_TV = 'Yes'
SELECT T2.package_option , T3.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN TV_channel AS T3 ON T1.id = T3.id WHERE T1.Hight_definition_TV = "HDTV"
SELECT T2.Country FROM TV_channel AS T2 JOIN Cartoon AS T1 ON T1.Channel = T2.id WHERE T1.Written_by = 'Todd Casey'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon )
TV_Channel(id, country) EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey'
channel := T2.id directed_by := T3.directed_by match := T3.title = 'Ben Jones and Michael Chang directs?' if match then series_name := T1.series_name country := T1.country end if {"series_name": "Ben Jones and Michael Chang directs?", "country": "USA"}
channel := T2.id directed_by := T3.directed_by title := T4.title pay_per_view := T5.pay_per_view package_option := T6.package_option match := T7.match match_id := T8.id match_title := T9.title match_content := T10.content match_directed_by := T11.directed_by match_channel := T12.id match_directed_by := T13.directed_by match_title := T14.title tv_channel := T1.id cartoon.channel := T2.id cartoon.directed_by := T3.id cartoon.title := T4.title cartoon.pay_per_view := T5.pay_per_view cartoon.package_option := T6.package_option cartoon.match := T7.id cartoon.match_directed_by := T8.id cartoon.match_title := T9.title cartoon.match_content := T10.content {"series_name": "Ben Jones & Michael Chang", "Country": "USA"}
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\")
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT created FROM VOTES WHERE state = "CA"
SELECT count(*) FROM votes WHERE state IN ('NY', 'CA')
SELECT T1.created , T2.state , T2.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\")
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE lifeexpectancy > 1950
SELECT count(*) FROM country WHERE IndepYear = 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT T3.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.code = T3.code WHERE T1.name = 'Kabul'
SELECT Region FROM country WHERE Code = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Aruba' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba" GROUP BY T1.Language ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = 'BR'
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.countrycode = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = \"Central Africa\"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(T1.population) , max(T2.GNPOld) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Asia SurfaceArea + Europe SurfaceArea = 184000000 + 136000000 = 320000000
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE countrycode = 'NL' AND population > 0
SELECT sum(population) FROM city WHERE countrycode IN (SELECT code FROM country WHERE name = "Gelderland")
SELECT avg(GNP) , sum(Population) FROM country WHERE CountryCode IN ( SELECT code FROM country WHERE continent = "United States")
SELECT avg(GNP) , sum(Population) FROM country WHERE CountryCode IN ( SELECT Code FROM country WHERE Name = 'United States' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Afghanistan")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
import pandas as pd import numpy as np from collections import Counter from sklearn.feature_extraction.text import CountVectorizer from sklearn.metrics.pairwise import cosine_similarity # Load countrylanguages data data = pd.read_csv('countrylanguage.csv') data.set_index('CountryCode', inplace=True) # Calculate the percentage of each language percentages = data['Percentage'].tolist() # Create a counter from percentages counter = Counter(percentages) # Find the most frequent language most_frequent_language = counter.most_common(1)[0][0] print(f"The continent with the most diverse languages is {most_frequent_language}.") {"sql": "SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1"}
import pandas as pd from collections import Counter import numpy as np # Load country and language dataframes country_df = pd.read_csv('country.csv') country_language_df = pd.read_csv('countrylanguage.csv') # Merge the two dataframes on countrycode merged_df = country_df.merge(country_language_df, on='CountryCode') # Group by country and count the number of languages spoken by each country languages_counted_by_country = merged_df.groupby('CountryCode')['Language'].count().reset_index() # Sort the countries by their total number of languages spoken (descending order) sorted_countries_by_languages = languages_counted_by_country.sort_values(by=['Total Languages Spoken'], ascending=False) # Get the most spoken country most_spoken_country = sorted_countries_by_languages.iloc[0]['CountryCode'] print(f"The most spoken country is {country_language_df.loc[most_spoken_country, 'Continent']}")
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'Dutch' OR T2.Language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN ( SELECT CountryCode FROM city WHERE Population > 100000 GROUP BY CountryCode HAVING COUNT(*) > 1 ) ORDER BY Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
countrycode = (SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.countrycode).averagelifeexpectancy = avg(T2.lifeexpectancy)
country1 = countrycode(country1) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country2 = countrycode(country2) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country3 = countrycode(country3) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country4 = countrycode(country4) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country5 = countrycode(country5) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country6 = countrycode(country6) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country7 = countrycode(country7) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country8 = countrycode(country8) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country9 = countrycode(country9) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country10 = countrycode(country10) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country11 = countrycode(country11) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country12 = countrycode(country12) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country13 = countrycode(country13) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country14 = countrycode(country14) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country15 = countrycode(country15) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country16 = countrycode(country16) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country17 = countrycode(country17) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country18 = countrycode(country18) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country19 = countrycode(country19) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country20 = countrycode(country20) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country21 = countrycode(country21) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country22 = countrycode(country22) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country23 = countrycode(country23) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country24 = countrycode(country24) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 100 country25 = countrycode(country25) * countrylanguage.countrycode * (Lifeexpectancy - Lifeexpectancy) / 10
SELECT sum(t1.population) FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language != 'English' {}
SELECT count(*) FROM city WHERE countrycode NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' )
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = 'Beatrix' AND T1.IsOfficial = 1
countrycode = 'BE' AND headofstate = 'Beatrix' AND language IN (SELECT T1.language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = 'Beatrix') AND isofficial = 1
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.indepyear < 1930 {}
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 {}
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population ASC LIMIT 1) AND code = 'ASIA'
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population ASC LIMIT 1) AND continent = 'Asia'
countrycode = 'None' EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
countrycode = 'None' Union select countrycode FROM countrylanguage WHERE language != 'English'
countrycode = (SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English')
SELECT T1.code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' EXCEPT SELECT countrycode FROM countrylanguage WHERE governmentform = 'Republic')
countrycode = 'Non-R republic' & ~countrylanguage.Language == 'English'
country1 = countrycode('Europe') country2 = countrycode('United States') country3 = countrycode('Canada') country4 = countrycode('Australia') country5 = countrycode('New Zealand') countrylanguage1 = countrylanguage('Europe', 'English') countrylanguage2 = countrylanguage('United States', 'English') countrylanguage3 = countrylanguage('Canada', 'English') countrylanguage4 = countrylanguage('Australia', 'English') countrylanguage5 = countrylanguage('New Zealand', 'English') intersection = countrylanguage1.union(countrylanguage2).intersect(countrylanguage3).intersect(countrylanguage4).intersect(countrylanguage5) result = [t1.name for t1 in result if t1.countrycode in (country1 , country2) and t1.language != 'English' ]
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.language = "Chinese" GROUP BY T1.name
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Chinese'
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
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = "North America" AND population > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = "Noth America" AND surfacearea > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY avg(T2.percentage) DESC LIMIT 1
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage = (SELECT max(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code HAVING sum(T2.percentage) > 50
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code HAVING sum(T2.percentage) >= 50
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality <> 'USA' {}
SELECT Name FROM conductor WHERE Nationality <> 'USA'
ortcha_company_desc = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDRY DESC)
orchestras.sort_by_year_of_founded()
If """"CD"""" or """"DVD"""" are not present in the record_company field, then the count will be 0. Otherwise, it will be 1.
Highschooler.id = 1 AND name = "Kyle"
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM likes WHERE student_id = 1 INTERSECT SELECT friend_id FROM likes WHERE student_id = 2)
SELECT name FROM highschooler WHERE grade >= 10
SELECT name FROM Highschooler WHERE grade = 10
ID: 1
SELECT id FROM highschooler WHERE name = 'Kyle'
9 Highschooler ID 10 Highschooler ID
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING grade > 12
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
Friend.student_id = highschooler.id AND highschooler.name = 'Kyle'
Highschooler[name] LIKE '%Kyle%' OR friend_id IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle'))
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) > 0)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T3 AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'IN' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T3 AS T2 ON T1.professional_id = T2.professional_id JOIN T4 AS T5 ON T2.professional_id = T5.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 {}
import re from collections import Counter state = 'IN' treatments_count = len(treatments) > 2 professional_ids = [professional_id] * 300 + [professional_id] * 500 + [professional_id] * 700 + [professional_id] * 1000 + [professional_id] * 1500 + [professional_id] * 2000 + [professional_id] * 2500 + [professional_id] * 3000 for professional_id in professional_ids: if state == 'IN': print(f'Professional ID: {professional_id} | Last Name: {owners.last_name} | Cell Phone: {owners.cell_number}') if treatments_count > 2: print('More than two treatments found!')
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000 GROUP BY T1.dog_id HAVING count(*) > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.first_name HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
owners = (SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia') name = (SELECT T3.name FROM dogs AS T3 JOIN owners AS T4 ON T3.owner_id = T4.owner_id JOIN owners AS T5 ON T4.owner_id = T5.owner_id WHERE T5.state = 'Virginia')
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
{ "sql": "SELECT email_address FROM professionals WHERE state = \"Hawaii\" OR state = \"Wisconsin\""} {"email_address": ["john.doe@example.com", "jane.smith@example.com"]}
SELECT email_address FROM professionals WHERE state LIKE "Hawaii" OR state LIKE "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year BETWEEN 1948 AND 1949
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship;
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT DISTINCT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
before_1945 = (SELECT Citizenship FROM singer WHERE Birth_Year < 1945) after_1955 = (SELECT Citizenship FROM singer WHERE Birth_Year > 1955)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "House" UNION SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "Apartment")
