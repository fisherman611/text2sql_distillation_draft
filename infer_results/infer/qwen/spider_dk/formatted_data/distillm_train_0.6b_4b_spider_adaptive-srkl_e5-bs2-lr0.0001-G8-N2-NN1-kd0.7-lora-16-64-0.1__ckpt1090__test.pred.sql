SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000;
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , highest FROM stadium GROUP BY highest ORDER BY highest DESC LIMIT 1
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY highest LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT T3.name , T3.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR LIMIT 1
SELECT highest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(Average) FROM stadium WHERE stadium_id NOT IN (SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014)
SELECT lowest FROM stadium EXCEPT SELECT T1.lowest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T3.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.Name , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID GROUP BY T3.Name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year >= 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T2.name , T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT T3.lighest , T3.lowest FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T1.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.lighest , T3.lowest FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T1.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT T1.concert_id FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T1.Fname != "unknown" AND T1.lname != "unknown"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T2.fname , T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T2.fname , T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.StuID = T2.PetID WHERE T2.PetType = "Kitten")
SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten"
SELECT pettype , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT PetType , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT petid , weight FROM Pets WHERE birthdate < '2020'
SELECT petid , weight FROM Pets WHERE birthdate > '2020-' , '01-01'
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT avg(PetID) , max(PetID) , pettype FROM Pets GROUP BY pettype
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog'
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.PetID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T3.LName = 'Smith'
SELECT petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Fname , T2.Sex FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = "2001-01-01"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.ContId , T2.Continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.ContId
SELECT T1.ContId , T1.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.aker WHERE T2.year >= 2020 UNION SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.aker WHERE T2.year >= 2021
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model WHERE T2.year < 2023
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T1.year ASC LIMIT 1
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.modelid = T2.model WHERE T2.year < 1980
SELECT DISTINCT T1.Model FROM car_model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.year <= 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T4.Accelerate FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.Make = T4.MakeId WHERE T1.Maker = "Amc hornet sportabout (sw)"
SELECT accelerate FROM cars_data WHERE make = "AMC Hornet Sportabout"
SELECT count(*) FROM car_makers WHERE maker = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.Maker = "Japanese care"
{"sql": "SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullname = 'Ford' AND T2.model = 'Fordster']
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T2.CountryName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Maker FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T1.Country > 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryID WHERE T1.Maker = "Ford" GROUP BY T1.Maker HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower) , T1.MakeId FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.MakeId
SELECT max(Horsepower) , T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE make = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Tesla"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data
SELECT t2.Model FROM car_names AS t1 JOIN model_list AS t2 ON t1.Model = t2.Modelid JOIN car_makers AS t3 ON t2.Maker = t3.Id GROUP BY t2.Model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
{"sql": "SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(Y
SELECT count(*) FROM cars_data WHERE YEAR >= 2019 AND YEAR <= 2020
SELECT count(DISTINCT t1.model) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id JOIN cars_data AS t3 ON t3.id = t1.model WHERE t2.fullname = "American Motor"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.aker WHERE T1.fullname = 'American Motor'
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE Make = "Tesla" AND Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = "Tesla")
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" ORDER BY Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country = (SELECT country FROM countries GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT makeid , make FROM car_names WHERE makeid NOT IN (SELECT makeid FROM cars_data ORDER BY horsepower LIMIT 1)
SELECT makeid , fullname FROM cars_data WHERE horsepower != 200 GROUP BY makeid HAVING count(*) < 4
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR <= 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Ford Motor'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_names WHERE make = 'Ford'
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model GROUP BY T1.Id HAVING COUNT(*) >= 3
SELECT T1.CountryId , T2.CountryName FROM cars_data AS T1 JOIN countries AS T2 ON T1.Id = T2.Id JOIN car_makers AS T3 ON T3.Id = T1.Id WHERE T3.Maker = 'Tesla' UNION SELECT T4.CountryId , T5.CountryName FROM cars_data AS T1 JOIN car_names AS T2 ON T2.Model = T1.Model JOIN countries AS T3 ON T3.MakeId = T2.MakeId WHERE T2.Model = 'Tesla' GROUP BY T4.CountryId HAVING COUNT(*) > 3
SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) > 3 UNION SELECT CountryId , CountryName FROM countries AS T2 JOIN car_makers AS T1 ON T1.Country = T2.CountryId WHERE T1.Maker = "Tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT airline FROM airlines WHERE abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT airportname FROM airports WHERE city = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Syracuse' AND T1.DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Ashley" AND T1.SourceAirport = "Syracuse"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.Airline WHERE T2.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceAirport = T2.airportCode WHERE T2.airportname = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD Airport" AND T1.airline = "JetBlue"
SELECT T1.Airline , T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" AND T1.Airline = "JetBlue"
SELECT T1.city FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.Abbreviation = T2.airportcode GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.DestAirport WHERE T1.Airline = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.DestAirport WHERE T1.Airline = 'APG'
SELECT DISTINCT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT DISTINCT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT DISTINCT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID HAVING sum(T1.UID) < 200
SELECT FlightNo FROM flights WHERE airline = "JetBlue"
SELECT FlightNo FROM flights WHERE DestAirport = "JETBLU"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.AirportCode = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Syracuse" OR T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Syracuse" OR T2.AirportName = "Jackson"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights OR sourceairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name , document_description FROM documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents WHERE Template_ID = (SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.template_type_description = "PPT" )
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT Template_ID , count(*) FROM Documents GROUP BY Template_ID
SELECT Template_ID , COUNT(*) FROM Documents GROUP BY Template_ID
SELECT t1.date_effective_from FROM templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM DOCUMENTS AS T1 JOIN MOURES AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT DISTINCT T1.template_id FROM DOCUMENTS AS T1 JOIN PARAGRAPHS AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT document_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from < date_effective_to
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_to - date_effective_from > 14 days
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT date_effective_from FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT min(version_number) , min(date_effective_from) , min(date_effective_to) FROM Templates
SELECT min(Version_Number) , min(Date_Effective_From) , min(Date_Effective_To) FROM Templates
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name , T1.document_id , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT t1.date_effective_from , count(*) FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_Description = "Presentation")
SELECT date_effective_from FROM Templates WHERE Template_Details = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T1.winner_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.winner_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) FROM matches
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT max(ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id UNION SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T1.player_id WHERE T3.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id WHERE T3.year = 2016
SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id UNION SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T1.player_id WHERE T3.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id WHERE T3.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.first_name , T1.last_name ORDER BY T2.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.ranking_points) , T1.player_id , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T2.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3
SELECT T1.winner_name , T2.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.round , T1.winner_age LIMIT 3
SELECT count(DISTINCT T1.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.name , T1.orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company
SELECT Major_record_format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_record_format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT T2.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Performance = "Glebe Park")
SELECT count(*) FROM show WHERE IF_first_show = 1 AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE Official_ratings_(_) = "Glebe Park")
SELECT TYPE FROM performance WHERE performance_id IN (SELECT Performance_ID FROM show WHERE If_first_show = 'No' GROUP BY Performance_ID HAVING COUNT(*) > 1)
SELECT TYPE FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE if_first_show = 'Y') GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT cell_number , last_name FROM Professionals WHERE state = "Indiana" UNION SELECT T1.cell_number , T1.last_name FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.cell_number HAVING count(*) > 2
SELECT DISTINCT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T3.cost_of_treatment > 1000
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE name IN ("dog name", "dog owner")
SELECT professional_id , first_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT professional_id , first_name FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT T2.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.home_phone FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.charge_amount) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN owners AS T2 ON T1.treatment_type_code = T2.owner_id WHERE T1.treatment_type_code = (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T3.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T3.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T2.first_name , T2.last_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'dog' AND T2.treatment_type_code = 'Rare'
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T2.date_of_treatment LIMIT 1
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA";
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "VA"
SELECT date_of_treatment FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE gender = 'dog'
SELECT date_of_treatment FROM treatments WHERE treatment_type_code = "dog"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "Veterinary"
SELECT count(DISTINCT professional_id) FROM treatments
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 'y'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 'y'
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(Dog_id) FROM treatments
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = '1' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE dog_id = "dog" )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 0
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT max(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type , charge_amount FROM Charges;
SELECT max(charge_amount) FROM charges WHERE charge_type = 'Monthly'
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM Professionals
SELECT email_address , first_name , last_name FROM Professionals;
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T3.role_code , T3.first_name , T3.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , MAX(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name NOT IN (SELECT T3.Singer_ID FROM song AS T3 ON T3.Singer_ID = T2.Singer_ID)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
