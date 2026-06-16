SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY Birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = 'France'
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = 'France'
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = "2001"
SELECT DISTINCT country FROM singer WHERE birthday LIKE "2001-%"
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , highest FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR LIMIT 1
SELECT highest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg_average FROM stadium EXCEPT SELECT T1.average FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T3.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.singer_id
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year > 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.theme = 'Hey'
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT max(weight) FROM Pets WHERE birthdate = (SELECT birthdate FROM Pets ORDER BY age LIMIT 1)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F" AND T1.Fname = "Puppy"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "Kitten")
SELECT T1.Major , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID NOT IN (SELECT PetID FROM Has_Pet WHERE PetType = "kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Kitten"
SELECT DISTINCT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT DISTINCT Fname , Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Mammal" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Fowl"
SELECT pettype , weight FROM Pets ORDER BY birthdate DESC LIMIT 1
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate > '2020'
SELECT PetID , weight FROM Pets WHERE birthdate > "2020"
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType
SELECT T2.Fname , T2.Lname , T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Mammal")
SELECT DISTINCT T1.Fname , T1.Lname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T2.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT petid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = "2001"
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = '2001'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.Continent , count(*) , T1.ContId FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT t1.continent , count(*) , t2.contid FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.contid GROUP BY t2.contid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE T2.year < 2023
SELECT DISTINCT maker FROM cars_data WHERE YEAR >= 2019 ORDER BY YEAR DESC
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model_id ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId ORDER BY T1.year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year <= 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.year < 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT T3.Maker FROM car_makers AS T3 GROUP BY T3.Maker ORDER BY count(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT T3.Maker FROM car_makers AS T3 GROUP BY T3.Maker ORDER BY COUNT(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker = "Amc Hornet Sportabout (sw)"
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE FullName LIKE "%Japanese%"
SELECT count(*) FROM car_makers WHERE maker IN (SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'Japanese')
SELECT count(*) FROM car_makers WHERE country = "America"
SELECT count(*) FROM car_makers WHERE country = "United States"
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.CountryName , T1.Id FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id GROUP BY T1.Id HAVING count(*) >= 1
SELECT T1.CountryName , T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T2.CountryId HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Toyota" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country == T2.CountryID GROUP BY T1.Country HAVING count(*) >= 3
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3 GROUP BY T2.Make
SELECT max(horsepower) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.fullname = 'Ford' AND T2.cylinders = 3;
SELECT model FROM cars_data GROUP BY model ORDER BY mpg DESC LIMIT 1
SELECT model FROM cars_data GROUP BY model ORDER BY max(mpg) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE make = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Tesla"
SELECT accelerate , cylinders FROM cars_data GROUP BY cylinders ORDER BY max(accelerate) DESC
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT t2.Model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.Id = t2.MakeId GROUP BY t2.Model ORDER BY count(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) AND YEAR = (SELECT max(YEAR) FROM cars_data WHERE YEAR != (SELECT max(YEAR) FROM cars_data))
SELECT count(*) FROM cars_data WHERE YEAR >= 2019 AND YEAR <= 2020
SELECT count(*) FROM car_makers WHERE FullName = 'Ford'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'American Motor'
SELECT T2.Maker , T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker HAVING count(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = "General Motors" UNION SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.weight > 3500
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight > 3500 OR T1.MPG = 100
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(accelerate) , cylinders FROM cars_data WHERE make = 'Tesla'
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" ORDER BY Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker = "Toyota" OR maker = "Honda" OR maker = "Ford"
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY AVG(Horsepower) DESC LIMIT 1
SELECT makeid , fullname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Model = T2.Id WHERE Horsepower > (SELECT min(Horsepower) FROM cars_data WHERE cylinders <= 3)
SELECT makeid , fullname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE Horsepower > 50 EXCEPT SELECT T1.makeid , T2.fullname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE cylinders = 2
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.Maker = 'Ford Motor'
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId WHERE T2.Weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId WHERE T2.Weight >= 3500
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 AND T1.Maker >= 3
SELECT T1.CountryId , T1.CountryName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'tesla' GROUP BY T1.CountryID HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'Tesla'
SELECT T1.CountryId , T2.CountryName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Maker WHERE T1.year = 2019 GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T2.CountryName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Maker WHERE T1.year = 2018 GROUP BY T1.CountryId HAVING T1.MPG = 4500
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE Abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "United States"
SELECT airportcode , airportname FROM airports WHERE city = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ATA'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Syracuse' AND T1.DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Abandonment = 'Jetblue'
SELECT T1.airline , count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abnovation = 'JetBlue' INTERSECT SELECT T1.city , T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'ASY' GROUP BY T1.airline
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = "JetBlue"
SELECT T2.airline , count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" GROUP BY T1.airline
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "JetBlue"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline GROUP BY T1.Airline HAVING sum(T2.FlightNo) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline GROUP BY T1.Airline HAVING sum(T2.FlightNo) < 200
SELECT FlightNo FROM flights JOIN airlines ON flights.Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' OR T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM DOCUMENTS
SELECT document_name FROM documents WHERE document_description LIKE "%w%"
SELECT document_name , document_description FROM documents WHERE document_description LIKE "%w%"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
{"sql": "SELECT count(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT count(*) FROM Documents GROUP BY Template_ID HAVING sum(Document_Name) = (SELECT
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = "PPT"
SELECT Template_ID , count(*) FROM Documents GROUP BY Template_ID
SELECT count(*) , Template_ID FROM Documents GROUP BY Template_ID
SELECT T1.date_Effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_from , T1.Date_Effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_Effective_from , template_type_code FROM Templates
SELECT date_Effective_from FROM Templates
SELECT date_Effective_from , date_Effective_to FROM Templates WHERE date_Effective_to - date_Effective_from >= (CURRENT_DATE - 1)
SELECT date_Effective_from , date_Effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , template_type_code FROM Templates WHERE version_number > 5
SELECT Date_Effective_From , template_type_code FROM Templates WHERE version_number > 5
SELECT date_Effective_from , count(*) FROM Templates GROUP BY date_Effective_from
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT date_Effective_from FROM Templates GROUP BY date_Effective_from HAVING count(*) < 3
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number) , max(date_Effective_from) FROM Templates
SELECT version_number , date_effective_from , date_effective_to FROM Templates ORDER BY version_number ASC LIMIT 1
SELECT T1.date_Effective_from , T1.date_Effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"
SELECT T1.document_name , T1.document_id , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_Effective_from , T1.date_Effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_Effective_from , T1.date_Effective_to
SELECT T1.date_Effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_Effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT date_Effective_from , date_Effective_to FROM Templates EXCEPT SELECT T1.date_Effective_from , T1.date_Effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Description = 'Presentation'
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T2.winner_name , T1.match_num FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.age , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT winner_rank , loser_rank FROM matches
SELECT avg(winner_rank) FROM matches UNION SELECT avg(loser_rank) FROM matches
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT winner_rank FROM matches UNION SELECT loser_rank FROM matches ORDER BY winner_rank + loser_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.winner_name , T1.winner_entry FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'yes' ORDER BY birth_date
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T3.player_id = T1.player_id WHERE T2.year = 2016 AND T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tours = "Australian Open")
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T1.year = 2000 AND T3.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name , T1.player_id , T2.minutes FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT avg(T1.winner_rank) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.rank_points , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking_date , COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age , T2.ranking_date LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name = "WTA Championships" AND winner_hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships" AND T2.year = 2022
SELECT T1.winner_name , T1.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT line_1 , line_2 , line_3 FROM Addresses;
SELECT count(*) FROM show WHERE if_first_show = 'yes'
SELECT count(*) FROM show WHERE if_first_show = '1'
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
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T2.name , T1.orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Orchestra_ID ASC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_record_format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_record_format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded = (SELECT max(YEAR_of_Founded) FROM orchestra)
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003 GROUP BY record_company HAVING count(*) >= 2
SELECT count(*) FROM show WHERE RESULT = "if_first_show" AND 宗教 (名字) = "Glebe Park"
SELECT count(*) FROM show WHERE IF_first_show = 'Y' AND Performance_ID = (SELECT Performance_ID FROM performance WHERE Official_ratings_(millions) = 1 AND Weekly_rank = 1 AND TYPE = "first" AND Date LIKE "%Glebe%" )
SELECT TYPE FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE result = "first" ) GROUP BY TYPE HAVING count(*) > 1
SELECT TYPE FROM performance WHERE TYPE != "Non-first" GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.cell_number , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 AND T1.state = 'Indiana'
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T3.professional_id = T1.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T3.professional_id = T1.professional_id WHERE T1.state = "Indiana"
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.professional_id = T3.professional_id WHERE T3.email_address = (SELECT T4.email_address FROM owners AS T3 JOIN treatments AS T4 ON T3.professional_id = T4.professional_id WHERE T4.cost_of_treatment > 1000)
SELECT T1.first_name FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id EXCEPT SELECT T3.first_name FROM Dogs AS T3 JOIN Owners AS T4 ON T3.owner_id = T4.owner_id WHERE T3.name = "dog"
SELECT first_name FROM Professionals EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = "dog"
SELECT T1.professional_id , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.gender = 'dog' EXCEPT SELECT T1.professional_id , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T3.dog_id = T2.dog_id
SELECT professional_id , first_name , last_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type WHERE T2.charge_amount = (SELECT sum(charge_amount) FROM charges) ORDER BY T2.charge_amount LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type WHERE T2.charge_amount = (SELECT sum(charge_amount) FROM charges)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.abandoned_yn) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.professional_id , T2.first_name , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment , T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.date_of_treatment , T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.cost_of_treatment , T3.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN owners AS T3 ON T1.professional_id = T3.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T4.size FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T3.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatment_Types AS T2 ON T1.dog_id = T2.dog_id JOIN treatments AS T3 ON T3.dog_id = T1.dog_id WHERE T2.treatment_type_code = 'Rare'
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "Rarest"
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE "%VA%";
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_of_treatment FROM treatments WHERE treatment_type_code = "Treatment"
SELECT date_of_treatment FROM treatments WHERE treatment_type_code = "dog"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT count(*) FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.dog_id = T2.treatment_type_code WHERE T3.gender = "dog"
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM dogs WHERE abandoned_yn = 'yes')
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 1 );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments );
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 1
SELECT max(age) FROM dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type , charge_amount FROM Charges
SELECT max(charge_amount) FROM charges WHERE charge_type = 'VIP'
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM Professionals;
SELECT email_address , first_name , last_name FROM Professionals;
SELECT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title , highest_position FROM song ORDER BY sales DESC LIMIT 1
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name NOT IN (SELECT T3.Name FROM singer AS T3)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) >= 1
