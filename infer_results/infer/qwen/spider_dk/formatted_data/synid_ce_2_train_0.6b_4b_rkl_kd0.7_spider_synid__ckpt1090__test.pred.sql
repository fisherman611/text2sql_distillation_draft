SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY Birthday DESC
SELECT name , country FROM singer ORDER BY Birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "France"
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_release_year , song_name FROM singer ORDER BY birthday ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T3.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.stadium_id
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT max(Highest) FROM stadium WHERE Stadium_ID NOT IN (SELECT stadium_ID FROM concert)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(capacity) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T3.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T2.concert_id
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT max(T2.lowest) , min(T2.lowest) , max(T2.highest) , min(T2.highest) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT max(T2.lowest) , min(T2.lowest) , max(T2.highest) , min(T2.highest) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.Lowest , T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Lowest , T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = "Puppy"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT PetType , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate > '2020'
SELECT petid , weight FROM pets WHERE birthdate > '2020-01-01'
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Mammal"
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = "Smith"
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , T1.StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY T1.StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent , T1.continent FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.Maker , T1.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T2.Year >= 2019 - 1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE YEAR >= 2019
SELECT T1.Maker , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T1.make = T3.makeid WHERE T3.year < 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR <= 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T1 Continent , COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1 Continent
SELECT T3.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId JOIN countries AS T3 ON T2.CountryId = T3.CountryId GROUP BY T3.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.maker = (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T4.Accelerate FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T1.Maker = "Amc hornet sportabout (sw)"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "AMC Hornet" AND T3.Model = "Sportabout"
SELECT count(*) FROM car_makers WHERE Country = "Japan"
SELECT count(*) FROM car_names WHERE make = 'Japanese care'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'America'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T3.CountryName , T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId JOIN cars_data AS T3 ON T1.Id = T3.Id GROUP BY T2.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Europe" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE Model = "Tesla"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT t2.model FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model GROUP BY t2.model ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_names GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) + 1 INTERSECT SELECT max(YEAR) FROM cars_data - 1
SELECT count(*) FROM cars_data WHERE YEAR >= 2019 AND YEAR <= 2021
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT T1.FullName , T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Id HAVING COUNT(*) > 3
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullName = "General Motors" UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.id IN (SELECT model FROM cars_data WHERE weight > 3500)
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Maker = T2.Id WHERE T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT >= 3000 INTERSECT SELECT YEAR FROM cars_data WHERE WEIGHT <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Accelerate) , Cylinders FROM cars_data WHERE Make = "Tesla"
SELECT count(*) FROM cars_data WHERE make = "Tesla" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "Tesla")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(DISTINCT country) FROM car_makers WHERE maker = "More than 2"
SELECT count(*) FROM car_makers WHERE country -> (SELECT country FROM countries GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
{"sql": "SELECT model FROM car_names WHERE makeid = \$(SELECT id FROM cars_data WHERE cylinders = 4) AND horsepower = (SELECT max(horsepower) FROM cars_data WHERE cylinders = 4)"}
SELECT model FROM car_names WHERE make = "4 Cylinder" GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT makeid , fullname FROM car_names WHERE model IN (SELECT modelid FROM cars_data WHERE horsepower FROM cars_data ORDER BY horsepower DESC LIMIT 1) EXCEPT SELECT makeid , fullname FROM car_names WHERE cylinders <= 3
SELECT makeid , makename FROM car_names WHERE model IN (SELECT model FROM cars_data WHERE horsepower FROM cars_data ORDER BY horsepower LIMIT 4)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR <= 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.maker = 'Ford'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_names WHERE make = "Ford"
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) < 1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'Tesla' UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Model = "Tesla"
SELECT country FROM airlines WHERE Airline = "JetBlue"
SELECT T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Jackson'
SELECT airportname FROM airports WHERE city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE FlightNo LIKE 'APG%'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Syracuse' AND T1.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Ashley' AND T1.airline = 'Syracuse'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abandonable = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ASY' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.airportName = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T2.DestAirport = T3.AirportCode WHERE T3.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline JOIN airports AS T3 ON T2.DestAirport = T3.AirportCode WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.airportname = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.airportname = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING sum(T2.FlightNo) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode WHERE T1.city = 'Syracuse' OR T1.city = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Syracuse' OR T1.city = 'Jackson'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT count(*) , Template_ID FROM Documents GROUP BY Template_ID
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM_templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from FROM Templates WHERE date_effective_to = "null"
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_to - date_effective_from > 0
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT date_effective_from FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT min(Version_Number) , min(Date_Effective_From) , min(Date_Effective_To) FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Version_Number
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from != "null" AND date_effective_to != "null"
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.loser_age , T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.winner_age , T2.round FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT T1.rank , T2.rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.rank , T2.rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
{"sql": "SELECT avg(T1.winner_rank) , avg(T2.winner_rank) , avg(T3.winner_rank) , avg(T4.winner_rank) , avg(T5.winner_rank) , avg(T6.winner_rank) , avg(T7.winner_rank) , avg(T8.winner_rank) , avg(T9.winner_rank) , avg(T10.winner_rank) , avg(T11.winner_rank) , avg(T12.winner_rank) , avg(T13.winner_rank) , avg(T14.winner_rank) , avg(T15.winner_rank) , avg(T16.winner_rank) , avg(T17.winner_rank) , avg(T18.winner_rank) , avg(T19.winner_rank) , avg(T20.winner_rank) , avg(T21.winner_rank) , avg(T22.winner_rank) , avg(T23.winner_rank) , avg(T24.winner_rank) , avg(T25.winner_rank) , avg(T26.winner_rank) , avg(T27.winner_rank) , avg(T28.winner_rank) , avg(T29.winner_rank) , avg(T30.winner_rank) , avg(T31.winner_rank) , avg(T32.winner_rank) , avg(T33.winner_rank) , avg(T34.winner_rank) , avg(T35.winner_rank) , avg(T36.winner_rank) , avg(T37.winner_rank) , avg(T38.winner_rank) , avg(T39.winner_rank) , avg(T40.winner_rank) , avg(T41.winner_rank) , avg(T42.winner_rank) , avg(T43.winner_rank) , avg(T44.winner_rank) , avg(T45.winner_rank) , avg(T46.winner_rank) , avg(T47.winner_rank) , avg(T48.winner_rank) , avg(T49.winner_rank) , avg(T50.winner_rank) , avg(T51.winner_rank) , avg(T52.winner_rank) , avg(T53.winner_rank) , avg(T54.winner_rank) , avg(T55.winner_rank) , avg(T56.winner_rank) , avg(T57.winner_rank) , avg(T58.winner_rank) , avg(T59.winner_rank) , avg(T60.winner_rank) , avg(T61.winner_rank) , avg(T62.winner_rank) , avg(T63.winner_rank) , avg(T64.winner_rank) , avg(T65.winner_rank) , avg(T66.winner_rank) , avg(T67.winner_rank
SELECT max(T1.winner_rank) , max(T2.winner_rank) , max(T3.winner_rank) , max(T4.winner_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id JOIN matches AS T4 ON T3.player_id = T4.loser_id
SELECT max(winner_rank) , max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id INTERSECT SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.loser_id WHERE T3.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.loser_id WHERE T3.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranker_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open Tourney' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tour) , ranking_date FROM rankings GROUP BY ranking_date
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.ranking_points LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT T1.winner_name , T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.winner_id = T3.winner_id ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 , line_2 , line_3 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses;
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = 'American'
SELECT name FROM conductor WHERE nationality = 'American'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show != "First"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED >= 2003
SELECT count(*) FROM show WHERE RESULT = "If_first_show" AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE Orchestra_ID = "Glebe Park")
SELECT count(*) FROM show WHERE IF_first_show = 1 AND RESULT = "Glebe Park"
SELECT TYPE FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show WHERE If_first_show = "No" GROUP BY Performance_ID HAVING COUNT(*) > 1)
SELECT TYPE FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM show WHERE If_first_show = 'Yes') GROUP BY TYPE HAVING COUNT(*) > 1
SELECT state FROM OWNERS INTERSECT SELECT state FROM PROFESSIONALS
SELECT state FROM OWNERS INTERSECT SELECT state FROM PROFESSIONALS
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = 'dog'
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT T1.first_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.gender = 'dog'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'dog'
SELECT professional_id , first_name , last_name FROM Professionals EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.street , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM OWNERS AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type ORDER BY sum(T2.charge_amount) LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.street , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , treatment_type_description FROM treatments AS T JOIN treatment_types ON T.treatment_type_code = treatment_types.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.weight FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) LIMIT 1)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id ORDER BY date_of_treatment
SELECT date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'M'
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'A'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'A'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments WHERE treatment_type_code = "dog"
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'yes')
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'yes')
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'yes' EXCEPT SELECT count(*) FROM treatments
SELECT count(*) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes')
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'yes')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE gender = 'male') )
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges
SELECT charge_type , charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM Professionals
SELECT email_address , first_name , last_name FROM Professionals
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
