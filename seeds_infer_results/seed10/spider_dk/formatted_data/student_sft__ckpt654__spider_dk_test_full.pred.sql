SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY age DESC
SELECT name , country FROM singer ORDER BY age DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = "France"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = "France"
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(high) DESC LIMIT 1
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(*) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.Name , COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name , COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name , T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year >= 2014 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT max(High) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday = 1981 OR birthday = 1991
SELECT avg(*) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT min(Lot) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.theme , T3.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.Singer_ID = T3.Singer_ID GROUP BY T2.theme , T3.Name , COUNT(*)
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year > 2014
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Lowest , T2.Highest FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY age LIMIT 1
SELECT weight FROM pets ORDER BY birthdate ASC LIMIT 1
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T1.pettype = "Puppy" AND T3.sex = "F"
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Punno"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Pupdog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Duck"
SELECT major , age FROM student EXCEPT SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.PetType = "Cat"
SELECT Major , Age FROM Student EXCEPT SELECT StuID , Age FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Cat"
SELECT fname , age FROM Student EXCEPT SELECT fname , age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT fname , age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "puppy"
SELECT fname FROM Student EXCEPT SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Cat")
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , weight FROM pets WHERE birthdate = (SELECT min(birthdate) FROM pets)
SELECT petid , weight FROM pets WHERE birthdate > 2020
SELECT petid , weight FROM pets WHERE age > (SELECT min(age) FROM pets WHERE birthdate LIKE "2020%")
SELECT pettype , avg(stuid) , max(stuuid) FROM pets GROUP BY pettype
SELECT pettype , avg(stuid) , max(stuid) FROM pets GROUP BY pettype
SELECT pettype , avg(stuID) , max(stuID) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.fname = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%" AND T3.pettype = "Cat"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%" AND T3.pettype = "Cat"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(DISTINCT Continent) FROM continents
SELECT T1.Contid , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Contid GROUP BY T1.Contid
SELECT T1.CountId , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.CountId = T2.CountId GROUP BY T1.CountId
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker , T2.Fname , COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT T1.Maker , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(W) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Year < 2
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year < 2
SELECT make , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM car_names WHERE Model < 1980
SELECT DISTINCT Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.year < 1980
SELECT T2.Countid , COUNT(*) FROM car_makers AS T1 JOIN continents AS T2 ON T1.Country = T2.Countid GROUP BY T2.Countid
SELECT T1.Countid , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Countid
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , Maker FROM car_makers GROUP BY Maker
SELECT count(*) , T2.id , T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN car_names AS T3 ON T3.MakeId = T2.MakeId WHERE T3.SportAbout = "Amc Hornet"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "Americano" AND T2.Maker = "Hornet"
SELECT count(*) FROM car_makers WHERE Country = "Japanese"
SELECT count(*) FROM car_makers WHERE Country = "Japanese care"
SELECT count(*) FROM car_makers WHERE Country = "Americano"
SELECT count(*) FROM car_makers WHERE Country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MilesPerGallon) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT Maker , Model FROM car_makers UNION SELECT Maker , Model FROM model_list
SELECT Maker , Model FROM car_makers UNION SELECT Maker , Model FROM model_list
SELECT T1.CountryName , T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT count(*) FROM cars_data WHERE HorsePower > 150
SELECT count(*) FROM cars_data WHERE HorsePower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.Cylinders = 3
SELECT modelid FROM cars_data GROUP BY modelid ORDER BY MPG DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = "TESLA"
SELECT avg(Edispl) FROM cars_data
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_makers GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR = "2004"
SELECT count(*) FROM car_makers WHERE Maker = "American Motor"
SELECT count(*) FROM car_makers WHERE Maker = "American Motor"
SELECT T1.Maker , T1.Fname , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T1.Id = T3.Id WHERE T2.Maker = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "General Motors" OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accimate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data GROUP BY Model ORDER BY AVG(Horsepower) DESC LIMIT 4
SELECT makeid , make FROM car_makers EXCEPT SELECT makeid , make FROM cars_data WHERE cylinders > 3
SELECT makeid , model FROM cars_data WHERE horsepower < 4
SELECT max(MilesPerGallon) FROM car_makers WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM cars_data WHERE Weight < 3500 EXCEPT SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "Ford Motor"
SELECT DISTINCT Model FROM cars_data WHERE Weight < 3500 EXCEPT SELECT DISTINCT Model FROM model_list JOIN car_makers ON model_list.Maker = car_makers.id WHERE Manufacturer = "Ford Motor"
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T2.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING count(*) >= 2 INTERSECT SELECT T2.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING count(*) >= 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker WHERE T2.Model = "tesla"
SELECT CountryId , CountryName FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT CountryId , CountryName FROM car_names GROUP BY CountryId HAVING Model = "tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "American"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "American"
SELECT AirportCode , AirportName FROM airports WHERE Country = "Jackson"
SELECT AirportCode , AirportName FROM airports WHERE City = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = "Americano"
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
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley' AND T1.SourceAirport = 'Syracuse'
SELECT count(*) FROM flights WHERE SourceAirport = "Syracuse" AND DestAirport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE FlightNo = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.Airline = "JetBlue" AND T2.AirportName = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'JetBlue'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.AirportName = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "JetBlue" AND T2.City = "Aberdeen"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.DestAirport GROUP BY T1.AirLine ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport != T1.uid AND T2.DestAirport != T2.SourceAirport
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.AirLine = T2.DestAirport EXCEPT SELECT T1.AirLine FROM airlines AS T1 JOIN flights AS T2 ON T1.AirLine = T2.SourceAirport
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.uid HAVING count(*) < 200
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.AirLine = T2.AirLine WHERE T2.Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SOURCEAirport = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE "%w%"
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT Document_Description FROM Documents WHERE Document_Name = "Robbin CV" AND Template_ID = "Robbin CV"
SELECT Document_Description , Template_ID FROM Documents WHERE Document_Name = "Robbin CV"
SELECT count(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT count(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT Template_ID , count(*) FROM Documents GROUP BY Template_ID
SELECT count(*) , T1 Template_ID FROM Documents GROUP BY T1 Template_ID
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_To - T1.Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM_templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_To - Date_Effective_From FROM Templates
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PTT"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_To - Date_Effective_From FROM TEMPLS WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Version_Number > 5 AND Template_Type_Code = "Text"
SELECT Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_To - Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_To - Date_Effective_From
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From HAVING COUNT(*) < 3
SELECT Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From HAVING COUNT(*) < 3
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM T1 AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT document_name , document_id , template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_id = T2.Template_id WHERE T2.Template_Type_Code = "BK"
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.Date_Effective_From , T1.Date_Effective_To , COUNT(*) FROMTemplates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_To
SELECT T2.Date_Effective_From , T2.Date_Effective_To , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Date_Effective_To
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_From , T1.Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Documents AS T1 JOIN Templates AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Date_Effective_To - T1.Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Documents
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Documents
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID
SELECT Date_Effective_To - Date_Effective_From FROMTemplates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Presentation"
SELECT Date_Effective_To - Date_Effective_From FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.age , T2.age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.age , T2.age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) , match_num FROM matches GROUP BY match_num
SELECT avg(T1.rank) , T2.player_id FROM ranks AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.player_id
SELECT max(T1.winning_rank) , max(T2.winning_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winning_rank = T2.player_id GROUP BY T2.player_id
SELECT T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id UNION SELECT T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
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
SELECT T2.first_name , T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' INTERSECT SELECT T2.first_name , T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.player_id , T1.winning_rank , T1.winning_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.rank WHERE T3.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_rank_points = T3.winner_rank_points WHERE T3.tourney_name = 'Australian Open'
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name , T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT avg(T1.rating) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.rating) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.rankling_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourneys) , ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date ORDER BY ranking_date ASC
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.country_code = "WTA Championships" INTERSECT SELECT count(DISTINCT T1.winer_id) FROM matches AS T1 JOIN players AS T2 ON T1.winer_id = T2.player_id WHERE T2.country_code = "Left-handed"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T2.first_name , T2.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , T2.Hand FROM players AS T1 JOIN players AS T2 ON T1.Hand = T2.Hand GROUP BY T2.Hand
SELECT DISTINCT line_1 FROM Addresses
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T2.Name , T1 Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Age ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Age ASC
SELECT record_company FROM orchestra ORDER BY year_of_founded LIMIT 1
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_OF_Founded < 2003
SELECT record_company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN orchestra AS T3 ON T2.Orange_ID = T3.Orange_ID WHERE T3.Park_Name = "Glebe Park" AND T1.Type = "First"
SELECT count(*) FROM show WHERE If_first_show = "Glebe Park"
SELECT T2.Type FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Iff_first_show != T1.Iff_first_show
SELECT T2.Type FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Official_ratings != "First" GROUP BY T2.Type HAVING COUNT(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) >= 1
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.city > 1000
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id , first_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT profesional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , T1.treatment_type_description FROM treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT name , date_of_treatment FROM dogs WHERE breed_code = (SELECT min(breed_code) FROM dogs)
SELECT name , date_of_birth FROM dogs GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT date_of_birth FROM dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT date_of_birth FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM Professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'yes'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT T1.professional_id) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT count(DISTINCT T2.professional_id) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT first_name , last_name FROM Professionals WHERE city LIKE "%West%"
SELECT first_name FROM professionals WHERE city LIKE "%West%"
SELECT state FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM professionals WHERE profesional_id NOT IN ( SELECT profesional_id FROM treatments WHERE treatment_type_code = "animal")
SELECT count(*) FROM professionals WHERE profesional_id NOT IN ( SELECT profesional_id FROM treatments );
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'yes'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'yes'
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type , charge_amount FROM charges GROUP BY charge_type
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT email_address , first_name FROM Professionals
SELECT email_address , first_name FROM Professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.size_code WHERE T1.name = "Dogs"
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM singer WHERE Citizenship = "Common"
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales ASC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT max(T2.Highest_Position) , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945
