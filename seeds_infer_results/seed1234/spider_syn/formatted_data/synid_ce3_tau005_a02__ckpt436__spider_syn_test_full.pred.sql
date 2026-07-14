SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , state FROM singer_in_concert GROUP BY state
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(T1) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(T1) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT stadium_id , count(*) FROM concert GROUP BY stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.name , T1.theme
SELECT T1.name , T1.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id GROUP BY T1.name , T1.theme
SELECT T1.Name , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year = 2014
SELECT Name , Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets WHERE pettype = 'domestic' GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT species) FROM Animals
SELECT count(DISTINCT species) FROM Animals
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" OR T3.pettype = "puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "kitten"
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT Fname , Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "kitten"
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT id , weight FROM Pets WHERE pet_age > 1
SELECT id , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age > 0
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Fname = "Smith")
SELECT T1.stuid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT StuID , count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname , T1.Sex HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" AND T1.age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , continent , continent FROM countries GROUP BY continent
SELECT continent , count(*) , continent FROM countries GROUP BY continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT maker , id , count(*) FROM car_makers GROUP BY maker
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T1.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT model FROM model_list WHERE horsepower = (SELECT min(horsepower) FROM cars_data)
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE YEAR = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T2.Year = 1970
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id JOIN car_names AS T3 ON T3.MakeId = T1.Id ORDER BY T2.Year LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T2.Maker = (SELECT Maker FROM car_makers GROUP BY Maker ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.Maker = "Most"
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Maker WHERE T3.Maker = "Amc Hornet Sportabout (sw)"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Hornet" AND T3.Model = "Sportabout"
SELECT count(*) FROM car_makers WHERE maker LIKE "%French%"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE country = 'USA')
SELECT count(*) FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE country = 'United States')
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT maker , model FROM model_list
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId GROUP BY T1.FullName HAVING COUNT(*) >= 1
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Europe" GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T1.FullName HAVING COUNT(*) >= 3
SELECT max(power) , maker FROM cars_data WHERE cylinders = 3
SELECT max(power) , maker FROM cars_data WHERE cylinders = 3 GROUP BY maker
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names WHERE make = 'Ford' ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) FROM cars_data BY cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = 'Automobile' GROUP BY T2.Maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT count(*) FROM model_list WHERE maker = 'American Motor Company'
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE model = 'volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE model = 'volvo')
SELECT count(*) FROM cars_data WHERE model = "volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE model = "volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY MAX(T2.Horsepower) DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.MakeId WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY SUM(T2.Horsepower) DESC LIMIT 1
SELECT T1.MakeId , T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T1.MakeId = T3.MakeId WHERE T3.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T3.Cylinders != 3
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Horsepower < 4 AND T2.Cylinders <= 3
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT countryname FROM countries WHERE continent != (SELECT continent FROM car_makers)
SELECT Name FROM countries WHERE Continent != 'USA'
SELECT id , maker FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) >= 2)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.Id , T1.CountryName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Model = 'fiat' OR COUNT(*) > 3
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "Fiat" OR count(*) > 3
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN jetblue Airways ON T1.Airline = T1.Airline WHERE T1.Abbreviation = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT T1.AirportName , T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportcode) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo LIKE '%UAL%'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airlines AS T3 ON T3.Airline = T3.Airline WHERE T3.Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT City , Country FROM airports WHERE AirportName = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abandoned = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.UID WHERE T3.Abbreviation = "United" AND T2.AirportName = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY Airport' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid JOIN airports AS T3 ON T3.airportcode = T1.sourceairport WHERE T2.airline = 'United Airlines' AND T3.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T3.Airline = T1.Aline WHERE T3.Abbreviation = 'United' AND T2.AirportName = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.airline WHERE T3.Abbreviation = 'United' AND T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T3.Airline = T1.Aline WHERE T2.City = 'Aberdeen'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.ShortenedWord , T2.StateOfAirway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.ShortenedWord , T2.StateOfAirway ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportName , T2.Airline , T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.DestAirport = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T3.AirportCode = T3.AirportName WHERE T3.AirportName = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) < 200
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = "United"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' OR T2.City = 'Abilene'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Aberdeen' OR T1.City = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights UNION SELECT SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE bonus = (SELECT max(bonus) FROM evaluation)
SELECT Name FROM employee EXCEPT SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Year_awarded != 1
SELECT Name FROM employee EXCEPT SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT name FROM shop WHERE manager_name NOT IN (SELECT manager_name FROM hiring)
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*) , manager_name FROM shop GROUP BY manager_name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Age >= 30
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT paper_id , paper_name , paper_description FROM Papers
SELECT template_id , template_name , template_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name , document_description FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.paper_id , T2.layout_id , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.paper_id , T2.layout_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents WHERE document_type = 'text'
SELECT count(*) FROM Documents WHERE document_name LIKE '%text%' AND template_id IN (SELECT template_id FROM Templates WHERE template_type_code = 'PPT')
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT layout_id , count(*) FROM Papers GROUP BY layout_id
SELECT template_id , template_type_code FROM templates WHERE template_type_code = "layout" GROUP BY template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id , template_type_code FROM Templates GROUP BY template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Layouts
SELECT count(*) FROM layouts
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_id , edition_number , type_name FROM Templates
SELECT DISTINCT layout_type FROM layouts
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT layout_id FROM Layouts WHERE layout_type_code = "PP" OR layout_type_code = "PPT"
SELECT layout FROM Layouts WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Layouts WHERE Template_Type_Code = "CV"
SELECT edition_number , layout_type FROM Layouts WHERE edition_number > 5
SELECT edition_number , layout_type_name FROM Layouts WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Ref_template_types GROUP BY template_type_code
SELECT layout_type , count(*) FROM Layout GROUP BY layout_type
SELECT layout_type_code FROM Ref_Template_Types GROUP BY layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_description ORDER BY count(*) DESC LIMIT 1
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = 'layout' GROUP BY template_type_description HAVING count(*) < 3
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = 'layout' GROUP BY template_type_description HAVING count(*) < 3
SELECT min(Version_Number) , min(Template_Type_Code) FROM Templates
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type_code FROM layouts WHERE name = "Data base"
SELECT layout_type_code FROM Documents WHERE document_name = "Data base"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT layout_type , count(*) FROM Documents GROUP BY layout_type
SELECT layout_type FROM Documents GROUP BY layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates WHERE document_type = "text" GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Description FROM Ref_Template_Types EXCEPT SELECT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Document_Name = "text"
SELECT Template_Type_Description FROM Ref_Template_Types EXCEPT SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "text"
SELECT template_type_name , template_type_description FROM Ref_Template_Types
SELECT T1.template_type_name , T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT layout_type_name FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id WHERE t3.document_name = "text"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "text file"
SELECT layout_id FROM Layouts WHERE template_type_description = "Presentation"
SELECT template_id FROM Documents WHERE document_description = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT * FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.Paragraph_ID , T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Welcome to NY"
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_name = "Customer reviews"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT template_id , count(*) FROM Paragraphs GROUP BY template_id ORDER BY count(*)
SELECT document_id , document_name , count(*) FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY document_id
SELECT document_id , document_name , count(*) FROM Documents GROUP BY document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id JOIN Paragraphs AS T4 ON T3.document_id = T4.document_id GROUP BY T1.template_type_code ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name , T2.curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Faculty FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Faculty ORDER BY T1.Faculty
SELECT T1.Name , T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID ORDER BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = 'Math'
SELECT Name FROM teacher WHERE Age = 25 AND Course = 'math'
SELECT T1.Faculty , COUNT(*) FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Faculty
SELECT T1.Name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T3.Course_ID = T1.Course_ID GROUP BY T2.Name HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.name = 'Museum' GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit WHERE visitor_id = 'guest'
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_id = T2.visitor_id WHERE T1.Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010))
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT max(loser_rank) FROM matches
SELECT best_rank FROM matches ORDER BY loser_rank_points DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , state_abbr FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rankering_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY max(matches.minutes) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , T1.last_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT state FROM players GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3
SELECT T1.first_name , T1.last_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year ASC LIMIT 3
SELECT count(DISTINCT winner_hand) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'left'
SELECT count(*) FROM players WHERE hand = 'left' AND winner_hand = 'WTA Championships'
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.note , T2.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T2.result = 'lost' AND T1.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result != 'loss' AND (SELECT count(*) FROM ship WHERE tonnage = '225')
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE lost_in_battle NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM Addresses WHERE line_1 = "Line 1" AND line_2 = "Line 2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT course_description FROM Courses WHERE course_name LIKE "math%"
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT T1.department_name , T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.division_id , T2.department_name FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.division_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs WHERE department_name = 'Engineering'
SELECT count(*) FROM Degree_Programs WHERE department_id = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT T1.section_name , T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = 'undergrad'
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT student_id FROM students WHERE date_first_registered = '1990-01-01' GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1)
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT course_description FROM Courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_program_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_enrolment_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.first_name , T1.middle_name , T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_id = T3.student_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT last_name FROM Students WHERE student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs))
SELECT date_first_registered , student_id FROM Students GROUP BY date_first_registered HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT T1.place_id , count(*) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.place_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.curriculum_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.curriculum_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)), T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id
SELECT date_first_registered FROM students GROUP BY date_first_registered ORDER BY count(*) ASC LIMIT 1
SELECT date_first_registered , student_id FROM Students GROUP BY date_first_registered ORDER BY count(*) ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Master' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Masters' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.city FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_name FROM sections;
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT first_name , last_name FROM Students WHERE permanent_address_id = (SELECT permanent_address_id FROM Addresses WHERE country = 'Haiti' ) OR cell_mobile_number = 09700166582
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM cartoon ORDER BY Title
SELECT * FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title , Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title , Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_Channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_Name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.Series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id JOIN tv_channel AS T3 ON T2.channel = T3.id WHERE T3.series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.id JOIN TV_channel AS T3 ON T2.Channel = T3.id WHERE T3.Series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Series_name , T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Directed_by , count(*) FROM Cartoon GROUP BY Directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd" AND T2.written_by = "Casey"
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_channel WHERE Content != 'Animation' AND Written_by != 'Todd Casey'
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "english"
SELECT id FROM TV_channel WHERE Country = "USA" GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM car_game
SELECT count(*) FROM people WHERE Nationality = 'Chinese'
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID = 1
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID = 1
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = 'Car' )
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = "Car Gammer"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name LIKE "%gamers%"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name LIKE "%gamers%"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY COUNT(*) ASC
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT count(*) , Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT contestant_number , contestant_name FROM CONTESTANTS GROUP BY contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT state FROM VOTES GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE headofstate != 'null' AND independyear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2.Continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode = 'Aruba' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ARABE" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT Region , Population FROM country WHERE Continent = 'Angola'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(NGP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND region = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'ARAB'
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = 'AFG'
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = 'AF'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = 'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language = 'Dutch'
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "english" AND t2.isofficial = "true"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Name LIKE "%English%" OR T1.Name LIKE "%Dutch%"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1 AND CountryCode IN (SELECT Code FROM country WHERE Region = 'Republic')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.Name ORDER BY SUM(T1.Population) DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T1.surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT avg(lifeexpectancy) FROM country WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "english"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE isofficial = 1 AND country.code IN (SELECT code FROM country WHERE independyear < 1930)
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'Y' AND Code = (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent != 'Asia' AND population < (SELECT min(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Asia' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT state FROM state WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.countrycode , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 1 AND T2.language != "english"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "english"
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != 'english'
SELECT abbreviation FROM country WHERE language != 'english' AND governmentform != 'Republic'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.IsOfficial = "true" AND T1.CountryCode IN (SELECT CountryCode FROM country WHERE Continent = "Asia")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Continent = "Asia" AND T2.Language = "Chinese"
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , name , head_of_state FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name , population , head_of_state FROM country ORDER BY population DESC LIMIT 1
SELECT T1.Name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING count(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.Name , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.LifeExpectancy > 72
SELECT DISTINCT governmentform , count(*) FROM country WHERE average lifespan > 72 GROUP BY governmentform
SELECT continent , avg(lifeexpectancy) , count(*) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT continent , count(*) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , area FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Population DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.StateCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING count(*) > 1)
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Foundry = "ensemble" AND T1.Year_of_Work > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM performance WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT record_company FROM performance WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT count(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING count(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Founded HAVING COUNT(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , friend_id FROM Friend
SELECT count(*) , T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1 AND T1.name = 'Kyle'
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1000000
SELECT count(*) FROM Friend WHERE student_id = 'Kyle'
SELECT count(*) FROM HIGHschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler EXCEPT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT name FROM Highschooler EXCEPT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM likes AS T1 JOIN friend AS T2 ON T1.student_id = T2.student_id WHERE T2.friend_id != T2.student_id
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friends
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T1.id WHERE T3.friend_id != T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T1.id = T3.student_id WHERE T3.friend_id != T4.id
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT student_id , count(*) FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT name FROM Highschooler GROUP BY name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT count(*) FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 1
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler EXCEPT SELECT T1.grade FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "medical"
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = 'healthcare' )
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR T2.num_of_medical_care > 2
SELECT id , last_name , cell_number FROM Professionals WHERE state = 'Indiana' UNION SELECT id , last_name , cell_number FROM Professionals WHERE count(*) > 2
SELECT name FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM Dogs WHERE name LIKE '%dog%'
SELECT first_name FROM Professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM Dogs WHERE name LIKE '%dog%'
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT id , role_code , email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT vet_id , role_code , first_name FROM professionals WHERE role_code = 'Veterinarian' GROUP BY vet_id HAVING count(*) >= 2
SELECT professional_id , role_code , first_name FROM professionals GROUP BY first_name HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM Breeds WHERE breed_code IN (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs WHERE gender = 'M') )
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id WHERE T2.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments WHERE treatment_type_code = "Puppy")
SELECT treatment_type_description FROM Treatment_Types WHERE charge_type = 'healthcare' GROUP BY treatment_type_description ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.cost_of_treatment = (SELECT sum(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.guardian_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.guardian_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT veterinarian_id , cell_number FROM owners GROUP BY veterinarian_id HAVING count(*) >= 2
SELECT id , cell_number FROM professionals WHERE role_code = 'veterinarian' GROUP BY id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , first_name FROM treatments ORDER BY date_of_treatment
SELECT date_of_treatment , T1.first_name FROM treatments AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Medical Care'
SELECT cost_of_treatment , treatment_type_code FROM treatments GROUP BY treatment_type_code
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare"
SELECT name , date_of_treatment FROM Treatments AS T JOIN Dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "medical" ORDER BY D.age DESC LIMIT 1
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived , date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = 'medical care' )
SELECT date_arrived , date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = 'healthcare')
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = 3 ORDER BY T1.last_name LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = "P"
SELECT count(*) FROM treatments WHERE treatment_type_code = 'healthcare'
SELECT count(*) FROM dogs WHERE gender = 'P'
SELECT count(*) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs WHERE gender = 'Puppy')
SELECT count(*) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs WHERE gender = 'Puppies')
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments WHERE treatment_type_code = "health-care"
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE gender = 'M' AND date_departed = 'P' )
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE gender = 'M' AND age > 3)
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE dog_id = 'puppy')
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE gender = 'P' ))
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE gender = 'P'
SELECT avg(age) FROM Dogs WHERE gender = 'P'
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges
SELECT charge_type , charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'veterinarian'
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT breed_type , size_type FROM Dogs
SELECT DISTINCT T1.breed_type , T2.size_type FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = "P"
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = 'veterinarian'
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Country FROM singer GROUP BY Country
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM singer GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , max(networth) FROM singer GROUP BY country
SELECT country , max(networth) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT country FROM singer WHERE birth_year < 1945 INTERSECT SELECT country FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties GROUP BY property_type_code HAVING count(*) = 1)
SELECT property_name FROM Properties WHERE property_type_code = "House" OR room_count > 1
