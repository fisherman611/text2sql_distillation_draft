SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT count(*) , state FROM instrument GROUP BY state
SELECT title FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T2.song_title FROM singer AS T1 JOIN singer AS T2 ON T1.song_id = T2.song_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(high) DESC LIMIT 1
SELECT name , capacity FROM stadium GROUP BY name ORDER BY avg(high) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT name , count(*) FROM stadium GROUP BY name
SELECT count(*) , name FROM stadium GROUP BY name
SELECT T2.Name , T1.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year >= 2014 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name , capacity FROM stadium WHERE capacity > 2013 GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT TIME FROM concert GROUP BY TIME ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Age FROM singer WHERE Age > 40 INTERSECT SELECT Age FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT name FROM stadium WHERE YEAR = 2014
SELECT name FROM stadium EXCEPT SELECT name FROM stadium WHERE year = 2014
SELECT T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.theme
SELECT T2.theme , T3.name , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id GROUP BY T2.theme , T3.name , count(*)
SELECT name , count(*) FROM singer GROUP BY name
SELECT name , count(*) FROM singer GROUP BY name
SELECT name FROM singer WHERE song_release_year = 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.song_name LIKE '%Hey%'
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY age LIMIT 1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(*) FROM Student WHERE sex = 'F'
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pet_type) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Puppie"
SELECT T2.fname FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid WHERE T1.pettype = "Cat" OR T1.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Duck"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Pug"
SELECT major , age FROM student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT age , major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE pet_type = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = "Kitten"
SELECT fname , age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE petID = 'Puppy' EXCEPT SELECT StuID FROM Has_Pet WHERE petID = 'Cat')
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' EXCEPT SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten'
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT StuID , weight FROM pets WHERE pet_age > 1
SELECT StuID , weight FROM pets WHERE pet_age > 1
SELECT avg(age) , max(age) , sex FROM Student GROUP BY sex
SELECT pet_type , avg(age) , max(age) FROM pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Countid , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid = T2.Countid GROUP BY T1.Countid
SELECT T1.ContId , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId GROUP BY T1.ContId
SELECT count(*) FROM states
SELECT count(*) FROM countries
SELECT T1.Fname , T1.Lname , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Water) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id ORDER BY T1.Year ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM car_makers WHERE YEAR > 1980
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT T1.Countid , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Countid
SELECT T1.Countid , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Countid = T2.Countid GROUP BY T1.Countid
SELECT T1.State FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.MakeId GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.StateName FROM car_makers AS T1 JOIN cars AS T2 ON T1.Model = T2.Model GROUP BY T1.StateName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT count(*) , T1.id , T1 FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.Maker = "amc hornet sportabout"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "Amc Hornet"
SELECT count(*) FROM car_makers
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers WHERE CountryName = "USA"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND CYLINDERS = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT Manufacturer , Model FROM model_list
SELECT Maker , Model FROM model_list
SELECT T1.State , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id GROUP BY T2.id HAVING COUNT(*) >= 1
SELECT T1.State , T1.CountId FROM states AS T1 JOIN car_makers AS T2 ON T1.CountId = T2.CountId
SELECT Id FROM cars_data WHERE HorsePower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.State FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.State HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , Manufacturer FROM cars_data WHERE Cylinders = 3
SELECT max(Horsepower) , Maker FROM cars_data GROUP BY Maker HAVING COUNT(*) = 3
SELECT model FROM cars_data GROUP BY model ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = "volvo"
SELECT avg(Edispl) FROM cars_data
SELECT max(Accel) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_makers GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE Cylinder > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT T1.Fname , T1.LateralID , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT T2.Maker , T1.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Type FROM car_makers AS T1 JOIN car_data AS T2 ON T1.Id = T2.Id WHERE T2.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T3.ID = T2.MakeId WHERE T3.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "volvo" ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > ( SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accycle) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY COUNT(*) HAVING COUNT(*) > 2
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT count(*) FROM cars_data WHERE Cylinder > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data GROUP BY Model ORDER BY AVG(Horsepower) DESC LIMIT 4
SELECT makeid , manufacturer FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT makeid , manufacturer FROM cars_data WHERE cylinders > 3
SELECT Manufacturer , Model FROM cars_data WHERE Cylinders < 4
SELECT max(MPG) FROM car_makers WHERE Cylinders <= 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM cars_data WHERE Weight < 3500 EXCEPT SELECT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT Model FROM model_list AS T2 JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "Ford Motor Company"
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING COUNT(*) >= 2 INTERSECT SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING COUNT(*) >= 3
SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING count(*) >= 2 INTERSECT SELECT T2.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING count(*) >= 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN model_list AS T3 ON T2.Id = T3.Model GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN model_list AS T3 ON T2.Id = T3.Model WHERE T3.Model = "fiat"
SELECT T1.CountId , T1.CountryName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.CountId HAVING COUNT(*) > 3 UNION SELECT T1.CountId , T1.CountryName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.CountId HAVING COUNT(*) = 0
SELECT T1.State FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T1.Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT AirportName , AirportName FROM airlines WHERE Country = "USA"
SELECT AirportName , AirportName FROM airports WHERE Country = "USA"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airlines
SELECT sum(Airline) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation LIKE "%UAL%"
SELECT Abbreviation FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT City , State from airports WHERE AirportName = "Alton"
SELECT City , State for airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE AirportCode = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Eberon"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley' AND T1.SourceAirport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = 'United Airlines' AND T2.destairport = 'ASY'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "United Airlines"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.sourceairport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.AirportName = "United Airlines"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T1.airline = 'United Airlines' AND T3.city = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = 'United Airlines' AND T1.city = 'Aberdeen'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.flights , T1.sourceairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) ASC LIMIT 1
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.DestAirport GROUP BY T1.State ORDER BY COUNT(*) ASC LIMIT 1
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.AirLine WHERE T2.SourceAirport = 'AHD'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN airports AS T3 ON T2.DestAirport = T3.AirportCode WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.AirLine WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.AirLine FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.AirLine WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.AirLine WHERE T2.CountryAbbrev = "APG" INTERSECT SELECT T1.AirLine FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.AirLine = T3.AirLine WHERE T2.CountryAbbrev = "CVO"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT DISTINCT T1.AirLine FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport
SELECT SourceAirport FROM flights GROUP BY SourceAirport HAVING COUNT(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT * FROM flights GROUP BY destinationairport HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) AND AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT DISTINCT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) OR AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , town FROM employee GROUP BY town
SELECT count(*) , town FROM employee GROUP BY town
SELECT town FROM employee WHERE age < 30 GROUP BY town HAVING count(*) > 1
SELECT town FROM employee WHERE age < 30 GROUP BY town HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T1.name , T1.district FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT T1.name , T1.city , T1.district FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = T2.year_awarded
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT T2.name FROM hire AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employment)
SELECT T2.name , count(*) FROM hire AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , store_name FROM shop GROUP BY store_name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(T1.Bonus) FROM assessment AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hire
SELECT * FROM hire
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT store_city) FROM employee
SELECT count(*) FROM Papers
SELECT count(*) FROM Ref_Paper
SELECT T1.paper_id , T1.paper_name , T1.paper_description FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.paper_id = T2.paper_id
SELECT T1.id , T1.Name , T1.Description FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.Rate_Effective_To = T2.Rate_Effective_To
SELECT document_name , document_id FROM Documents WHERE document_description LIKE "%w%"
SELECT T1.title , T1.paper_id FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.paper_id = T2.paper_id WHERE T2.Describing_Content LIKE "%w%"
SELECT T1.paper_id , T1.layout_id , T1.document_description FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.Robbin CV = T2.Template_Type_Code
SELECT T1.paper_id , T1.layout_id , T1.Other_Details FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.Robbin CV = T2.Robbin CV
SELECT count(DISTINCT Other_Details) FROM Documents
SELECT count(DISTINCT t1.Other_Details) FROM Paragraphs AS t1 JOIN Documents AS t2 ON t1.Document_ID = t2.Document_ID
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = "PPT"
SELECT T1.layout_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.layout_id
SELECT count(*) , T1.T1.layout_id FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.T1.T1.layout_id = T2.layout_id GROUP BY T1.layout_id
SELECT T1.layout_id , T1.Template_Type_Code FROM LAYOUTS AS T1 JOIN Ref_templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.layout_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.layout_id , T1.type_code FROM Layouts AS T1 JOIN Ref_templates AS T2 ON T1.type_code = T2.type_code GROUP BY T1.layout_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Papers
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Ref_Template_Types
SELECT T1.Template_ID , T2.Version_Number , T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_ID , T2.Version_Number , T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T2.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "PP" OR T2.Template_Type_Description = "PPT"
SELECT T1.Template_ID FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = "PP" OR T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = "CV"
SELECT T1.Edition_Number , T1.Template_Type_Code FROM LAYOUTS AS T1 JOIN CUSTOMERS AS T2 ON T1.Edition_Number > 5
SELECT T1.Edition_Number , T2.Template_Type_Description FROM LAYOUTS AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Edition_Number > 5
SELECT Template_Type_Code , COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT count(*) , T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Description
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOINTemplates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM Ref_Template_Types GROUP BY TYPE HAVING COUNT(*) < 3
SELECT Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description HAVING COUNT(*) < 3
SELECT min(Version_Number) , T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Document_ID = T2.Template_ID
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Name = "Data base"
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Document_ID WHERE T3.Document_Name = "Data base"
SELECT document_name FROM Documents WHERE document_type_code = "BK"
SELECT T1.paper_name FROM papers AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.Template_Type_Code = "BK"
SELECT T2.Template_Type_Description , COUNT(*) FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT count(*) , T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Description
SELECT T2.layout_type_code FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types EXCEPT SELECT DISTINCT Template_Type_Code FROM Documents
SELECT Template_Type_Description FROM Ref_Template_Types EXCEPT SELECT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID
SELECT T1.Template_Type_Name , T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_Type_Name , T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT T1.Name FROM Ref_Template_Types AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Book"
SELECT TYPE_CODE FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.Template_ID FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "Presentation"
SELECT T1.Template_ID FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Summer Show"
SELECT count(*) FROM pages AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT other_details FROM Paragraphs WHERE paragraph_text = "Korea"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea%"
SELECT T2.para_id , T2.para_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T1.para_id , T1.para_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.para_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT count(*) , T1.paper_id FROM Papers AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT document_id , document_name , count(*) FROM Documents GROUP BY document_id
SELECT T1.document_id , T1.paper_id , count(*) FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id , T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id , T1.paper_name FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT Paracard_ID FROM Paragraphs GROUP BY Paracard_ID HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Ireland'
SELECT Document_ID FROM Parallaxs WHERE Paragraph_Text = "Brazil" INTERSECT SELECT Document_ID FROM Parallaxs WHERE Paragraph_Text = "Ireland"
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT COUNT(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT Name , Course FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name , T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course = "Math"
SELECT T2.Name , COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(Age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT name , LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY Age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.total_tickets) , max(T1.total_tickets) FROM visit AS T1 JOIN guest AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id
SELECT sum(T1.Total_expense) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Opening_Year < 2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Opening_Year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Opening_Year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM matches
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM participants
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM matches AS T1 JOIN matches AS T2 ON T1.match_id = T2.match_id GROUP BY T1.tourney_name HAVING count(*) > 10
SELECT T2.tournament_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.winner_id = T2.winning_id GROUP BY T2.tournament_name HAVING count(*) > 10
SELECT T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.winer_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T2.first_name , T2.winner_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T2.first_name , T2.winner_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT first_name , State abbreviation FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winning_rank , T1.winning_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.ranking_rank_points = (SELECT max(T3.ranking_rank_points) FROM rankings AS T3 JOIN matches AS T4 ON T3.tourney_id = T4.tourney_id WHERE T4.tourney_name = 'Australian Open')
SELECT T2.winery_NAME FROM MATCHes AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winer_rank = T3.winer_rank_points WHERE T3.tourney_name = "Australian Open" GROUP BY T2.winery_NAME ORDER BY count(*) DESC LIMIT 1
SELECT T2.losing_name , T2.winning_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.rating) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T2.first_name , avg(T1.rating) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT sum(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T2.first_name , T1.ranking_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT count(*) , state FROM matches GROUP BY state
SELECT count(*) , state FROM states GROUP BY state
SELECT T1.state FROM states AS T1 JOIN matches AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM matches GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.country_code HAVING count(*) > 50
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT count(*) , ranking FROM rankings GROUP BY ranking
SELECT sum(tourneys) , ranking FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3
SELECT count(DISTINCT T2.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' INTERSECT SELECT count(DISTINCT T2.winer_name) FROM matches AS T1 JOIN players AS T2 ON T1.winer_id = T2.player_id WHERE T1.tourney_name = 'Left-handed'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T2.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.hand
SELECT count(*) , T2.HAND FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.HAND
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , RESULT FROM battle
SELECT max(killed) , min(killed) FROM death GROUP BY max(killed)
SELECT avg(injured) FROM death
SELECT T1.deaths , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT id , name FROM ship EXCEPT SELECT DISTINCT id , name FROM ship WHERE ship_type = 'Brig'
SELECT id , name FROM death GROUP BY id HAVING sum killed > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander >= 'Kaloyan' AND latin_commander <= 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE tonnage = 225 );
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle EXCEPT SELECT T1.name , T1.Result , T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.location = 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses WHERE line_1 LIKE "%1%" AND line_2 LIKE "%2%"
SELECT line_1 , line_2 FROM Addresses
SELECT count(DISTINCT course_id) FROM courses
SELECT count(DISTINCT course_id) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id JOIN semester_sections AS T3 ON T2.section_id = T3.section_id WHERE T3.section_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_name , count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree) FROM degree_programs
SELECT count(DISTINCT T1.degrees) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT count(DISTINCT degree_summary) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name , section_description FROM sections
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.section_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM departments AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Undergraduate"
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T2.course_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_program AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.program_id , T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.course_program_id GROUP BY T1.program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.first_name , T2.middle_name , T2.last_name , count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id , count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters EXCEPT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id
SELECT section_name FROM sections WHERE course_id NOT IN (SELECT student_enrolment_id FROM Student_Enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE current_address_id IN (SELECT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina") EXCEPT SELECT T2.last_name FROM students AS T2 JOIN addresses AS T1 ON T1.address_id = T2.current_address_id JOIN student_enrolment AS T3 ON T2.student_id = T3.student_id JOIN degree_program AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT last_name FROM Students WHERE ssn NOT IN (SELECT student_id FROM Student_Enrolment) AND addresses.state_province_county = "North Carolina")
SELECT T2.date_first_registered , T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_left , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT phone_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT phone_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id != (SELECT current_address_id FROM addresses)
SELECT first_name FROM Students WHERE permanent_address_id != (SELECT permanent_address_id FROM Addresses)
SELECT T1.permanent_address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.permanent_address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM Students
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(tract_date) , other_details FROM TRANSCRIPTS
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT last_name FROM Students ORDER BY date_left DESC LIMIT 1
SELECT max(date_left) FROM Students
SELECT count(*) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id
SELECT max(T2.student_id) , T1.student_enrolment_id FROM student_enrolment AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id
SELECT date_first_registered , student_id FROM Students GROUP BY student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_left , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Master' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE student_id = 'Bachelor'
SELECT T2.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.course_name = "MA" INTERSECT SELECT T2.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.course_name = "BPhD"
SELECT count(DISTINCT T2.address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.other_address_details FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM sections ORDER BY section_description DESC LIMIT 1
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = "Haitt" OR T2.cell_mobile_number = "09700166582"
SELECT first_name , last_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = "Haittany") OR cell_mobile_number LIKE "09700166582")
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title , directed_by FROM Cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM Cartoon ORDER BY released_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT directed_by FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT State , COUNT(*) FROM TV_Channel GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT language , count(*) FROM TV_channel GROUP BY language
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T2.id = T3.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_CHANNEL AS T1 JOIN TV_Series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Ser_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Series_Name = "Sky Radio"
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT Directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD TV'
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD TV"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.State FROM TV_state AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT Country FROM TV_channel EXCEPT SELECT T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT DISTINCT State FROM TV_series EXCEPT SELECT DISTINCT State FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT T1.Series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name , T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT T2.series_name , T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name , T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE LANGUAGE != "english"
SELECT pixel_aspect_ratio_par , country FROM TV_channel WHERE language != 'english'
SELECT id FROM TV_channel WHERE country = 'States' GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_CHANNEL EXCEPT SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM people
SELECT count(*) FROM people
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T2.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM people
SELECT Name FROM people
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.People_ID ORDER BY COUNT(*) ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONCTANTS EXCEPT SELECT contestant_name FROM CONCTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.comcontestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT count(*) FROM votes GROUP BY count(*) ORDER BY count(*) DESC LIMIT 1
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contest_name = 'Tabatha Gehling'
SELECT T1.area_code FROM Area_code_state AS T1 JOIN Votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM Area_code_state AS T1 JOIN Votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT HeadOfState FROM country WHERE DependentState > 1950
SELECT Name FROM country WHERE Founded > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Ripad"
SELECT count(DISTINCT gnp) FROM country
SELECT sum(t1.Area) FROM country AS t1 JOIN country AS t2 ON t1.Code = t2.Code WHERE t1.Region = "Caribbean" AND t1.HeadOfState = "State"
SELECT sum(t1.area) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code JOIN countrylanguage AS t3 ON t2.code = t3.code WHERE t1.continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "G Kabul"
SELECT region FROM country WHERE district = "Kabul"
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT region , population FROM country WHERE countrycode = " Angola"
SELECT region , population FROM country WHERE countrycode = " Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code WHERE T2.Languages = "Central Africa"
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT HeadOfState FROM country WHERE Continent = "Asia" ORDER BY LifExpectancy ASC LIMIT 1
SELECT sum(gnp) , count(*) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Asia'
SELECT gnp , count(*) FROM country WHERE continent = 'Asia' GROUP BY count(*) ORDER BY gnp DESC LIMIT 1
SELECT avg(t1.lifespan) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'African'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code WHERE T2.IsOfficial = 'Yes' AND T1.CountryCode = 'Africa'
SELECT sum(SurfaceArea) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Asia" OR T1.Name = "Europe"
SELECT sum(t1.area) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'Asia' OR t2.isofficial = 'Europe'
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.code WHERE T1.governorform = 'United States'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'United States'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT T1.language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(*) FROM countrylanguage WHERE isofficial = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE isofficial = 'Yes' AND countrycode = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1 Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1 Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1 Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1 Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "english" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "dutch"
SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T2.HeadOfState FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = "English" INTERSECT SELECT T2.HeadOfState FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "French"
SELECT count(DISTINCT t1.clant) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = "Chinese"
SELECT count(DISTINCT t1.cnt) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.language = "Chinese"
SELECT T1.District FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" OR T2.Language = "dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT Name FROM countrylanguage WHERE IsOfficial = "English" OR IsOfficial = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" OR T2.IsOfficial = "Dutch"
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asian" GROUP BY T2.language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE HAVING COUNT(*) = 1
SELECT T1.languages FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Governor = 'United States'
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code JOIN countrylanguage AS t3 ON t2.Code = t3.CountryCode GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.code JOIN countrylanguage AS t3 ON t2.code = t3.code GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE countrycode = (SELECT code FROM country WHERE nationality = 'Asian')
SELECT avg(t1.lifespan) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'English'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.code WHERE t2.isofficial = 'No'
SELECT sum(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "english")
SELECT count(*) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN country AS T3 ON T1.CountryCode = T3.Code WHERE T2.HeadOfState = "Beatrix"
SELECT sum(t1.count(DISTINCT t1.languages) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.founded < 1930
SELECT count(DISTINCT T2.languages) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indep_year < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT Name FROM country WHERE Population < (SELECT max(Population) FROM country WHERE Continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT CountryCode FROM city GROUP BY CountryCode HAVING COUNT(*) > (SELECT max(COUNT) FROM country WHERE Continent = "Africa")
SELECT HeadOfState FROM country WHERE Population > (SELECT max(Population) FROM country WHERE Continent = "Africa")
SELECT Code FROM country EXCEPT SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english"
SELECT HeadOfState FROM country EXCEPT SELECT HeadOfState FROM countrylanguage
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "english"
SELECT T1.GNP FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "english"
SELECT Code FROM country WHERE GNP != "Republic" AND LANGUAGE != "English"
SELECT HeadOfState FROM country EXCEPT SELECT HeadOfState FROM country WHERE GovernmentForm = "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Name != "Official"
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Europe') EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.isofficial = 'English'
SELECT DISTINCT T1.id FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.isofficial = 'Chinese'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Region = "Asia" AND T3.IsOfficial = "Chinese"
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , founded_year , territory FROM country ORDER BY Population ASC LIMIT 1
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name , population , localname FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT gnp , count(*) FROM country GROUP BY gnp HAVING avg(lifeexpectancy) >= 72
SELECT sum(Population) , gnp FROM country GROUP BY gnp HAVING avg(Population) > 72
SELECT avg(T1.Lifespan) , avg(T2.GNP) , T2.Country FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code GROUP BY T2.Country
SELECT sum(Population) , avg(LifeExpectancy) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72
SELECT HeadOfState , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT name , region FROM country ORDER BY Population DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT HeadOfState FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(Population) , avg(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT sum(t1.population) , avg(t1.area) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "North America" AND t1.area > 3000
SELECT town FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language , T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.HeadOfState ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY count(*) ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE LANGUAGE = "Spanish"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM director
SELECT count(*) FROM director
SELECT director FROM conductor ORDER BY Age ASC
SELECT director FROM conductor ORDER BY Age
SELECT director_name FROM conductor WHERE nationality != 'USA'
SELECT director_name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT director FROM director ORDER BY TIME DESC
SELECT director FROM conductor ORDER BY created_diriver DESC
SELECT name FROM conductor GROUP BY name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.director , T2.ensemble FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2.Director_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT director FROM conductor WHERE YEAR_of_Work > 2008
SELECT name FROM director AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_work > 2008
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name
SELECT record_type FROM orchestra GROUP BY record_type ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT Ensemble FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_type = "CD" OR record_type = "DVD"
SELECT count(*) FROM orchestra WHERE record_type = "CD" OR record_type = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN show AS T2 ON T1.conductor_id = T2.performance_id GROUP BY T1.year_of_work HAVING count(*) > 1
SELECT T2.year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1 Orchestra_ID = T2 Orchestra_ID GROUP BY T2.year_of_Founded HAVING COUNT(*) > 1
SELECT count(DISTINCT student_id) FROM likes
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT DISTINCT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade , count(*) FROM Highschooler GROUP BY grade
SELECT grade , count(*) FROM Highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT count(*) , T2.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T2.name , count(T1.friend_id) FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM friends INTERSECT SELECT student_id FROM Likes
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friends AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id JOIN friend AS T3 ON T1.friend_id = T3.friend_id WHERE T3.liked_id = T1.liked_id AND T1.friend_id != T3.friend_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T2.name , count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(T2.friend_id) = 0
SELECT min(grad) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian'
SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = 'health care'
SELECT T2.professional_id , T2.last_name , T2.cell_phone FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT T2.professional_id , T2.last_name , T2.cell_number FROM Treatment_Types AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR count(*) > 2;
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.cost_of_treatment = T3.cost_of_treatment WHERE T3.charge_amount > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT first_name FROM professionals WHERE role_code = 'guardian'
SELECT first_name FROM professionals WHERE role_code = 'veterinician' EXCEPT SELECT first_name FROM professionals WHERE role_code = 'guardian'
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM pets AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN treats AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM owners AS T1 JOIN pets AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.guid , T2.zip_code FROM pets AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.guid ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.professional_id , T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_birth , T2.first_name FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.dog_id = T2.dog_id
SELECT date_of_birth , T2.first_name FROM pets AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id
SELECT cost_of_treatment , T3.treatment_type_description FROM treatments AS T1 JOIN charges AS T2 ON T1.cost_of_treatment = T2.cost_of_treatment JOIN treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_hypes AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT name , date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.breed_name ASC LIMIT 1
SELECT name , date_of_birth FROM dogs WHERE breed_code = (SELECT min(breed_code) FROM dogs)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_of_arrived , T1.date_of_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN professionals AS T4 ON T4.professional_id = T3.professional_id WHERE T4.role_code = 'medical'
SELECT T1.date_of_arrived , T1.date_of_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id JOIN treatment_Types AS T4 ON T2.treatment_type_code = T4.treatment_type_code WHERE T4.role_code = 'health care'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'male'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'male'
SELECT count(*) FROM puppies AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id JOIN treatment_Types AS T4 ON T2.treatment_type_code = T4.treatment_type_code WHERE T4.treatment_type_description = 'health care'
SELECT count(*) FROM puppies AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id JOIN treatment_Types AS T4 ON T2.treatment_type_code = T4.treatment_type_code WHERE T4.treatment_type_description = 'Yes'
SELECT count(*) FROM ( SELECT * FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN pets AS T3 ON T1.dog_id = T3.dog_id GROUP BY T2.professional_id
SELECT count(DISTINCT T2.email_address) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.breed_name = 'Puppies'
SELECT role_code , street , town , state FROM professionals WHERE city LIKE "%West%"
SELECT role_code , street , city , state FROM professionals WHERE city LIKE "%West%"
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE "%North%"
SELECT T2.first_name , T2.last_name , T2.email_address FROM owners AS T1 JOIN pets AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatsments
SELECT cost_of_treatment FROM treatsments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM ( SELECT * FROM puppies AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'male' )
SELECT count(*) FROM owners WHERE role_code = 'guardian_id' EXCEPT SELECT count(*) FROM dogs GROUP BY count(*) HAVING sum(age) > 1000
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs )
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN veterinarians AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'puppies'
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM ( SELECT * FROM pets AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.breed_name = 'puppies' )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs WHERE gender = 'male'
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type , charge_amount FROM charges GROUP BY charge_type
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM Professionals WHERE role_code = 'veterinarian'
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.size_code WHERE T1.gender = 'male'
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Voice_Year = "Yes"
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM singer GROUP BY COUNT(*)
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T3.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Country FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Country FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_code FROM Ref_Feature_Types WHERE feature_type_name = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "1"
SELECT property_name FROM properties WHERE property_type_code = 'Houses' OR room_count > 1
