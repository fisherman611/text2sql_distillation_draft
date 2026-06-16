SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , T1.state FROM states AS T1 JOIN singer AS T2 ON T1.state = T2.country GROUP BY T1.state
SELECT title FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT title FROM music WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium GROUP BY average(high) ORDER BY average(high) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT TIME FROM concert GROUP BY TIME ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT state FROM singer WHERE age > 40 INTERSECT SELECT state FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT T2.theme , count(*) FROM singer AS T1 JOIN concert AS T2 ON T1.song_id = T2.song_id GROUP BY T2.theme
SELECT T2.theme , count(*) , T3.name FROM singer AS T1 JOIN concert AS T2 ON T1.song_id = T2.song_id JOIN singer_in_concert AS T3 ON T1.song_id = T3.song_id GROUP BY T3.name
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.songer_id = T2.songer_id GROUP BY T2.songer_id
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.songer_id = T2.songer_id GROUP BY T2.songer_id
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.songer_id = T2.songer_id JOIN concert AS T3 ON T2.cnt_id = T3.cnt_id WHERE T3.year = 2014
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.songer_id = T2.songer_id JOIN concert AS T3 ON T3.concert_id = T2.concert_id WHERE T3.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.country FROM singer AS T1 JOIN song AS T2 ON T1.song_name = T2.song_name WHERE T2.song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.high = (SELECT max(high) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pet_type = 'K' ORDER BY age LIMIT 1
SELECT min(weight) FROM pets WHERE pettype = 'animal'
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.pettype = 'P'
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.pettype = 'P'
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pet_type) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Duppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Pupdog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Duck"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Pugma"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT discipline , age FROM Student EXCEPT SELECT T1.d discipline , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Puppy"
SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "kitten")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype , sum(weight) FROM pets GROUP BY pettype ORDER BY pet_age LIMIT 1
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Student GROUP BY pet_type
SELECT pet_type , avg(age) , max(age) FROM pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM pets GROUP BY pet_type
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'animal'
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "animal"
SELECT petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T1.sex = 'F'
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T1.sex = 'F'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Countid , T1.Countertname , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid = T2.Countid GROUP BY T1.Countid
SELECT T1.Countid , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid = T2.Countid GROUP BY T1.Countid
SELECT count(*) FROM states
SELECT count(*) FROM countries
SELECT T1.Fname , T1.Lname , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.maker
SELECT T1.Maker , T1.Name , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Fname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id ORDER BY T1.Year ASC LIMIT 1
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Model ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Model WHERE T1.Year > 1980
SELECT T1.Countid , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Countid
SELECT T1.Countinent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Countinent = T2.Country GROUP BY T1.Countinent
SELECT T1.State FROM states AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State FROM states AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country WHERE T2.Maker = (SELECT T2.Maker FROM car_makers GROUP BY T2.Maker ORDER BY COUNT(*) DESC LIMIT 1)
SELECT count(*) , T1.name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.name
SELECT count(*) , T1.id , T1 FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model WHERE T2.Maker = "Amc Hornet" AND T3.Sporting = "Sw"
SELECT avg(T1.accelerate) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN countries AS T3 ON T2.country = T3.countryid WHERE T3.countryname = 'Americano' AND T1.vehicle = 'Hornet'
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "France"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Country = 'USA'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T2.Maker , T3.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model
SELECT T2.Maker , T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT T1.State , T2.id FROM states AS T1 JOIN car_makers AS T2 ON T1.Countertable = T2.Country WHERE T2.Maker != "null" GROUP BY T2.id HAVING COUNT(*) >= 1
SELECT T1.countryname , T1.state FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.state HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.State FROM states AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryName = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T2.Horsepower) , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Maker WHERE T2.Cylinders = 3
SELECT max(T2.Horsepower) , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.EDISPL) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE YEAR = 2004
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT T1.Fname , T1.Lower FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.maker HAVING count(*) > 3
SELECT T2.Maker , T1.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.type FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.weight > 3500 OR T1.fullname = "General Motors"
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight > 3500 OR T1.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE model = "volvo"
SELECT min(Cylinders) FROM cars_data WHERE Model = "volvo"
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country = "State" GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM (SELECT T1.state , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T2.id HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower DESC LIMIT 4
SELECT makeid , manufacturer FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT T1.Makeid , T1.manufacturer FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.cylinders > 3)
SELECT makeid , model FROM cars_data WHERE cylinder < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.Maker = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.Maker != 'Ford Motor Company' AND T1.Model < 3500
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.Maker > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.Maker WHERE T2.Model = 'fiat'
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.County > 3 UNION SELECT T1.id , T1.countryname FROM countries AS T1 JOIN cars_data AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Fiat"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Airline "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.AirportName , T1.AirportName LIKE "%USA%" FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T2.Country = "USA%"
SELECT T1.AirwayName , T1.AirwayName FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T2.Country = "USA"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode , AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airlines
SELECT sum(Airline) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline LIKE '%UAL%'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT T1.City , T1.State FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "Alton"
SELECT City , State FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SOURCE Airport = "APG"
SELECT count(*) FROM flights WHERE SOURCE Airport = "APG"
SELECT count(*) FROM flights WHERE DestAirport = "ATOT"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'City Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Ebernthal"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destinationairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = 'JetBlue Airways'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "United Airlines" AND T2.destairport = "ASY"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "United Airlines" AND T2.destinationairport = "ASY"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "United Airlines" AND T2.sourceairport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "United Airlines" AND T2.sourceairport = "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = 'United Airlines' AND T2.destairport = 'Aberdeen'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = "United Airlines" AND T2.sourceairport = "Aberdeen"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.flights , T1.state_of_airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.source_airport GROUP BY T1.state_of_airway ORDER BY flights DESC LIMIT 1
SELECT T1.Airline , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.Dest Airport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.Dest Airport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "CVO"
SELECT * FROM flights WHERE sourceairport = 'CVO' EXCEPT SELECT * FROM flights WHERE sourceairport = 'APG'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "CVO" EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.Dest Airport = T2.AirportCode WHERE T2.City = "APG"
SELECT T1.Airport FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING COUNT(*) >= 10
SELECT T1.Airport FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING COUNT(*) >= 10
SELECT T1.Airport FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING COUNT(*) < 200
SELECT T1.Airport FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING COUNT(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.FlightNo WHERE T2.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.flightno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SOURCEAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T1.flightno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" OR T2.city = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) OR AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , town FROM employee GROUP BY town
SELECT count(*) , town FROM employee GROUP BY town
SELECT town FROM employee WHERE age < 30 GROUP BY town HAVING count(*) > 1
SELECT town FROM employee WHERE age < 30 GROUP BY town HAVING count(*) > 1
SELECT count(*) , T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name GROUP BY T1.city
SELECT count(*) , city FROM employee GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T1.name , T1.district FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id GROUP BY T1.manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT T1.name , T1.city , T1.district FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.district ORDER BY count(*) DESC
SELECT T1.name , T1.city , T1.district FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name ORDER BY count(*) DESC
SELECT T1.name FROM shop AS T1 JOIN evaluation AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id HAVING count(*) > (SELECT avg(count(*) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T1.name , count(*) FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id
SELECT store , count(*) FROM employee GROUP BY store
SELECT sum(T1.bonus) FROM assessment AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T1.bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM RefPaper
SELECT count(*) FROM Ref_Paper
SELECT T1.paper_id , T1.paper_name , T1.paper_description FROM Papers AS T1 JOIN Ref_Template_Types AS T2 ON T1.paper_id = T2.paper_id
SELECT T1.document_id , T1.paper_name , T1.document_description FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id
SELECT document_name , other_details FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.paper_name , T2.layout_id FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT T1.paper_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.paper_id , T1.layout_id , T2.Other_Details FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT t2.formatter_text) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Text File"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT T1.layout_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.layout_id
SELECT count(*) , T1.layout_id FROM Layouts AS T1 JOIN Papers AS T2 ON T1.layout_id = T2.layout_id GROUP BY T1.layout_id
SELECT T1.template_id , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.layout_id FROM layouts AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.layout_id HAVING count(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code EXCEPT SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Papers AS T3 ON T1.template_id = T3.template_id
SELECT count(*) FROM Ref/Layout
SELECT count(*) FROM Ref_LAYOUT
SELECT T1.Template_ID , T2.Version_Number , T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_ID , T2.Version_Number , T3.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_Template_Types AS T3 ON T2.Template_Type_Code = T3.Template_Type_Code
SELECT DISTINCT layout_type_name FROM ALL
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT T1.Template_ID FROMTemplates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "PP" OR T2.Template_Type_Description = "PPT"
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "PP" OR T2.Template_Type_Description = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "CV"
SELECT count(*) FROM CV
SELECT T1.Edition_Number , T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Edition_Number > 5
SELECT T1edition_number , T2.template_type_name FROM Layouts AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1edition_number > 5
SELECT Template_Type_Code , COUNT(*) FROM Ref_Template_Types GROUP BY Template_Type_Code
SELECT count(*) , Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description
SELECT Template_Type_Code FROM Ref_Template_Types GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.type_name ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type FROM Ref_Template_Types GROUP BY Template_Type HAVING COUNT(*) < 3
SELECT Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description HAVING COUNT(*) < 3
SELECT min(Version_Number) , min(Template_Type_Code) FROMTemplates
SELECT min(VERSION_NUMBER) , min(Template_Type_Code) FROM Templates
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID WHERE T3.document_name = "Data base"
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT document_name FROM Documents WHERE document_name LIKE "%BK%"
SELECT T1.paper_name FROM papers AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = "BK"
SELECT T1.Template_Type_Description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Description
SELECT count(*) , template_type_code FROM Ref_layout_types GROUP BY template_type_code
SELECT T1.layout_type_code FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.Template_Type_Code = T2.Document_ID GROUP BY T1.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT template_type FROM Ref_Template_Types EXCEPT SELECT DISTINCT t1.template_type FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.Template_Type_Code = t2.Template_ID
SELECT Template_Type_Description FROM Ref_Template_Types EXCEPT SELECT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.Template_Type_Code = T2.Document_ID
SELECT T1.Template_Type_Description , T2.Layout_Type_Name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Type_Name , T2.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT T2.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Code = "AD"
SELECT T1.Type FROM Ref_Template_Types AS T1 JOINTemplates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "Book"
SELECT TYPE_CODE FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Document_ID = T3.Document_ID
SELECT DISTINCT T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T2.Template_ID = T3.Template_ID
SELECT T1.Template_ID FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "Presentation"
SELECT T1.template_id FROM layouts AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_Description = 'Presentation'
SELECT count(*) FROM Paragrapths
SELECT count(*) FROM PARAGRAPHs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = "Korea"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea%"
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.para_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT count(*) , T1.paper_id FROM papers AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT paragraph_id , count(*) FROM Paragraphs GROUP BY paragraph_id ORDER BY count(*)
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T1.paper_id , count(*) FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Template_ID HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.paper_id FROM Papers AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT Paragraph_ID FROM Paragraphs GROUP BY Paragraph_ID HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT paper_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT paper_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.para_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.para_text = 'Ireland'
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
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Curriculum FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name , T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Hometown = "Math"
SELECT T2.Name , COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_OF_membership > 4 ORDER BY LEVEL_OF_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name , Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit
SELECT sum(T2.total_expense) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Opening_Year < 2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Opening_Year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM participants
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winning_rank) FROM matches
SELECT avg(winning_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM participants
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM matches AS T1 JOIN rankings AS T2 ON T1.rankings = T2.player_id GROUP BY T1.tourney_name HAVING count(*) > 10
SELECT T2.tourney_name FROM competitions AS T1 JOIN matches AS T2 ON T1.matching_id = T2.matching_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.last_name , T2.statecode FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T2.statecode FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , last_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.statecode FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.winery_NAME , T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.winery_NAME ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T2.winner_rank , T2.winer_rank_points FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.rank = T3.rank WHERE T3.tours = 'Australian Open' ORDER BY T2.winery_rank DESC LIMIT 1
SELECT T2.winery_NAME FROM MATCHES AS T1 JOIN players AS T2 ON T1.winery_ID = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.rank WHERE T3.tourney_name = "Australian Open" ORDER BY T3.winery_rank DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year DESC LIMIT 1 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.rank) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.player_id , sum(T2.ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , T1.state FROM states AS T1 JOIN matches AS T2 ON T1.state = T2.state GROUP BY T1.state
SELECT count(*) , T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.state
SELECT T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.nationality FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.nationality ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_rank LIMIT 3
SELECT T2.winery_NAME , T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_RANK ASC LIMIT 3
SELECT count(DISTINCT T2.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT count(*) FROM left-handed players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T3.player_id = T2.player_id WHERE T3.tourney_name = "WTA Championships"
SELECT T2.first_name , T2.country_code , T1.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winning_rank DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.hand
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , RESULT FROM battle
SELECT max(toll) , min(toll) FROM death
SELECT avg(injured) FROM death
SELECT T1.id , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type != 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2 killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM combats WHERE id NOT IN ( SELECT id FROM ship WHERE tonnage = 225 )
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE lost_in_battle NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T2.languages = 'english')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "1" AND line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(DISTINCT course_name) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id JOIN courses AS T3 ON T2.course_id = T3.course_id WHERE T3.course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name , T2.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY sum(T1.degrees) DESC LIMIT 1
SELECT T2.department_name , count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT count(DISTINCT T1.degrees) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT count(DISTINCT T1.degrees) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTIONs
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.section_name , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Sections AS T2 ON T1.section_id = T2.section_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.department_description FROM departments AS T1 JOIN TRANSACTIONS AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE "%computer%"
SELECT T1.department_description FROM departments AS T1 JOIN transcriptions AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.course_id IN (SELECT course_id FROM Degree_Programs WHERE degree_summary_name = "2") AND T1.semester_id IN (SELECT semester_id FROM Semesters WHERE semester_summary_name = "1")
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Undergraduate" AND T1.semester_id = 2
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T2.first_name , T2.middle_name , T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.course_name = "Bachelors"
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.program , T1.course_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.course_program_id = T2.course_program_id GROUP BY T1.program ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T2.first_name , T2.middle_name , T1.last_name , count(*) , T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id , count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM sections WHERE course_id NOT IN (SELECT course_id FROM Student_Enrolment)
SELECT section_name FROM sections WHERE course_id NOT IN (SELECT course_id FROM Student_Enrolment)
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.address_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.address_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_1 != T2.current_address_id
SELECT first_name FROM students WHERE permanent_address_id != (SELECT permanent_address_id FROM addresses)
SELECT T2.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM Students
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM TRANSACTIONS
SELECT count(*) FROM STUDENTS
SELECT count(*) FROM STUDENTS
SELECT last_name FROM Students ORDER BY date_left DESC LIMIT 1
SELECT max(date_left) FROM Students
SELECT count(*) , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_enrolment_id
SELECT T1.student_id , T2.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T2.section_name FROM student_enrolment AS T1 JOIN sections AS T2 ON T1.section_id = T2.section_id WHERE T1.student_id = 'Master' INTERSECT SELECT T2.section_name FROM student_enrolment AS T1 JOIN sections AS T2 ON T1.section_id = T2.section_id WHERE T1.student_id = 'Bachelor'
SELECT T1.section_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'MA' INTERSECT SELECT T1.section_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'BPh.D.'
SELECT count(DISTINCT T1.address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name , T2.middle_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = "Haitt" UNION SELECT T2.first_name , T2.middle_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T2.cell_mobile_number = "09700166582"
SELECT T2.first_name , T2.middle_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Haiti" UNION SELECT first_name , middle_name FROM Students WHERE cell_mobile_number = "09700166582"
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon ORDER BY title
SELECT * FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT T2.title , T2.directed_by FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.air_date = T2.original_air_date ORDER BY T1.air_date
SELECT title , directed_by FROM Cartoon ORDER BY released_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT LANGUAGE , COUNT(*) FROM TV_channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1
SELECT LANGUAGE , COUNT(*) FROM TV_channel GROUP BY LANGUAGE
SELECT count(*) , language FROM TV_channel GROUP BY language
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel JOIN tv_channel AS T3 ON T2.channel = T3.id WHERE T3.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.serial_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_CHANNEL WHERE high_definition_tv = 'HD'
SELECT package_option , series_name FROM TV_channel WHERE high_definition_tv = 'HD'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.State FROM TV_state AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT DISTINCT state FROM cartoon EXCEPT SELECT DISTINCT T1.state FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T2.series_name , T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name , T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE language != 'english'
SELECT pixel_aspect_ratio_par , country FROM TV_CHANNEL WHERE language != 'english'
SELECT id FROM TV_channel WHERE country = 'States' GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_CHANNEL EXCEPT SELECT T1.package_option FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
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
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
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
SELECT Name FROM People WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people EXCEPT SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Gameshowing is 'Car'
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.comcontest_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT HeadOfState FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.total_area) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.district = "State" AND T1.region = "Caribbean"
SELECT sum(t1.area) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.region = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.continent FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT region FROM city WHERE name = "Kabul"
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = 'Aruba' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Brazil'
SELECT GNP , LEX FROM country WHERE CountryCode = "Brazil"
SELECT T1.region , T2.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = " Angola"
SELECT T1.District , T1.Population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = " Angola"
SELECT avg(lifeexpectancy) FROM country WHERE region = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code ORDER BY t2.lifeexpectancy LIMIT 1
SELECT sum(max(gnp) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(t1.lifespan) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "African" AND t2.isofficial = "R"
SELECT avg(t1.lifespan) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t2.region = 'Africa' AND t1.isofficial = 'R'
SELECT sum(t1.area) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.name = 'Asia' OR t1.name = 'Europe'
SELECT sum(t1.area) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1continent = 'Asia' OR t1continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , sum(gnp) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.governorform = 'United States'
SELECT avg(gnp) , sum(gnp) FROM country WHERE continent = 'United States'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT gnp) FROM country WHERE continent = 'Africa'
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan' AND isofficial = 'Yes'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.countrycode = 'Afghanistan' AND T2.isofficial = 'Yes'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode GROUP BY T3.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1 Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1 Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM country WHERE head_of_state = 'English' INTERSECT SELECT count(*) FROM country WHERE head_of_state = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" INTERSECT SELECT count(*) FROM countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "dutch"
SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'English' INTERSECT SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'French'
SELECT count(DISTINCT T1.clont) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Chinese"
SELECT count(DISTINCT t1continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' OR T2.language = 'dutch'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'English' OR T2.isofficial = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "English" OR T2.IsOfficial = "Dutch"
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" GROUP BY T2.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.isofficial = 'A' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.isofficial = 'Yes' AND T2.region = 'Republic' GROUP BY T1.language HAVING count(*) = 1
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.governor = 'United Kingdom' INTERSECT SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.governor = 'Republic'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.language = 'english' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.language = 'english' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE countrycode = (SELECT countrycode FROM country ORDER BY population DESC LIMIT 1)
SELECT avg(t1.lifespan) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'No'
SELECT avg(t1.lifespan) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'No'
SELECT sum(t2.lifespan) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.language != "english"
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.headofsstate = "Beatrix"
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Beatrix"
SELECT sum(t1.count(DISTINCT t2.languages) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.indep_year < 1930
SELECT sum(T1.GNP) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IsOfficial = 'Yes' AND T1.GNP < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.region = 'Africa' AND T2.population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.region = 'Africa' AND T2.population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT HeadOfState FROM city WHERE Population > (SELECT max(Population) FROM city WHERE CountryCode = 'Africa')
SELECT code FROM country EXCEPT SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english"
SELECT HeadOfState FROM country WHERE Language != "english"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'english'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'english'
SELECT T1.GNP FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'No' AND T1.GovernmentForm != 'Republic'
SELECT HeadOfState FROM country WHERE GovernmentForm = 'English' AND IsOfficial = 'No'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.isofficial = 'No' AND T3.language = 'english'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.continent = 'Europe' AND T3.language != 'English'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.region = 'Asia' AND T2.isofficial = 'Chinese'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2 Continent = "Asia" AND T3.Language = "Chinese"
SELECT name , founded_year , territory FROM country ORDER BY population LIMIT 1
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , population , head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT gnp , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY gnp
SELECT sum(Population) , GNP FROM country WHERE avg(LifeExpectancy) > 72 GROUP BY GNP
SELECT avg(T1.LifeExpectancy) , avg(T2.GNP) , T2 Continent FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code GROUP BY T2 Continent HAVING avg(T1.LifeExpectancy) < 72
SELECT sum(Population) , avg(LifeExpectancy) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72
SELECT T1.name , T1.SurfaceArea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.SurfaceArea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT headofstate FROM country WHERE continent = 'Europe' AND population = 80000
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'Europe' AND T2.population = 80000
SELECT sum(t1.population) , avg(t1.area) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1continent = "North America" AND t1.area > 3000
SELECT sum(t1.population) , avg(t1.area) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = 'North America' AND t1.area > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage ORDER BY population DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language , T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.HeadOfState ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(t2.gnp) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Spanish" GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM director
SELECT count(*) FROM director
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM director WHERE nationality != 'USA'
SELECT name FROM director WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT director FROM director ORDER BY as director
SELECT name FROM director ORDER BY created_director DESC
SELECT name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name , T2.ensemble FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name , T2.director FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T2.name FROM show AS T1 JOIN orchestra AS T2 ON T1.orchard_id = T2.orchard_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_work > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T1.name FROM enterprise AS T1 JOIN orchestra AS T2 ON T1.organchestra = T2.organchestra_id GROUP BY T1.name
SELECT record_type FROM orchestra GROUP BY record_type ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM performance WHERE TYPE != "Ensemble"
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T1.year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1 Orchestra_ID = T2 Orchestra_ID GROUP BY T1.year_of_Founded HAVING COUNT(*) > 1
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.organchestra_id = T2.organchestra_id GROUP BY T1.organchestra_id HAVING count(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM Friend GROUP BY student_id
SELECT count(*) , T1.student_id FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM student EXCEPT SELECT student_id FROM friend
SELECT id FROM student EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T2.name FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id INTERSECT SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id
SELECT T1.name FROM highschooler AS T1 JOIN friends AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id = 1
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(DISTINCT T1.interests) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT avg(T2.grade) FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id != "null"
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.state FROM professionals AS T1 JOIN guardians AS T2 ON T1.professional_id = T2.professional_id INTERSECT SELECT T1.state FROM professionals AS T1 JOIN veterinarians AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.state FROM professionals AS T1 JOIN guardians AS T2 ON T1.professional_id = T2.professional_id INTERSECT SELECT T1.state FROM professionals AS T1 JOIN veterinarians AS T2 ON T1.professional_id = T2.professional_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatment_tors AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.role_code = 'doctor' AND T2.treatment_type_description = 'health care'
SELECT T2.professional_id , T2.last_name , T2.cell_number FROM treatment_profiles AS T1 JOIN physicians AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.state = 'Indiana' OR T1.cell_number > 2
SELECT T2.professional_id , T2.last_name , T2.cell_number FROM patients AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T2.professional_id , T2.last_name , T2.cell_number FROM patients AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.professional_id HAVING count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatings AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code != "Medical"
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code != 'health-care'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.professional_id , T2.role_code , T2.first_name FROM treatments AS T1 JOIN physicians AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.dog_id , T1.family_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.cost_of_treatment = (SELECT min(cost_of_treatment) FROM Treatments WHERE T2.cost_of_treatment = 'health-care')
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN puppies AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN treatment_puppies AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T2.professional_id , T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T2.professional_id , T2.cell_number FROM treatments AS T1 JOIN physicians AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = ' veterinarian'
SELECT T1.date_of_birth , T3.first_name FROM pets AS T1 JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id
SELECT T1.cost_of_treatment , T3.treatment_type_description FROM treatments AS T1 JOIN charge AS T2 ON T1.cost_of_treatment = T2.cost_of_treatment JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_pores AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treats AS T3 ON T2.dog_id = T3.dog_id JOIN pets AS T4 ON T2.owner_id = T4.owner_id
SELECT T1.name , T3.date_of_hospital FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN treatment_types AS T3 ON T1.dog_id = T3.dog_id WHERE T2.breed_name = (SELECT min(breed_name) FROM breeds) AND T3.role_code = 'healthcare'
SELECT name , date_of_birth FROM dogs WHERE breed_code = (SELECT min(breed_code) FROM dogs)
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Virginia'
SELECT T1.name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Virginia'
SELECT T1.date_of_arrived , T1.date_of_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'animal'
SELECT T1.date_of_arrived , T1.date_of_leave FROM dogs AS T1 JOIN treatment_puppies AS T2 ON T1.dog_id = T2.dog_id WHERE T2.role_code = 'health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE role_code = 'veterinarian' AND state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'male' AND age = 100
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'male' AND age = 100
SELECT count(*) FROM puppies AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'petroleum'
SELECT count(*) FROM puppies WHERE gender = 'male' AND first_name = 'protoporphyrinogen IX' AND last_name = 'petroleum'
SELECT count(*) FROM ( SELECT * FROM T1 JOIN treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN treats AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T1.role_code = 'veterinarian' AND T3.treatment_type_code = 'health care' )
SELECT count(*) FROM ( SELECT DISTINCT T2.professional_id FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.breed_name = "Puppies")
SELECT role_code , street , city , state FROM professionals WHERE city LIKE "%West%"
SELECT T2.role_code , T2.street , T2.city , T2.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT T1.first_name , T1.last_name , T1.email_address FROM Guardians AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state LIKE '%North%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM owners AS T1 JOIN guardians AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM puppies WHERE age < (SELECT avg(age) FROM puppies)
SELECT count(*) FROM puppies WHERE age < (SELECT avg(age) FROM puppies)
SELECT max(cost_of_treatment) FROM treatments WHERE charge_type = 'healthcare'
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM puppies WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM puppies AS T1 JOIN treatment_Types AS T2 ON T1.dog_id = T2.dog_id WHERE T2.role_code = 'petitor' OR T2.role_code = 'doctor'
SELECT count(*) FROM owners WHERE id NOT IN ( SELECT owner_id FROM dogs );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_name = 'puppy' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = "animalpet")
SELECT name , age , weight FROM puppies WHERE abandoned_yn = '1' AND gender = 'male' UNION SELECT name , age , weight FROM puppies WHERE abandoned_yn = '0' AND gender = 'female'
SELECT name , age , weight FROM puppies WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE gender = 'male' OR gender = 'female'
SELECT avg(age) FROM dogs WHERE gender = 'male' OR gender = 'female'
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT max(age) FROM Dogs WHERE gender = 'male'
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges WHERE charge_type = (SELECT charge_type FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1)
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM PROFESSIONALS WHERE role_code = "VETERINARY"
SELECT email_address , cell_number , home_phone FROM PROFESSIONS WHERE role_code = ' veterinarian'
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_office AS T3 ON T2.treatment_office = T3.treatment_office WHERE T1.role_code = 'veterinarian' INTERSECT SELECT T4.first_name , T4.last_name , T3.treatment_type_description FROM treatment_office AS T3 JOIN treatment_Types AS T4 ON T2.treatment_office = T3.treatment_office WHERE T4.role_code = 'medical care'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM veterinaries AS T1 JOIN treatment_types AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Voice_Region = "Vocal"
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country HAVING COUNT(*) = "MSOT"
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T3.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN artist AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT T2.Title , T3.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT sum(T1.sales) , T2.name FROM song AS T1 JOIN singer AS T2 ON T1.song_id = T2.song_id GROUP BY T2.name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Birth_Year FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Birth_Year FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT t1.feature_type_name FROM Ref_Feature_Types AS t1 JOIN Other_Available_Features AS t2 ON t1.feature_type_code = t2.feature_type_code WHERE t2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code = "null"
SELECT property_name FROM properties WHERE property_type_code = 'HSE' OR room_count > 1
