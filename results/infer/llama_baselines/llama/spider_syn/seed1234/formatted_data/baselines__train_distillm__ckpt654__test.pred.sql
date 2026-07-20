SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, nationality, age FROM singer ORDER BY age DESC
SELECT name, nationality, age FROM singer ORDER BY age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.age
SELECT T2.Name, T2.song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT T2.Country, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT count(*), T1.Name FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN stadium AS T3 ON T3.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.name, T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT T2.Location, T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year > 2013 GROUP BY T2.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT name FROM stadium WHERE name = 'null'
SELECT Name FROM stadium WHERE Stadium_ID = "null"
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.theme, count(*), T1.name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.concert_ID GROUP BY T1.name
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.song_Name LIKE '%Hey%'
SELECT T1.name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT max(weight) FROM Pets WHERE pet_type = 'Puppy' AND pet_age = (SELECT min(age) FROM Pets WHERE pet_type = 'Puppy')
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy' AND pet_age = (SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy' )
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Student WHERE age > 20 AND StuID IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(*) FROM Student WHERE sex = 'F' AND has_pet = 'Puppy'
SELECT count(DISTINCT pet_type) FROM Pets WHERE pet_type = 'domestic'
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten" OR T2.pettype = "Puppy"
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten" OR T2.pettype = "Puppy"
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname LIKE '%kitten%' INTERSECT SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname LIKE '%puppy%'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fname, T1.lname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid!= "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Puppy' EXCEPT SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "dog" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "kitten"
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, min(weight) FROM Pets GROUP BY pet_type
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT StuID, weight FROM Pets WHERE pet_age > 1
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT pettype, avg(weight) FROM Pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age >= 18
SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.fname, T1.lname HAVING count(*) > 1
SELECT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.fname, T1.lname HAVING count(*) > 1
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent, T1.ContinentName, count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continents GROUP BY T1.Continent
SELECT T1.Continent, T1.Id, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continents = T2.Continents GROUP BY T1.Id
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T2.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T2.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.year = 1970
SELECT T1.make, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T1.year ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.year > 1980
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.year > 1980
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country JOIN model_list AS T3 ON T2.id = T3_maker WHERE T3.make = (SELECT make FROM car_makers GROUP BY make ORDER BY count(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.FullName, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT T1.id, T1fullname, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT max(Accelerate) FROM cars_data WHERE make = "amc hornet sportabout (sw)"
SELECT sum(Accelerate) FROM cars_data WHERE make = "AMC" AND model = "Hornet Sportabout (SW)"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(mpg) FROM cars_data WHERE Cylinders = 4
SELECT avg(Edispl) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 4
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Cylinders = 8 AND T2.year = 1974
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T2.Maker, T2.Model FROM car_makers AS T2 JOIN model_list AS T1 ON T2.Id = T1.Maker
SELECT T2.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.makeid GROUP BY T1.id HAVING count(*) >= 1
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower), T2.FullName FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid GROUP BY T2.FullName HAVING count(*) = 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T1.Cylinders = 3 GROUP BY T2.Maker
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year < 1980
SELECT avg(Edispl) FROM car_names WHERE make = 'Volvo'
SELECT avg(Edispl) FROM car_names WHERE make = 'Volkswagen'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Maker ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName LIKE '%American Motor Company%'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.name = 'American Motor Company'
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.type FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.FullName LIKE '%General Motors%' AND T2.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Model >= 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Accelerate) FROM cars_data
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid ORDER BY T1.accelerate LIMIT 1
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T2.maker = 'Volvo' ORDER BY T1.accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(power) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.makeid, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.cylinders <= 3
SELECT Id, fullname FROM car_makers EXCEPT SELECT id, fullname FROM car_makers WHERE horsepower < (SELECT min(horsepower) FROM cars_data) AND cylinders < 4
SELECT max(T1.MPG), T2.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year < 1980 AND T1.cylinders = 8
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T1.weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.maker = "Ford"
SELECT DISTINCT model FROM car_names WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.Maker = "Ford"
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'null'
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make GROUP BY T1.maker HAVING count(*) >= 3
SELECT T1.id, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN model_list AS T3 ON T2.id = T3.make JOIN cars_data AS T4 ON T3.id = T4.makeid WHERE T4.Model = 'fiat' GROUP BY T1.countryname HAVING count(*) > 3
SELECT T1.Id, T1.Name FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker >= 3 UNION SELECT T1.Id, T1.Name FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'Fiat'
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT T1.Airwayname, T1.Abbrev FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportAbbrev = T2.AirportAbbrev WHERE T2.Country = "USA"
SELECT T1.Airwayname, T1.Airportname FROM airways AS T1 JOIN airports AS T2 ON T1.Airportcode = T2.Airportcode WHERE T2.country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Anthony"
SELECT count(*) FROM airlines
SELECT sum(T1.Average(T2.AverageDistance)) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Abbrev FROM airlines WHERE abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM (SELECT count(*) FROM airports WHERE country = 'USA')
SELECT T1.city, T1.countryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton"
SELECT T1.city, T1.countryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = "United States" AND T2.airline = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE Country = "United Kingdom" AND City = "Aberdeen"
SELECT AirportName FROM airports WHERE CountryAbbrev = "UK" INTERSECT SELECT AirportName FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "Terminal ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = "ABR"
SELECT count(*) FROM flights WHERE destairport = 'Ashley' AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'United'
SELECT count(*) FROM flights WHERE sourceairport = 'ABR' AND airline = 'United'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.Town FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.Town ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airwayid, T1.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airwayid ORDER BY count(*) LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = T1.AirportCode GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T3.AirportCode = T1.AirportCode WHERE T3.CountryAbbrev = 'APG' INTERSECT SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport JOIN airports AS T3 ON T3.AirportCode = T1.AirportCode WHERE T3.CountryAbbrev = 'CVO'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.Airline WHERE T1.country = "USA" INTERSECT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.Airline WHERE T1.country = "Australia" INTERSECT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.Airline WHERE T1.country = "South Africa"
SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode!= "APG" AND T2.SourceAirport = "CVO"
SELECT T1.Airwayid FROM airways AS T1 JOIN flights AS T2 ON T1.Airwayid = T2.Airwayid GROUP BY T1.Airwayid HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airwayid FROM airways AS T1 JOIN flights AS T2 ON T1.Airwayid = T2.Airwayid GROUP BY T1.Airwayid HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbrev = "United Airlines"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "United"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "USA" AND T2.countryabbrev = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = 'USA' AND T1.SourceAirport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.countryAbbrev = 'AP'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "UK" AND T1.SourceAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "UK" AND T1.SourceAirport = "Aberdeen"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT DISTINCT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age ASC
SELECT count(*), city FROM employee GROUP BY city
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT DISTINCT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T2.name, T2.District FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.employee_id GROUP BY T2.District ORDER BY T1.Number_products DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id WHERE T2.is_full_time = 'N' GROUP BY T1.name ORDER BY T1.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name, count(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id
SELECT T2.name, count(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id
SELECT sum(T2.premium) FROM evaluation AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id
SELECT sum(bonus) FROM evaluation WHERE YEAR_awarded > = '2019'
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM shop WHERE Number_products > 10000
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM market WHERE Number_goods > 10000
SELECT count(DISTINCT LOCATION FROM shop)
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT T1.template_id, T1.template_details, T2.template_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT document_id, template_id, document_name, document_description FROM Documents
SELECT T1.Document_name, T2.Template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT T1.Document_name, T2.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_description LIKE '%w%'
SELECT T1.document_id, T1.template_id, T2.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details = "Robbin CV"
SELECT T1.paper_id, T1.layout_id, T1.document_name, T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT document_type_code) FROM templates
SELECT count(DISTINCT template_type_code) FROM documents
SELECT count(*) FROM Documents WHERE Template_Type_Code = 'PPT'
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.template_type_code = "PPT"
SELECT T1.template_id, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id
SELECT template_type_code, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates GROUP BY Template_Type_Code
SELECT T1.Template_ID, T1.Version_Number, T2.Template_type_description FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id, T1.template_type_code, T2.template_details FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT count(*) FROM Ref_template_types WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE Template_type_code = "CV"
SELECT template_type_code, template_details FROM Templates WHERE template_details > 5
SELECT template_type_code, template_details FROM Templates WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code > 5)
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_description FROM Ref_template_types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT min(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT template_type_code FROM Templates WHERE template_details LIKE "%Data base%"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Database"
SELECT document_name FROM Documents WHERE template_type_code = "BK"
SELECT t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id WHERE t3.template_type_code = "BK"
SELECT template_type_code, count(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Documents GROUP BY template_type_code
SELECT t1.template_type_code FROM Ref_template_types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM paragraphs WHERE document_id IN (SELECT document_id FROM paragraphs)
SELECT template_type_description FROM Ref_template_types EXCEPT SELECT template_type_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT T1.template_type_description, T2.template_details FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "AD"
SELECT t1.template_type_description FROM Ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id WHERE t1.template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id WHERE T2.document_name LIKE '%layout%'
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT Template_ID FROM Ref_Template_Types WHERE Template_type_description = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Document_name = 'Summer Show'
SELECT T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = "Korea"
SELECT T1.Paragraph_id, T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T2.Paragraph_id, T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT T2.document_id, count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY T2.document_id
SELECT T2.Document_id, count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.Document_id ORDER BY T2.Document_id
SELECT T1.document_id, T1.document_name, count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id, T1.template_type_code, count(*) FROM Ref_templates AS T1 JOIN paragraphs AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT T1.template_id FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_details FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_code = T2.document_id GROUP BY T1.template_code ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' OR paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM course
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, count(*) FROM teacher GROUP BY Hometown
SELECT Hometown, count(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = "Math"
SELECT Name FROM teacher WHERE Name LIKE "%math%"
SELECT T2.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_OF_membership > 4 ORDER BY LEVEL_OF_membership
SELECT avg(age) FROM visitor WHERE LEVEL_OF_membership <= 4
SELECT name, LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE open_year > 2010 AND num_of_staff (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010) > (SELECT num_of_staff FROM museum)
SELECT T1.ID, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1
SELECT avg(T1.Num_of_Ticket), max(T1.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T1.name FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.visitor_id WHERE T2.open_year < 2009 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.visitor_id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches GROUP BY loser_id, winner_id
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches WHERE winner_id IN (SELECT winner_id FROM matches GROUP BY winner_id HAVING count(*) > 1)
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.winner_rank ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id JOIN matches AS T3 ON T1.winner_id = T3.player_id GROUP BY T2.loser_name, T2.winner_name ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.first_name, T1.last_name, avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, T1.player_id, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT sum(T1.ranking), T2.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT sum(T1.minutes), T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num GROUP BY T2.ranking
SELECT YEAR, count(*) FROM matches GROUP BY YEAR
SELECT year, count(*) FROM matches GROUP BY year
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.loser_hand = "left" AND T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_hand = T2.hand WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT T1.first_name, T1.last_name, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT hand, count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(caused_by_ship_id), min(caused_by_ship_id) FROM death GROUP BY caused_by_ship_id
SELECT avg(injured) FROM death
SELECT T1.tonnage, T1.caused_by_ship_id, T2.note FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT id, name FROM ship WHERE ship_type = 'Brig' AND lost_in_battle NOT IN (SELECT caused_by_ship_id FROM death)
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, T1.id FROM death AS T1 JOIN ship AS T2 ON T1.id = T2.id GROUP BY T1.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage!= '225'
SELECT T1.name, T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T1.id = T3.id WHERE T3.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T1.id = T3.id WHERE T3.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' AND T2.name NOT IN (SELECT T3.name FROM ship AS T3 JOIN battle AS T4 ON T3.id = T4.lost_in_battle WHERE T4.location = 'English Channel')
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.location LIKE '%East%'
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN current_address AS T2 ON T1.address_id = T2.address_id
SELECT line_1, line_2 FROM Addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name LIKE "%math%"
SELECT course_description FROM Courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port"
SELECT T2.department_name, T1.degree_program_id FROM Degree_Programs AS T1 JOIN Sections AS T2 ON T1.department_id = T2.department_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name, count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_name) FROM Degree_Programs
SELECT count(DISTINCT department_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T1.degree_summary_name = "Engineering"
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Departments AS T4 ON T3.department_id = T4.department_id
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Departments AS T4 ON T3.department_id = T4.department_id
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_description FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.department_description FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.course_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.degree_program_id HAVING count(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_id, T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, count(*), T4.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name, T1.last_name, T1.student_id, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id WHERE T2.student_enrolment_id = "null"
SELECT T1.department_name FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id WHERE T2.student_enrolment_id = "null"
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Students AS T3 ON T2.student_enrolment_id = T3.student_id GROUP BY T1.course_name
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Students AS T3 ON T2.student_enrolment_id = T3.student_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT DISTINCT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North" EXCEPT SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id JOIN Student_Enrolment AS T3 ON T2.student_id = T3.student_id
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs ORDER BY degree_summary_name ASC LIMIT 1)
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_course_id ORDER BY T2.transcript_date LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id!= current_address_id
SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.first_name!= T2.first_name AND T1.last_name!= T2.first_name
SELECT T1.address_id, T1.address_line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM Students GROUP BY date_first_registered
SELECT avg(date_first_registered) FROM Students
SELECT T1.date_first_registered, T2.other_details FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT count(*), T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id, count(*) FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Bachelor"
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T2.degree_summary_name = "Masters" INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T2.degree_summary_name = "Bachelors"
SELECT count(DISTINCT address_id) FROM Addresses
SELECT DISTINCT T1.city, T1.state_province_county FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY other_student_details
SELECT * FROM Students ORDER BY first_name ASC, last_name ASC
SELECT section_name FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name, last_name FROM students WHERE country = "Haiti" OR cell_mobile_number = 09700166582
SELECT first_name, last_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon AS T1 JOIN Written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuhr"
SELECT Directed_by, Title FROM Cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT T2.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Brandon Vietti"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State, count(*) FROM TV_channel AS T1 JOIN country AS T2 ON T1.country = T2.country GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content) FROM TV_channel
SELECT count(DISTINCT series_name, content FROM TV_channel)
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT T1.Package_Option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language, count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language, count(*) FROM TV_channel GROUP BY Language
SELECT count(*), Language FROM TV_channel GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.title = T2.title WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.Series_name = "Sky Radio"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel_name WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.id, T1.series_name FROM TV_series AS T1 JOIN Channel AS T2 ON T1.id = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T2_production, T2.channel FROM cartoon ORDER BY T2.Recently_air_date DESC LIMIT 1
SELECT T1.Package_Option, T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'HD'
SELECT T2.Package_Option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'HD'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT T2.State FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1_written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Channel != "Not playing any animation written by Todd Casey"
SELECT DISTINCT state FROM cartoon EXCEPT SELECT Written_by FROM cartoon WHERE Written_by = "Todd Casey"
SELECT T2.series_name, T2.State FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.State FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.directed_by WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.directed_by WHERE T2.directed_by = "Michael Chang"
SELECT T2 Pixel_aspect_ratio_PAR, T2.Country FROM TV_channel AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Language!= "english"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language!= "english"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE Channel = "No" OR Channel = "No animation" EXCEPT SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T2.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.Package_Option FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by!= "Ben Jones"
SELECT package_option FROM TV_channel WHERE channel!= (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player WHERE Game_Type_ = "Car"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE Game = "Car"
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T2.Best_Finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT Name FROM people WHERE Nationality = "car"
SELECT Name FROM people WHERE Nationality = "Car"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT Name FROM people ORDER BY Earnings ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Car Gamer"
SELECT Name FROM people WHERE Nationality!= "Gamer"
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = "CA"
SELECT DISTINCT contestant_name FROM contestants WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM VOTES WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT DISTINCT Name FROM country WHERE DepYear > 1950
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "República"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.Continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "AR" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AR" ORDER BY Percentage DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Region, COUNT(*) FROM city WHERE CountryCode = "Angola" GROUP BY Region
SELECT Region, COUNT(*) FROM city WHERE CountryCode = "Angola" GROUP BY Region
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Central"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnp) FROM country WHERE region = 'Asia'
SELECT max(GNPOld FROM country WHERE Continent = 'Asia'), (SELECT Population FROM city WHERE Region = 'Asia')
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = "Repubic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" OR T1.Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "Territory" GROUP BY T2.District
SELECT avg(GNP), count(*) FROM country WHERE countryCode = 'USA' GROUP BY country.code
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(*) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = "Africa")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Percentage ORDER BY Percentage DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Percentage ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "English"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "French" INTERSECT SELECT Name FROM country WHERE Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes'
SELECT Name FROM countrylanguage WHERE IsOfficial = 'English' INTERSECT SELECT Name FROM country WHERE Language = 'French'
SELECT count(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT DISTINCT region FROM country WHERE language = "english" OR language = "dutch"
SELECT DISTINCT Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT DISTINCT CountryName FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Yes' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republik" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T2.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT District FROM city WHERE Language = "english" GROUP BY District ORDER BY Population DESC LIMIT 1
SELECT name FROM city WHERE language = 'english' GROUP BY district ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "english")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.DependencyYear < 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'USA' AND YEAR < 1930
SELECT DISTINCT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT Code FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT DISTINCT country FROM country WHERE Population < (SELECT max(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')
SELECT CountryCode FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')
SELECT DISTINCT region FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT Name FROM country WHERE Language!= "english"
SELECT Code FROM country WHERE Language!= "English"
SELECT DISTINCT countryCode FROM countrylanguage WHERE language!= "english"
SELECT DISTINCT t3.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN language AS t3 ON t2.language = t3.code WHERE t1.name!= "United States"
SELECT Name FROM country WHERE Language!= "English" EXCEPT SELECT Code FROM country WHERE GovernmentForm = "Republic"
SELECT Code FROM country WHERE Language!= "English" EXCEPT SELECT GovernmentForm FROM country WHERE GovernmentForm = "Republic"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" AND T2.IsOfficial = 0
SELECT Name FROM city WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language!= "english") AND Continent = "Europe"
SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "China" AND t2.IsOfficial = 1 INTERSECT SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Asia" AND t2.IsOfficial = 1
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" AND T2.Language = "Chinese"
SELECT name, foundedyear, territory FROM country ORDER BY population ASC LIMIT 1
SELECT country, founded, region FROM country ORDER BY Population ASC LIMIT 1
SELECT T1.Population, T1.Name, T1.HeadOfState FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode GROUP BY T1.Name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT GovernmentForm, COUNT(*) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT governmentform, count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING avg(LifeExpectancy) > 72
SELECT avg(LifeExpectancy), count(*) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT continent, sum(population), avg(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT Region FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT sum(Population), avg(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT sum(population), avg(LifeExpectancy) FROM country WHERE continent = 'North America' AND surfacearea > 3000 GROUP BY countrycode
SELECT DISTINCT name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT T1.Language, T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT T1.Conductor_ID, T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY sum(YEAR_OF_WORK) DESC LIMIT 1
SELECT T2.Name, T3.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_work > 2008
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work > 2008
SELECT count(*), T1.Name FROM conductor AS T1 JOIN show AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT count(*), T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT T1.Share FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name HAVING count(*) = 0
SELECT ensemble FROM conductor EXCEPT SELECT DISTINCT ensemble FROM performance GROUP BY ensemble HAVING count(*) > 1
SELECT * FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT * FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_Founded > 2003
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = "CD" OR T2.record_company = "DVD"
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = "CD" OR T2.record_company = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.year_of_work HAVING count(*) > 1
SELECT T1.Year_of_Work FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT DISTINCT name FROM Highschooler WHERE grade = 10
SELECT DISTINCT name FROM Highschooler WHERE grade = 10
SELECT student_id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), grade FROM Highschooler GROUP BY grade
SELECT grade, count(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(DISTINCT T1.name), T2.student_id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.friend_id GROUP BY T2.student_id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT DISTINCT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id INTERSECT SELECT DISTINCT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id
SELECT student_id FROM likes INTERSECT SELECT student_id FROM Friend
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT count(*), T1.id FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*), student_id FROM Likes GROUP BY student_id
SELECT T2.name, COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id HAVING count(*) >= 2
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT DISTINCT grade FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.state = T2.state WHERE T1.role_code = 'guardian' INTERSECT SELECT T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.state = T2.state WHERE T1.role_code = 'veterinarian'
SELECT state FROM professionals INTERSECT SELECT state FROM professionals INTERSECT Owners
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(age) FROM Dogs WHERE date_departed < date_of_adopted AND breed_code = 'dog'
SELECT T1.id, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T1.role_code = "Veterinarian" GROUP BY T1.id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" GROUP BY T1.id HAVING count(*) > 2 UNION SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments AS T1 JOIN charges AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_amount > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_type_code = T3.charge_type WHERE T3.charge_amount > 1000
SELECT DISTINCT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "Veterinarian" EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T1.owner_id = T3.owner_id WHERE T3.name = "Dog"
SELECT first_name FROM Professionals WHERE role_code = 'Veterinarian' EXCEPT SELECT name FROM Dogs WHERE name = 'Dog'
SELECT professional_id, role_code, email_address FROM Professionals WHERE role_code!= "Veterinarian" AND professional_id NOT IN (SELECT professional_id FROM Treatments WHERE treatment_type_code = "Medical")
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = ""
SELECT T1.first_name, T1.last_name, T1.first_name ||'' || T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T2.treatment_type_code = T3.treatment_type_code GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T1.professional_id = T3.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.treatment_type_code = T2.charge_type GROUP BY T1.treatment_type_code ORDER BY sum(T2.charge_amount) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id ORDER BY T2.cost_of_treatment LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.treatment_type_code = T3.charge_type WHERE T3.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Charges)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.dog_id = T3.owner_id WHERE T3.first_name = 'Veterinarian'
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_amount, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = "Male"
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name = "guardian" INTERSECT SELECT T1.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN Treatment_Types AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" UNION SELECT email_address FROM Professionals WHERE state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs WHERE breed_code = "Puppy"
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = 'Veterinarian' AND T1.breed_code = 'Puppy'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'healthcare'
SELECT count(DISTINCT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy" GROUP BY T1.first_name, T1.last_name
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Puppy"
SELECT T1.role, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.email_address = T2.email_address WHERE T1.city LIKE '%West%'
SELECT role, street, town, state FROM Professionals WHERE town LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(date_of_birth) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(T1.charge_amount) FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id
SELECT count(*) FROM Dogs WHERE date_departed NOT IN ( SELECT date_treatment FROM Treatments )
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT count(*) FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM Dogs WHERE breed_code = "Puppy" )
SELECT count(*) FROM dogs WHERE breed_code NOT IN ( SELECT breed_code FROM dogs WHERE date_arrived LIKE "%puppy%" )
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "puppy" AND T1.role_code = "veterinarian" GROUP BY T1.role_code HAVING count(*) = 0;
SELECT count(*) FROM Professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE breed_code = "Puppy"
SELECT avg(age) FROM Dogs WHERE breed_code = "Puppy"
SELECT max(age) FROM Dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM Dogs WHERE gender = "Puppy"
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T1.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id GROUP BY T1.first_name, T1.last_name
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT T1.Birth_Year, T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Birth_Year, T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Country, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT T2.Name, T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Sales, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T1.feature_type_name FROM Ref_Property_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.property_type_code = T2.feature_type_code WHERE T1.feature_type_name = "AirCon"
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1
