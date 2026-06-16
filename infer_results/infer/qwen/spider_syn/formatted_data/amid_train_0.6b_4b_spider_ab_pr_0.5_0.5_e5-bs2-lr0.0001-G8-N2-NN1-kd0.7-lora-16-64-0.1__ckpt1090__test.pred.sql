SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_vocalist = 'yes' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , COUNT(*) FROM singer GROUP BY country
SELECT count(*) , state FROM musician GROUP BY state
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000;
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , highest FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t2.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_name
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID GROUP BY T3.concert_ID
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_title LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_title LIKE "%Hey%"
SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = t2.stadium_id ORDER BY t2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) FROM Pets WHERE pettype = "Puppy";
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F" AND T1.Fname = "Puppy"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F" AND T2.pets = "puppy"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT name) FROM animals
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kittens" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppies"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT T1.Major , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pettype = "kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Pug" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog") EXCEPT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat")
SELECT pettype , weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pettype , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pettype
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType
SELECT avg(weight) , pettype FROM pets GROUP BY pettype
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Lname = "Smith"
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Lname = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.Sex , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pettype = "kitten"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pet_type = "Kitten"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.Continent , count(*) , T1.ContId FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT t1.continent , count(*) , t2.contid FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.contid GROUP BY t2.contid
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model_id WHERE YEAR = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT T2.Continent , count(*) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id GROUP BY T1.MakeId
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country
SELECT T2.StateName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT t1.fullname FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid GROUP BY t1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE T1.FullName = 'amc hornet sportabout (sw)'
SELECT accelerate FROM cars_data WHERE make = 'Tesla' AND model = 'Roadster'
SELECT count(*) FROM car_makers WHERE FullName LIKE '%French%';
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford' AND T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Toyota' AND T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Year = 1974 AND Cylinders = 8
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T2.Maker , T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT T1.Maker , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker != "null"
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN country AS T2 ON T1.country = T2.CountryId GROUP BY T1.id HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T2.Maker != "Toyota" GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T2.cylinders = 3 GROUP BY T1.Maker
SELECT max(horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT model FROM cars_data GROUP BY model ORDER BY sum(mpg) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT avg(edispl) FROM cars_data WHERE make = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = (SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = 'American Motor Company'
SELECT T2.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(cylinders) FROM cars_data WHERE make = 'volvo' ORDER BY accelerate LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY MAX(Horsepower) ASC
SELECT makeid , fullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id GROUP BY T1.makeid HAVING horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT makeid , fullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE cylinders > 3
SELECT makeid , fullname FROM car_makers WHERE horsepower > 0 AND cylinders < 4
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.weight >= 3500 AND T1.Maker = "Ford"
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryName HAVING count(*) = 0
{"sql": "SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != 'Toyota'}
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model GROUP BY T2.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING count(*) >= 3
SELECT T1.Id , T1.CountryName FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'fiat' GROUP BY T1.CountryName HAVING count(*) > 3 UNION SELECT T1.Id , T1.CountryName FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = 'carmakers' GROUP BY T1.CountryName HAVING count(*) > 3
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Id HAVING count(*) > 3 UNION SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = ' Fiat '
SELECT T1.State FROM states AS T1 JOIN airlines AS T2 ON T1.airlinecode = T2.abbreviation WHERE T2.Airline = "JetBlue Airways"
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.FlightNo = 1356
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT T1.AirwayName , T1.ShortenedWord FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.Airway) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.DestAirport != 'AA'
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T2.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname LIKE '%UAL%'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airlines AS T3 ON T3.UID = T2.Airline WHERE T3.Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT town , country FROM airports WHERE AirportName = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Terminal ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "AT"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Ashley" AND T1.DestAirport = "Aberdeen"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Aline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Aline = "Jetblue Airways"
SELECT T1.airline , count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.abbr = 'United Airlines' AND T2.destairport = 'ASY' GROUP BY T1.airline HAVING count(*) >= 1
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ASY Airport' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid JOIN airports AS T3 ON T3.airportcode = T1.sourceairport WHERE T3.airportname = 'AHD' AND T2.Abbreviation = 'UAF'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = "United"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "United"
SELECT T1.city FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway , T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.AirportCode FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = (SELECT min(FlightNo) FROM flights)
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.destairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airlines AS T3 ON T3.uid = T2.airline WHERE T3.Abbreviation = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airlines AS T3 ON T3.uid = T3.uid WHERE T3.Abbreviation = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T1.countryabbreviation = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T1.countryabbreviation = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'APG'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO') EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING sum(T2.flightno) < 200
SELECT T1.Airline , T1.FLIGHTNO FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.SourceAirport WHERE T1.Airline = "United Airlines"
SELECT T1.Airline , T1.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.SourceAirport WHERE T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen "
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , district FROM shop GROUP BY district
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.director_name , T2.distRICT FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id GROUP BY T1.manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name , district ORDER BY count(*) DESC
SELECT name , district , LOCATION FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'Y' ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT manager_name FROM hiring GROUP BY manager_name HAVING count(*) >= 2)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.year_awarded = 2016
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.year_awarded >= 2015
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents WHERE document_type = "Paper"
SELECT count(*) FROM Documents
SELECT T1.paragraph_id , T3.paragraph_text , T2.document_description FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T1.template_id = T3.template_id
SELECT T1.paragraph_id , T1.paragraph_text , T1.Other_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id
SELECT document_name , layout_id FROM documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%w%"
SELECT t1.paper_id , t2.layout_id , t3.document_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id JOIN Templates AS t3 ON t1.template_id = t3.template_id WHERE t1.document_name = "Robbin CV"
SELECT t3.document_id , t2.layout_id , t1.template_details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id WHERE t1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Other_Details = "text"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Other_details = 'PPT'
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE template_type_code = "PPT")
SELECT layout_id , count(*) FROM (SELECT T1.layout_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.layout_id) AS T;
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT document_id , template_type_description FROM documents JOIN templates ON documents.document_id = templates.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id , t1.template_type_code FROM Documents AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.paragraph_id = T2.paragraph_id WHERE T1.template_id IN (SELECT T3.template_id FROM Documents AS T3 JOIN paragraphs AS T4 ON T3.paragraph_id = T4.paragraph_id WHERE T4.paragraph_text = "textfile")
SELECT template_id FROM layouts EXCEPT SELECT document_id FROM papers
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT layout_id , version_number , layout_type FROM layouts
SELECT T1.template_id , T2.version_number , T3.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN Paragraphs AS T3 ON T1.paragraph_id = T3.paragraph_id
SELECT DISTINCT template_type_description FROM ref_template_types UNION SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT template_type_description FROM ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT T1.paragraph_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.paragraph_id = T2.paragraph_id WHERE T1.document_id IN (SELECT T3.paragraph_id FROM documents AS T3 JOIN Templates AS T4 ON T3.template_id = T4.template_id WHERE T4.template_type_code = "PP" OR T4.template_type_code = "PPT")
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T1.edition_number , T2.layout_type FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.date_effective_from > 5
SELECT T1.edition_number , T2.layout_type_name FROM Templates AS T1 JOIN (SELECT T2.layout_type_name FROM Paragraphs AS T2 JOIN Documents AS T3 ON T2.document_id = T3.document_id WHERE T3.version_number = 1) AS T1 GROUP BY T1.edition_number HAVING T1.edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT layout_type , count(*) FROM Ref_Template_Types GROUP BY layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT count(*) , template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_details LIKE "%Data base%"
SELECT t1.template_type_code FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.document_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT t3.document_name FROM documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.paragraph_id = t3.paragraph_id WHERE t2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT layout_type , count(*) FROM Documents GROUP BY layout_type
SELECT layout_type FROM Documents GROUP BY layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM documents AS t1 JOIN paragraphs AS t2 ON t1.paragraph_id = t2.paragraph_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT t2.template_type_description FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "text"
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT t2.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.document_id = t3.document_id WHERE t3.Other_Details = "text file"
SELECT T1.layout_type_name , T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_code = "AD"
SELECT T1.layout_type_description , T2.layout_type_name FROM Ref_Template_Types AS T1 JOIN Template_Type_Code AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.document_name = "text file"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id WHERE T3.paragraph_text = "text file"
SELECT layout_id FROM Ref_Templates WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Presentation%'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT count(*) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.Other_Details = 'Summer Show'
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT Other_Details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T2.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT id FROM documents WHERE document_name = "Customer reviews")
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT count(*) , T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id ORDER BY count(*)
SELECT count(*) , T1.template_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.paragraph_id , T1.paragraph_text , count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Paragraph_id , T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id GROUP BY T1.Paragraph_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.paragraph_text = 'Brazil' INTERSECT SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T3.Name , T2.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID
SELECT T2.Name , T3.curriclure FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T3.Name , T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1 Teacher_ID = T2 Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T3.Name , T2.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT name FROM teacher WHERE course = 'math'
SELECT Name FROM teacher WHERE Course = "Math"
SELECT T3.Name , COUNT(*) FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID GROUP BY T3.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Technician_ID = T2.Technician_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID GROUP BY T3.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.Museum_ID , T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT T2.total_spent FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE museum_id > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM matches
SELECT count(*) FROM players
SELECT count(*) FROM matches WHERE tourney_name = "Tournament"
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , STATE_abbreviation FROM players WHERE birth_date = (SELECT max(birth_date) FROM players)
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'yes' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.rankings_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T3.rankings_date ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN tournaments AS T3 ON T1.tourney_id = T3.tourney_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_name ORDER BY sum(T1.minutes) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY minutes LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , T1.last_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT ranking_points , T1.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , state FROM matches GROUP BY state
SELECT count(*) , T1.state_code FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.state_code
SELECT T1.state , COUNT(*) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT ranking_points , COUNT(*) FROM rankings GROUP BY ranking_points
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year , T1.year , T1.year LIMIT 3
SELECT T1.winner_name , T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.round , T2.ranking_date LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' INTERSECT SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'right'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY ranking_points DESC LIMIT 1
SELECT count(*) , hand_type FROM players GROUP BY hand_type
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.id , T1.casued_by_ship_id FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT t1.id , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t1.id ORDER BY sum(t2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander < 'Kaloyan' AND latin_commander > 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result = 'win' EXCEPT SELECT count(*) FROM ship WHERE tonnage = 225
SELECT T1.id , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.id , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE LOCATION != 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "line 1" AND line_2 = "line 2"
SELECT line_1 , line_2 FROM Addresses;
SELECT count(*) FROM Courses
SELECT count(*) FROM COURSES
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.division_id , T2.division_name FROM divisions AS T1 JOIN degree_programs AS T2 ON T1.division_id = T2.division_id GROUP BY T1.division_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT section_name , section_description FROM Sections
SELECT section_name , section_description FROM Sections;
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.section_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.section_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T3.student_id = T2.student_id GROUP BY T3.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT course_description FROM courses WHERE course_name LIKE '%computer%'
SELECT course_description FROM Courses WHERE course_name LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2"
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergrad' INTERSECT SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id HAVING count(*) = 2
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = 'Bachelor\'s Degree Program'"}
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Students AS T2 ON T1.degree_program_id = T2.student_enrolment_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id EXCEPT SELECT T3.semester_name FROM semesters AS T3 JOIN student_enrolment AS T4 ON T3.semester_id = T4.semester_id JOIN students AS T5 ON T5.student_id = T4.student_id
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM student_enrolment AS T3 GROUP BY T3.student_id HAVING count(*) > 100)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN sections AS T3 ON T2.section_id = T3.section_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_course_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T2.degree_program_id = T4.degree_program_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.student_id = T3.student_id
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT date_first_registered FROM students ORDER BY first_name , middle_name , last_name LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Graduate' ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , last_name FROM Students WHERE permanent_address_id != current_address_id
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN students ON T1.student_id = T2.student_id WHERE T1.permanent_address_id != T2.current_address_id
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(date_left) FROM Students
SELECT max(date_first_registered) FROM Students;
SELECT count(*) , T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT max(count(*) ) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = "Master" INTERSECT SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = "Bachelors"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id JOIN Degree_Programs AS T4 ON T4.degree_program_id = T2.degree_program_id WHERE T4.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T3.student_id = T2.student_id JOIN Degree_Programs AS T4 ON T4.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT T1.address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T2.department_name FROM students AS T1 JOIN departments AS T2 ON T1.current_address_id = T2.department_id
SELECT * FROM students ORDER BY first_name , last_name;
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name , T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = 'Haiti' UNION SELECT T2.first_name , T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = 'United States' AND T2.cell_mobile_number = '09700166582'
SELECT first_name , last_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti') UNION SELECT first_name , last_name FROM students WHERE cell_mobile_number = 09700166582
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(Language) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT T1.Channel , T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.Channel WHERE T2.Series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel ORDER BY rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Episode FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.episode WHERE T1.Title = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.episode = T2.episode WHERE T2.title = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.episode WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Todd Casey'
SELECT T1.State FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "animation" AND T1.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Todd Casey'
SELECT DISTINCT title FROM cartoon EXCEPT SELECT DISTINCT written_by FROM cartoon AS T1 JOIN Cartoon AS T2 ON T1.directed_by = T2.directed_by WHERE T1.written_by = 'Todd Casey'
SELECT t1.series_name , t1.channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' INTERSECT SELECT t1.series_name , t1.channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.id WHERE t2.directed_by = 'Michael Chang'
SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT id FROM tv_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT count(*) FROM (SELECT T1.people_id FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.Final_Table_Made = "Best_Finish" AND T2.Money_Rank = "Earnings")
SELECT count(*) FROM (SELECT T1.People_ID FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "Best_Finish" AND T1.Nationality = "Chinese" AND T2.Earnings > 100000)
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Chinese" )
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT money_rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Finish = "Best" AND T1.Nationality = "Chinese"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Chinese"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 3000000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings = (SELECT min(Earnings) FROM poker_player)
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T2.height > 200
SELECT avg(earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T2.height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Yes")
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Car Game")
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T2.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2contestant_name , T1contestant_number FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code , T1.state FROM AREA_CODE_STATE AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T2.state , T1.phone_number FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T1.state = 'GA' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = (SELECT T2.contestant_number FROM CONTESTANTS WHERE T2.contestant_number = 'Tabatha Gehling' ))))
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independyyear > 1950 ORDER BY name
SELECT count(DISTINCT Governmentform) FROM country
SELECT count(DISTINCT governmentform) FROM country WHERE governmentform = "Republic"
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN country AS t2 ON t1.Continent = "Caribbean" AND t2.Region = "North Atlantic"
SELECT sum(surfacearea) FROM country WHERE name = 'Continental' AND continent = 'Caribbean'
SELECT continent FROM country WHERE name = "Anguilla"
SELECT t1.Continent FROM country AS t1 JOIN country AS t2 ON t1.Continent = t2.Continent WHERE t1.Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Capital == T2.Population WHERE T2.Name == "Kabul";
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Capital == T2.District WHERE T2.Name == "Kabul";
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Countrycode WHERE T1.Name = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT population , lifeexpectancy FROM country WHERE name = "Brazil"
SELECT Population , LIFEExpectancy FROM country WHERE Name = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT t1.region , count(*) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.name = "Angola" GROUP BY t1.region
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE name = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = "Asia" ORDER BY T2.LifeExpectancy ASC LIMIT 1
SELECT sum(t1.population) , max(tp.gnp) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = "Africa" AND T2.Region = "Republic"
{"sql": "SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = \"Africa\" AND T2.Region = \"republic")
SELECT sum(surfacearea) FROM country WHERE name = 'Asia' OR name = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America' OR governmentform = 'Federal'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America' OR region = 'North America'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT language) FROM countrylanguage WHERE country = (SELECT code FROM country WHERE name = 'Aruba' )
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = '1'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = "Y"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T2.Capital = T3.Code GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE IsOfficial = 1 AND Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE IsOfficial = 1 AND Language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "English" AND T2.Language = "Dutch"
SELECT T1.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = T2.Language WHERE T2.Name = 'English' INTERSECT SELECT T1.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = T2.Language WHERE T2.Name = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t1.Language = "Chinese"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = T2.IsOfficial WHERE T1.Language = "English" UNION SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = T2.IsOfficial WHERE T1.Language = "Dutch"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = 'Republic' GROUP BY T1.Language COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republic" GROUP BY T1.Language HAVING count(*) = 1
SELECT T1.name , T1.population FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "English" GROUP BY T1.name ORDER BY T1.population DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.capital = t2.countrycode WHERE t2.Language = "English" GROUP BY t1.name ORDER BY t1.population DESC LIMIT 1
SELECT T1.Name , T1.Population , T2.lifeexpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = "Asia" ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name , T1.population , T1.lifeexpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' ORDER BY T1.population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language != "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.name = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.IsOfficial = 1 AND T2.Language = "English" AND T1.name = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT sum(IsOfficial) FROM countrylanguage WHERE IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = "Africa" AND population < (SELECT max(population) FROM country AS T1 JOIN country AS T2 ON T1.Continent = "Asia" WHERE T2.code = T1.code)
SELECT name FROM country WHERE continent = "Africa" INTERSECT SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM city WHERE countrycode = 'Africa')
SELECT name FROM country WHERE continent = "Asia" AND population > (SELECT max(population) FROM country WHERE continent = "Africa")
SELECT T1.NationCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.Nationabbrev FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code EXCEPT SELECT T1.Nationabbrev FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English"
SELECT T1.nationabbrev FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode JOIN country AS T3 ON T2.Language = T3.Language WHERE T3.Name = 'India' AND T2.IsOfficial = 1 AND T1.Name != 'United States'
SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" EXCEPT SELECT T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Republic"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 0 AND T2.Language = "English"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.Language = "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.IsOfficial = 1 INTERSECT SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IsOfficial = 1 AND T2.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = "Asia" AND T3.IsOfficial = 1 AND T3.Language = "Chinese"
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT capital , headofstate FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT t1.name , t1.population , t1.capital FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code GROUP BY t1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.Name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.GovernmentForm , COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.Capital = T2.District WHERE T1.lifeexpectancy > 72 GROUP BY T1.GovernmentForm
SELECT DISTINCT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.Continent , sum(T2.Population) , avg(T2.lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code WHERE T1.Continent != "North Atlantic" GROUP BY T1.Continent HAVING avg(T2.lifeexpectancy) < 72
SELECT name , area FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name , Region FROM country ORDER BY Name , REGION DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT name FROM city WHERE countrycode = 'USA' AND population = 80000
SELECT sum(t1.population) , avg(t1.SurfaceArea) FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = "North America" AND t2.SurfaceArea > 3000
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "North America" AND t2.population > 3000 GROUP BY t2.code
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T1.CountryCode , T2.District FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(t1.percentage) , t2.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.Language = "Spanish" GROUP BY t2.name ORDER BY sum(t1.percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor WHERE age = (SELECT max(age) FROM conductor)
SELECT name FROM conductor ORDER BY age DESC LIMIT 1
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.performance_id = T3.performance_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T1.Conductor_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID
SELECT T1.Record_company , COUNT(*) FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_company ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY COUNT(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra != "Show"
SELECT orchestra FROM orchestra WHERE orchestra != (SELECT T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1 Orchestra_ID = T2 Orchestra_ID)
SELECT T1.Share FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT T1.Share FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1 Orchestra_ID = T2 Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id , T2.friend_id FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id
SELECT count(*) , T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 1011
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 10101
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM student WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.student_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id GROUP BY T3.student_id HAVING count(*) >= 2)
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T3.student_id = T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id IN (SELECT T4.student_id FROM highschooler AS T4)
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T2.name , count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT grade FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinary"
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinarian"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_type = "Medical"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "health"
SELECT T1.owner_id , T1.first_name , T1.last_name , T2.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.cell_number = T2.cell_number WHERE T2.state = 'indiana' OR T1.role_code = 'medical' GROUP BY T1.owner_id HAVING count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" UNION SELECT T3.owner_id , T3.last_name , T3.cell_number FROM Professionals AS T3 JOIN Owners AS T2 ON T3.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T3.cell_number >= 2000
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 );
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_type_code = T3.charge_type WHERE T3.charge_amount > 1000
SELECT first_name FROM professionals WHERE role_code = "veterinarian" UNION SELECT first_name FROM professionals WHERE role_code = "guardian" EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals WHERE role_code = "veterinarian" UNION SELECT first_name FROM professionals WHERE role_code = "guardian" EXCEPT SELECT first_name FROM dogs
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "medical care" EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "dog"
SELECT id , role_code , email_address FROM Professionals EXCEPT SELECT T1.id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T2.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name , T1.professional_id FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.role_code , T1.first_name , T1.last_name , T1.professional_id FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.dog_id = T3.dog_id WHERE T3.treatment_type_code = 'P' GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN treatment_types AS T2 ON T1.breed_name = T2.treatment_type_code WHERE T2.charge_type = "Health" ORDER BY sum(T3.charge_amount) ASC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Treatment_Types AS T2 ON T1.breed_code = T2.breed_code JOIN charges AS T3 ON T3.charge_type = 'health' JOIN charges AS T4 ON T4.charge_type = 'medical' WHERE T3.charge_amount = (SELECT min(charge_amount) FROM charges WHERE charge_type = 'health') AND T4.charge_amount = (SELECT min(charge_amount) FROM charges WHERE charge_type = 'medical')
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.cell_number , T1.professional_id FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_code , T1.breed_name FROM Breeds AS T1 JOIN Professionals AS T2 ON T1.breed_code = T2.professional_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T2.professional_id GROUP BY T1.breed_code HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.date_of_birth < (SELECT min(date_of_birth) FROM dogs) AND sum(T2.cost_of_treatment) < (SELECT sum(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatment_Types)
SELECT T1.date_of_treatment , T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id
SELECT T1.date_of_birth , T4.first_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.charge_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Dog"
SELECT T1.first_name , T1.last_name , T3.size FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name = "Puppy"
SELECT T1.first_name , T1.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.breed_name , T2.date_of_treatment FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T1.breed_name = 'Rare'
SELECT T1.name , T4.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id JOIN breeds AS T4 ON T1.breed_code = T4.breed_code WHERE T4.breed_name = "Rare"
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city AND T1.state = "Virginia"
SELECT T2.name , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatment_Types AS T2 ON T1.breed_code = T2.treatment_type_code WHERE T2.treatment_type_description = "medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatment_Types AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health"
SELECT T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs) AND T2.gender = "M"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" INTERSECT SELECT email_address FROM Professionals WHERE state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT date_arrived , date_departed FROM Dogs;
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "healthcare"
{"sql": "SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE gender = \"P";}
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "P" AND T.treatment_type_code = "health";
SELECT count(*) FROM treatments WHERE treatment_type_code = "Puppie" AND role_code = "Veterinary"
SELECT T2.role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.city LIKE "%West%";
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment LIMIT 1)
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE gender = "P"
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name != "Pups" AND T2.age != 1 AND T2.date_arrived != "2023-12-15 00:00:00" AND T2.date_departed != "2023-12-15 00:00:00"
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE gender = "dog" AND abandoned_yn = "yes" )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE dog_id = "puppies" )
SELECT count(*) FROM professionals WHERE role_code = "Veterinarian" EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dog_id AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = "P puppy"
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy"
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy"
SELECT max(age) FROM Dogs WHERE breed_code = "Psi"
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type , charge_amount FROM Charges
SELECT max(charge_amount) FROM charges WHERE charge_type = "VIP"
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM PROFESSIONALS WHERE role_code = 'veterinarian'
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT breed_name , size_description FROM Digs JOIN sizes ON dogs.size_code = sizes.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.age = "Pup"
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T2.role_code , T2.treatment_type_description FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer WHERE Citizenship = "Country"
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_works_minillions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(networth) , citizenship FROM singer GROUP BY citizenship
SELECT max(networth) , country FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 3000000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.name , sum(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT country FROM singer WHERE birth_year < 1945 INTERSECT SELECT country FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Other_Available_Features WHERE feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.apt_feature_1 = 'apartment' AND T1.room_count > 1 UNION SELECT T1.property_name FROM properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.apt_feature_1 = 'house'
