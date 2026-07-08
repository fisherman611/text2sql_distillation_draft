SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT min(singer_id) , avg(singer_id) , max(singer_id) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY highest LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.highest FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT max(T1.highest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(Lowest) FROM stadium WHERE Stadium_ID NOT IN (SELECT stadium_ID FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(capacity) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT min(Lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T3.concert_name , T3.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.singer_ID = T3.singer_ID GROUP BY T2.concert_ID
SELECT T3.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T3.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.name
SELECT T3.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT t1.stadium_id , t2.highest , t2.lowest FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year = 2014 INTERSECT SELECT t1.stadium_id , t2.highest , t2.lowest FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year = 2015
SELECT t1.stadium_id , t1.lowest , t1.highest FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT t1.stadium_id , t1.lowest , t1.highest FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY birthdate LIMIT 1
SELECT max(weight) FROM pets WHERE birthdate = (SELECT min(birthdate) FROM pets)
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Paw"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "kitten")
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT fname , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE PetType = "dog")
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat"
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT Pettype , weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate > '2020'
SELECT PetID , weight FROM Pets WHERE birthdate > '2020'
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT pettype , avg(PetID) , max(PetID) FROM pets GROUP BY pettype
SELECT pettype , avg(PetID) , max(PetID) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T1 ON T1.stuid = T1.student.stuid WHERE T1.student.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT StuID , count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = 2001
SELECT DISTINCT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = "2001"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , T1.Continent , T2.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT count(*) , t1.ContId , t1.Continent FROM continents AS t1 JOIN countries AS t2 ON t1.Continent = t2.Continent GROUP BY t1.Continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker , T1.id , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Maker , T1.fullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data GROUP BY model ORDER BY horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId ORDER BY T1.Horsepower LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.ModelId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.ModelId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= 2019
SELECT DISTINCT maker FROM cars_data WHERE YEAR >= (SELECT max(YEAR) FROM cars_data) - 2
SELECT T2.Maker , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT model FROM cars_data WHERE YEAR >= 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR <= 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT count(*) , T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T1.Continent != "North Pole" GROUP BY T1.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = "Amc Hornet Sportabout" AND model = "sw"
SELECT accelerate FROM cars_data WHERE model = (SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'AMC Hornet Sportabout' )
SELECT count(*) FROM car_makers WHERE countryname = 'Japan'
SELECT count(*) FROM car_makers WHERE countryname = "Japanese care"
SELECT count(*) FROM car_makers WHERE country = 'America'
SELECT count(*) FROM car_makers WHERE Country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T2.Maker , T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT T2.FullName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , avg(year) FROM cars_data
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT max(horsepower) , make FROM cars_data WHERE cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data GROUP BY model ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(edispl) FROM cars_data WHERE make = 'Tesla'
SELECT avg(edispl) FROM cars_data WHERE Make = "Tesla"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT max(YEAR) FROM cars_data) AND YEAR <= (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT YEAR FROM cars_data ORDER BY YEAR DESC LIMIT 2)
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.countryname = "America"
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.full_name = "General Motors" OR T1.weight > 3500
SELECT DISTINCT model FROM model_list WHERE maker = 'General Motors' OR weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE make = 'Tesla'
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" ORDER BY Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY avg(horsepower) DESC LIMIT 1
SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE horsepower > (SELECT min(horsepower) FROM cars_data) AND cylinders != 2
SELECT makeid , fullname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.makeid WHERE cylinders < 4
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR <= 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR <= 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.Maker = 'Ford Motor'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 AND make != "Ford"
SELECT countryname FROM cars_data EXCEPT SELECT country FROM car_makers
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) >= 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T2.Maker = 'Tesla' UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.ModelId WHERE T2.Model = 'tesla' GROUP BY T1.id HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Tesla" GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE Abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Jackson'
SELECT airportname , airportcode FROM airports WHERE airportname = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.DestAirport = 'UAL'
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo LIKE 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN destairport AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights WHERE FlightNo LIKE "\d{4}" AND DESTAirport = "Jackson"
SELECT count(*) FROM flights WHERE FlightNo LIKE "J%"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Syracuse' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = "Syracuse" AND T2.AirportName = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "JetBlue"
SELECT count(*) FROM flights WHERE DestAirport = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ASY Airport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "JetBlue" AND T2.airportcode = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 139
SELECT count(*) FROM flights AS T1 JOIN destinations AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen" AND T1.Airline = "JetBlue"
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportname = T2.destairportgroup GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportname = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportname = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY count(*) LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T3.airportname = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DESTAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights UNION SELECT DISTINCT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM documents
SELECT count(*) FROM documents
SELECT document_id , document_name , document_description FROM documents
SELECT document_id , document_name , document_description FROM documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , T1.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT T1.template_id) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(DISTINCT T1.template_id) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents WHERE Template_ID = "PPT"
SELECT count(DISTINCT document_id) FROM documents WHERE template_id IN (SELECT DISTINCT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.version_number = 20230414 AND T1.date_effective_from > 20230401 AND T1.date_effective_to < 20230415)
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from FROM Templates WHERE date_effective_to = "null"
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_to - date_effective_from > 0
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from , template_type_code FROM Templates WHERE VERSION_Number > 5
SELECT date_effective_from , template_type_code FROM Templates WHERE VERSION_NUMBER > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number) , min(date_effective_from) , min(date_effective_to) FROM Templates
SELECT min(version_number) , min(date_Effective_From) , min(date_Effective_To) FROM templates
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT document_name , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT document_name FROM documents WHERE template_id IN (SELECT * FROM templates WHERE template_type_code = "BK")
SELECT T1.date_effective_from , count(*) , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T2.template_type_code
SELECT count(*) , T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT date_effective_from FROM templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE document_id NOT IN (SELECT document_id FROM Documents)
SELECT DISTINCT template_type_code , template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT T1.date_effective_from FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.loser_age , T2.player_id FROM matches AS T1 JOIN players AS T2 ON T1.looser_id = T2.player_id
SELECT T1.match_num , T2.loser_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT loser_age , winner_age FROM matches
SELECT T1.rank , T2.player_id , T1.winner_rank , T1.loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id UNION SELECT T1.rank , T2.player_id , T1.winner_rank , T1.loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT avg(winner_rank) + avg(loser_rank) FROM matches
SELECT max(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.loser_id
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
{"sql": "SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.best_of = 1 AND T2.tourney_name = \"Australian Open\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.best_of = 1 AND T2.tourney_name = \"WTA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T3.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T1.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings AS T4 JOIN players AS T5 ON T4.player_id = T5.player_id WHERE T5.country_code = "Australia") AND T2.tourney_name = "Tours at the Australian Open"
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.ranking_points , T1.first_name , T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY ranking_date , ranking;
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking_points , sum(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.looser_age ASC LIMIT 3
SELECT T2.winner_name , T2.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "L" AND T1.tourney_date = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_date = 'WTA Championships'
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_hand GROUP BY T1.hand
SELECT DISTINCT line_1 , line_2 , line_3 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT T2.name , T1.orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.conductor_id
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.name HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id ORDER BY t2.year_of_founded LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT major_record_format FROM orchestra ORDER BY YEAR_of_Founded
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003 GROUP BY Record_Company INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT count(*) FROM show WHERE If_first_show = "Glebe Park"
SELECT count(*) FROM show WHERE if_first_show = "Glebe Park"
SELECT T1.type FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id WHERE T2.if_first_show = 'No' GROUP BY T1.type HAVING count(*) > 1
SELECT TYPE FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE if_first_show = 'No' GROUP BY performance_id HAVING count(*) > 1)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.cell_number , T1.last_name , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana'
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM PROFESSIONALS INTERSECT SELECT first_name FROM OWNERS WHERE first_name != "dog"
SELECT first_name FROM PROFESSIONALS INTERSECT SELECT first_name FROM OWNERS WHERE first_name != "dog"
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.street , T1.city , T1.state , T1.zip_code , T1.last_name , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(Treatment_Types.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(Treatment_Types.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T4.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.breed_code = (SELECT breed_code FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.gender = 'dog' AND T2.date_of_treatment = (SELECT min(date_of_treatment) FROM Treatments WHERE gender = 'dog')
SELECT T2.first_name , T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "VA"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_arrived > date_departed AND T2.date_departed < date_arrived
SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM PROFESSIONALS WHERE state = "HI" OR state = "WI"
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(Dog_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments WHERE treatment_type_code = "Pill" OR treatment_type_code = "Injection" OR treatment_type_code = "Cure"
SELECT count(DISTINCT professional_id) FROM Treatments WHERE treatment_type_code = "Paw Treatments"
SELECT first_name , last_name FROM PROFESSIONALS WHERE city LIKE '%West%'
SELECT first_name , last_name FROM PROFESSIONALS WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND age < (SELECT avg(age) FROM dogs WHERE abandoned_yn = '1')
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND age < (SELECT avg(age) FROM dogs WHERE abandoned_yn = '1')
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(Dog_id) FROM treatments
SELECT count(*) FROM dogs WHERE abandoned_yn = 1 EXCEPT SELECT count(*) FROM dogs WHERE abandoned_yn = 1
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = '1' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE dog_id = 'canine' )
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM PROFESSIONALS
SELECT email_address , first_name , last_name FROM Professionals;
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
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
SELECT name FROM singer ORDER BY birth_year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT title FROM song ORDER BY sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Singer_ID = "null"
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
