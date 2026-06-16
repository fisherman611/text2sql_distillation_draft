SELECT count(*) FROM singer WHERE Is_male = 'No';
SELECT count(*) FROM singer;
SELECT Name , Country , Age FROM singer WHERE Is_male = 'No' ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC;
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE Country = "France";
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France";
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT Song_name , Song_release_year FROM singer WHERE Age = (SELECT min(Age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country;
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer) AND Is_male = 'No';
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Position, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000;
SELECT Location , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000;
SELECT avg(Capacity) , max(Capacity) FROM stadium;
SELECT avg(Capacity) , max(Capacity) FROM stadium;
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.Name , COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T1.Stadium_ID , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Stadium_ID
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT Highest FROM stadium GROUP BY Highest ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014);
SELECT T1.concert_Name , T1.theme , (SELECT count(*) FROM singer_in_concert AS T2 WHERE T2.concert_ID = T1.concert_ID ) FROM concert AS T1
SELECT T1.concert_Name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
SELECT DISTINCT T1.concert_Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_ID = T3.singer_ID WHERE T1.year = 2014;
SELECT DISTINCT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%';
SELECT DISTINCT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT DISTINCT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.address FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.address FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT weight FROM pets WHERE pet_type = 'puppy' AND pet_age = ( SELECT min(age) FROM student WHERE sex = 'F' )
SELECT weight FROM pets WHERE pet_type = 'puppy' AND pet_age = (SELECT min(age) FROM student WHERE sex = 'F') LIMIT 1
SELECT pet_type , max(weight) FROM pets GROUP BY pet_type;
SELECT T1.pet_type , max(T1.weight) , T2.city_code FROM Pets AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.pet_type;
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = "F") AND PetType = " puppy ";
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE sex = 'F');
SELECT count(DISTINCT pet_type) FROM pets;
SELECT count(DISTINCT pet_type) FROM pets;
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age < 2 OR T3.pet_age > 10;
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'cat' OR T3.pet_type = 'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy'
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "kitten"));
SELECT T1.Fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "dog" EXCEPT SELECT T1.Fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "dog" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "kitten"
SELECT PetType , weight FROM pets ORDER BY pet_age LIMIT 1;
SELECT pet_age , weight FROM pets WHERE pet_age = ( SELECT min(pet_age) FROM pets )
SELECT T1.pet_age , T1.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.pet_id = T2.pet_id WHERE T2.pet_age > 1
SELECT T1.pet_age , T1.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.pet_age > 1;
SELECT pet_type , avg(pet_age) , max(pet_age) FROM pets GROUP BY pet_type;
SELECT pet_type , avg(pet_age) , max(pet_age) FROM pets GROUP BY pet_type;
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType;
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType;
SELECT T1.Fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID;
SELECT DISTINCT T1.Fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid;
SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT petid FROM has_pet WHERE StuID IN (SELECT StuID FROM Student WHERE lname = 'Smith');
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID;
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
SELECT fname , sex FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1);
SELECT Student.LName FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Pets.pet_age = 3;
SELECT Student.LName FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Pets.pet_age = 3;
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet);
SELECT count(*) FROM continents;
SELECT count(*) FROM continents;
SELECT T1.Continent , T1.Continents , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Continent GROUP BY T1.Contid;
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId;
SELECT count(*) FROM countries;
SELECT count(*) FROM countries;
SELECT car_makers.fullname , car_makers.id , count(model_list.modelid) FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id;
SELECT car_makers.fullname , car_makers.id , count(model_list.Maker) FROM car_makers JOIN model_list ON car_makers.id = model_list.Maker GROUP BY car_makers.id;
SELECT MakeId , model FROM car_names JOIN cars_data ON car_names.makeid = cars_data.id ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM model_list ORDER BY model ASC LIMIT 1
SELECT maker FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM car_names WHERE cars_data.weight < (SELECT avg(weight) FROM cars_data)
SELECT car_makers.FullName FROM car_makers JOIN cars_data ON car_makers.Id = cars_data.Id WHERE cars_data.Year = 1970;
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT T1.Make, T1.Yearly FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id JOIN model_list AS T3 ON T2.Maker = T3.Id WHERE T2.Year = (SELECT min(Yearly) FROM cars_data) GROUP BY T2.Maker;
SELECT car_makers.Maker , cars_data.Year FROM car_makers JOIN cars_data ON car_makers.Id = cars_data.Id ORDER BY cars_data.Year ASC LIMIT 1;
SELECT DISTINCT model FROM model_list WHERE maker NOT IN (SELECT maker FROM car_makers WHERE country NOT IN (SELECT countryid FROM countries WHERE continent = 'Americas')) INTERSECT SELECT model FROM car_names WHERE makeid NOT IN (SELECT makeid FROM cars_data WHERE YEAR > 1980)
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.Year > 1980
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.ContId;
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id;
SELECT count(*) , car_makers.id , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id;
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout (sw)");
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout (sw)");
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(DISTINCT car_makers.Id) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryName WHERE countries.Continent = 'Europe';
SELECT count(DISTINCT model) FROM model_list WHERE maker IN (SELECT id FROM car_makers WHERE country = "USA")
SELECT count(*) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = "Americas";
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974;
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEar = 1974;
SELECT FullName , Model FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker
SELECT FullName , Model FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker;
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(Weight) FROM cars_data GROUP BY YEAR;
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country HAVING count(*) >= 3 INTERSECT SELECT countryname FROM countries WHERE continent = 'Europe'
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country HAVING count(*) >= 3 INTERSECT SELECT CountryName FROM countries WHERE Continent = 'Europe'
SELECT max(Horsepower) , car_makers.Maker FROM cars_data JOIN car_makers ON cars_data.Id = car_makers.Id WHERE cars_data.Cylinders = 3 GROUP BY car_makers.Maker;
SELECT max(Horsepower) , car_makers maker FROM cars_data JOIN car_makers ON cars_data.Id = car_makers.Id WHERE cars_data.Cylinders = 3 GROUP BY car_makers;
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1;
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Model = "volvo")
SELECT avg(Edispl) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names INTERSECT SELECT MakeId FROM model_list WHERE Maker = "Volvo")
SELECT Accelerate , Cylinders FROM cars_data GROUP BY Cylinders ORDER BY Accelerate DESC;
SELECT max(accelerate) FROM cars_data;
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT Maker , Model FROM model_list GROUP BY Maker , Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4;
SELECT count(*) FROM cars_data WHERE Cylinders > 4;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(DISTINCT model) FROM model_list WHERE maker = (SELECT id FROM car_makers WHERE fullname = "American Motor Company")
SELECT count(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = 'American Motor Company')
SELECT car_makers.fullname , car_makers.id FROM car_makers JOIN model_list ON car_makers.id = model_list.Maker GROUP BY car_makers.id HAVING count(*) > 3;
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2maker JOIN cars_data AS T3 ON T3.id = T4makeid WHERE T1.fullname = "General Motors" OR T3.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id JOIN car_makers AS T3 ON T1maker = T3.id WHERE T3 maker = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight > 3000
SELECT MPG FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT max(accelerate) FROM cars_data;
SELECT Cylinders FROM cars_data WHERE MakeId = (SELECT MakeId FROM cars_data ORDER BY Accelerate LIMIT 1)
SELECT Cylinders FROM cars_data WHERE MakeId IN (SELECT MakeId FROM cars_data ORDER BY Accelerate LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY power DESC LIMIT 1);
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT COUNT(DISTINCT car_makers.Country) FROM car_makers WHERE car_makers.Country IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2);
SELECT count(*) FROM (SELECT * FROM car_makers GROUP BY Country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6;
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT car_names.MakeId , car_names.Make FROM car_names JOIN cars_data ON cars_data.Id = car_names.MakeId WHERE cars_data.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND cars_data.Cylinders > 3;
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Cylinders < 4 AND T2.Horsepower < (SELECT min(Horsepower) FROM cars_data)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980;
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT model FROM car_names WHERE makeid NOT IN (SELECT id FROM car_makers WHERE country = 'Ford Motor Company')
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.Weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id JOIN car_makers AS T3 ON T2.Id = T3.Id WHERE T3.Country = "United States"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT DISTINCT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT maker FROM car_makers WHERE id IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3)
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING count(*) > 3;
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE MakeId = (SELECT Id FROM car_makers WHERE FullName = 'Italy')
SELECT countryid , countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3 UNION SELECT country FROM car_makers WHERE fullname = 'Fiat') LIMIT 1000
SELECT Country FROM airlines WHERE Airline LIKE '%Airways%JetBlue Airways%'
SELECT Country FROM airlines WHERE Abbreviation = 'JET' UNION SELECT Country FROM airlines WHERE Abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airlines;
SELECT sum(FlightNo) FROM flights;
SELECT count(*) FROM airports;
SELECT count(*) FROM airports;
SELECT count(*) FROM flights;
SELECT count(*) FROM flights;
SELECT Abbreviation FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'USA';
SELECT count(*) FROM airlines WHERE Country = 'USA';
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton";
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE '%ATO%') AND DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE '%ATO%');
SELECT count(*) FROM flights WHERE DestAirport = "ATL";
SELECT count(*) FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = 'Aberdeen';
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City LIKE '%Aberdeen%');
SELECT count(*) FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen';
SELECT count(*) FROM flights JOIN airports AS source ON flights.SourceAirport = source.AirportCode JOIN airports AS destination ON flights.DestAirport = destination.AirportCode WHERE source.City = 'Aberdeen' AND destination.City = 'Ashley';
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE city = 'Aberdeen') AND destairport = (SELECT airportcode FROM airports WHERE city = 'Ashley');
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways';
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways';
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND DestAirport = 'ASY';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'ASY' AND flights.Airline = 'United Airlines';
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights WHERE Airline = 'United' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.CountryAbbrev = 'USA' AND airports.City = 'Aberdeen';
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = 'Aberdeen' AND flights.Airline = 'United';
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT SourceAirport , COUNT(*) FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1;
SELECT DestAirport , COUNT(*) FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1;
SELECT DestAirport , COUNT(*) FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Abbreviation , T1.CountryAbbrev FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY count(*) ASC LIMIT 1;
SELECT T1.AirportName , T1.CountryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT DestAirport FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT DestAirport FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT DestAirport FROM flights WHERE DestAirport = 'AHD';
SELECT DISTINCT DestAirport FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Helsinki Vantaa International Airport") UNION SELECT DISTINCT SourceAirport FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Helsinki Vantaa International Airport")
SELECT DISTINCT Airways FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO' UNION SELECT DISTINCT Airways FROM flights WHERE SourceAirport = 'CVO' AND DestAirport = 'APG'
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = 'APG' INTERSECT SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = 'CVO'
SELECT DISTINCT Airways FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT DISTINCT Airways FROM flights WHERE SourceAirport = "APG"
SELECT DestAirport FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "CVO") EXCEPT SELECT DestAirport FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT AirportCode FROM flights GROUP BY AirportCode HAVING COUNT(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT AirportCode FROM flights GROUP BY AirportCode HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG";
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = "APG";
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen ")
SELECT FlightNo FROM flights WHERE SourceAirport = "ABZ";
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT DestAirport FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.AirportName = "Aberdeen";
SELECT DISTINCT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') OR DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Abilene')
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen' OR airports.City = 'Abilene';
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT count(*) FROM employee;
SELECT count(*) FROM employee;
SELECT name FROM employee ORDER BY age ASC;
SELECT Name FROM employee ORDER BY Age ASC;
SELECT City, COUNT(*) FROM employee GROUP BY City;
SELECT City, COUNT(*) FROM employee GROUP BY City;
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1;
SELECT City, COUNT(*) FROM employee GROUP BY City;
SELECT City, COUNT(*) FROM employee GROUP BY City;
SELECT Manager_name , District FROM shop ORDER BY Number_products DESC LIMIT 1;
SELECT Name , District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT min(Number_products) , max(Number_products) FROM shop;
SELECT min(Number_products) , max(Number_products) FROM shop;
SELECT Name , District FROM shop ORDER BY Number_products DESC;
SELECT name , city , district FROM shop ORDER BY number_products DESC;
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop);
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop);
SELECT employee.Name FROM employee JOIN evaluation ON evaluation.Employee_ID = employee.Employee_ID GROUP BY employee.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT employee.Name FROM employee JOIN evaluation ON employee.Employee_ID = evaluation.Employee_ID ORDER BY evaluation.Bonus DESC LIMIT 1;
SELECT employee.Name FROM employee JOIN evaluation ON evaluation.Employee_ID = employee.Employee_ID ORDER BY evaluation.Bonus DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1);
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring);
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring);
SELECT T1.name , count(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T1.name , count(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id GROUP BY T1.shop_id
SELECT sum(Bonus) FROM evaluation;
SELECT sum(Bonus) FROM evaluation;
SELECT * FROM hiring;
SELECT * FROM hiring;
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000;
SELECT count(DISTINCT city) FROM employee;
SELECT count(DISTINCT city) FROM employee UNION SELECT count(DISTINCT district) FROM shop;
SELECT count(*) FROM Templates;
SELECT count(*) FROM Documents;
SELECT document_id, document_name, document_description FROM documents;
SELECT document_id, document_name, document_description FROM documents;
SELECT Document_Name , Template_ID FROM Documents WHERE Document_Description LIKE "%w%";
SELECT T1.document_name , T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Layout" UNION SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Paper" UNION SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Ref" UNION SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Other" UNION SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Index" UNION SELECT T1.document_id , T1.template_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Paper" AND T1.document_name = "Robbin CV"
SELECT T1.document_id , T1.template_id , T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_type_code) FROM templates;
SELECT count(DISTINCT Template_Type_Code) FROM Templates;
SELECT count(*) FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT');
SELECT T1.Template_ID , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT Template_ID , COUNT(*) FROM Templates GROUP BY Template_ID
SELECT T2.template_type_code , T1.template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T1.template_id = T3.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Template_Type_Code , T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T1.Template_ID = T3.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1;
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1;
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT template_id FROM documents)
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "Layout" EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM Ref_Template_Types;
SELECT count(*) FROM Templates;
SELECT T1.Template_ID , T1.Version_Number , T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code;
SELECT Templates.Template_ID , Templates.Version_Number , Ref_Template_Types.Template_Type_Description FROM Templates JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code;
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types;
SELECT Template_Type_Description FROM Ref_Template_Types;
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT";
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT";
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV";
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV";
SELECT Version_Number , Template_Details FROM Templates WHERE Version_Number > 5
SELECT Template_ID , Template_Type_Code FROM Templates WHERE Version_Number > 5;
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code;
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code;
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1)
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3;
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3);
SELECT Version_Number , Template_Type_Code FROM Templates ORDER BY Version_Number ASC LIMIT 1;
SELECT Version_Number , Template_Type_Code FROM Templates ORDER BY Version_Number ASC LIMIT 1;
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Data base";
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base";
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT Ref_Template_Types.Template_Type_Description , COUNT(Templates.Template_ID) FROM Ref_Template_Types JOIN Templates ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code GROUP BY Templates.Template_Type_Code;
SELECT T2.Template_Type_Description , count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code;
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates INTERSECT SELECT Template_Type_Code FROM Documents))
SELECT Template_Type_Description , Template_Details FROM Ref_Template_Types JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code;
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types;
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD";
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Description = "Book";
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book";
SELECT DISTINCT T2.Template_Type_Description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T1.Template_ID = T3.Template_ID
SELECT DISTINCT Other_Details FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types)) INTERSECT SELECT Other_Details FROM Paragraphs
SELECT Template_ID FROM Templates WHERE Template_Type_Code = (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT Template_ID FROM Templates WHERE Template_Type_Code = (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Presentation');
SELECT count(*) FROM Paragraphs;
SELECT count(*) FROM Paragraphs;
SELECT count(*) FROM paragraphs WHERE document_id = (SELECT document_id FROM documents WHERE document_name = 'Summer Show');
SELECT count(*) FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Summer Show');
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea';
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID , Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT document_id FROM Documents WHERE document_name = 'Welcome to NY');
SELECT Paragraphs.Paragraph_ID , Paragraphs.Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = "Welcome to NY";
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT document_id FROM Documents WHERE document_name = "Customer reviews")
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT document_id FROM Documents WHERE document_name = 'Customer reviews');
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id;
SELECT DISTINCT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id;
SELECT document_id , document_name , count(*) FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY document_id;
SELECT T1.document_id , T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT Documents.document_id , Documents.document_name FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY Documents.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.document_id , T1.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT Paragraph_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' OR Paragraph_Text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher;
SELECT count(*) FROM teacher;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2;
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT teacher.name , course_arrange.course_id FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id;
SELECT teacher.name , course.curriculum FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id;
SELECT T1.Name , T1.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID ORDER BY T1.Name
SELECT T1.Name , T1.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID 2.Name WHERE T1.Course_ID 2.Course_ID 2.Course 2."math"
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id WHERE course.course = 'math';
SELECT T1.Name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T.Name , COUNT(*) FROM teacher AS T JOIN course_arrange AS TA ON T.Teacher_ID = TA.Teacher_ID GROUP BY T.Teacher_ID
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id GROUP BY teacher.teacher_id HAVING count(DISTINCT course_id) >= 2;
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(DISTINCT T2.Course_ID) >= 2;
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE Age < 30
SELECT name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC;
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009;
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year < 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1;
SELECT T1.id , T1.name , T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.Total_spent) DESC LIMIT 1;
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit);
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit;
SELECT sum(Total_spent) FROM visit WHERE visitor_ID IN (SELECT ID FROM visitor WHERE Level_of_membership = 1);
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE museum_ID IN (SELECT museum_ID FROM museum WHERE open_year > 2010));
SELECT count(*) FROM museum WHERE open_year < 2008 OR open_year > 2013;
SELECT count(DISTINCT player_id) FROM rankings;
SELECT count(*) FROM players;
SELECT count(*) FROM matches;
SELECT count(*) FROM matches;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(winner_age) , avg(loser_age) FROM matches;
SELECT avg(loser_age) , avg(winner_age) FROM matches;
SELECT avg(winner_rank) FROM matches;
SELECT avg(winner_rank) FROM matches;
SELECT max(loser_rank) FROM matches;
SELECT max(loser_rank) FROM matches;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT COUNT(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10;
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016;
SELECT YEAR FROM matches WHERE YEAR = 2013 OR YEAR = 2016 GROUP BY YEAR;
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.winner_name , T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY max(T1.winner_age) LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id ¼ T2.winner_id WHERE T2.tourney_name ¼ 'Australian Open' AND T2.winner_rank_points ¼ (SELECT max(winner_rank_points) FROM matches WHERE tourney_name ¼ 'Australian Open') LIMIT 1;
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.ranking_points = ( SELECT max(ranking_points) FROM rankings ) AND T1.tourney_name = 'Australian Open' GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1;
SELECT winner_name , loser_name FROM matches ORDER BY tourney_date LIMIT 1;
SELECT avg(ranking_points) , players.first_name , players.last_name FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY players.player_id;
SELECT first_name , avg(ranking_points) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id;
SELECT sum(loser_rank_points) , first_name FROM matches JOIN players ON matches.loser_id = players.player_id GROUP BY matches.loser_id;
SELECT T1.first_name , sum(T1.loser_rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id
SELECT country_code , COUNT(*) FROM players GROUP BY country_code
SELECT country_code , COUNT(*) FROM players GROUP BY country_code;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) , ranking FROM rankings GROUP BY ranking
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR;
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3;
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_id IN (SELECT player_id FROM players WHERE hand = 'left') AND YEAR(tourney_date) = 1994;
SELECT count(*) FROM (SELECT DISTINCT winner_id FROM matches WHERE winner_hand = "left" INTERSECT SELECT player_id FROM rankings WHERE ranking_date = (SELECT max(ranking_date) FROM rankings))
SELECT T1.winner_name , T1.winner_rank_points , T1.winner_seed FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id GROUP BY T1.winner_id ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id GROUP BY T3.player_id ORDER BY sum(T3.ranking_points) DESC LIMIT 1
SELECT hand , COUNT(*) FROM players GROUP BY hand;
SELECT hand , COUNT(*) FROM players GROUP BY hand;
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured';
SELECT name , tonnage FROM ship ORDER BY name DESC;
SELECT name , date , result FROM battle
SELECT caused_by_ship_id , max(killed) , min(killed) FROM death GROUP BY caused_by_ship_id;
SELECT avg(injured) FROM death;
SELECT killed , injured FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't');
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig';
SELECT caused_by_ship_id , id FROM death GROUP BY caused_by_ship_id HAVING sum(killed) > 10
SELECT ship.id , ship.name FROM ship JOIN death ON ship.id = death.caused_by_ship_id GROUP BY ship.id ORDER BY sum(injured) DESC LIMIT 1;
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle;
SELECT count(*) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225);
SELECT T1.date , T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.date , T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel') AND id NOT IN (SELECT lost_in_battle FROM ship WHERE disposition_of_ship = 'Lost')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM Addresses;
SELECT line_1 , line_2 FROM Addresses;
SELECT count(*) FROM Degree_Programs;
SELECT count(*) FROM Degree_Programs;
SELECT course_description FROM Courses WHERE course_name = 'math';
SELECT course_description FROM Courses WHERE course_name LIKE '%math%';
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea';
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea";
SELECT T1.department_name , T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_id , T1.department_name FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT department_name) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(*) FROM Degree_Programs WHERE department_name = 'engineering';
SELECT count(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'engineering');
SELECT section_name , section_description FROM Sections;
SELECT section_name , section_description FROM Sections;
SELECT course_id , course_name FROM Courses GROUP BY course_id HAVING COUNT(*) <= 2;
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Undergraduate')) GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_id , T1.semester_name , T2.degree_program_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT department_description , other_details FROM Departments WHERE department_name LIKE '%computer%'
SELECT * FROM Departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(DISTINCT T2.degree_program_id) = 2;
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(DISTINCT T2.degree_program_id) = 2;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor';
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , COUNT(*) , T2.undergraduate_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , T2.student_enrolment_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_id HAVING count(*) = 0;
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id;
SELECT T1.degree_program_id , T1.department_id FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.department_id FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT T1.student_id , T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING COUNT(*) >= 2;
SELECT T1.student_id , T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(DISTINCT T2.course_id) >= 2;
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id;
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id;
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , T1.city , T1.zip_postcode , T1.state_province_county , T1.country FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(transcript_date) FROM Transcripts;
SELECT avg(date_first_registered) FROM Students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT transcript_date , other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1;
SELECT count(*) FROM Students WHERE date_left IS NOT NULL;
SELECT count(*) FROM Students;
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1;
SELECT max(date_first_registered) FROM Students;
SELECT other_details , student_course_id FROM Student_Enrolment_Courses GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT course_id , student_enrolment_id FROM Student_Enrolment_Courses GROUP BY course_id , student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.student_id , T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Bachelor' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Master'
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT T1.city FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id;
SELECT first_name, middle_name, last_name FROM Students ORDER BY first_name DESC;
SELECT other_student_details FROM Students ORDER BY last_name DESC;
SELECT other_details FROM Sections WHERE section_id = 'h';
SELECT section_description FROM Sections WHERE section_name = 'h';
SELECT first_name , last_name FROM Students WHERE permanent_address_id -> Addresses.address_id AND country = 'Haiti' OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title;
SELECT Title FROM Cartoon ORDER BY Title
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT Title , Directed_by FROM Cartoon ORDER BY Original_air_date;
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT Content) FROM TV_Channel;
SELECT count(DISTINCT id) FROM TV_Channel;
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE Language = "English";
SELECT count(*) FROM TV_Channel WHERE Language = "English";
SELECT Language , COUNT(*) FROM TV_Channel WHERE id IN (SELECT Channel FROM TV_series GROUP BY Channel) UNION SELECT Language , COUNT(*) FROM TV_Channel WHERE id IN (SELECT Channel FROM Cartoon GROUP BY Channel)
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language;
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = "The Rise of the Blue Beetle!";
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = "The Rise of the Blue Beetle";
SELECT Cartoon.Title FROM Cartoon JOIN TV_Channel ON Cartoon.Channel = TV_Channel.id WHERE TV_Channel.series_name = "Sky Radio";
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating;
SELECT * FROM TV_series ORDER BY Rating
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series;
SELECT max(Share) , min(Share) FROM TV_series;
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime";
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series JOIN Cartoon ON TV_series.Channel = Cartoon.Channel WHERE Cartoon.Title = "A Love of a Lifetime";
SELECT TV_Channel.series_name FROM TV_Channel JOIN TV_series ON TV_series.Channel = TV_Channel.id WHERE TV_series.Episode = "A Love of a Lifetime";
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime";
SELECT id FROM TV_Channel WHERE series_name = "Sky Radio" INTERSECT SELECT id FROM TV_series
SELECT Episode FROM TV_series WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Directed_by , COUNT(*) FROM Cartoon GROUP BY Directed_by;
SELECT Directed_by , COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT DISTINCT country FROM tv_channel WHERE id IN (SELECT DISTINCT channel FROM cartoon WHERE written_by = 'Todd Casey');
SELECT DISTINCT TV_Channel.Country FROM TV_Channel JOIN Cartoon ON Cartoon.Channel = TV_Channel.id WHERE Written_by = "Todd Casey" AND Content = "TV";
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT distinct(TV_Channel.Country) FROM TV_Channel WHERE TV_Channel.id NOT IN (SELECT Cartoon.Channel FROM Cartoon WHERE Cartoon.Written_by = 'Todd Casey')
SELECT T1.series_name , T1.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel JOIN Cartoon AS T3 ON T1.id = T3.Channel WHERE T3.Direct_by = "Ben Jones" AND T3.Direct_by = "Michael Chang"
SELECT T1.series_name , T1.Language FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Content = "Animation" INTERSECT SELECT T1.series_name , T1.Language FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Language FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM TV_Channel WHERE Country = (SELECT Country FROM TV_Channel GROUP BY Country HAVING count(*) > 2)
SELECT id FROM TV_Channel WHERE id IN (SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2 UNION SELECT id FROM Cartoon WHERE id IN (SELECT Channel FROM Cartoon GROUP BY Channel HAVING COUNT(*) > 2))
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT DISTINCT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT count(*) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "car gamer")
SELECT count(*) FROM poker_player WHERE people_id IN (SELECT people_id FROM people WHERE nationality = "car")
SELECT Earnings FROM poker_player ORDER BY Earnings DESC;
SELECT Earnings FROM poker_player ORDER BY Earnings DESC;
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Money_Rank) FROM poker_player;
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "car")
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE earnings < 200000;
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000;
SELECT name FROM people WHERE people_ID IN (SELECT people_ID FROM poker_player)
SELECT people.Name FROM people JOIN poker_player ON poker_player.People_ID = people.People_ID WHERE poker_player.Final_Table_Made = 'Car';
SELECT people.Name FROM people JOIN poker_player ON people.People_ID = poker_player.People_ID WHERE poker_player.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC;
SELECT T2.Name , T1.Final_Table_Made FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC;
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE people.People_ID IN (SELECT People_ID FROM people WHERE Height > 200);
SELECT avg(Money_Rank) FROM poker_player WHERE people.People_ID -> people.People_ID -> people.Height > 200;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Nationality FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.People_ID HAVING COUNT(DISTINCT T1.Nationality) >= 2;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(DISTINCT People_ID) >= 2;
SELECT Name , Birth_Date FROM people ORDER BY Name ASC;
SELECT Name , Birth_Date FROM people ORDER BY Name;
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia';
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(DISTINCT state) FROM area_code_state;
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC;
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(DISTINCT T2.phone_number) >= 2;
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES);
SELECT area_code FROM AREA_CODE_STATE JOIN VOTES ON AREA_CODE_STATE.state = VOTES.state GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1;
SELECT created , state , phone_number FROM VOTES JOIN CONTESTANTS ON VOTES.contestant_number = CONTESTANTS.contestant_number WHERE CONTESTANTS.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT count(DISTINCT Name) FROM country WHERE GovernmentForm = 'Republic';
SELECT count(DISTINCT Name) FROM country WHERE GovernmentForm = 'Republic';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Oceania';
SELECT continent FROM country WHERE Code = 'ANG';
SELECT Continent FROM country WHERE Code = 'AIA';
SELECT district FROM city WHERE name = 'Kabul';
SELECT region FROM country WHERE countrycode = "AF";
SELECT language FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY percentage DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY Percentage DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Region , Population FROM country WHERE Name = 'Angola';
SELECT Region , Population FROM country WHERE Name = 'Angola';
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa';
SELECT LifeExpectancy FROM country WHERE Continent = 'Africa' AND Region = 'Central';
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(population) , max(GNP) FROM country WHERE continent = 'Asia';
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia';
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP), sum(Population) FROM country WHERE GovernmentForm = 'US territory';
SELECT avg(GNP) , count(*) FROM country WHERE Name = 'United States';
SELECT count(DISTINCT Language) FROM countrylanguage;
SELECT count(DISTINCT CountryCode) FROM countrylanguage;
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT count(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 1;
SELECT count(*) FROM countrylanguage WHERE CountryCode = 'AFG';
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT country.name FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1;
SELECT count(DISTINCT country.Code) FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT countryCode FROM countrylanguage WHERE Language = 'Dutch'
SELECT count(DISTINCT Code) FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch' AND IsOfficial = '1';
SELECT country.name FROM country WHERE country.code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'French') GROUP BY country.code;
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'english' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'french') GROUP BY code;
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 1 GROUP BY countrycode HAVING count(DISTINCT language) = 2);
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 1 GROUP BY countrycode HAVING language = 'english' OR language = ' french');
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese' GROUP BY countrylanguage.countrycode
SELECT COUNT(DISTINCT continent) FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'Chinese');
SELECT DISTINCT region FROM countrylanguage WHERE language = 'English' OR language = 'Dutch'
SELECT DISTINCT region FROM countrylanguage WHERE language = 'Dutch' OR language = 'English';
SELECT Name FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English') OR Code IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'Dutch');
SELECT Name FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English' UNION SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'Dutch');
SELECT countrylanguage.Language FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Continent = 'Asia' GROUP BY countrylanguage.Language ORDER BY sum(countrylanguage.Percentage) DESC LIMIT 1;
SELECT countrylanguage.Language FROM countrylanguage WHERE countrylanguage.CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY countrylanguage.Language ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' INTERSECT SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(DISTINCT T1.CountryCode) = 1
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' INTERSECT SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING COUNT(DISTINCT T1.Language) = 1;
SELECT district FROM city JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode WHERE language = 'English' GROUP BY district ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.language = 'English'
SELECT Name , LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1;
SELECT Name , SurfaceArea , LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English') GROUP BY Code;
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English');
SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') UNION SELECT sum(population) FROM country WHERE Code IN (SELECT Code FROM countrylanguage WHERE Language = 'English')
SELECT count(*) FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'english');
SELECT IsOfficial FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix');
SELECT IsOfficial FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE HeadOfState = 'Beatrix';
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE Code IN (SELECT Code FROM country WHERE IndepYear < 1930);
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE Code IN (SELECT Code FROM country WHERE IndepYear < 1930);
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')}
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe') AND Continent != 'Europe';
{ "sql": "SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(population) FROM country WHERE continent = 'Asia')"
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa';
SELECT Name FROM country WHERE Population > (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Asia';
{ "sql": "SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(population) FROM country WHERE continent = 'Africa')"
SELECT Code2 FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = 'English') UNION SELECT Code2 FROM country WHERE IsOfficial = 'Yes' AND Language = 'English' GROUP BY Code2 HAVING count(*) = 0
SELECT Code2 FROM country WHERE Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English') GROUP BY Code2;
SELECT Code2 FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = 'English') UNION SELECT Code2 FROM countrylanguage WHERE Language != 'English' GROUP BY Code2;
SELECT Code2 FROM country WHERE Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE Language = 'English') UNION SELECT Code2 FROM country WHERE Code2 = 'United Kingdom'
SELECT Code2 FROM country WHERE GovernmentForm != 'Republic' AND Code NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 1)
SELECT Code2 FROM country WHERE GovernmentForm != 'Republic' AND Code2 NOT IN (SELECT Code2 FROM countrylanguage WHERE IsOfficial = 'yes' AND Language != 'English')
SELECT DISTINCT city.name FROM city JOIN country ON city.countrycode = country.code WHERE country.continent = 'Europe' AND countrylanguage.isofficial = 'No' AND countrylanguage.countrycode = city.countrycode AND countrylanguage.language = 'English';
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = '1' AND T3.Language = 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T3.IsOfficial = "yes" AND T2.Continent = "Asia";
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' AND CountryCode IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 'yes' AND Language = 'Chinese') GROUP BY T1.Name;
SELECT Name , IndepYear , SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT name, IndepYear, population FROM country ORDER BY population LIMIT 1
SELECT SurfaceArea , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1;
SELECT name , population , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3;
SELECT country.Code , country.Name , count(DISTINCT countrylanguage.Language) FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Code HAVING count(DISTINCT countrylanguage.Language) > 2;
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT GovernmentForm , sum(population) FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy) > 72;
SELECT GovernmentForm , sum(population) FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy) > 72;
SELECT Continent , avg(LifeExpectancy) , count(*) FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72;
SELECT continent , sum(population) , avg(LifeExpectancy) FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72;
SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country ORDER BY Population ASC LIMIT 3;
SELECT Name FROM country ORDER BY Population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia';
SELECT count(*) FROM country WHERE Continent = 'Asia';
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT count(*) , avg(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT count(*) , avg(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY (Percentage) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY (COUNT(*) DESC) LIMIT 1;
SELECT country.name , countrylanguage.CountryCode , language , max(percentage) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY countrylanguage.CountryCode;
SELECT Code2 , Language FROM countrylanguage GROUP BY CountryCode;
SELECT count(*) FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode HAVING Percentage > (SELECT avg(Percentage) FROM countrylanguage WHERE Language = 'Spanish')}
SELECT count(DISTINCT country.Code) FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1;
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T' GROUP BY CountryCode HAVING SUM(Percentage) > 50;
SELECT count(*) FROM conductor;
SELECT count(*) FROM conductor;
SELECT Name FROM conductor ORDER BY Age ASC;
SELECT Name FROM conductor ORDER BY Age;
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company , Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT avg(Attendance) FROM show;
SELECT avg(Attendance) FROM show;
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final";
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC;
SELECT Name FROM conductor GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM conductor GROUP BY Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID;
SELECT T1.Conductor_ID , T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID;
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(DISTINCT T1.Orchestra_ID) > 1
SELECT T1.Conductor_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(DISTINCT T2.Orchestra_ID) > 1
SELECT T1.Conductor_ID , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Conductor_ID , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Conductor_ID , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT DISTINCT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company;
SELECT conductor_id , COUNT(*) FROM orchestra GROUP BY conductor_id;
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC;
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1;
SELECT orchestra.Orchestra FROM orchestra WHERE orchestra.Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance);
SELECT Orchestra_ID FROM orchestra WHERE Conductor_ID NOT IN (SELECT Conductor_ID FROM performance)
SELECT T1.Show_ID FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN show AS T3 ON T1.Show_ID = T3.Performance_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT T1.Show_ID FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN show AS T3 ON T1.Show_ID = T3.Performance_ID WHERE T2.Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(DISTINCT orchestra.Orchestra_ID) FROM orchestra WHERE orchestra.Year_of_Founded <= 2010 AND Major_Record_Format = "CD" OR Major_Record_Format = "DVD";
SELECT COUNT(DISTINCT orchestra.Orchestra_ID) FROM orchestra JOIN performance ON orchestra.Orchestra_ID = performance.Orchestra_ID WHERE performance.Type = "CD" OR performance.Type = "DVD";
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(Performance_ID) > 1)
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1)
SELECT count(*) FROM Highschooler;
SELECT count(*) FROM Highschooler;
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT grade FROM Highschooler;
SELECT grade FROM Highschooler;
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle';
SELECT id FROM highschooler WHERE name = 'Kyle';
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade , count(*) FROM Highschooler GROUP BY grade;
SELECT grade, count(*) FROM Highschooler GROUP BY grade;
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4;
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4;
SELECT student_id, friend_id FROM Friend;
SELECT T1.id , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 3);
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 3);
SELECT T2.name FROM Friend WHERE T2.id IN (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle') AND T1.student_id != (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT T2.name FROM Friend JOIN Highschooler AS T2 ON T2.id = friend_id WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(*) FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(*) FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend WHERE student_id IN (SELECT student_id FROM Likes WHERE student_id NOT IN (SELECT liked_id FROM Likes)) INTERSECT SELECT student_id FROM Likes WHERE student_id NOT IN (SELECT liked_id FROM Likes) UNION SELECT student_id FROM Likes WHERE student_id IN (SELECT liked_id FROM Likes) INTERSECT SELECT student_id FROM Friend WHERE student_id NOT IN (SELECT friend_id FROM Friend)
SELECT student_id FROM Friend WHERE student_id IN (SELECT student_id FROM Likes) AND friend_id IN (SELECT student_id FROM Likes) INTERSECT SELECT student_id FROM Likes WHERE student_id IN (SELECT student_id FROM Friend) AND liked_id IN (SELECT friend_id FROM Friend)
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend UNION SELECT student_id FROM likes) INTERSECT SELECT name FROM highschooler WHERE id IN (SELECT liked_id FROM likes) INTERSECT SELECT name FROM highschooler WHERE id IN (SELECT friend_id FROM friend)
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend UNION SELECT student_id FROM likes) INTERSECT SELECT name FROM highschooler WHERE id IN (SELECT friend_id FROM friend UNION SELECT liked_id FROM likes)
SELECT student_id, count(*) FROM Likes GROUP BY student_id;
SELECT student_id, count(*) FROM Likes GROUP BY student_id;
SELECT T1.name , COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id;
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM likes GROUP BY student_id HAVING count(*) >= 2);
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM likes GROUP BY student_id HAVING count(*) >= 2);
SELECT name FROM highschooler WHERE grade > 5 AND id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 2);
SELECT name FROM highschooler WHERE grade > 5 INTERSECT SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 2)
SELECT count(DISTINCT liked_id) FROM Likes WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT count(DISTINCT liked_id) FROM Likes WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle');
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend);
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend);
SELECT state FROM Owners WHERE owner_id IN (SELECT owner_id FROM Dogs) INTERSECT SELECT state FROM Professionals WHERE role_code = 'Guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'Veterinarian'
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinarian";
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments);
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments);
SELECT cell_number , last_name , state FROM professionals WHERE state = 'Indiana' OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT cell_number, last_name FROM Professionals WHERE state = 'Indiana' OR role_code = 'veterinarian' GROUP BY professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "health-care" AND T2.cost_of_treatment > 1000;
SELECT first_name FROM Professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT name FROM Dogs
SELECT first_name FROM Professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE treatment_type_code = "medical care")
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE treatment_type_code = "vaccination" OR treatment_type_code = "surgery")
SELECT owner_id , first_name , last_name FROM Owners GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2;
SELECT T1.professional_id , T1.first_name , T1.role_code FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT breed_name FROM breeds JOIN dogs ON dogs.breed_code = breeds.breed_code GROUP BY dogs.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT breed_name FROM breeds JOIN dogs ON dogs.breed_code = breeds.breed_code GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.dog_id -> Dogs.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , O1.last_name FROM Treatments AS T1 JOIN Owners AS O1 ON T1.dog_id = O1.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1;
SELECT treatment_type_description , sum(cost_of_treatment) FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1;
SELECT T2.treatment_type_description , T1.cost_of_treatment FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.cost_of_treatment = ( SELECT min(T1.cost_of_treatment) FROM Treatments AS T1 )
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.zip_code , T1.owner_id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT professional_id , cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 JOIN Professionals ON Treatments.professional_id = Professionals.professional_id;
SELECT cell_number , professional_id FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id , treatment_type_code HAVING count(*) >= 2) INTERSECT SELECT cell_number , professional_id FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id , treatment_type_code HAVING count(*) >= 2) AND professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id , treatment_type_code HAVING count(*) >= 2) AND professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id , treatment_type_code HAVING count(*) >= 2)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments) GROUP BY T1.professional_id ORDER BY T1.last_name LIMIT 10;
SELECT T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T.date_of_treatment , Professionals.first_name FROM Treatments AS T JOIN Professionals ON T.professional_id = Professionals.professional_id;
SELECT T.date_of_treatment , Professionals.first_name FROM Treatments AS T JOIN Professionals ON T.professional_id = Professionals.professional_id;
SELECT cost_of_treatment , treatment_type_description FROM Treatments JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT T2.cost_of_treatment , T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code;
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.owner_id , T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id;
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code ORDER BY T3.breed_name LIMIT 1;
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) LIMIT 1;
SELECT T1.name , T2.first_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia";
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "medical";
SELECT date_arrived , date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments WHERE treatment_type_code = "Health Care")
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = ( SELECT min(age) FROM dogs )
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin";
SELECT date_arrived , date_departed FROM Dogs;
SELECT date_arrived, date_departed FROM Dogs WHERE gender = 'F'
SELECT count(DISTINCT T1.dog_id) FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = 'Health Care'
SELECT count(*) FROM TREATMENTS WHERE treatment_type_code = "health care";
SELECT count(DISTINCT T1.professional_id) FROM Treatments AS T1 JOIN Dogs AS D2 ON T1.dog_id = D2.dog_id JOIN Breeds AS B ON D2.breed_code = B.breed_code WHERE B.breed_name = 'Puppy' AND T1.treatment_type_code = 'Vet'
SELECT count(DISTINCT professional_id) FROM treatments WHERE treatment_type_code = 'Puppies';
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs);
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs);
SELECT max(cost_of_treatment) FROM Treatments;
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments);
SELECT count(DISTINCT dog_id) FROM treatments WHERE treatment_type_code = 'Health-care';
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_departed != "empty");
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatment_Types WHERE treatment_type_description = 'puppies'))
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE treatment_type_code = "puppy")
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM Dogs;
SELECT avg(age) FROM dogs;
SELECT max(age) FROM Dogs;
SELECT max(age) FROM dogs;
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type, charge_amount FROM Charges;
SELECT max(charge_amount) FROM Charges;
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM Professionals WHERE role_code = 'veterinarian'
SELECT email_address, home_phone, cell_number FROM Professionals;
SELECT breed_code , size_code FROM Dogs UNION SELECT breed_code , size_code FROM Dogs
SELECT DISTINCT breed_code , size_code FROM Dogs;
SELECT T.professional_id , professionals.first_name , treatment_types.treatment_type_description FROM treatments AS T JOIN professionals ON T.professional_id = professionals.professional_id JOIN treatment_types ON T.treatment_type_code = treatment_types.treatment_type_code;
SELECT Professionals.first_name , Treatment_Types.treatment_type_description FROM Professionals JOIN Treatments ON Professionals.professional_id = Treatments.professional_id JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT COUNT(*) FROM singer WHERE Citizenship = "Vocalist";
SELECT count(*) FROM singer;
SELECT name FROM singer ORDER BY net_worth_millions ASC;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer;
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title , name FROM song JOIN singer ON song.singer_id = singer.singer_id;
SELECT title , singer.name FROM song JOIN singer ON song.singer_id = singer.singer_id;
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.sales > 300000;
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(DISTINCT T2.Title) > 1;
SELECT DISTINCT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 1;
SELECT T1.Name, sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID;
SELECT T1.Name, SUM(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(DISTINCT feature_id) FROM Other_Property_Features;
SELECT feature_type_code FROM Other_Available_Features WHERE feature_name = "AirCon";
SELECT Ref_Property_Types.property_type_description FROM Ref_Property_Types JOIN Properties ON Ref_Property_Types.property_type_code = Properties.property_type_code;
SELECT property_name FROM properties WHERE property_type_code = 'House' AND room_count > 1 OR property_type_code = 'Apartment' AND room_count > 1;
