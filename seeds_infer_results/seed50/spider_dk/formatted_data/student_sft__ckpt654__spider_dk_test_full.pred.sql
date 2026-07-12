SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY age DESC
SELECT name , country FROM singer ORDER BY age DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = "France"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = "France"
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT Song_Name , Song_Release_year FROM singer ORDER BY Birthday ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT country , count(*) FROM singer GROUP BY country
SELECT country , count(*) FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(high) DESC LIMIT 1
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(high) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.height FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT max(High) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(low) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday = 1981 OR birthday = 1991
SELECT avg(*) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT min(Lot) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.theme , T1.cconcert_name , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.cconcert_id = T2.cconcert_id GROUP BY T1.theme
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.name
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year > 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT t2.Lowest , t2.Highest FROM concert AS t1 JOIN stadium AS t2 ON t1.Stadium_ID = t2.Stadium_ID WHERE t1.Year = 2014 INTERSECT SELECT t2.Lowest , t2.Highest FROM concert AS t1 JOIN stadium AS t2 ON t1.Stadium_ID = t2.Stadium_ID WHERE t1.Year = 2015
SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY birthdate ASC LIMIT 1
SELECT weight FROM pets WHERE pettype = 'dog' ORDER BY age LIMIT 1
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T2.fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'Cat' OR T3.pettype = 'Puppie'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Duck"
SELECT Major , Age FROM Student EXCEPT SELECT T1.Major , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pettype = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Cat"
SELECT fname , age FROM Student EXCEPT SELECT fname , age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' EXCEPT SELECT fname , age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'puppy'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = "Puppy" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = "Kitten"
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate > 2020
SELECT petid , weight FROM pets WHERE age > (SELECT min(age) FROM pets WHERE birthdate LIKE "2020%")
SELECT pettype , avg(stuID) , max(stuID) FROM pets GROUP BY pettype
SELECT pettype , avg(stuID) , max(stuID) FROM pets GROUP BY pettype
SELECT pettype , avg(stuID) , max(stuID) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%" AND T3.pettype = "Cat"
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%" AND T3.pettype = "Cat"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(DISTINCT Continent) FROM continents
SELECT T1.Contid , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Contid GROUP BY T1.Contid
SELECT T1.CountId , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.CountId = T2.CountId GROUP BY T1.CountId
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker , T1.Fname , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Maker , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Year < 2
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Year < 2
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.ID = T2.ID ORDER BY T2.Year ASC LIMIT 1
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT Model FROM cars_data WHERE YEAR < 1980
SELECT DISTINCT Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN car_names AS T3 ON T1.Model = T3.Model WHERE T3.year < 1980
SELECT T1.Countid , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Countid
SELECT T1.Countinent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.CountId = T2.CountryId GROUP BY T1.CountId
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , Maker FROM car_makers GROUP BY Maker
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN car_names AS T3 ON T2.MakeId = T3.MakeId WHERE T3.Sportabout = "amc hornet"
SELECT avg(T1.Accelerate) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "Americano"
SELECT count(*) FROM car_makers WHERE Country = "Japanese"
SELECT count(*) FROM car_makers WHERE Country = "Japanese care"
SELECT count(*) FROM car_makers WHERE Country = "Americano"
SELECT count(*) FROM car_makers WHERE Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MilesPerGallon) FROM car_makers WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT Maker , Model FROM car_makers UNION SELECT Maker , Model FROM model_list
SELECT Maker , Model FROM car_makers UNION SELECT Maker , Model FROM model_list
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT CountryName , CountryId FROM car_makers
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE HorsePower > 150
SELECT YEAR , AVG(Weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) >= 3)
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.Cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY MPG DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = "tesla"
SELECT avg(Edispl) FROM cars_data
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_makers GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE YEAR = "2004"
SELECT count(*) FROM cars_data WHERE YEAR = "2004"
SELECT count(*) FROM car_makers WHERE Maker = "American Motor"
SELECT count(*) FROM car_makers WHERE Maker = "American Motor"
SELECT T1.Maker , T1.Fname , T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT T1.Maker , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T1.id = T3.id WHERE T2.Maker = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T1.Maker = "General Motors" OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinder FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data GROUP BY Model ORDER BY AVG(Horsepower) DESC LIMIT 4
SELECT makeid , make FROM car_makers EXCEPT SELECT makeid , make FROM car_names WHERE cylinders > 3 AND horsepower > 60 INTERSECT SELECT makeid , make FROM car_makers
SELECT makeid , model FROM car_names EXCEPT SELECT makeid , model FROM cars_data WHERE horsepower < 4
SELECT max(MilesPerGallon) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T1.Maker = 'Ford Motor'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = "Ford Motor"
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) >= 2 INTERSECT SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) >= 3
SELECT T2.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) >= 2 INTERSECT SELECT T2.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) >= 3
SELECT Country , CountryName FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT Model , CountryName FROM car_names GROUP BY ModelId HAVING Model = "tesla"
SELECT CountryId , CountryName FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT CountryId , CountryName FROM car_names GROUP BY CountryId HAVING Model = "tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "Americano"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "Americano"
SELECT AirportCode , AirportName FROM airports WHERE Country = "Jackson"
SELECT AirportCode , AirportName FROM airports WHERE City = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton"
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley' AND T1.SourceAirport = 'Syracuse'
SELECT count(*) FROM flights WHERE SourceAirport = "Syracuse" AND Dest Airport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "JetBlue"
SELECT count(*) FROM flights WHERE FlightNo = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.AirLine WHERE T2.AirportName = "JetBlue"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "ASY" AND T2.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.AirportName = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.AirLine WHERE T2.City = "Aberdeen" AND T3.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "JetBlue" AND T1.SourceAirport = "Eberhard"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Duid GROUP BY T2.Duid ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.DestAirport GROUP BY T1.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.AirLine = T2.AirLine WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.AirLine FROM airlines AS T1 JOIN flights AS T2 ON T1.AirLine = T2.AirLine WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.AirLine GROUP BY T1.AirLine HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SOURCEAirport = "Jackson"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV" AND template_id = "Robbin CV"
SELECT document_description , T1.Template_ID FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Robbin CV"
SELECT count(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT count(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT Template_ID , COUNT(*) FROM Documents GROUP BY Template_ID
SELECT Template_ID , COUNT(*) FROM Documents GROUP BY Template_ID
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_To - T1.Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_To - Date_Effective_From , Template_Type_Code FROM TEMPLATIONS
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_To - Date_Effective_From FROM Templates
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_To - Date_Effective_from FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_To - Date_Effective_From FROMTemplates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_To - Date_Effective_From FROM TEMPLATIONS WHERE Template_Type_Code = "CV"
SELECT dateffective_to - dateffective_from FROM Templates WHERE version_number > 5 AND template_type_code = "Text"
SELECT date_ffective_to - date_ffective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_To - Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_To - Date_Effective_From
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From HAVING COUNT(*) < 3
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From HAVING COUNT(*) < 3
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT document_name , document_id , template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.Template_Type_Code = "BK"
SELECT T2.Date_Effective_From , T2.Date_Effective_To , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Document_ID
SELECT T1.Date_Effective_From , T1.Date_Effective_To , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_To
SELECT T1.Date_Effective_from , T1.Date_Effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_to - T1.Date_Effective_from ORDER BY count(*) DESC LIMIT 1
SELECT T1.dateffective_to - T1.dateffective_from FROM Documents AS T1 JOIN Templates AS T2 ON T1.Document_id = T2.Document_id GROUP BY T1.Document_id ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Documents
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Documents
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Type_Code = "Presentation"
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Details = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.age , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.age , T2.age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) , match_num FROM matches GROUP BY match_num
SELECT avg(T1.winery_rank) , avg(T2.winery_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winery_rank = T2.winery_rank GROUP BY T2.player_id
SELECT max(T1.rank) , T2.player_id FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT max(T1.rank) , T2.player_id FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.wloser_id
SELECT T1.rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T2.first_name , T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winning_rank , T2.winning_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.rank WHERE T3.tourney_name = "Australian Open Tourney" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_rank_points = T3.winner_rank_points WHERE T3.tourney_name = 'Australian Open'
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T1.match_num , T1.loser_name , max(T1.lose_time) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.match_num
SELECT avg(T1.rating) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.rating) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.rating_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourneys) , ranking FROM rankings GROUP BY ranking_date
SELECT ranking , count(*) FROM rankings GROUP BY ranking_date ORDER BY count(*) DESC
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT T2.winner_name , T2.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3
SELECT count(DISTINCT T2.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' INTERSECT SELECT count(DISTINCT T2.winer_id) FROM matches AS T1 JOIN players AS T2 ON T1.winer_id = T2.player_id WHERE T1.tourney_name = 'Left-handed'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.winner_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T2.first_name , T2.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT line_1 FROM Addresses UNION SELECT line_2 FROM Addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality = 'American'
SELECT name FROM conductor WHERE nationality = 'American'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T2.name , T1.organchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2 Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.year_of_founded LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Age ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Age ASC
SELECT record_company FROM orchestra ORDER BY year_of_founded LIMIT 1
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003
SELECT record_company FROM orchestra WHERE year_of_founded > 2003 GROUP BY record_company HAVING count(*) = 2
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN orchestra AS T3 ON T2.Orachestra_ID = T3.Orachestra_ID WHERE T3.Official_ratings_(millions) = "Glebe Park"
SELECT count(*) FROM show WHERE If_first_show = "Glebe Park"
SELECT T1.type FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.type HAVING count(*) > 1
SELECT T2.Type FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Official_ratings != "No" GROUP BY T1.Performance_ID HAVING COUNT(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN costs AS T3 ON T2.cost_of_treatment = T3.cost_of_treatment WHERE T3.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.cost_of_treatment > 1000
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT profesional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM T2)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT name , date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN breeds AS T4 ON T1.breed_code = T4.breed_code ORDER BY T4.breed_name ASC LIMIT 1
SELECT name , date_of_birth FROM dogs WHERE breed_code = (SELECT min(breed_code) FROM dogs)
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT date_of_birth FROM dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'male'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'No'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT T1.professional_id) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT count(DISTINCT T1.professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT first_name FROM Professionals WHERE city LIKE "%West%"
SELECT first_name , last_name FROM Professionals WHERE city LIKE "%West%"
SELECT state FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < ( SELECT avg(age) FROM Dogs )
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs GROUP BY owner_id HAVING count(*) > 1000 );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM professionals WHERE profesional_id NOT IN ( SELECT profesional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id );
SELECT count(*) FROM professionals WHERE profesional_id NOT IN ( SELECT profesional_id FROM treatments )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'No'
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type , charge_amount FROM charges GROUP BY charge_type
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT email_address , first_name FROM Professionals
SELECT email_address , first_name FROM Professionals
SELECT DISTINCT T1.breed_type , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_code , T2.size_code FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Birth_Year != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) = "Msot"
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Higher_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT max(T2.Highest_Position) , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945
