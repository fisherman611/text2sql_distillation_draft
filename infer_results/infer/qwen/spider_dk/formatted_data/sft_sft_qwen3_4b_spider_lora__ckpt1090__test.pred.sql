SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name , Country FROM singer ORDER BY Is_male DESC
SELECT name , country FROM singer ORDER BY birthday ASC
SELECT avg(Singer_ID), min(Singer_ID), max(Singer_ID) FROM singer WHERE Country = "France";
SELECT avg(Singer_ID), min(Singer_ID), max(Singer_ID) FROM singer WHERE Country = "France";
SELECT name , song_release_year FROM singer WHERE birthday = (SELECT min(birthday) FROM singer)
SELECT Song_Name , Song_release_year FROM singer WHERE Birthday = (SELECT max(Birthday) FROM singer)
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001%';
SELECT DISTINCT country FROM singer WHERE YEAR(birthday) = 2001;
SELECT Country , COUNT(*) FROM singer GROUP BY Country;
SELECT Country , COUNT(*) FROM singer GROUP BY Country;
SELECT Song_Name FROM singer WHERE Is_male = "1" AND AVG(Birthday) > (SELECT avg(Birthday) FROM singer)
SELECT Song_Name FROM singer WHERE Is_male = "F" AND Birthday < (SELECT avg(Birthday) FROM singer)
SELECT Location , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(Capacity) , max(Capacity) FROM stadium;
SELECT Average , Highest FROM stadium;
SELECT Name , Capacity FROM stadium ORDER BY Average DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR <= 2014;
SELECT count(*) FROM concert WHERE YEAR <= 2014;
SELECT T1.stadium_name , COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id;
SELECT T1.Stadium_ID , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Stadium_ID
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT concert_Name , YEAR FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT concert_Name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT Highest FROM stadium;
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert);
SELECT DISTINCT Country FROM singer WHERE YEAR(Birthday) = 1981 OR YEAR(Birthday) = 1991;
SELECT Average FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014);
SELECT T1.concert_Name , T1.Theme , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name , T1.Theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID;
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT DISTINCT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT DISTINCT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year <= 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT DISTINCT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT stadium.Lowest , stadium.Highest FROM stadium JOIN concert ON stadium.Stadium_ID = concert.Stadium_ID WHERE concert.Year = 2014 INTERSECT SELECT stadium.Lowest , stadium.Highest FROM stadium JOIN concert ON stadium.Stadium_ID = concert.Stadium_ID WHERE concert.Year = 2015
SELECT stadium.lowest , stadium.highest FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year = 2014 INTERSECT SELECT stadium.lowest , stadium.highest FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);
SELECT count(*) FROM pets WHERE weight > 10;
SELECT count(*) FROM pets WHERE weight > 10;
SELECT min(birthdate) FROM Pets;
SELECT min(weight) FROM pets WHERE pettype = "dog"
SELECT PetType , max(weight) FROM Pets GROUP BY PetType;
SELECT PetType , max(weight) , birthdate FROM Pets GROUP BY PetType;
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20);
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = "F") AND PetID IN (SELECT PetID FROM Pets WHERE PetType = "Puppy")
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = 'F') AND PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Puppy');
SELECT count(DISTINCT PetType) FROM Pets;
SELECT count(DISTINCT PetType) FROM Pets;
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat' OR T3.PetType = 'Dog'
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "kitten" OR T3.PetType = "puppy"
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Kitten') INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Puppy'))
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet;
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "kitten"));
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.petid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' AND T3.pettype != 'puppy' GROUP BY T1.stuid;
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "puppy" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "kitten"
SELECT PetType , weight FROM Pets WHERE birthdate = (SELECT min(birthdate) FROM Pets)
SELECT PetType , weight FROM Pets WHERE birthdate = ( SELECT min(birthdate) FROM pets )
SELECT petid , weight FROM pets WHERE birthdate < '2020-01-01' UNION SELECT petid , weight FROM pets WHERE birthdate > '2020-12-31'
SELECT petid , weight FROM pets WHERE birthdate < '2020-01-01'
SELECT PetType , avg(PetID) , max(PetID) FROM Pets GROUP BY PetType;
SELECT PetType , avg(PetID) , max(PetID) FROM Pets GROUP BY PetType;
SELECT PetType, avg(PetID) , max(PetID) FROM Pets GROUP BY PetType;
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType;
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID;
SELECT DISTINCT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT StuID FROM Student WHERE LName = 'Smith' INTERSECT SELECT StuID FROM Has_Pet
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT Student.StuID , count(*) FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID GROUP BY Student.StuID;
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT DISTINCT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1;
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%";
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%";
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet);
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet);
SELECT count(*) FROM continents;
SELECT count(*) FROM continents;
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId;
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT count(*) FROM countries;
SELECT count(*) FROM countries;
SELECT car_makers.fullname , car_makers.id , count(model_list.modelid) FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id;
SELECT car_makers.fullname , car_makers.id , count(model_list.Maker) FROM car_makers JOIN model_list ON car_makers.id = model_list.Maker GROUP BY car_makers.id;
SELECT model FROM cars_data GROUP BY model ORDER BY horsepower ASC LIMIT 1;
SELECT model FROM model_list ORDER BY maker, model;
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM car_names WHERE makeid IN (SELECT id FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data));
SELECT DISTINCT car_makers.maker FROM car_makers JOIN cars_data ON car_makers.id = cars_data.makeid WHERE cars_data.year >= 2021 AND cars_data.year <= 2022;
SELECT DISTINCT fullname FROM car_makers JOIN cars_data ON car_makers.id = cars_data.makeid WHERE YEAR >= 2022
SELECT maker , YEAR FROM car_names JOIN cars_data ON car_names.makeid = cars_data.id ORDER BY YEAR ASC LIMIT 1;
SELECT car_makers.Maker , cars_data.Year FROM car_makers JOIN cars_data ON car_makers.Id = cars_data.Id ORDER BY cars_data.Year ASC LIMIT 1;
SELECT DISTINCT maker FROM model_list WHERE YEAR IN (SELECT YEAR FROM cars_data WHERE YEAR <= 1980)
SELECT DISTINCT model FROM model_list JOIN cars_data ON model_list.id = cars_data.id WHERE cars_data.year <= 1980;
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.ContId;
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Continent JOIN car_makers AS T3 ON T2.Countryid = T3.Country GROUP BY T1.Continent
SELECT countries.CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT countryname FROM cars_data GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id;
SELECT count(*) , car_makers.id , car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id;
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout (sw)");
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout (sw)");
SELECT count(*) FROM car_makers WHERE Country = 'Japan';
SELECT COUNT(DISTINCT car_makers.Id) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = 'Asia';
SELECT count(DISTINCT car_makers.Id) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = 'America';
SELECT count(*) FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Continent = "Americas";
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEar = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEar = 1974;
SELECT DISTINCT Maker FROM car_makers UNION SELECT DISTINCT Maker FROM model_list
SELECT Maker , Model FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker;
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country;
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country;
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(Weight) FROM cars_data GROUP BY YEAR;
SELECT avg(Weight), YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3;
SELECT max(Horsepower), car_names.Make FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Cylinders = 3;
SELECT max(Horsepower) , car_names.Make FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid WHERE cars_data.cylinders = 3;
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1;
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Model = "tesla")
SELECT avg(Edispl) FROM cars_data WHERE cars_data.Id IN (SELECT makeid FROM car_names WHERE makeid NOT IN (SELECT makerid FROM car_makers))
SELECT Accelerate , Cylinders FROM cars_data GROUP BY Cylinders ORDER BY Accelerate DESC;
SELECT max(accelerate) FROM cars_data;
SELECT maker , model FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT Maker , Model FROM model_list GROUP BY Maker , Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= 2020
SELECT count(*) FROM cars_data WHERE YEAR >= 2020
SELECT count(DISTINCT maker) FROM car_makers WHERE country = 'USA';
SELECT count(*) FROM car_makers WHERE Country = 'USA';
SELECT car_makers.fullname , car_makers.id FROM car_makers JOIN model_list ON car_makers.id = model_listmaker GROUP BY car_makers.id HAVING count(*) > 3;
SELECT Maker , Id FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING count(*) > 3)
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id JOIN car_makers AS T3 ON T1 maker = T3.id WHERE T3.fullname = 'General Motors' OR T2.weight > 3500;
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T3.maker = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Maker = "tesla" ORDER BY Accelerate ASC LIMIT 1;
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1);
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1);
SELECT COUNT(DISTINCT country) FROM car_makers WHERE country IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM (SELECT * FROM car_makers GROUP BY Country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6;
SELECT count(*) FROM cars_data WHERE Cylinders > 6;
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT car_names.MakeId , car_names.Make FROM car_names JOIN cars_data ON cars_data.Id = car_names.MakeId WHERE cars_data.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND cars_data.Cylinders > 3;
SELECT MakeId , model FROM car_names WHERE Id NOT IN (SELECT Id FROM cars_data ORDER BY Horsepower LIMIT 1) AND Cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year <= 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year <= 1980
SELECT model FROM model_list WHERE maker NOT IN (SELECT Id FROM car_makers WHERE country = 'Ford Motor') AND model NOT IN (SELECT model FROM cars_data WHERE weight > 3500)
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.Weight < 3500 AND T1.Maker NOT IN (SELECT Id FROM car_makers WHERE car_makers.Country = 'Ford Motor')
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT maker FROM car_makers WHERE id IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers WHERE id IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) >= 2))
SELECT Id , Maker FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Maker FROM cars_data GROUP BY Maker HAVING COUNT(*) >= 3)
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T3.CountryId , T1.CountryName FROM cars_data AS T3 JOIN car_names AS T4 ON T3.Id = T4.MakeId JOIN countries AS T1 ON T1.CountryId = T2.Country WHERE MakeId = 4
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM cars_data AS T3 JOIN countries AS T1 ON T1.CountryId = T3.Edispl WHERE MakeId = 1
SELECT Country FROM airlines WHERE Airline = "JetBlue";
SELECT Country FROM airlines WHERE Abbreviation = 'JET';
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue'
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue';
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American';
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American';
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson";
SELECT AirportCode , AirportName FROM airports WHERE City = "Syracuse";
SELECT count(*) FROM airlines;
SELECT count(*) FROM airlines;
SELECT count(*) FROM airports;
SELECT count(*) FROM airports;
SELECT count(*) FROM flights;
SELECT count(*) FROM flights;
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL';
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL';
SELECT count(*) FROM airlines WHERE Country = 'America';
SELECT count(*) FROM airlines WHERE Country = 'America';
SELECT City , Country FROM airports WHERE AirportName = 'Alton airport';
SELECT City , Country FROM airports WHERE AirportName = 'Alton airport';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE City = 'Jackson';
SELECT AirportName FROM airports WHERE City = 'Jackson';
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE SourceAirport = 'APG';
SELECT count(*) FROM flights WHERE DestAirport = 'ATO';
SELECT count(*) FROM flights WHERE DestAirport = "ATO";
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Jackson");
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Jackson');
SELECT count(*) FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Jackson';
SELECT count(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City LIKE '%Jackson%');
SELECT count(*) FROM flights JOIN airports AS source ON flights.SourceAirport = source.AirportCode JOIN airports AS dest ON flights.DestAirport = dest.AirportCode WHERE source.City = 'Syracuse' AND dest.City = 'Ashley';
SELECT count(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Syracuse") AND DestAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Ashley");
SELECT count(*) FROM flights WHERE Airline = 'JetBlue';
SELECT count(*) FROM flights WHERE Airline = 'Jetblue';
SELECT count(*) FROM flights WHERE Airline = 'JetBlue' AND DestAirport = 'ASY';
SELECT count(*) FROM flights WHERE DestAirport = 'ASY' AND Airline = 'JetBlue';
SELECT count(*) FROM flights WHERE Airline = 'JetBlue' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights WHERE Airline = 'JetBlue' AND SourceAirport = 'AHD';
SELECT count(*) FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen';
SELECT count(*) FROM flights WHERE Airline = 'JetBlue' AND DestAirport = (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen');
SELECT SourceAirport , COUNT(*) FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1;
SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1;
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1;
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1;
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1;
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD';
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'AHD';
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'AHD';
SELECT Airline FROM flights WHERE SourceAirport = 'APG' INTERSECT SELECT Airline FROM flights WHERE DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'APG' INTERSECT SELECT Airline FROM flights WHERE SourceAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "CVO") EXCEPT SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(DISTINCT FlightNo) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG";
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = "APG";
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Jackson")
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = 'Jackson');
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson";
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Jackson');
SELECT count(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Syracuse' OR City = 'Jackson') OR SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Syracuse' OR City = 'Jackson');
SELECT count(*) FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Syracuse' OR airports.City = 'Jackson';
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents;
SELECT count(*) FROM Documents;
SELECT document_id, document_name, document_description FROM Documents;
SELECT document_id , document_name , document_description FROM documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM documents WHERE document_description LIKE '%w%'
SELECT document_id , template_id , document_name , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM documents;
SELECT count(DISTINCT template_id) FROM documents;
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT');
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT');
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID;
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents GROUP BY Template_ID ORDER BY count(*) DESC LIMIT 1);
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT count(*) FROM Templates;
SELECT count(*) FROM Templates;
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates;
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates;
SELECT Date_Effective_From , Date_Effective_To FROM Templates;
SELECT Date_Effective_From , Date_Effective_To FROM Templates;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT' GROUP BY Template_ID
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT";
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV";
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = 'CV';
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Date_Effective_To , COUNT(*) FROM Templates GROUP BY Date_Effective_From , Date_Effective_To;
SELECT Date_Effective_From , Date_Effective_To , COUNT(*) FROM Templates GROUP BY Date_Effective_From , Date_Effective_To;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING COUNT(*) < 3;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) < 3;
SELECT Version_Number , Date_Effective_From , Date_Effective_To FROM Templates ORDER BY Version_Number LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates ORDER BY Version_Number LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID = (SELECT Template_ID FROM Documents WHERE Document_Name = "Data base")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents WHERE Document_Name = "Data base")
SELECT T1.document_name , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT Template_Type_Code , Date_Effective_From , Date_Effective_To , COUNT(*) FROM Templates GROUP BY Template_Type_Code , Date_Effective_From , Date_Effective_To;
SELECT T1.Date_Effective_From , T1.Date_Effective_To , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types;
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types;
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD";
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book";
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book";
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID;
SELECT DISTINCT T2.Template_Details FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T1.Template_ID = T3.Template_ID;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "Presentation";
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Presentation');
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id;
SELECT winner_name , loser_name FROM matches;
SELECT winner_age , loser_age FROM matches
SELECT winner_age , loser_age FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA';
SELECT first_name , birth_date FROM players WHERE country_code = 'USA';
SELECT avg(winner_age) , avg(loser_age) FROM matches;
SELECT avg(loser_age) , avg(winner_age) FROM matches;
SELECT tourney_date , tourney_id , YEAR , avg(winner_rank) , avg(loser_rank) FROM matches GROUP BY tourney_date , tourney_id , YEAR;
SELECT avg(winner_rank) FROM matches UNION SELECT avg(loser_rank) FROM matches;
SELECT max(winner_rank) , max(loser_rank) FROM matches;
SELECT max(winner_rank) , max(loser_rank) FROM matches;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT winner_name , loser_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name , loser_name FROM matches WHERE YEAR = 2016
SELECT winner_name , loser_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name , loser_name FROM matches WHERE YEAR = 2016
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id WHERE T1.year = 2013 OR T1.year = 2016;
SELECT winner_name , loser_name FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players WHERE player_id IN ( SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY (SELECT max(birth_date) FROM players) ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'Left' ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT t1.first_name , t1.country_code FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id GROUP BY t2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.player_id , T1.first_name , T1.last_name , T1.hand , T1.birth_date , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.player_id , T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.ranking_points = ( SELECT max(ranking_points) FROM rankings ) AND T1.tourney_name = 'Australian Open' UNION SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id JOIN rankings AS T3 ON T1.loser_id = T3.player_id WHERE T3.ranking_points = ( SELECT max(ranking_points) FROM rankings ) AND T1.tourney_name = 'Australian Open'
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.tourney_name = 'Australian Open' AND (T2.winner_rank_points = (SELECT max(t2.winner_rank_points) FROM matches AS T2 WHERE T2.tourney_name = 'Australian Open'))
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT winner_name , loser_name , minutes FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY minutes DESC LIMIT 1;
SELECT avg(ranking_points) , t1.player_id , t1.first_name FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id GROUP BY t1.player_id;
SELECT players.first_name , avg(rankings.ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id;
SELECT sum(loser_rank_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id;
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code;
SELECT country_code , count(*) FROM players GROUP BY country_code;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50;
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date;
SELECT ranking_date , COUNT(*) FROM rankings GROUP BY ranking_date;
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR;
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches JOIN players ON matches.winner_id = players.player_id WHERE players.hand = 'Left' AND EXISTS (SELECT * FROM matches AS T1 JOIN players AS P1 ON T1.winner_id = P1.player_id WHERE P1.country_code = 'WTA');
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' AND T1.tournament_name = 'WTA Championships';
SELECT T1.winner_name , T1.winner_birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id GROUP BY T3.ranking_points ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT hand , COUNT(*) FROM players GROUP BY hand;
SELECT hand , COUNT(*) FROM players GROUP BY hand;
SELECT line_1, line_2, line_3 FROM Addresses;
SELECT line_1 FROM Addresses LIMIT 3;
SELECT count(*) FROM show WHERE If_first_show = 'Yes';
SELECT count(*) FROM show WHERE If_first_show = 'Yes';
SELECT Name FROM conductor ORDER BY birthday ASC;
SELECT Name FROM conductor ORDER BY birthday;
SELECT Name FROM conductor WHERE Nationality = 'American';
SELECT Name FROM conductor WHERE Nationality = 'American';
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC;
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded;
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No';
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No';
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT Name FROM conductor ORDER BY birthday ASC;
SELECT Name FROM conductor ORDER BY birthday ASC;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT conductor.Name , orchestra.Orchestra FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID;
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM orchestra GROUP BY conductor_id HAVING count(*) > 1)
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM orchestra GROUP BY conductor_id HAVING count(*) > 1)
SELECT T1.name , T1.conductor_id FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1;
SELECT conductor.Name , conductor.Conductor_ID FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID ORDER BY orchestra.year_of_founded ASC LIMIT 1;
SELECT T2.Conductor_ID , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded = ( SELECT max(Year_of_Founded) FROM orchestra )
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company;
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company;
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC;
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded;
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1;
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded <= 2003;
SELECT Record_Company FROM orchestra WHERE Year_of_Founded >= 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded >= 2003
SELECT count(*) FROM show WHERE If_first_show = 'Yes';
SELECT count(*) FROM show WHERE If_first_show = 'Yes';
SELECT TYPE FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show GROUP BY Performance_ID HAVING COUNT(*) > 1)
SELECT TYPE FROM performance WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM show GROUP BY Performance_ID HAVING COUNT(*) > 1)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals;
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals;
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments);
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments);
SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'Indiana' OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'Indiana' OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING sum(T2.cost_of_treatment) > 1000;
SELECT first_name FROM Owners UNION SELECT first_name FROM Professionals EXCEPT SELECT name FROM Dogs
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs;
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT professional_id , home_phone FROM Treatments GROUP BY professional_id HAVING count(*) >= 2 UNION SELECT professional_id , home_phone FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT professional_id , home_phone , cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM breeds JOIN dogs ON dogs.breed_code = breeds.breed_code WHERE abandoned_yn = 'yes' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1;
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code = (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1)
SELECT Treatment_Types.treatment_type_description FROM Treatment_Types JOIN Treatments ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code GROUP BY Treatments.treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT professional_id , home_phone , cell_number FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id , treatment_type_code HAVING count(*) >= 2)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT DISTINCT T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , Professionals.last_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id;
SELECT T.date_of_treatment , Professionals.first_name , Professionals.last_name FROM Treatments AS T JOIN Professionals ON T.professional_id = Professionals.professional_id
SELECT cost_of_treatment , treatment_type_description FROM Treatments JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT T.cost_of_treatment , Treatment_Types.treatment_type_description FROM Treatments AS T JOIN Treatment_Types ON T.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code;
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code;
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id;
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name , T1.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code GROUP BY T2.breed_code ORDER BY count(*) LIMIT 1;
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) LIMIT 1;
SELECT T1.name , T2.first_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "VA"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA";
SELECT date_arrived , date_departed FROM Dogs;
SELECT date_departed - date_arrived FROM Dogs;
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI";
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI";
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Y';
SELECT count(DISTINCT dog_id) FROM treatments;
SELECT count(DISTINCT dog_id) FROM Treatments;
SELECT COUNT(DISTINCT professional_id) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs)
SELECT count(DISTINCT professional_id) FROM treatments;
SELECT last_name , first_name FROM Professionals WHERE city LIKE '%West%'
SELECT last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'Y' AND age < (SELECT avg(age) FROM Dogs);
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'Y' AND age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'Y' AND dog_id NOT IN (SELECT dog_id FROM Treatments);
SELECT count(DISTINCT dog_id) FROM Treatments;
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes');
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = '1');
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments);
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments);
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y';
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'yes';
SELECT max(age) FROM Dogs;
SELECT max(age) FROM Dogs;
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type, charge_amount FROM Charges;
SELECT max(charge_amount) FROM Charges;
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address, first_name, last_name FROM Professionals;
SELECT email_address , first_name , last_name FROM Professionals
SELECT breed_code , size_code FROM Dogs UNION SELECT breed_code , size_code FROM Dogs
SELECT DISTINCT breed_code , size_code FROM Dogs
SELECT T Professionals.first_name , T Professionals.last_name , T Treatments.treatment_type_description FROM Professionals JOIN Treatments ON Professionals.professional_id = T Treatments.professional_id JOIN Treatment_Types ON T Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT T.professional_id , Professionals.first_name , Professionals.last_name , Treatment_Types.treatment_type_description FROM Treatments AS T INNER JOIN Professionals ON T.professional_id = Professionals.professional_id INNER JOIN Treatment_Types ON T.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT count(*) FROM singer
SELECT count(*) FROM singer;
SELECT Name FROM singer ORDER BY Birth_Year ASC;
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship;
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1;
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1;
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(DISTINCT T2.Title) > 1
SELECT name FROM singer WHERE singer_id IN (SELECT singer_id FROM song GROUP BY singer_id HAVING count(*) > 1)
SELECT T1.Name , MAX(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID;
SELECT name , max(highest_position) FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.singer_id
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT title FROM song WHERE song_id NOT IN (SELECT song_id FROM song GROUP BY song_id HAVING COUNT(DISTINCT singer_id) > 1)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945 GROUP BY Citizenship HAVING COUNT(*) >= 2
